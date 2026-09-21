-- Extended Properties [nmped].[AnnualReviewDelayReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The annual review delay reason.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'AnnualReviewDelayReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'AnnualReviewDelayReasonDescriptor', @level2type=N'COLUMN', @level2name=N'AnnualReviewDelayReasonDescriptorId'
GO

-- Extended Properties [nmped].[DentalExaminationVerificationCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code of the dental examination performed.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DentalExaminationVerificationCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DentalExaminationVerificationCodeDescriptor', @level2type=N'COLUMN', @level2name=N'DentalExaminationVerificationCodeDescriptorId'
GO

-- Extended Properties [nmped].[DirectCertificationStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the type of direct certification statuses.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DirectCertificationStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DirectCertificationStatusDescriptor', @level2type=N'COLUMN', @level2name=N'DirectCertificationStatusDescriptorId'
GO

-- Extended Properties [nmped].[DisciplineActionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the discipline action.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the discipline action.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Provide additional information about the response to an incident.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineActionExtension', @level2type=N'COLUMN', @level2name=N'DisciplineActionDetailedResponse'
GO

-- Extended Properties [nmped].[DisciplineIncidentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this discipline incident is alcohol related or not.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'AlcoholRelatedIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this discipline incident is drug related or not.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'DrugRelatedIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this discipline incident is gang related or not.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'GangRelatedIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this discipline incident is hate crime related or not.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'HateCrimeRelatedIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this discipline incident is serious bodily injury related or not.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'DisciplineIncidentExtension', @level2type=N'COLUMN', @level2name=N'SeriousBodilyInjuryIndicator'
GO

-- Extended Properties [nmped].[ExpectedDiplomaTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The option determined and indicated in the student''s IEP.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ExpectedDiplomaTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ExpectedDiplomaTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ExpectedDiplomaTypeDescriptorId'
GO

-- Extended Properties [nmped].[IndustryCredentialDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the Industry Credential for the student''s program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'IndustryCredentialDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'IndustryCredentialDescriptor', @level2type=N'COLUMN', @level2name=N'IndustryCredentialDescriptorId'
GO

-- Extended Properties [nmped].[LevelOfEducationInstitutionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Level of Education Institution', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'LevelOfEducationInstitutionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'LevelOfEducationInstitutionDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfEducationInstitutionDescriptorId'
GO

-- Extended Properties [nmped].[LevelOfIntegrationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the type of Levels of Integration for Gifted and Special Education Students.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'LevelOfIntegrationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'LevelOfIntegrationDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfIntegrationDescriptorId'
GO

-- Extended Properties [nmped].[MileageTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mileage type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'MileageTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'MileageTypeDescriptor', @level2type=N'COLUMN', @level2name=N'MileageTypeDescriptorId'
GO

-- Extended Properties [nmped].[MilitaryFamilyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Military Family Status', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'MilitaryFamilyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'MilitaryFamilyDescriptor', @level2type=N'COLUMN', @level2name=N'MilitaryFamilyDescriptorId'
GO

-- Extended Properties [nmped].[NMPEDClassPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the Class Period.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'NMPEDClassPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'NMPEDClassPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'NMPEDClassPeriodDescriptorId'
GO

-- Extended Properties [nmped].[ParticipationInformationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the Program Participation Information.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ParticipationInformationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ParticipationInformationDescriptor', @level2type=N'COLUMN', @level2name=N'ParticipationInformationDescriptorId'
GO

-- Extended Properties [nmped].[PlannedPostGraduateActivityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The planned post graduate activity.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PlannedPostGraduateActivityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PlannedPostGraduateActivityDescriptor', @level2type=N'COLUMN', @level2name=N'PlannedPostGraduateActivityDescriptorId'
GO

-- Extended Properties [nmped].[PreKClassTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the method of Pre-K Participation.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PreKClassTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PreKClassTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PreKClassTypeDescriptorId'
GO

-- Extended Properties [nmped].[PrimaryAreaOfExceptionalityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary Area of exceptionality indicator', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PrimaryAreaOfExceptionalityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'PrimaryAreaOfExceptionalityDescriptor', @level2type=N'COLUMN', @level2name=N'PrimaryAreaOfExceptionalityDescriptorId'
GO

-- Extended Properties [nmped].[ProgramDeliveryMethodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the delivery method for the student''s program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ProgramDeliveryMethodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ProgramDeliveryMethodDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramDeliveryMethodDescriptorId'
GO

-- Extended Properties [nmped].[ProgramIntensityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the Program Intensity.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ProgramIntensityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'ProgramIntensityDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramIntensityDescriptorId'
GO

-- Extended Properties [nmped].[RoadTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The road type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'RoadTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'RoadTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RoadTypeDescriptorId'
GO

-- Extended Properties [nmped].[SectionExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of class period for this section.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'NMPEDClassPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicated the type of Pre-K participation for this section.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SectionExtension', @level2type=N'COLUMN', @level2name=N'PreKClassTypeDescriptorId'
GO

-- Extended Properties [nmped].[SpecialEducationEventReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special education event reason.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationEventReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationEventReasonDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventReasonDescriptorId'
GO

-- Extended Properties [nmped].[SpecialEducationEventTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special education event type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationEventTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationEventTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationEventTypeDescriptorId'
GO

-- Extended Properties [nmped].[SpecialEducationNonComplianceReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special education event non compliance reason.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationNonComplianceReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationNonComplianceReasonDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationNonComplianceReasonDescriptorId'
GO

-- Extended Properties [nmped].[SpecialEducationReferralCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Required if the child was referred from Part C to B or thru Child Find.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationReferralCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialEducationReferralCodeDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationReferralCodeDescriptorId'
GO

-- Extended Properties [nmped].[SpecialProgramCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This Code for the special program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialProgramCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'SpecialProgramCodeDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialProgramCodeDescriptorId'
GO

-- Extended Properties [nmped].[StaffDevelopment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The development activities a staff has accomplished.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the staff development started.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The hours the activity took.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'ActivityHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the staff development ended.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The staff ID of the mentor', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'MentorIdUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This data will be used to determine whether the Mentor has completed a Mentor Training.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'MentorTraining'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The credits earned by the staff.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'StaffCreditsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The staff development activity code.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'StaffDevelopmentActivityCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The staff development purpose code.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopment', @level2type=N'COLUMN', @level2name=N'StaffDevelopmentPurposeCodeDescriptorId'
GO

-- Extended Properties [nmped].[StaffDevelopmentActivityCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the staff development activity code.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopmentActivityCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopmentActivityCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffDevelopmentActivityCodeDescriptorId'
GO

-- Extended Properties [nmped].[StaffDevelopmentPurposeCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the staff development purpose.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopmentPurposeCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffDevelopmentPurposeCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StaffDevelopmentPurposeCodeDescriptorId'
GO

-- Extended Properties [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Institution or State that conferred Baccalaureate Degree.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'BaccalaureateLevelOfEducationInstitutionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Insitution or State that conferred Highest Degree', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'HighestCompletedLevelOfEducationInstitutionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The data is used to determine if a Staff Member is a National Board Certified Teacher.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'NationalCertified'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a Teacher or Principal position in the current district.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'TeacherOrPrincipalYearsInDistrict'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a Teacher or Principal position overall.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociationExtension', @level2type=N'COLUMN', @level2name=N'TeacherOrPrincipalYearsOverall'
GO

-- Extended Properties [nmped].[StudentAwardTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The award type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentAwardTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentAwardTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StudentAwardTypeDescriptorId'
GO

-- Extended Properties [nmped].[StudentCTEProgramAssociationCredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Credentials earned by students in a CTE program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the credential was earned.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'CredentialEarnedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the Industry Credential for a program a student is enrolled in.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'IndustryCredentialDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the Delivery Method for a program a student is enrolled in.
                      Valid values:
                      CG = College Granted Certificate
                      IS = Industry Standard Third Party Assessment', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'ProgramDeliveryMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCredential', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [nmped].[StudentEducationOrganizationAward] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The awards a student has earned at a education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the student got awarded.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'AwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student earned the award.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' The language for which the State Seal of Bilingualism-Biliteracy (SSBB) was awarded.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'StudentAwardLanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of award.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'StudentAwardTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAward', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [nmped].[StudentSchoolFoodServiceProgramAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the Direct Certification Status of a student. This does not apply to all students in the district.
                      Valid values:
                      1 = SNAP Direct Cert as identified in the direct certification report and certified by the district.
                      2 = Other Direct Cert Eligible (Homeless, FDPIR, Foster, Migrant, and Head Start)
                      3 = Family Members of SNAP identified students that were not found in the Direct Certification report.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationExtension', @level2type=N'COLUMN', @level2name=N'DirectCertificationStatusDescriptorId'
GO

-- Extended Properties [nmped].[StudentSectionAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ALTERNATE CREDIT COURSE CODE', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'AlternateCreditCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special program code the student is in.
                  D = Dual Credit Course
                  C = Concurrent Enrollment Course', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'StudentSectionAssociationExtension', @level2type=N'COLUMN', @level2name=N'SpecialProgramCodeDescriptorId'
GO

-- Extended Properties [nmped].[TransportationCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transportation category type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TransportationCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TransportationCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'TransportationCategoryDescriptorId'
GO

-- Extended Properties [nmped].[TransportationSetCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transportation set codes.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TransportationSetCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TransportationSetCodeDescriptor', @level2type=N'COLUMN', @level2name=N'TransportationSetCodeDescriptorId'
GO

-- Extended Properties [nmped].[TriennialReviewDelayReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The triennial review reason.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TriennialReviewDelayReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'TriennialReviewDelayReasonDescriptor', @level2type=N'COLUMN', @level2name=N'TriennialReviewDelayReasonDescriptorId'
GO

-- Extended Properties [nmped].[VehicleBodyManufacturerDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The body manufacturer.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleBodyManufacturerDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleBodyManufacturerDescriptor', @level2type=N'COLUMN', @level2name=N'VehicleBodyManufacturerDescriptorId'
GO

-- Extended Properties [nmped].[VehicleChassisManufacturerDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The chassis manufacturer.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleChassisManufacturerDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleChassisManufacturerDescriptor', @level2type=N'COLUMN', @level2name=N'VehicleChassisManufacturerDescriptorId'
GO

-- Extended Properties [nmped].[VehicleFuelTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The vehicle''s fuel type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleFuelTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleFuelTypeDescriptor', @level2type=N'COLUMN', @level2name=N'VehicleFuelTypeDescriptorId'
GO

-- Extended Properties [nmped].[VehicleRouteDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The transportation route.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleRouteDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleRouteDescriptor', @level2type=N'COLUMN', @level2name=N'VehicleRouteDescriptorId'
GO

-- Extended Properties [nmped].[VehicleTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The vehicle''s type.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'nmped', @level1type=N'TABLE', @level1name=N'VehicleTypeDescriptor', @level2type=N'COLUMN', @level2name=N'VehicleTypeDescriptorId'
GO

