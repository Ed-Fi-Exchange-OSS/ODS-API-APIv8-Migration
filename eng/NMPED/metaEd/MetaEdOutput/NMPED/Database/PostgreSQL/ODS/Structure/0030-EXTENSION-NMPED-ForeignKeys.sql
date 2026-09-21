ALTER TABLE nmped.AnnualReviewDelayReasonDescriptor ADD CONSTRAINT FK_d77238_Descriptor FOREIGN KEY (AnnualReviewDelayReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.DentalExaminationVerificationCodeDescriptor ADD CONSTRAINT FK_e307f3_Descriptor FOREIGN KEY (DentalExaminationVerificationCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.DirectCertificationStatusDescriptor ADD CONSTRAINT FK_e919b1_Descriptor FOREIGN KEY (DirectCertificationStatusDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.DisciplineActionExtension ADD CONSTRAINT FK_699fda_DisciplineAction FOREIGN KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
REFERENCES edfi.DisciplineAction (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE nmped.DisciplineIncidentExtension ADD CONSTRAINT FK_cde8b8_DisciplineIncident FOREIGN KEY (IncidentIdentifier, SchoolId)
REFERENCES edfi.DisciplineIncident (IncidentIdentifier, SchoolId)
ON DELETE CASCADE
;

ALTER TABLE nmped.ExpectedDiplomaTypeDescriptor ADD CONSTRAINT FK_36c230_Descriptor FOREIGN KEY (ExpectedDiplomaTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.IndustryCredentialDescriptor ADD CONSTRAINT FK_e93cda_Descriptor FOREIGN KEY (IndustryCredentialDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.LevelOfEducationInstitutionDescriptor ADD CONSTRAINT FK_2d13b6_Descriptor FOREIGN KEY (LevelOfEducationInstitutionDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.LevelOfIntegrationDescriptor ADD CONSTRAINT FK_ed7059_Descriptor FOREIGN KEY (LevelOfIntegrationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.MileageTypeDescriptor ADD CONSTRAINT FK_3b8662_Descriptor FOREIGN KEY (MileageTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.MilitaryFamilyDescriptor ADD CONSTRAINT FK_f53c1c_Descriptor FOREIGN KEY (MilitaryFamilyDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.NMPEDClassPeriodDescriptor ADD CONSTRAINT FK_7cc4ac_Descriptor FOREIGN KEY (NMPEDClassPeriodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.ParticipationInformationDescriptor ADD CONSTRAINT FK_2ffea1_Descriptor FOREIGN KEY (ParticipationInformationDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.PlannedPostGraduateActivityDescriptor ADD CONSTRAINT FK_9a4e56_Descriptor FOREIGN KEY (PlannedPostGraduateActivityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.PreKClassTypeDescriptor ADD CONSTRAINT FK_b8c28a_Descriptor FOREIGN KEY (PreKClassTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.PrimaryAreaOfExceptionalityDescriptor ADD CONSTRAINT FK_73778d_Descriptor FOREIGN KEY (PrimaryAreaOfExceptionalityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.ProgramDeliveryMethodDescriptor ADD CONSTRAINT FK_80f78a_Descriptor FOREIGN KEY (ProgramDeliveryMethodDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.ProgramIntensityDescriptor ADD CONSTRAINT FK_eb1e64_Descriptor FOREIGN KEY (ProgramIntensityDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.RoadTypeDescriptor ADD CONSTRAINT FK_7b9eae_Descriptor FOREIGN KEY (RoadTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.SectionExtension ADD CONSTRAINT FK_86dfb3_NMPEDClassPeriodDescriptor FOREIGN KEY (NMPEDClassPeriodDescriptorId)
REFERENCES nmped.NMPEDClassPeriodDescriptor (NMPEDClassPeriodDescriptorId)
;

CREATE INDEX FK_86dfb3_NMPEDClassPeriodDescriptor
ON nmped.SectionExtension (NMPEDClassPeriodDescriptorId ASC);

ALTER TABLE nmped.SectionExtension ADD CONSTRAINT FK_86dfb3_PreKClassTypeDescriptor FOREIGN KEY (PreKClassTypeDescriptorId)
REFERENCES nmped.PreKClassTypeDescriptor (PreKClassTypeDescriptorId)
;

CREATE INDEX FK_86dfb3_PreKClassTypeDescriptor
ON nmped.SectionExtension (PreKClassTypeDescriptorId ASC);

ALTER TABLE nmped.SectionExtension ADD CONSTRAINT FK_86dfb3_Section FOREIGN KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
REFERENCES edfi.Section (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE nmped.SpecialEducationEventReasonDescriptor ADD CONSTRAINT FK_08a218_Descriptor FOREIGN KEY (SpecialEducationEventReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.SpecialEducationEventTypeDescriptor ADD CONSTRAINT FK_53c615_Descriptor FOREIGN KEY (SpecialEducationEventTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.SpecialEducationNonComplianceReasonDescriptor ADD CONSTRAINT FK_63b75c_Descriptor FOREIGN KEY (SpecialEducationNonComplianceReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.SpecialEducationReferralCodeDescriptor ADD CONSTRAINT FK_454a28_Descriptor FOREIGN KEY (SpecialEducationReferralCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.SpecialProgramCodeDescriptor ADD CONSTRAINT FK_410073_Descriptor FOREIGN KEY (SpecialProgramCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.StaffDevelopment ADD CONSTRAINT FK_62d69c_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE nmped.StaffDevelopment ADD CONSTRAINT FK_62d69c_Staff FOREIGN KEY (StaffUSI)
REFERENCES edfi.Staff (StaffUSI)
;

ALTER TABLE nmped.StaffDevelopment ADD CONSTRAINT FK_62d69c_StaffDevelopmentActivityCodeDescriptor FOREIGN KEY (StaffDevelopmentActivityCodeDescriptorId)
REFERENCES nmped.StaffDevelopmentActivityCodeDescriptor (StaffDevelopmentActivityCodeDescriptorId)
;

CREATE INDEX FK_62d69c_StaffDevelopmentActivityCodeDescriptor
ON nmped.StaffDevelopment (StaffDevelopmentActivityCodeDescriptorId ASC);

ALTER TABLE nmped.StaffDevelopment ADD CONSTRAINT FK_62d69c_StaffDevelopmentPurposeCodeDescriptor FOREIGN KEY (StaffDevelopmentPurposeCodeDescriptorId)
REFERENCES nmped.StaffDevelopmentPurposeCodeDescriptor (StaffDevelopmentPurposeCodeDescriptorId)
;

CREATE INDEX FK_62d69c_StaffDevelopmentPurposeCodeDescriptor
ON nmped.StaffDevelopment (StaffDevelopmentPurposeCodeDescriptorId ASC);

ALTER TABLE nmped.StaffDevelopmentActivityCodeDescriptor ADD CONSTRAINT FK_14238c_Descriptor FOREIGN KEY (StaffDevelopmentActivityCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.StaffDevelopmentPurposeCodeDescriptor ADD CONSTRAINT FK_5a46c7_Descriptor FOREIGN KEY (StaffDevelopmentPurposeCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_LevelOfEducationInstitutionDescriptor FOREIGN KEY (HighestCompletedLevelOfEducationInstitutionDescriptorId)
REFERENCES nmped.LevelOfEducationInstitutionDescriptor (LevelOfEducationInstitutionDescriptorId)
;

CREATE INDEX FK_ec4394_LevelOfEducationInstitutionDescriptor
ON nmped.StaffEducationOrganizationEmploymentAssociationExtension (HighestCompletedLevelOfEducationInstitutionDescriptorId ASC);

ALTER TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_LevelOfEducationInstitutionDescriptor1 FOREIGN KEY (BaccalaureateLevelOfEducationInstitutionDescriptorId)
REFERENCES nmped.LevelOfEducationInstitutionDescriptor (LevelOfEducationInstitutionDescriptorId)
;

CREATE INDEX FK_ec4394_LevelOfEducationInstitutionDescriptor1
ON nmped.StaffEducationOrganizationEmploymentAssociationExtension (BaccalaureateLevelOfEducationInstitutionDescriptorId ASC);

ALTER TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension ADD CONSTRAINT FK_ec4394_StaffEducationOrganizationEmploymentAssociation FOREIGN KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
REFERENCES edfi.StaffEducationOrganizationEmploymentAssociation (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
ON DELETE CASCADE
;

ALTER TABLE nmped.StudentAwardTypeDescriptor ADD CONSTRAINT FK_ead1b6_Descriptor FOREIGN KEY (StudentAwardTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.StudentCTEProgramAssociationCredential ADD CONSTRAINT FK_3eb6d3_IndustryCredentialDescriptor FOREIGN KEY (IndustryCredentialDescriptorId)
REFERENCES nmped.IndustryCredentialDescriptor (IndustryCredentialDescriptorId)
;

CREATE INDEX FK_3eb6d3_IndustryCredentialDescriptor
ON nmped.StudentCTEProgramAssociationCredential (IndustryCredentialDescriptorId ASC);

ALTER TABLE nmped.StudentCTEProgramAssociationCredential ADD CONSTRAINT FK_3eb6d3_ProgramDeliveryMethodDescriptor FOREIGN KEY (ProgramDeliveryMethodDescriptorId)
REFERENCES nmped.ProgramDeliveryMethodDescriptor (ProgramDeliveryMethodDescriptorId)
;

CREATE INDEX FK_3eb6d3_ProgramDeliveryMethodDescriptor
ON nmped.StudentCTEProgramAssociationCredential (ProgramDeliveryMethodDescriptorId ASC);

ALTER TABLE nmped.StudentCTEProgramAssociationCredential ADD CONSTRAINT FK_3eb6d3_StudentCTEProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentCTEProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
;

CREATE INDEX FK_3eb6d3_StudentCTEProgramAssociation
ON nmped.StudentCTEProgramAssociationCredential (BeginDate ASC, EducationOrganizationId ASC, ProgramEducationOrganizationId ASC, ProgramName ASC, ProgramTypeDescriptorId ASC, StudentUSI ASC);

ALTER TABLE nmped.StudentEducationOrganizationAward ADD CONSTRAINT FK_4d41c1_EducationOrganization FOREIGN KEY (EducationOrganizationId)
REFERENCES edfi.EducationOrganization (EducationOrganizationId)
;

ALTER TABLE nmped.StudentEducationOrganizationAward ADD CONSTRAINT FK_4d41c1_LanguageDescriptor FOREIGN KEY (StudentAwardLanguageDescriptorId)
REFERENCES edfi.LanguageDescriptor (LanguageDescriptorId)
;

CREATE INDEX FK_4d41c1_LanguageDescriptor
ON nmped.StudentEducationOrganizationAward (StudentAwardLanguageDescriptorId ASC);

ALTER TABLE nmped.StudentEducationOrganizationAward ADD CONSTRAINT FK_4d41c1_SchoolYearType FOREIGN KEY (SchoolYear)
REFERENCES edfi.SchoolYearType (SchoolYear)
;

CREATE INDEX FK_4d41c1_SchoolYearType
ON nmped.StudentEducationOrganizationAward (SchoolYear ASC);

ALTER TABLE nmped.StudentEducationOrganizationAward ADD CONSTRAINT FK_4d41c1_Student FOREIGN KEY (StudentUSI)
REFERENCES edfi.Student (StudentUSI)
;

ALTER TABLE nmped.StudentEducationOrganizationAward ADD CONSTRAINT FK_4d41c1_StudentAwardTypeDescriptor FOREIGN KEY (StudentAwardTypeDescriptorId)
REFERENCES nmped.StudentAwardTypeDescriptor (StudentAwardTypeDescriptorId)
;

CREATE INDEX FK_4d41c1_StudentAwardTypeDescriptor
ON nmped.StudentEducationOrganizationAward (StudentAwardTypeDescriptorId ASC);

ALTER TABLE nmped.StudentSchoolFoodServiceProgramAssociationExtension ADD CONSTRAINT FK_0566bb_DirectCertificationStatusDescriptor FOREIGN KEY (DirectCertificationStatusDescriptorId)
REFERENCES nmped.DirectCertificationStatusDescriptor (DirectCertificationStatusDescriptorId)
;

CREATE INDEX FK_0566bb_DirectCertificationStatusDescriptor
ON nmped.StudentSchoolFoodServiceProgramAssociationExtension (DirectCertificationStatusDescriptorId ASC);

ALTER TABLE nmped.StudentSchoolFoodServiceProgramAssociationExtension ADD CONSTRAINT FK_0566bb_StudentSchoolFoodServiceProgramAssociation FOREIGN KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
REFERENCES edfi.StudentSchoolFoodServiceProgramAssociation (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
ON DELETE CASCADE
;

ALTER TABLE nmped.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_SpecialProgramCodeDescriptor FOREIGN KEY (SpecialProgramCodeDescriptorId)
REFERENCES nmped.SpecialProgramCodeDescriptor (SpecialProgramCodeDescriptorId)
;

CREATE INDEX FK_a77484_SpecialProgramCodeDescriptor
ON nmped.StudentSectionAssociationExtension (SpecialProgramCodeDescriptorId ASC);

ALTER TABLE nmped.StudentSectionAssociationExtension ADD CONSTRAINT FK_a77484_StudentSectionAssociation FOREIGN KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
REFERENCES edfi.StudentSectionAssociation (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
ON DELETE CASCADE
ON UPDATE CASCADE
;

ALTER TABLE nmped.TransportationCategoryDescriptor ADD CONSTRAINT FK_8d7604_Descriptor FOREIGN KEY (TransportationCategoryDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.TransportationSetCodeDescriptor ADD CONSTRAINT FK_6a8383_Descriptor FOREIGN KEY (TransportationSetCodeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.TriennialReviewDelayReasonDescriptor ADD CONSTRAINT FK_ec98b9_Descriptor FOREIGN KEY (TriennialReviewDelayReasonDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.VehicleBodyManufacturerDescriptor ADD CONSTRAINT FK_cbdcf0_Descriptor FOREIGN KEY (VehicleBodyManufacturerDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.VehicleChassisManufacturerDescriptor ADD CONSTRAINT FK_05c277_Descriptor FOREIGN KEY (VehicleChassisManufacturerDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.VehicleFuelTypeDescriptor ADD CONSTRAINT FK_deb373_Descriptor FOREIGN KEY (VehicleFuelTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.VehicleRouteDescriptor ADD CONSTRAINT FK_9d1881_Descriptor FOREIGN KEY (VehicleRouteDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

ALTER TABLE nmped.VehicleTypeDescriptor ADD CONSTRAINT FK_3758ad_Descriptor FOREIGN KEY (VehicleTypeDescriptorId)
REFERENCES edfi.Descriptor (DescriptorId)
ON DELETE CASCADE
;

