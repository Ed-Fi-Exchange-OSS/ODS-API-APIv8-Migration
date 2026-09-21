# Layout
This branch includes samples derived from the state of New Mexico.  The data is organized as follows:
## parent directory
All state-specific data is located in the eng/NMPED folder.
Within that directory are the following subdirectories:
| Directory | Content | Notes |
| ---------- | ------------------------------------ | ---------------------------------------------------------- |
|metaEd|metaEd and the output from the metaed plug in|This folder is opened in visual studio, It should contain the package.json file that all extension projects need.|
|myClaims| JSONL claim files associated with the extensions.| Contains claim file(s) that define authorization for new extension resources |
|mySchemas| Schemas | contains schema .json files for both the edfi schema and the extention schema(s)|
|seedData| seed data | contains both state defined and the appropriate edfi seed data as XML files|
|seedData/minimal| Seed Data from EdFi for the minimal template | THis could also be the populated template. These files show up temporarly in the end/docker-compse/.bootstrap folder when deploying with a minimal or populated template|
|seedData/minimal/descriptors | descriptor seed data files for descriptors in the EdFi model. | File should be named for the descriptor. See sample for the header and format. 
|seedData/nmped | seed data specific for state implmentation | |
|seedData/nmped/descriptors | state specific descriptor seed data  | Include both the state-specific values for EdFI descriptors and all values for extension Ddscriptors |
|seedData/nmped/resources | state-specific resource seed data | Include both state-specific values for EdFi resources and all values for extention resources |

# useful commands
These are the commands that were used to build this extension (based on model 5.2)

Make sure we are starting fresh 
Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1 -d -v    

build 5.2 (maybe we dont need this, we can just get it from the edfi metaed output?)
./bootstrap-local-dms.ps1  -EnableSwaggerUI  -DataStandardVersion 5.2      


cp ../metaEd/MetaEdOutput/NMPED/ApiSchema/ApiSchema-EXTENSION.json ../mySchemas/

ata-Management-Service/eng/docker-compose> ./prepare-dms-schema.ps1 -ApiSchemaPath "/repos/Data-Management-Service/eng/stateOfJon/mySchemas" 
./prepare-dms-claims.ps1 -ClaimsDirectoryPath "/repos/Data-Management-Service/eng/nmped/myClaims"

Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1 -d -v    


Data-Management-Service/eng/docker-compose> ./bootstrap-local-dms.ps1  -EnableSwaggerUI   

