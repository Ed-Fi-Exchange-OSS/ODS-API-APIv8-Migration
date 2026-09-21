-- Extended Properties [nmped].[AnnualReviewDelayReasonDescriptor] --
COMMENT ON TABLE nmped.AnnualReviewDelayReasonDescriptor IS 'The annual review delay reason.';
COMMENT ON COLUMN nmped.AnnualReviewDelayReasonDescriptor.AnnualReviewDelayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[DentalExaminationVerificationCodeDescriptor] --
COMMENT ON TABLE nmped.DentalExaminationVerificationCodeDescriptor IS 'The code of the dental examination performed.';
COMMENT ON COLUMN nmped.DentalExaminationVerificationCodeDescriptor.DentalExaminationVerificationCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[DirectCertificationStatusDescriptor] --
COMMENT ON TABLE nmped.DirectCertificationStatusDescriptor IS 'This descriptor describes the type of direct certification statuses.';
COMMENT ON COLUMN nmped.DirectCertificationStatusDescriptor.DirectCertificationStatusDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[DisciplineActionExtension] --
COMMENT ON TABLE nmped.DisciplineActionExtension IS '';
COMMENT ON COLUMN nmped.DisciplineActionExtension.DisciplineActionIdentifier IS 'Identifier assigned by the education organization to the discipline action.';
COMMENT ON COLUMN nmped.DisciplineActionExtension.DisciplineDate IS 'The date of the discipline action.';
COMMENT ON COLUMN nmped.DisciplineActionExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN nmped.DisciplineActionExtension.DisciplineActionDetailedResponse IS 'Provide additional information about the response to an incident.';

-- Extended Properties [nmped].[DisciplineIncidentExtension] --
COMMENT ON TABLE nmped.DisciplineIncidentExtension IS '';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.IncidentIdentifier IS 'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire discipline incident even if it included multiple offenses and multiple offenders.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.AlcoholRelatedIndicator IS 'An indication of whether or not this discipline incident is alcohol related or not.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.DrugRelatedIndicator IS 'An indication of whether or not this discipline incident is drug related or not.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.GangRelatedIndicator IS 'An indication of whether or not this discipline incident is gang related or not.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.HateCrimeRelatedIndicator IS 'An indication of whether or not this discipline incident is hate crime related or not.';
COMMENT ON COLUMN nmped.DisciplineIncidentExtension.SeriousBodilyInjuryIndicator IS 'An indication of whether or not this discipline incident is serious bodily injury related or not.';

