# State Ed-Fi Builds
This document suggests some approaches for an API v8 implementation by states that currently manage their own Ed-Fi infrastructure.
This branch includes samples derived from the state of New Mexico.

## Repository structure
States should clone the DMS repository, make their own folder under `eng`, and then maintain a local version of the repository with their customizations. This repository uses extensions and seed data based on the New Mexico Public Education Department's (NMPED) Ed-Fi build as an example, in `eng/NMPED`.
That folder contains the following subdirectories:

| Directory | Content | Notes |
| ---------- | ------------------------------------ | ---------------------------------------------------------- |
|metaEd|MetaEd and the output from the MetaEd plugin|This folder is opened in Visual Studio. It should contain the package.json file that all extension projects need.|
|myClaims| JSONL claim files associated with the extensions.| Contains claim file(s) that define authorization for new extension resources. |
|mySchemas| Schemas | Contains the ApiSchema .json files and the XSD files for both the Ed-Fi schema and the extension schema(s). Copy all of the XSD files from `metaEd/MetaEdOutput/EdFi/XSD`, `metaEd/MetaEdOutput/EdFi/Interchange`, `metaEd/MetaEdOutput/<extension>/XSD` and `metaEd/MetaEdOutput/<extension>/Interchange` into this one folder; the interchange XSDs include the core XSDs by file name only. |
|seedData| Seed data | Contains both state-defined and the appropriate Ed-Fi seed data as XML files. |
|seedData/minimal| Seed data from Ed-Fi for the minimal template | This could also be the populated template. These files show up temporarily in the `eng/docker-compose/.bootstrap` folder when deploying with a minimal or populated template. |
|seedData/minimal/descriptors | Descriptor seed data files for descriptors in the Ed-Fi model. | Files should be named for the descriptor. See the sample for the header and format. |
|seedData/nmped | Seed data specific to the state implementation | |
|seedData/nmped/descriptors | State-specific descriptor seed data | Include both the state-specific values for Ed-Fi descriptors and all values for extension descriptors. |
|seedData/nmped/resources | State-specific resource seed data | Include both state-specific values for Ed-Fi resources and all values for extension resources. |

## Predeployment planning
*To do:*
* Infrastructure considerations (mostly about Docker, maybe skip it?)
* User / claimset / credential management (new Admin App)

### Extension changes
The process of writing MetaEd and building artifacts is unchanged from previous versions. What has changed is that those artifacts are no longer "deployed" into the build. Everything needed for the extensions to end up in the API and the DMS is in the `MetaEdOutput` folder of the MetaEd project. For detailed instructions, see the existing Ed-Fi how-to documentation.

For this proof of concept, the MetaEd output files were used for two things:
* The `ApiSchema-EXTENSION.json` file was used to modify the schema that the bootstrap scripts build. This is where additions from the extension end up in the DMS.
* All of the `*.xsd` files were copied to `mySchemas` to validate the seed data.

