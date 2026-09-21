-- Table nmped.AnnualReviewDelayReasonDescriptor --
CREATE TABLE nmped.AnnualReviewDelayReasonDescriptor (
    AnnualReviewDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT AnnualReviewDelayReasonDescriptor_PK PRIMARY KEY (AnnualReviewDelayReasonDescriptorId)
);

-- Table nmped.DentalExaminationVerificationCodeDescriptor --
CREATE TABLE nmped.DentalExaminationVerificationCodeDescriptor (
    DentalExaminationVerificationCodeDescriptorId INT NOT NULL,
    CONSTRAINT DentalExaminationVerificationCodeDescriptor_PK PRIMARY KEY (DentalExaminationVerificationCodeDescriptorId)
);

-- Table nmped.DirectCertificationStatusDescriptor --
CREATE TABLE nmped.DirectCertificationStatusDescriptor (
    DirectCertificationStatusDescriptorId INT NOT NULL,
    CONSTRAINT DirectCertificationStatusDescriptor_PK PRIMARY KEY (DirectCertificationStatusDescriptorId)
);

-- Table nmped.DisciplineActionExtension --
CREATE TABLE nmped.DisciplineActionExtension (
    DisciplineActionIdentifier VARCHAR(36) NOT NULL,
    DisciplineDate DATE NOT NULL,
    StudentUSI INT NOT NULL,
    DisciplineActionDetailedResponse VARCHAR(1024) NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineActionExtension_PK PRIMARY KEY (DisciplineActionIdentifier, DisciplineDate, StudentUSI)
);
ALTER TABLE nmped.DisciplineActionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.DisciplineIncidentExtension --
CREATE TABLE nmped.DisciplineIncidentExtension (
    IncidentIdentifier VARCHAR(36) NOT NULL,
    SchoolId BIGINT NOT NULL,
    AlcoholRelatedIndicator BOOLEAN NOT NULL,
    DrugRelatedIndicator BOOLEAN NOT NULL,
    GangRelatedIndicator BOOLEAN NOT NULL,
    HateCrimeRelatedIndicator BOOLEAN NOT NULL,
    SeriousBodilyInjuryIndicator BOOLEAN NOT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT DisciplineIncidentExtension_PK PRIMARY KEY (IncidentIdentifier, SchoolId)
);
ALTER TABLE nmped.DisciplineIncidentExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.ExpectedDiplomaTypeDescriptor --
CREATE TABLE nmped.ExpectedDiplomaTypeDescriptor (
    ExpectedDiplomaTypeDescriptorId INT NOT NULL,
    CONSTRAINT ExpectedDiplomaTypeDescriptor_PK PRIMARY KEY (ExpectedDiplomaTypeDescriptorId)
);

-- Table nmped.IndustryCredentialDescriptor --
CREATE TABLE nmped.IndustryCredentialDescriptor (
    IndustryCredentialDescriptorId INT NOT NULL,
    CONSTRAINT IndustryCredentialDescriptor_PK PRIMARY KEY (IndustryCredentialDescriptorId)
);

-- Table nmped.LevelOfEducationInstitutionDescriptor --
CREATE TABLE nmped.LevelOfEducationInstitutionDescriptor (
    LevelOfEducationInstitutionDescriptorId INT NOT NULL,
    CONSTRAINT LevelOfEducationInstitutionDescriptor_PK PRIMARY KEY (LevelOfEducationInstitutionDescriptorId)
);

-- Table nmped.LevelOfIntegrationDescriptor --
CREATE TABLE nmped.LevelOfIntegrationDescriptor (
    LevelOfIntegrationDescriptorId INT NOT NULL,
    CONSTRAINT LevelOfIntegrationDescriptor_PK PRIMARY KEY (LevelOfIntegrationDescriptorId)
);

-- Table nmped.MileageTypeDescriptor --
CREATE TABLE nmped.MileageTypeDescriptor (
    MileageTypeDescriptorId INT NOT NULL,
    CONSTRAINT MileageTypeDescriptor_PK PRIMARY KEY (MileageTypeDescriptorId)
);

-- Table nmped.MilitaryFamilyDescriptor --
CREATE TABLE nmped.MilitaryFamilyDescriptor (
    MilitaryFamilyDescriptorId INT NOT NULL,
    CONSTRAINT MilitaryFamilyDescriptor_PK PRIMARY KEY (MilitaryFamilyDescriptorId)
);

-- Table nmped.NMPEDClassPeriodDescriptor --
CREATE TABLE nmped.NMPEDClassPeriodDescriptor (
    NMPEDClassPeriodDescriptorId INT NOT NULL,
    CONSTRAINT NMPEDClassPeriodDescriptor_PK PRIMARY KEY (NMPEDClassPeriodDescriptorId)
);