-- Extended Properties [nmped].[ExpectedDiplomaTypeDescriptor] --
COMMENT ON TABLE nmped.ExpectedDiplomaTypeDescriptor IS 'The option determined and indicated in the student''s IEP.';
COMMENT ON COLUMN nmped.ExpectedDiplomaTypeDescriptor.ExpectedDiplomaTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[IndustryCredentialDescriptor] --
COMMENT ON TABLE nmped.IndustryCredentialDescriptor IS 'This descriptor describes the Industry Credential for the student''s program.';
COMMENT ON COLUMN nmped.IndustryCredentialDescriptor.IndustryCredentialDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[LevelOfEducationInstitutionDescriptor] --
COMMENT ON TABLE nmped.LevelOfEducationInstitutionDescriptor IS 'Indicates the Level of Education Institution';
COMMENT ON COLUMN nmped.LevelOfEducationInstitutionDescriptor.LevelOfEducationInstitutionDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[LevelOfIntegrationDescriptor] --
COMMENT ON TABLE nmped.LevelOfIntegrationDescriptor IS 'This descriptor describes the type of Levels of Integration for Gifted and Special Education Students.';
COMMENT ON COLUMN nmped.LevelOfIntegrationDescriptor.LevelOfIntegrationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[MileageTypeDescriptor] --
COMMENT ON TABLE nmped.MileageTypeDescriptor IS 'The mileage type.';
COMMENT ON COLUMN nmped.MileageTypeDescriptor.MileageTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[MilitaryFamilyDescriptor] --
COMMENT ON TABLE nmped.MilitaryFamilyDescriptor IS 'Military Family Status';
COMMENT ON COLUMN nmped.MilitaryFamilyDescriptor.MilitaryFamilyDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[NMPEDClassPeriodDescriptor] --
COMMENT ON TABLE nmped.NMPEDClassPeriodDescriptor IS 'This descriptor describes the Class Period.';
COMMENT ON COLUMN nmped.NMPEDClassPeriodDescriptor.NMPEDClassPeriodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[ParticipationInformationDescriptor] --
COMMENT ON TABLE nmped.ParticipationInformationDescriptor IS 'This descriptor describes the Program Participation Information.';
COMMENT ON COLUMN nmped.ParticipationInformationDescriptor.ParticipationInformationDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[PlannedPostGraduateActivityDescriptor] --
COMMENT ON TABLE nmped.PlannedPostGraduateActivityDescriptor IS 'The planned post graduate activity.';
COMMENT ON COLUMN nmped.PlannedPostGraduateActivityDescriptor.PlannedPostGraduateActivityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[PreKClassTypeDescriptor] --
COMMENT ON TABLE nmped.PreKClassTypeDescriptor IS 'This descriptor describes the method of Pre-K Participation.';
COMMENT ON COLUMN nmped.PreKClassTypeDescriptor.PreKClassTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[PrimaryAreaOfExceptionalityDescriptor] --
COMMENT ON TABLE nmped.PrimaryAreaOfExceptionalityDescriptor IS 'Primary Area of exceptionality indicator';
COMMENT ON COLUMN nmped.PrimaryAreaOfExceptionalityDescriptor.PrimaryAreaOfExceptionalityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[ProgramDeliveryMethodDescriptor] --
COMMENT ON TABLE nmped.ProgramDeliveryMethodDescriptor IS 'This descriptor describes the delivery method for the student''s program.';
COMMENT ON COLUMN nmped.ProgramDeliveryMethodDescriptor.ProgramDeliveryMethodDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[ProgramIntensityDescriptor] --
COMMENT ON TABLE nmped.ProgramIntensityDescriptor IS 'This descriptor describes the Program Intensity.';
COMMENT ON COLUMN nmped.ProgramIntensityDescriptor.ProgramIntensityDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[RoadTypeDescriptor] --
COMMENT ON TABLE nmped.RoadTypeDescriptor IS 'The road type.';
COMMENT ON COLUMN nmped.RoadTypeDescriptor.RoadTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[SectionExtension] --
COMMENT ON TABLE nmped.SectionExtension IS '';
COMMENT ON COLUMN nmped.SectionExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN nmped.SectionExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN nmped.SectionExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN nmped.SectionExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN nmped.SectionExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN nmped.SectionExtension.NMPEDClassPeriodDescriptorId IS 'Indicates the type of class period for this section.';
COMMENT ON COLUMN nmped.SectionExtension.PreKClassTypeDescriptorId IS 'Indicated the type of Pre-K participation for this section.';

-- Extended Properties [nmped].[SpecialEducationEventReasonDescriptor] --
COMMENT ON TABLE nmped.SpecialEducationEventReasonDescriptor IS 'The special education event reason.';
COMMENT ON COLUMN nmped.SpecialEducationEventReasonDescriptor.SpecialEducationEventReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[SpecialEducationEventTypeDescriptor] --
COMMENT ON TABLE nmped.SpecialEducationEventTypeDescriptor IS 'The special education event type.';
COMMENT ON COLUMN nmped.SpecialEducationEventTypeDescriptor.SpecialEducationEventTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[SpecialEducationNonComplianceReasonDescriptor] --
COMMENT ON TABLE nmped.SpecialEducationNonComplianceReasonDescriptor IS 'The special education event non compliance reason.';
COMMENT ON COLUMN nmped.SpecialEducationNonComplianceReasonDescriptor.SpecialEducationNonComplianceReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[SpecialEducationReferralCodeDescriptor] --
COMMENT ON TABLE nmped.SpecialEducationReferralCodeDescriptor IS 'Required if the child was referred from Part C to B or thru Child Find.';
COMMENT ON COLUMN nmped.SpecialEducationReferralCodeDescriptor.SpecialEducationReferralCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[SpecialProgramCodeDescriptor] --
COMMENT ON TABLE nmped.SpecialProgramCodeDescriptor IS 'This Code for the special program.';
COMMENT ON COLUMN nmped.SpecialProgramCodeDescriptor.SpecialProgramCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[StaffDevelopment] --
COMMENT ON TABLE nmped.StaffDevelopment IS 'The development activities a staff has accomplished.';
COMMENT ON COLUMN nmped.StaffDevelopment.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StaffDevelopment.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN nmped.StaffDevelopment.StartDate IS 'The date the staff development started.';
COMMENT ON COLUMN nmped.StaffDevelopment.ActivityHours IS 'The hours the activity took.';
COMMENT ON COLUMN nmped.StaffDevelopment.EndDate IS 'The date the staff development ended.';
COMMENT ON COLUMN nmped.StaffDevelopment.MentorIdUniqueId IS 'The staff ID of the mentor';
COMMENT ON COLUMN nmped.StaffDevelopment.MentorTraining IS 'This data will be used to determine whether the Mentor has completed a Mentor Training.';
COMMENT ON COLUMN nmped.StaffDevelopment.StaffCreditsEarned IS 'The credits earned by the staff.';
COMMENT ON COLUMN nmped.StaffDevelopment.StaffDevelopmentActivityCodeDescriptorId IS 'The staff development activity code.';
COMMENT ON COLUMN nmped.StaffDevelopment.StaffDevelopmentPurposeCodeDescriptorId IS 'The staff development purpose code.';

