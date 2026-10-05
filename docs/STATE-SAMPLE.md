# State EdFi Builds
This document suggests some approaches for an API v8 implementation by states that are currently managing their own EdFi infrastructure.
This branch includes samples derived from the state of New Mexico. The data is organized as follows:
## Repository structure
States should clone the DMS repository, make their own folder under `eng`, and then maintain a local version of the repository with their customizations. This repository uses extensions and seed data based on New Mexico Public Education Department's (NMPED) EdFi build as an example.
Within that directory are the following subdirectories:
| Directory | Content | Notes |
| ---------- | ------------------------------------ | ---------------------------------------------------------- |
|metaEd|MetaEd and the output from the MetaEd plugin|This folder is opened in Visual Studio. It should contain the package.json file that all extension projects need.|
|myClaims| JSONL claim files associated with the extensions.| Contains claim file(s) that define authorization for new extension resources. |
|mySchemas| Schemas | Contains schema .json files for both the EdFi schema and the extension schema(s). |
|seedData| Seed data | Contains both state-defined and the appropriate EdFi seed data as XML files. |
|seedData/minimal| Seed data from EdFi for the minimal template | This could also be the populated template. These files show up temporarily in the eng/docker-compose/.bootstrap folder when deploying with a minimal or populated template. |
|seedData/minimal/descriptors | Descriptor seed data files for descriptors in the EdFi model. | Files should be named for the descriptor. See the sample for the header and format. |
|seedData/nmped | Seed data specific to the state implementation | |
|seedData/nmped/descriptors | State-specific descriptor seed data | Include both the state-specific values for EdFi descriptors and all values for extension descriptors. |
|seedData/nmped/resources | State-specific resource seed data | Include both state-specific values for EdFi resources and all values for extension resources. |

## Predeployment planning
*To do:*
* Infrastructure considerations (mostly about Docker, maybe skip it?)
* User / claimset / credential management (new Admin App)
* Rewrite seed data as XML
    * Use schema validation tools ahead of time
* Rewrite claimsets as JSON
    * Use a JSON validator
    * Call out that the claimset JSON can have multiple resources listed under the same authorization strategy (this is not obvious from the documentation I saw)
* Post-deployment data in/out strategies
    * Rewrite extraction SQL to use artificial keys and other model changes
    * Look for alternatives to SQL DML uses. When necessary, they will need to be rewritten.

## Deployment Process
These are the commands that were used for this state-specific example build, using the NMPED sample extensions and some seed data, and based on model 5.2. These instructions are not intended to replace the existing EdFi documentation for deploying DMS, building extensions, claimsets, or seed data. They are supplemental.

Make sure we are starting fresh:
```
Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1 -d -v
```

Build 5.2 (maybe we don't need this; we can just get it from the EdFi MetaEd output?):
```
./bootstrap-local-dms.ps1  -EnableSwaggerUI  -DataStandardVersion 5.2
cp ../metaEd/MetaEdOutput/NMPED/ApiSchema/ApiSchema-EXTENSION.json ../mySchemas/
Data-Management-Service/eng/docker-compose> ./prepare-dms-schema.ps1 -ApiSchemaPath "/repos/Data-Management-Service/eng/nmped/mySchemas"
./prepare-dms-claims.ps1 -ClaimsDirectoryPath "/repos/Data-Management-Service/eng/nmped/myClaims"
Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1 -d -v
Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1  -EnableSwaggerUI
```

## To Do:
* Figure out how to use the XSD files from MetaEd with extension definitions in order to seed extension data
* Add an example of seed data for an extended descriptor
* Try to reproduce the extension errors I ran into; a couple of things built in MetaEd but threw errors during the bootstrap startup
* Dig into client management / configuration service
* General proofreading