-- Table nmped.ParticipationInformationDescriptor --
CREATE TABLE nmped.ParticipationInformationDescriptor (
    ParticipationInformationDescriptorId INT NOT NULL,
    CONSTRAINT ParticipationInformationDescriptor_PK PRIMARY KEY (ParticipationInformationDescriptorId)
);

-- Table nmped.PlannedPostGraduateActivityDescriptor --
CREATE TABLE nmped.PlannedPostGraduateActivityDescriptor (
    PlannedPostGraduateActivityDescriptorId INT NOT NULL,
    CONSTRAINT PlannedPostGraduateActivityDescriptor_PK PRIMARY KEY (PlannedPostGraduateActivityDescriptorId)
);

-- Table nmped.PreKClassTypeDescriptor --
CREATE TABLE nmped.PreKClassTypeDescriptor (
    PreKClassTypeDescriptorId INT NOT NULL,
    CONSTRAINT PreKClassTypeDescriptor_PK PRIMARY KEY (PreKClassTypeDescriptorId)
);

-- Table nmped.PrimaryAreaOfExceptionalityDescriptor --
CREATE TABLE nmped.PrimaryAreaOfExceptionalityDescriptor (
    PrimaryAreaOfExceptionalityDescriptorId INT NOT NULL,
    CONSTRAINT PrimaryAreaOfExceptionalityDescriptor_PK PRIMARY KEY (PrimaryAreaOfExceptionalityDescriptorId)
);

-- Table nmped.ProgramDeliveryMethodDescriptor --
CREATE TABLE nmped.ProgramDeliveryMethodDescriptor (
    ProgramDeliveryMethodDescriptorId INT NOT NULL,
    CONSTRAINT ProgramDeliveryMethodDescriptor_PK PRIMARY KEY (ProgramDeliveryMethodDescriptorId)
);

-- Table nmped.ProgramIntensityDescriptor --
CREATE TABLE nmped.ProgramIntensityDescriptor (
    ProgramIntensityDescriptorId INT NOT NULL,
    CONSTRAINT ProgramIntensityDescriptor_PK PRIMARY KEY (ProgramIntensityDescriptorId)
);

-- Table nmped.RoadTypeDescriptor --
CREATE TABLE nmped.RoadTypeDescriptor (
    RoadTypeDescriptorId INT NOT NULL,
    CONSTRAINT RoadTypeDescriptor_PK PRIMARY KEY (RoadTypeDescriptorId)
);

-- Table nmped.SectionExtension --
CREATE TABLE nmped.SectionExtension (
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    NMPEDClassPeriodDescriptorId INT NULL,
    PreKClassTypeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT SectionExtension_PK PRIMARY KEY (LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName)
);
ALTER TABLE nmped.SectionExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.SpecialEducationEventReasonDescriptor --
CREATE TABLE nmped.SpecialEducationEventReasonDescriptor (
    SpecialEducationEventReasonDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationEventReasonDescriptor_PK PRIMARY KEY (SpecialEducationEventReasonDescriptorId)
);

-- Table nmped.SpecialEducationEventTypeDescriptor --
CREATE TABLE nmped.SpecialEducationEventTypeDescriptor (
    SpecialEducationEventTypeDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationEventTypeDescriptor_PK PRIMARY KEY (SpecialEducationEventTypeDescriptorId)
);

-- Table nmped.SpecialEducationNonComplianceReasonDescriptor --
CREATE TABLE nmped.SpecialEducationNonComplianceReasonDescriptor (
    SpecialEducationNonComplianceReasonDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationNonComplianceReasonDescriptor_PK PRIMARY KEY (SpecialEducationNonComplianceReasonDescriptorId)
);

-- Table nmped.SpecialEducationReferralCodeDescriptor --
CREATE TABLE nmped.SpecialEducationReferralCodeDescriptor (
    SpecialEducationReferralCodeDescriptorId INT NOT NULL,
    CONSTRAINT SpecialEducationReferralCodeDescriptor_PK PRIMARY KEY (SpecialEducationReferralCodeDescriptorId)
);

-- Table nmped.SpecialProgramCodeDescriptor --
CREATE TABLE nmped.SpecialProgramCodeDescriptor (
    SpecialProgramCodeDescriptorId INT NOT NULL,
    CONSTRAINT SpecialProgramCodeDescriptor_PK PRIMARY KEY (SpecialProgramCodeDescriptorId)
);