-- Extended Properties [nmped].[StaffDevelopmentActivityCodeDescriptor] --
COMMENT ON TABLE nmped.StaffDevelopmentActivityCodeDescriptor IS 'This descriptor describes the staff development activity code.';
COMMENT ON COLUMN nmped.StaffDevelopmentActivityCodeDescriptor.StaffDevelopmentActivityCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[StaffDevelopmentPurposeCodeDescriptor] --
COMMENT ON TABLE nmped.StaffDevelopmentPurposeCodeDescriptor IS 'This descriptor describes the staff development purpose.';
COMMENT ON COLUMN nmped.StaffDevelopmentPurposeCodeDescriptor.StaffDevelopmentPurposeCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[StaffEducationOrganizationEmploymentAssociationExtension] --
COMMENT ON TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension IS '';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.EmploymentStatusDescriptorId IS 'Reflects the type of employment or contract.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.HireDate IS 'The month, day, and year on which an individual was hired for a position.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.StaffUSI IS 'A unique alphanumeric code assigned to a staff.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.BaccalaureateLevelOfEducationInstitutionDescriptorId IS 'Indicates the Institution or State that conferred Baccalaureate Degree.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.HighestCompletedLevelOfEducationInstitutionDescriptorId IS 'Indicates the Insitution or State that conferred Highest Degree';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.NationalCertified IS 'The data is used to determine if a Staff Member is a National Board Certified Teacher.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.TeacherOrPrincipalYearsInDistrict IS 'The total number of years that an individual has previously held a Teacher or Principal position in the current district.';
COMMENT ON COLUMN nmped.StaffEducationOrganizationEmploymentAssociationExtension.TeacherOrPrincipalYearsOverall IS 'The total number of years that an individual has previously held a Teacher or Principal position overall.';

-- Extended Properties [nmped].[StudentAwardTypeDescriptor] --
COMMENT ON TABLE nmped.StudentAwardTypeDescriptor IS 'The award type.';
COMMENT ON COLUMN nmped.StudentAwardTypeDescriptor.StudentAwardTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[StudentCTEProgramAssociationCredential] --
COMMENT ON TABLE nmped.StudentCTEProgramAssociationCredential IS 'Credentials earned by students in a CTE program.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.CredentialEarnedDate IS 'The date the credential was earned.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.IndustryCredentialDescriptorId IS 'Identifies the Industry Credential for a program a student is enrolled in.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.ProgramDeliveryMethodDescriptorId IS 'Identifies the Delivery Method for a program a student is enrolled in.
                      Valid values:
                      CG = College Granted Certificate
                      IS = Industry Standard Third Party Assessment';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN nmped.StudentCTEProgramAssociationCredential.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [nmped].[StudentEducationOrganizationAward] --
COMMENT ON TABLE nmped.StudentEducationOrganizationAward IS 'The awards a student has earned at a education organization.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.AwardDate IS 'The date the student got awarded.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.SchoolYear IS 'The school year the student earned the award.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.StudentAwardLanguageDescriptorId IS ' The language for which the State Seal of Bilingualism-Biliteracy (SSBB) was awarded.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.StudentAwardTypeDescriptorId IS 'The type of award.';
COMMENT ON COLUMN nmped.StudentEducationOrganizationAward.StudentUSI IS 'A unique alphanumeric code assigned to a student.';

