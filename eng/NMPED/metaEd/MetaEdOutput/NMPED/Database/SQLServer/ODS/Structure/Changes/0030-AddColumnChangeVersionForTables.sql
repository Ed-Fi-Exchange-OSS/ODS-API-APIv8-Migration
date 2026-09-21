
-- For performance reasons on existing data sets, all existing records will start with ChangeVersion of 0.
IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[nmped].[StaffDevelopment]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [nmped].[StaffDevelopment] ADD [ChangeVersion] [BIGINT] CONSTRAINT StaffDevelopment_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [nmped].[StaffDevelopment] DROP CONSTRAINT StaffDevelopment_DF_ChangeVersion;
ALTER TABLE [nmped].[StaffDevelopment] ADD CONSTRAINT StaffDevelopment_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[nmped].[StudentCTEProgramAssociationCredential]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentCTEProgramAssociationCredential_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] DROP CONSTRAINT StudentCTEProgramAssociationCredential_DF_ChangeVersion;
ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] ADD CONSTRAINT StudentCTEProgramAssociationCredential_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


IF NOT EXISTS (SELECT * FROM sys.columns WHERE object_id = OBJECT_ID(N'[nmped].[StudentEducationOrganizationAward]') AND name = 'ChangeVersion')
BEGIN
ALTER TABLE [nmped].[StudentEducationOrganizationAward] ADD [ChangeVersion] [BIGINT] CONSTRAINT StudentEducationOrganizationAward_DF_ChangeVersion DEFAULT (0) NOT NULL;
ALTER TABLE [nmped].[StudentEducationOrganizationAward] DROP CONSTRAINT StudentEducationOrganizationAward_DF_ChangeVersion;
ALTER TABLE [nmped].[StudentEducationOrganizationAward] ADD CONSTRAINT StudentEducationOrganizationAward_DF_ChangeVersion DEFAULT (NEXT VALUE FOR [changes].[ChangeVersionSequence]) For [ChangeVersion];
END