-- Table nmped.StaffDevelopment --
CREATE TABLE nmped.StaffDevelopment (
    EducationOrganizationId BIGINT NOT NULL,
    StaffUSI INT NOT NULL,
    StartDate DATE NOT NULL,
    ActivityHours INT NOT NULL,
    EndDate DATE NULL,
    MentorIdUniqueId VARCHAR(32) NULL,
    MentorTraining BOOLEAN NULL,
    StaffCreditsEarned DECIMAL(7, 2) NULL,
    StaffDevelopmentActivityCodeDescriptorId INT NOT NULL,
    StaffDevelopmentPurposeCodeDescriptorId INT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StaffDevelopment_PK PRIMARY KEY (EducationOrganizationId, StaffUSI, StartDate)
);
ALTER TABLE nmped.StaffDevelopment ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE nmped.StaffDevelopment ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE nmped.StaffDevelopment ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.StaffDevelopmentActivityCodeDescriptor --
CREATE TABLE nmped.StaffDevelopmentActivityCodeDescriptor (
    StaffDevelopmentActivityCodeDescriptorId INT NOT NULL,
    CONSTRAINT StaffDevelopmentActivityCodeDescriptor_PK PRIMARY KEY (StaffDevelopmentActivityCodeDescriptorId)
);

-- Table nmped.StaffDevelopmentPurposeCodeDescriptor --
CREATE TABLE nmped.StaffDevelopmentPurposeCodeDescriptor (
    StaffDevelopmentPurposeCodeDescriptorId INT NOT NULL,
    CONSTRAINT StaffDevelopmentPurposeCodeDescriptor_PK PRIMARY KEY (StaffDevelopmentPurposeCodeDescriptorId)
);

-- Table nmped.StaffEducationOrganizationEmploymentAssociationExtension --
CREATE TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension (
    EducationOrganizationId BIGINT NOT NULL,
    EmploymentStatusDescriptorId INT NOT NULL,
    HireDate DATE NOT NULL,
    StaffUSI INT NOT NULL,
    BaccalaureateLevelOfEducationInstitutionDescriptorId INT NULL,
    HighestCompletedLevelOfEducationInstitutionDescriptorId INT NULL,
    NationalCertified BOOLEAN NULL,
    TeacherOrPrincipalYearsInDistrict INT NULL,
    TeacherOrPrincipalYearsOverall INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StaffEducationOrganizationEmploymentAssociationExtension_PK PRIMARY KEY (EducationOrganizationId, EmploymentStatusDescriptorId, HireDate, StaffUSI)
);
ALTER TABLE nmped.StaffEducationOrganizationEmploymentAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.StudentAwardTypeDescriptor --
CREATE TABLE nmped.StudentAwardTypeDescriptor (
    StudentAwardTypeDescriptorId INT NOT NULL,
    CONSTRAINT StudentAwardTypeDescriptor_PK PRIMARY KEY (StudentAwardTypeDescriptorId)
);