-- Extended Properties [nmped].[StudentSchoolFoodServiceProgramAssociationExtension] --
COMMENT ON TABLE nmped.StudentSchoolFoodServiceProgramAssociationExtension IS '';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.BeginDate IS 'The earliest date the student is involved with the program. Typically, this is the date the student becomes eligible for the program.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.EducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.ProgramEducationOrganizationId IS 'The identifier assigned to an education organization.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.ProgramName IS 'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.ProgramTypeDescriptorId IS 'The type of program.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN nmped.StudentSchoolFoodServiceProgramAssociationExtension.DirectCertificationStatusDescriptorId IS 'Identifies the Direct Certification Status of a student. This does not apply to all students in the district.
                      Valid values:
                      1 = SNAP Direct Cert as identified in the direct certification report and certified by the district.
                      2 = Other Direct Cert Eligible (Homeless, FDPIR, Foster, Migrant, and Head Start)
                      3 = Family Members of SNAP identified students that were not found in the Direct Certification report.';

-- Extended Properties [nmped].[StudentSectionAssociationExtension] --
COMMENT ON TABLE nmped.StudentSectionAssociationExtension IS '';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.BeginDate IS 'Month, day, and year of the student''s entry or assignment to the section.  Note: Date interpretation may vary. Ed-Fi recommends inclusive dates, but states may define dates as inclusive or exclusive. For calculations, align with local guidelines.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.LocalCourseCode IS 'The local code assigned by the School that identifies the course offering provided for the instruction of students.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.SchoolId IS 'The identifier assigned to a school. It must be distinct from any other identifier assigned to educational organizations, such as a LocalEducationAgencyId, to prevent duplication.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.SchoolYear IS 'The identifier for the school year.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.SectionIdentifier IS 'The local identifier assigned to a section.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.SessionName IS 'The identifier for the calendar for the academic session.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.StudentUSI IS 'A unique alphanumeric code assigned to a student.';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.AlternateCreditCourseCode IS 'ALTERNATE CREDIT COURSE CODE';
COMMENT ON COLUMN nmped.StudentSectionAssociationExtension.SpecialProgramCodeDescriptorId IS 'The special program code the student is in.
                  D = Dual Credit Course
                  C = Concurrent Enrollment Course';

-- Extended Properties [nmped].[TransportationCategoryDescriptor] --
COMMENT ON TABLE nmped.TransportationCategoryDescriptor IS 'The transportation category type.';
COMMENT ON COLUMN nmped.TransportationCategoryDescriptor.TransportationCategoryDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[TransportationSetCodeDescriptor] --
COMMENT ON TABLE nmped.TransportationSetCodeDescriptor IS 'The transportation set codes.';
COMMENT ON COLUMN nmped.TransportationSetCodeDescriptor.TransportationSetCodeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[TriennialReviewDelayReasonDescriptor] --
COMMENT ON TABLE nmped.TriennialReviewDelayReasonDescriptor IS 'The triennial review reason.';
COMMENT ON COLUMN nmped.TriennialReviewDelayReasonDescriptor.TriennialReviewDelayReasonDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[VehicleBodyManufacturerDescriptor] --
COMMENT ON TABLE nmped.VehicleBodyManufacturerDescriptor IS 'The body manufacturer.';
COMMENT ON COLUMN nmped.VehicleBodyManufacturerDescriptor.VehicleBodyManufacturerDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[VehicleChassisManufacturerDescriptor] --
COMMENT ON TABLE nmped.VehicleChassisManufacturerDescriptor IS 'The chassis manufacturer.';
COMMENT ON COLUMN nmped.VehicleChassisManufacturerDescriptor.VehicleChassisManufacturerDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[VehicleFuelTypeDescriptor] --
COMMENT ON TABLE nmped.VehicleFuelTypeDescriptor IS 'The vehicle''s fuel type.';
COMMENT ON COLUMN nmped.VehicleFuelTypeDescriptor.VehicleFuelTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[VehicleRouteDescriptor] --
COMMENT ON TABLE nmped.VehicleRouteDescriptor IS 'The transportation route.';
COMMENT ON COLUMN nmped.VehicleRouteDescriptor.VehicleRouteDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

-- Extended Properties [nmped].[VehicleTypeDescriptor] --
COMMENT ON TABLE nmped.VehicleTypeDescriptor IS 'The vehicle''s type.';
COMMENT ON COLUMN nmped.VehicleTypeDescriptor.VehicleTypeDescriptorId IS 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.';