### Seed data changes
In this API version the initial seed data cannot be loaded with SQL scripts. It can, however, be ingested using the same XML format as the bulk loader. The XML structure should match the resource definition. In my observations, the schema listed at the top of each file did not play a part in validation during the load. Instead, a PowerShell script validates the seed data against the .xsd files produced by the MetaEd build. See [Validate seed data](#validate-seed-data).

### Claimset changes
Claimsets are no longer created or modified with SQL statements during the build process. Instead, define the claimsets in JSON. For this proof of concept, the claimsets are in the `myClaims` folder.

One thing that was not in the initial Ed-Fi documentation: it is more efficient to have one top-level JSON object for all resources that share the same parent resource claim, and list all of the resources under that claim. For example:

```json
{
  "isParent": true,
  "name": "domains/relationshipBasedData",
  "children": [
    { "name": "http://ed-fi.org/identity/claims/nmped/StaffDevelopment" },
    { "name": "http://ed-fi.org/identity/claims/nmped/StudentEducationOrganizationAward" },
    { "name": "http://ed-fi.org/identity/claims/nmped/StudentCTEProgramAssociationCredential" }
  ]
}
```
is equivalent to:
```json
{
  "isParent": true,
  "name": "domains/relationshipBasedData",
  "children": [
    { "name": "http://ed-fi.org/identity/claims/nmped/StaffDevelopment" }
  ]
},
{
  "isParent": true,
  "name": "domains/relationshipBasedData",
  "children": [
    { "name": "http://ed-fi.org/identity/claims/nmped/StudentEducationOrganizationAward" }
  ]
},
{
  "isParent": true,
  "name": "domains/relationshipBasedData",
  "children": [
    { "name": "http://ed-fi.org/identity/claims/nmped/StudentCTEProgramAssociationCredential" }
  ]
}
```
Run the claimset through an online or local JSON validator before trying a build with it.

## Post deployment: living with the DMS vs. living with the ODS
The reality is that a lot of direct SQL runs against ODS databases.

Querying data from the DMS for ETL processes should continue to work, although queries written for an ODS deployment will need to be rewritten. The biggest change is that many queries that joined on multi-column primary keys can now join on `documentId` instead. This is a fantastic simplification.

DML (insert / update / delete) statements are more problematic. The DMS stores the data both in a normalized, relational structure (much like the ODS) and as a document holding the most recent JSON payload from the creation or modification of the resource. DML against the database can cause these two versions to get out of sync.

Instead, end users should get comfortable with tools like Education Analytics' lightbeam project, and with manipulating data in JSONL files when needed. Data can be extracted from the API into a JSONL file, converted into Excel, manipulated, converted back to JSONL, and loaded back into the database.

## Running the scripts
All of the commands below are run in PowerShell 7 (`pwsh`) from the `eng/docker-compose` folder, and all paths are relative to that folder:
```powershell
cd eng/docker-compose
```

## Validate seed data
`eng/Test-SeedData.ps1` takes your state's top-level folder (for example `eng/NMPED`) and validates every `.xml` file under its `seedData` folder against the XSD files in its `mySchemas` folder. For each file it reads the root element (for example `InterchangeDescriptors`) and validates against the interchange XSD that declares it, using the extension interchange (`EXTENSION-Interchange-*-Extension.xsd`) when there is one and the core interchange otherwise. The `xsi:schemaLocation` hint in the seed file is ignored.

The state folder is required. A relative path resolves from the current directory:
```powershell
../Test-SeedData.ps1 ../NMPED
```

The script lists each file that fails, with line and column numbers, and exits with code 1 when any file fails, a file can't be parsed, or no XSD declares a file's root element. Add `-Verbose` to also list the files that pass.

XSD validation checks structure and data types only. It does not check that descriptor values used in resource files exist in the descriptor seed data.

## Deployment process
These are the commands used for this state-specific example build, using the NMPED sample extensions and some seed data, based on model 5.2. These instructions are not intended to replace the existing Ed-Fi documentation for deploying the DMS or building extensions, claimsets, or seed data. They are supplemental.

This assumes that the MetaEd project has been built, the claimsets are in `myClaims`, and the seed data has been converted to XML, validated, and placed in the `seedData` folder.

Make sure we are starting fresh:
```powershell
./bootstrap-local-dms.ps1 -d -v
```

Build the 5.2 model (maybe we don't need this; we can just get it from the Ed-Fi MetaEd output?):
```powershell
./bootstrap-local-dms.ps1 -EnableSwaggerUI -DataStandardVersion 5.2
```

Copy the extension model from the MetaEd output:
```powershell
Copy-Item ../NMPED/metaEd/MetaEdOutput/NMPED/ApiSchema/ApiSchema-EXTENSION.json ../NMPED/mySchemas/
```

Prepare the model and the claims:
```powershell
./prepare-dms-schema.ps1 -ApiSchemaPath ../NMPED/mySchemas
./prepare-dms-claims.ps1 -ClaimsDirectoryPath ../NMPED/myClaims
```

Now start over and run the build, loading the seed data:
```powershell
./bootstrap-local-dms.ps1 -d -v
./bootstrap-local-dms.ps1 -EnableSwaggerUI -LoadSeedData -SeedDataPath ../NMPED/seedData
```
