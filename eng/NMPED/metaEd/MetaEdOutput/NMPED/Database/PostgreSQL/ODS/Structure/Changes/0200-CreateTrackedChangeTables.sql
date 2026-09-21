DO $$
BEGIN

IF NOT EXISTS (SELECT 1 FROM information_schema.schemata WHERE schema_name = 'tracked_changes_nmped') THEN
CREATE SCHEMA tracked_changes_nmped;
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_nmped' AND table_name = 'staffdevelopment') THEN
CREATE TABLE tracked_changes_nmped.staffdevelopment
(
       oldeducationorganizationid BIGINT NOT NULL,
       oldstaffusi INT NOT NULL,
       oldstaffuniqueid VARCHAR(32) NOT NULL,
       oldstartdate DATE NOT NULL,
       neweducationorganizationid BIGINT NULL,
       newstaffusi INT NULL,
       newstaffuniqueid VARCHAR(32) NULL,
       newstartdate DATE NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT staffdevelopment_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_nmped' AND table_name = 'studentcteprogramassociationcredential') THEN
CREATE TABLE tracked_changes_nmped.studentcteprogramassociationcredential
(
       oldbegindate DATE NOT NULL,
       oldcredentialearneddate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldindustrycredentialdescriptorid INT NOT NULL,
       oldindustrycredentialdescriptornamespace VARCHAR(255) NOT NULL,
       oldindustrycredentialdescriptorcodevalue VARCHAR(50) NOT NULL,
       oldprogramdeliverymethoddescriptorid INT NOT NULL,
       oldprogramdeliverymethoddescriptornamespace VARCHAR(255) NOT NULL,
       oldprogramdeliverymethoddescriptorcodevalue VARCHAR(50) NOT NULL,
       oldprogrameducationorganizationid BIGINT NOT NULL,
       oldprogramname VARCHAR(60) NOT NULL,
       oldprogramtypedescriptorid INT NOT NULL,
       oldprogramtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldprogramtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newbegindate DATE NULL,
       newcredentialearneddate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newindustrycredentialdescriptorid INT NULL,
       newindustrycredentialdescriptornamespace VARCHAR(255) NULL,
       newindustrycredentialdescriptorcodevalue VARCHAR(50) NULL,
       newprogramdeliverymethoddescriptorid INT NULL,
       newprogramdeliverymethoddescriptornamespace VARCHAR(255) NULL,
       newprogramdeliverymethoddescriptorcodevalue VARCHAR(50) NULL,
       newprogrameducationorganizationid BIGINT NULL,
       newprogramname VARCHAR(60) NULL,
       newprogramtypedescriptorid INT NULL,
       newprogramtypedescriptornamespace VARCHAR(255) NULL,
       newprogramtypedescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studentcteprogramassociationcredential_pk PRIMARY KEY (ChangeVersion)
);
END IF;

IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'tracked_changes_nmped' AND table_name = 'studenteducationorganizationaward') THEN
CREATE TABLE tracked_changes_nmped.studenteducationorganizationaward
(
       oldawarddate DATE NOT NULL,
       oldeducationorganizationid BIGINT NOT NULL,
       oldschoolyear SMALLINT NOT NULL,
       oldstudentawardlanguagedescriptorid INT NOT NULL,
       oldstudentawardlanguagedescriptornamespace VARCHAR(255) NOT NULL,
       oldstudentawardlanguagedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentawardtypedescriptorid INT NOT NULL,
       oldstudentawardtypedescriptornamespace VARCHAR(255) NOT NULL,
       oldstudentawardtypedescriptorcodevalue VARCHAR(50) NOT NULL,
       oldstudentusi INT NOT NULL,
       oldstudentuniqueid VARCHAR(32) NOT NULL,
       newawarddate DATE NULL,
       neweducationorganizationid BIGINT NULL,
       newschoolyear SMALLINT NULL,
       newstudentawardlanguagedescriptorid INT NULL,
       newstudentawardlanguagedescriptornamespace VARCHAR(255) NULL,
       newstudentawardlanguagedescriptorcodevalue VARCHAR(50) NULL,
       newstudentawardtypedescriptorid INT NULL,
       newstudentawardtypedescriptornamespace VARCHAR(255) NULL,
       newstudentawardtypedescriptorcodevalue VARCHAR(50) NULL,
       newstudentusi INT NULL,
       newstudentuniqueid VARCHAR(32) NULL,
       id uuid NOT NULL,
       changeversion bigint NOT NULL,
       discriminator varchar(128) NULL,
       createdate timestamp NOT NULL DEFAULT (now()),
       CONSTRAINT studenteducationorganizationaward_pk PRIMARY KEY (ChangeVersion)
);
END IF;

END
$$;
