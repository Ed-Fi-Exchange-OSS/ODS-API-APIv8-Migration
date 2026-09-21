ALTER TABLE [nmped].[AnnualReviewDelayReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_AnnualReviewDelayReasonDescriptor_Descriptor] FOREIGN KEY ([AnnualReviewDelayReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[DentalExaminationVerificationCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_DentalExaminationVerificationCodeDescriptor_Descriptor] FOREIGN KEY ([DentalExaminationVerificationCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[DirectCertificationStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_DirectCertificationStatusDescriptor_Descriptor] FOREIGN KEY ([DirectCertificationStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[DisciplineActionExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineActionExtension_DisciplineAction] FOREIGN KEY ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
REFERENCES [edfi].[DisciplineAction] ([DisciplineActionIdentifier], [DisciplineDate], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[DisciplineIncidentExtension] WITH CHECK ADD CONSTRAINT [FK_DisciplineIncidentExtension_DisciplineIncident] FOREIGN KEY ([IncidentIdentifier], [SchoolId])
REFERENCES [edfi].[DisciplineIncident] ([IncidentIdentifier], [SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[ExpectedDiplomaTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ExpectedDiplomaTypeDescriptor_Descriptor] FOREIGN KEY ([ExpectedDiplomaTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[IndustryCredentialDescriptor] WITH CHECK ADD CONSTRAINT [FK_IndustryCredentialDescriptor_Descriptor] FOREIGN KEY ([IndustryCredentialDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[LevelOfEducationInstitutionDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelOfEducationInstitutionDescriptor_Descriptor] FOREIGN KEY ([LevelOfEducationInstitutionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[LevelOfIntegrationDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelOfIntegrationDescriptor_Descriptor] FOREIGN KEY ([LevelOfIntegrationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[MileageTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_MileageTypeDescriptor_Descriptor] FOREIGN KEY ([MileageTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[MilitaryFamilyDescriptor] WITH CHECK ADD CONSTRAINT [FK_MilitaryFamilyDescriptor_Descriptor] FOREIGN KEY ([MilitaryFamilyDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[NMPEDClassPeriodDescriptor] WITH CHECK ADD CONSTRAINT [FK_NMPEDClassPeriodDescriptor_Descriptor] FOREIGN KEY ([NMPEDClassPeriodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[ParticipationInformationDescriptor] WITH CHECK ADD CONSTRAINT [FK_ParticipationInformationDescriptor_Descriptor] FOREIGN KEY ([ParticipationInformationDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[PlannedPostGraduateActivityDescriptor] WITH CHECK ADD CONSTRAINT [FK_PlannedPostGraduateActivityDescriptor_Descriptor] FOREIGN KEY ([PlannedPostGraduateActivityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[PreKClassTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_PreKClassTypeDescriptor_Descriptor] FOREIGN KEY ([PreKClassTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[PrimaryAreaOfExceptionalityDescriptor] WITH CHECK ADD CONSTRAINT [FK_PrimaryAreaOfExceptionalityDescriptor_Descriptor] FOREIGN KEY ([PrimaryAreaOfExceptionalityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[ProgramDeliveryMethodDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramDeliveryMethodDescriptor_Descriptor] FOREIGN KEY ([ProgramDeliveryMethodDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[ProgramIntensityDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramIntensityDescriptor_Descriptor] FOREIGN KEY ([ProgramIntensityDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[RoadTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_RoadTypeDescriptor_Descriptor] FOREIGN KEY ([RoadTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_NMPEDClassPeriodDescriptor] FOREIGN KEY ([NMPEDClassPeriodDescriptorId])
REFERENCES [nmped].[NMPEDClassPeriodDescriptor] ([NMPEDClassPeriodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionExtension_NMPEDClassPeriodDescriptor]
ON [nmped].[SectionExtension] ([NMPEDClassPeriodDescriptorId] ASC)
GO

ALTER TABLE [nmped].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_PreKClassTypeDescriptor] FOREIGN KEY ([PreKClassTypeDescriptorId])
REFERENCES [nmped].[PreKClassTypeDescriptor] ([PreKClassTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionExtension_PreKClassTypeDescriptor]
ON [nmped].[SectionExtension] ([PreKClassTypeDescriptorId] ASC)
GO

ALTER TABLE [nmped].[SectionExtension] WITH CHECK ADD CONSTRAINT [FK_SectionExtension_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [nmped].[SpecialEducationEventReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationEventReasonDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationEventReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[SpecialEducationEventTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationEventTypeDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationEventTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[SpecialEducationNonComplianceReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationNonComplianceReasonDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationNonComplianceReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[SpecialEducationReferralCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialEducationReferralCodeDescriptor_Descriptor] FOREIGN KEY ([SpecialEducationReferralCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[SpecialProgramCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SpecialProgramCodeDescriptor_Descriptor] FOREIGN KEY ([SpecialProgramCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StaffDevelopment] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopment_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [nmped].[StaffDevelopment] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopment_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

ALTER TABLE [nmped].[StaffDevelopment] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopment_StaffDevelopmentActivityCodeDescriptor] FOREIGN KEY ([StaffDevelopmentActivityCodeDescriptorId])
REFERENCES [nmped].[StaffDevelopmentActivityCodeDescriptor] ([StaffDevelopmentActivityCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffDevelopment_StaffDevelopmentActivityCodeDescriptor]
ON [nmped].[StaffDevelopment] ([StaffDevelopmentActivityCodeDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StaffDevelopment] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopment_StaffDevelopmentPurposeCodeDescriptor] FOREIGN KEY ([StaffDevelopmentPurposeCodeDescriptorId])
REFERENCES [nmped].[StaffDevelopmentPurposeCodeDescriptor] ([StaffDevelopmentPurposeCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffDevelopment_StaffDevelopmentPurposeCodeDescriptor]
ON [nmped].[StaffDevelopment] ([StaffDevelopmentPurposeCodeDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StaffDevelopmentActivityCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopmentActivityCodeDescriptor_Descriptor] FOREIGN KEY ([StaffDevelopmentActivityCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StaffDevelopmentPurposeCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffDevelopmentPurposeCodeDescriptor_Descriptor] FOREIGN KEY ([StaffDevelopmentPurposeCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_LevelOfEducationInstitutionDescriptor] FOREIGN KEY ([HighestCompletedLevelOfEducationInstitutionDescriptorId])
REFERENCES [nmped].[LevelOfEducationInstitutionDescriptor] ([LevelOfEducationInstitutionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_LevelOfEducationInstitutionDescriptor]
ON [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] ([HighestCompletedLevelOfEducationInstitutionDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_LevelOfEducationInstitutionDescriptor1] FOREIGN KEY ([BaccalaureateLevelOfEducationInstitutionDescriptorId])
REFERENCES [nmped].[LevelOfEducationInstitutionDescriptor] ([LevelOfEducationInstitutionDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_LevelOfEducationInstitutionDescriptor1]
ON [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] ([BaccalaureateLevelOfEducationInstitutionDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation] FOREIGN KEY ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [EmploymentStatusDescriptorId], [HireDate], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StudentAwardTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentAwardTypeDescriptor_Descriptor] FOREIGN KEY ([StudentAwardTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCredential_IndustryCredentialDescriptor] FOREIGN KEY ([IndustryCredentialDescriptorId])
REFERENCES [nmped].[IndustryCredentialDescriptor] ([IndustryCredentialDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCredential_IndustryCredentialDescriptor]
ON [nmped].[StudentCTEProgramAssociationCredential] ([IndustryCredentialDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCredential_ProgramDeliveryMethodDescriptor] FOREIGN KEY ([ProgramDeliveryMethodDescriptorId])
REFERENCES [nmped].[ProgramDeliveryMethodDescriptor] ([ProgramDeliveryMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCredential_ProgramDeliveryMethodDescriptor]
ON [nmped].[StudentCTEProgramAssociationCredential] ([ProgramDeliveryMethodDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentCTEProgramAssociationCredential] WITH CHECK ADD CONSTRAINT [FK_StudentCTEProgramAssociationCredential_StudentCTEProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentCTEProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StudentCTEProgramAssociationCredential_StudentCTEProgramAssociation]
ON [nmped].[StudentCTEProgramAssociationCredential] ([BeginDate] ASC, [EducationOrganizationId] ASC, [ProgramEducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [nmped].[StudentEducationOrganizationAward] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAward_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

ALTER TABLE [nmped].[StudentEducationOrganizationAward] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAward_LanguageDescriptor] FOREIGN KEY ([StudentAwardLanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAward_LanguageDescriptor]
ON [nmped].[StudentEducationOrganizationAward] ([StudentAwardLanguageDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentEducationOrganizationAward] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAward_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAward_SchoolYearType]
ON [nmped].[StudentEducationOrganizationAward] ([SchoolYear] ASC)
GO

ALTER TABLE [nmped].[StudentEducationOrganizationAward] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAward_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

ALTER TABLE [nmped].[StudentEducationOrganizationAward] WITH CHECK ADD CONSTRAINT [FK_StudentEducationOrganizationAward_StudentAwardTypeDescriptor] FOREIGN KEY ([StudentAwardTypeDescriptorId])
REFERENCES [nmped].[StudentAwardTypeDescriptor] ([StudentAwardTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentEducationOrganizationAward_StudentAwardTypeDescriptor]
ON [nmped].[StudentEducationOrganizationAward] ([StudentAwardTypeDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentSchoolFoodServiceProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolFoodServiceProgramAssociationExtension_DirectCertificationStatusDescriptor] FOREIGN KEY ([DirectCertificationStatusDescriptorId])
REFERENCES [nmped].[DirectCertificationStatusDescriptor] ([DirectCertificationStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSchoolFoodServiceProgramAssociationExtension_DirectCertificationStatusDescriptor]
ON [nmped].[StudentSchoolFoodServiceProgramAssociationExtension] ([DirectCertificationStatusDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentSchoolFoodServiceProgramAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSchoolFoodServiceProgramAssociationExtension_StudentSchoolFoodServiceProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
REFERENCES [edfi].[StudentSchoolFoodServiceProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_SpecialProgramCodeDescriptor] FOREIGN KEY ([SpecialProgramCodeDescriptorId])
REFERENCES [nmped].[SpecialProgramCodeDescriptor] ([SpecialProgramCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociationExtension_SpecialProgramCodeDescriptor]
ON [nmped].[StudentSectionAssociationExtension] ([SpecialProgramCodeDescriptorId] ASC)
GO

ALTER TABLE [nmped].[StudentSectionAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StudentSectionAssociationExtension_StudentSectionAssociation] FOREIGN KEY ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentSectionAssociation] ([BeginDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [nmped].[TransportationCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_TransportationCategoryDescriptor_Descriptor] FOREIGN KEY ([TransportationCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[TransportationSetCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TransportationSetCodeDescriptor_Descriptor] FOREIGN KEY ([TransportationSetCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[TriennialReviewDelayReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_TriennialReviewDelayReasonDescriptor_Descriptor] FOREIGN KEY ([TriennialReviewDelayReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[VehicleBodyManufacturerDescriptor] WITH CHECK ADD CONSTRAINT [FK_VehicleBodyManufacturerDescriptor_Descriptor] FOREIGN KEY ([VehicleBodyManufacturerDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[VehicleChassisManufacturerDescriptor] WITH CHECK ADD CONSTRAINT [FK_VehicleChassisManufacturerDescriptor_Descriptor] FOREIGN KEY ([VehicleChassisManufacturerDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[VehicleFuelTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_VehicleFuelTypeDescriptor_Descriptor] FOREIGN KEY ([VehicleFuelTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[VehicleRouteDescriptor] WITH CHECK ADD CONSTRAINT [FK_VehicleRouteDescriptor_Descriptor] FOREIGN KEY ([VehicleRouteDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [nmped].[VehicleTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_VehicleTypeDescriptor_Descriptor] FOREIGN KEY ([VehicleTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

