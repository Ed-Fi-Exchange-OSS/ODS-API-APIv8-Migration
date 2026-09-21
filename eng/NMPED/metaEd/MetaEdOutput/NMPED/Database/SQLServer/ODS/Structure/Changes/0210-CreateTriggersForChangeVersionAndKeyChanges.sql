DROP TRIGGER IF EXISTS [nmped].[nmped_StaffDevelopment_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [nmped].[nmped_StaffDevelopment_TR_UpdateChangeVersion] ON [nmped].[StaffDevelopment] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [nmped].[StaffDevelopment]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [nmped].[StaffDevelopment] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [nmped].[nmped_StudentCTEProgramAssociationCredential_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [nmped].[nmped_StudentCTEProgramAssociationCredential_TR_UpdateChangeVersion] ON [nmped].[StudentCTEProgramAssociationCredential] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [nmped].[StudentCTEProgramAssociationCredential]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [nmped].[StudentCTEProgramAssociationCredential] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

DROP TRIGGER IF EXISTS [nmped].[nmped_StudentEducationOrganizationAward_TR_UpdateChangeVersion]
GO

CREATE TRIGGER [nmped].[nmped_StudentEducationOrganizationAward_TR_UpdateChangeVersion] ON [nmped].[StudentEducationOrganizationAward] AFTER UPDATE AS
BEGIN
    SET NOCOUNT ON;
    UPDATE [nmped].[StudentEducationOrganizationAward]
    SET ChangeVersion = (NEXT VALUE FOR [changes].[ChangeVersionSequence])
    FROM [nmped].[StudentEducationOrganizationAward] u
    WHERE EXISTS (SELECT 1 FROM inserted i WHERE i.id = u.id);
END	
GO

