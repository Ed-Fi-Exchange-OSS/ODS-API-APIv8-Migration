
IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StaffDevelopment_EducationOrganizationId' AND object_id = OBJECT_ID('nmped.StaffDevelopment')) 
BEGIN
    CREATE INDEX IX_StaffDevelopment_EducationOrganizationId ON [nmped].[StaffDevelopment](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentCTEProgramAssociationCredential_EducationOrganizationId' AND object_id = OBJECT_ID('nmped.StudentCTEProgramAssociationCredential')) 
BEGIN
    CREATE INDEX IX_StudentCTEProgramAssociationCredential_EducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential](EducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentCTEProgramAssociationCredential_ProgramEducationOrganizationId' AND object_id = OBJECT_ID('nmped.StudentCTEProgramAssociationCredential')) 
BEGIN
    CREATE INDEX IX_StudentCTEProgramAssociationCredential_ProgramEducationOrganizationId ON [nmped].[StudentCTEProgramAssociationCredential](ProgramEducationOrganizationId) INCLUDE (Id)
END;

IF NOT EXISTS(SELECT * FROM sys.indexes WHERE name='IX_StudentEducationOrganizationAward_EducationOrganizationId' AND object_id = OBJECT_ID('nmped.StudentEducationOrganizationAward')) 
BEGIN
    CREATE INDEX IX_StudentEducationOrganizationAward_EducationOrganizationId ON [nmped].[StudentEducationOrganizationAward](EducationOrganizationId) INCLUDE (Id)
END;
