IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'tracked_changes_nmped')
EXEC sys.sp_executesql N'CREATE SCHEMA [tracked_changes_nmped]'
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_nmped].[StaffDevelopment]'))
CREATE TABLE [tracked_changes_nmped].[StaffDevelopment]
(
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldStaffUSI [INT] NOT NULL,
       OldStaffUniqueId [NVARCHAR](32) NOT NULL,
       OldStartDate [DATE] NOT NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewStaffUSI [INT] NULL,
       NewStaffUniqueId [NVARCHAR](32) NULL,
       NewStartDate [DATE] NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StaffDevelopment PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_nmped].[StudentCTEProgramAssociationCredential]'))
CREATE TABLE [tracked_changes_nmped].[StudentCTEProgramAssociationCredential]
(
       OldBeginDate [DATE] NOT NULL,
       OldCredentialEarnedDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldIndustryCredentialDescriptorId [INT] NOT NULL,
       OldIndustryCredentialDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldIndustryCredentialDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldProgramDeliveryMethodDescriptorId [INT] NOT NULL,
       OldProgramDeliveryMethodDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldProgramDeliveryMethodDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldProgramEducationOrganizationId [BIGINT] NOT NULL,
       OldProgramName [NVARCHAR](60) NOT NULL,
       OldProgramTypeDescriptorId [INT] NOT NULL,
       OldProgramTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldProgramTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewBeginDate [DATE] NULL,
       NewCredentialEarnedDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewIndustryCredentialDescriptorId [INT] NULL,
       NewIndustryCredentialDescriptorNamespace [NVARCHAR](255) NULL,
       NewIndustryCredentialDescriptorCodeValue [NVARCHAR](50) NULL,
       NewProgramDeliveryMethodDescriptorId [INT] NULL,
       NewProgramDeliveryMethodDescriptorNamespace [NVARCHAR](255) NULL,
       NewProgramDeliveryMethodDescriptorCodeValue [NVARCHAR](50) NULL,
       NewProgramEducationOrganizationId [BIGINT] NULL,
       NewProgramName [NVARCHAR](60) NULL,
       NewProgramTypeDescriptorId [INT] NULL,
       NewProgramTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewProgramTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentCTEProgramAssociationCredential PRIMARY KEY CLUSTERED (ChangeVersion)
)
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[tracked_changes_nmped].[StudentEducationOrganizationAward]'))
CREATE TABLE [tracked_changes_nmped].[StudentEducationOrganizationAward]
(
       OldAwardDate [DATE] NOT NULL,
       OldEducationOrganizationId [BIGINT] NOT NULL,
       OldSchoolYear [SMALLINT] NOT NULL,
       OldStudentAwardLanguageDescriptorId [INT] NOT NULL,
       OldStudentAwardLanguageDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldStudentAwardLanguageDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentAwardTypeDescriptorId [INT] NOT NULL,
       OldStudentAwardTypeDescriptorNamespace [NVARCHAR](255) NOT NULL,
       OldStudentAwardTypeDescriptorCodeValue [NVARCHAR](50) NOT NULL,
       OldStudentUSI [INT] NOT NULL,
       OldStudentUniqueId [NVARCHAR](32) NOT NULL,
       NewAwardDate [DATE] NULL,
       NewEducationOrganizationId [BIGINT] NULL,
       NewSchoolYear [SMALLINT] NULL,
       NewStudentAwardLanguageDescriptorId [INT] NULL,
       NewStudentAwardLanguageDescriptorNamespace [NVARCHAR](255) NULL,
       NewStudentAwardLanguageDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentAwardTypeDescriptorId [INT] NULL,
       NewStudentAwardTypeDescriptorNamespace [NVARCHAR](255) NULL,
       NewStudentAwardTypeDescriptorCodeValue [NVARCHAR](50) NULL,
       NewStudentUSI [INT] NULL,
       NewStudentUniqueId [NVARCHAR](32) NULL,
       Id uniqueidentifier NOT NULL,
       ChangeVersion bigint NOT NULL,
       Discriminator [NVARCHAR](128) NULL,
       CreateDate DateTime2 NOT NULL DEFAULT (getutcdate()),
       CONSTRAINT PK_StudentEducationOrganizationAward PRIMARY KEY CLUSTERED (ChangeVersion)
)