-- Table nmped.StudentCTEProgramAssociationCredential --
CREATE TABLE nmped.StudentCTEProgramAssociationCredential (
    BeginDate DATE NOT NULL,
    CredentialEarnedDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    IndustryCredentialDescriptorId INT NOT NULL,
    ProgramDeliveryMethodDescriptorId INT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentCTEProgramAssociationCredential_PK PRIMARY KEY (BeginDate, CredentialEarnedDate, EducationOrganizationId, IndustryCredentialDescriptorId, ProgramDeliveryMethodDescriptorId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE nmped.StudentCTEProgramAssociationCredential ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE nmped.StudentCTEProgramAssociationCredential ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE nmped.StudentCTEProgramAssociationCredential ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.StudentEducationOrganizationAward --
CREATE TABLE nmped.StudentEducationOrganizationAward (
    AwardDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    StudentAwardLanguageDescriptorId INT NOT NULL,
    StudentAwardTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    Discriminator VARCHAR(128) NULL,
    CreateDate TIMESTAMP NOT NULL,
    LastModifiedDate TIMESTAMP NOT NULL,
    Id UUID NOT NULL,
    CONSTRAINT StudentEducationOrganizationAward_PK PRIMARY KEY (AwardDate, EducationOrganizationId, SchoolYear, StudentAwardLanguageDescriptorId, StudentAwardTypeDescriptorId, StudentUSI)
);
ALTER TABLE nmped.StudentEducationOrganizationAward ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';
ALTER TABLE nmped.StudentEducationOrganizationAward ALTER COLUMN Id SET DEFAULT gen_random_uuid();
ALTER TABLE nmped.StudentEducationOrganizationAward ALTER COLUMN LastModifiedDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.StudentSchoolFoodServiceProgramAssociationExtension --
CREATE TABLE nmped.StudentSchoolFoodServiceProgramAssociationExtension (
    BeginDate DATE NOT NULL,
    EducationOrganizationId BIGINT NOT NULL,
    ProgramEducationOrganizationId BIGINT NOT NULL,
    ProgramName VARCHAR(60) NOT NULL,
    ProgramTypeDescriptorId INT NOT NULL,
    StudentUSI INT NOT NULL,
    DirectCertificationStatusDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSchoolFoodServiceProgramAssociationExtension_PK PRIMARY KEY (BeginDate, EducationOrganizationId, ProgramEducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI)
);
ALTER TABLE nmped.StudentSchoolFoodServiceProgramAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.StudentSectionAssociationExtension --
CREATE TABLE nmped.StudentSectionAssociationExtension (
    BeginDate DATE NOT NULL,
    LocalCourseCode VARCHAR(60) NOT NULL,
    SchoolId BIGINT NOT NULL,
    SchoolYear SMALLINT NOT NULL,
    SectionIdentifier VARCHAR(255) NOT NULL,
    SessionName VARCHAR(60) NOT NULL,
    StudentUSI INT NOT NULL,
    AlternateCreditCourseCode VARCHAR(60) NULL,
    SpecialProgramCodeDescriptorId INT NULL,
    CreateDate TIMESTAMP NOT NULL,
    CONSTRAINT StudentSectionAssociationExtension_PK PRIMARY KEY (BeginDate, LocalCourseCode, SchoolId, SchoolYear, SectionIdentifier, SessionName, StudentUSI)
);
ALTER TABLE nmped.StudentSectionAssociationExtension ALTER COLUMN CreateDate SET DEFAULT current_timestamp AT TIME ZONE 'UTC';

-- Table nmped.TransportationCategoryDescriptor --
CREATE TABLE nmped.TransportationCategoryDescriptor (
    TransportationCategoryDescriptorId INT NOT NULL,
    CONSTRAINT TransportationCategoryDescriptor_PK PRIMARY KEY (TransportationCategoryDescriptorId)
);

-- Table nmped.TransportationSetCodeDescriptor --
CREATE TABLE nmped.TransportationSetCodeDescriptor (
    TransportationSetCodeDescriptorId INT NOT NULL,
    CONSTRAINT TransportationSetCodeDescriptor_PK PRIMARY KEY (TransportationSetCodeDescriptorId)
);

-- Table nmped.TriennialReviewDelayReasonDescriptor --
CREATE TABLE nmped.TriennialReviewDelayReasonDescriptor (
    TriennialReviewDelayReasonDescriptorId INT NOT NULL,
    CONSTRAINT TriennialReviewDelayReasonDescriptor_PK PRIMARY KEY (TriennialReviewDelayReasonDescriptorId)
);

-- Table nmped.VehicleBodyManufacturerDescriptor --
CREATE TABLE nmped.VehicleBodyManufacturerDescriptor (
    VehicleBodyManufacturerDescriptorId INT NOT NULL,
    CONSTRAINT VehicleBodyManufacturerDescriptor_PK PRIMARY KEY (VehicleBodyManufacturerDescriptorId)
);

-- Table nmped.VehicleChassisManufacturerDescriptor --
CREATE TABLE nmped.VehicleChassisManufacturerDescriptor (
    VehicleChassisManufacturerDescriptorId INT NOT NULL,
    CONSTRAINT VehicleChassisManufacturerDescriptor_PK PRIMARY KEY (VehicleChassisManufacturerDescriptorId)
);

-- Table nmped.VehicleFuelTypeDescriptor --
CREATE TABLE nmped.VehicleFuelTypeDescriptor (
    VehicleFuelTypeDescriptorId INT NOT NULL,
    CONSTRAINT VehicleFuelTypeDescriptor_PK PRIMARY KEY (VehicleFuelTypeDescriptorId)
);

-- Table nmped.VehicleRouteDescriptor --
CREATE TABLE nmped.VehicleRouteDescriptor (
    VehicleRouteDescriptorId INT NOT NULL,
    CONSTRAINT VehicleRouteDescriptor_PK PRIMARY KEY (VehicleRouteDescriptorId)
);

-- Table nmped.VehicleTypeDescriptor --
CREATE TABLE nmped.VehicleTypeDescriptor (
    VehicleTypeDescriptorId INT NOT NULL,
    CONSTRAINT VehicleTypeDescriptor_PK PRIMARY KEY (VehicleTypeDescriptorId)
);

