
CREATE SEQUENCE nmped.StaffDevelopment_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE nmped.StaffDevelopment ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('nmped.StaffDevelopment_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StaffDevelopment_aggid ON nmped.StaffDevelopment (AggregateId);


CREATE SEQUENCE nmped.StudentCTEProgramAssociationCredential_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE nmped.StudentCTEProgramAssociationCredential ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('nmped.StudentCTEProgramAssociationCredential_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentCTEProgramAssociationCredential_aggid ON nmped.StudentCTEProgramAssociationCredential (AggregateId);


CREATE SEQUENCE nmped.StudentEducationOrganizationAward_aggseq START WITH -2147483648 INCREMENT BY 1 MINVALUE -2147483648;
ALTER TABLE nmped.StudentEducationOrganizationAward ADD COLUMN AggregateId int NOT NULL DEFAULT nextval('nmped.StudentEducationOrganizationAward_aggseq'), ADD COLUMN AggregateData bytea;
CREATE INDEX ix_StudentEducationOrganizationAward_aggid ON nmped.StudentEducationOrganizationAward (AggregateId);

