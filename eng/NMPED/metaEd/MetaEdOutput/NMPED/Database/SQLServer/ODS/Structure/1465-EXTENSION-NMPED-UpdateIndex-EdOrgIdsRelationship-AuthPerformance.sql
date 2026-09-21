
DROP INDEX IF EXISTS IX_StaffDevelopment_EducationOrganizationId ON [nmped].[StaffDevelopment];
CREATE INDEX IX_StaffDevelopment_EducationOrganizationId ON [nmped].[StaffDevelopment](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StaffDevelopment_StaffUSI' AND object_id = OBJECT_ID('nmped.StaffDevelopment')) 
BEGIN
    CREATE INDEX IX_StaffDevelopment_StaffUSI ON [nmped].[StaffDevelopment](StaffUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentCTEProgramAssociationCredential_EducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential];
CREATE INDEX IX_StudentCTEProgramAssociationCredential_EducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential](EducationOrganizationId) INCLUDE (AggregateId);

DROP INDEX IF EXISTS IX_StudentCTEProgramAssociationCredential_ProgramEducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential];
CREATE INDEX IX_StudentCTEProgramAssociationCredential_ProgramEducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential](ProgramEducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentCTEProgramAssociationCredential_StudentUSI' AND object_id = OBJECT_ID('nmped.StudentCTEProgramAssociationCredential')) 
BEGIN
    CREATE INDEX IX_StudentCTEProgramAssociationCredential_StudentUSI ON [nmped].[StudentCTEProgramAssociationCredential](StudentUSI) INCLUDE (AggregateId)
END;

DROP INDEX IF EXISTS IX_StudentEducationOrganizationAward_EducationOrganizationId ON [nmped].[StudentEducationOrganizationAward];
CREATE INDEX IX_StudentEducationOrganizationAward_EducationOrganizationId ON [nmped].[StudentEducationOrganizationAward](EducationOrganizationId) INCLUDE (AggregateId);

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentEducationOrganizationAward_StudentUSI' AND object_id = OBJECT_ID('nmped.StudentEducationOrganizationAward')) 
BEGIN
    CREATE INDEX IX_StudentEducationOrganizationAward_StudentUSI ON [nmped].[StudentEducationOrganizationAward](StudentUSI) INCLUDE (AggregateId)
END;
