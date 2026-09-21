BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'nmped.StaffDevelopment') AND name = N'UX_StaffDevelopment_ChangeVersion')
    CREATE INDEX [UX_StaffDevelopment_ChangeVersion] ON [nmped].[StaffDevelopment] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'nmped.StudentCTEProgramAssociationCredential') AND name = N'UX_StudentCTEProgramAssociationCredential_ChangeVersion')
    CREATE INDEX [UX_StudentCTEProgramAssociationCredential_ChangeVersion] ON [nmped].[StudentCTEProgramAssociationCredential] ([ChangeVersion] ASC)
    GO
COMMIT

BEGIN TRANSACTION
    IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'nmped.StudentEducationOrganizationAward') AND name = N'UX_StudentEducationOrganizationAward_ChangeVersion')
    CREATE INDEX [UX_StudentEducationOrganizationAward_ChangeVersion] ON [nmped].[StudentEducationOrganizationAward] ([ChangeVersion] ASC)
    GO
COMMIT

