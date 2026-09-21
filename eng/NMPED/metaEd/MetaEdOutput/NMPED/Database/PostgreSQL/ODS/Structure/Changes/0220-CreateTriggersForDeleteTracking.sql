DO $$
BEGIN
CREATE OR REPLACE FUNCTION tracked_changes_nmped.annualreviewdelayreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.AnnualReviewDelayReasonDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.AnnualReviewDelayReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.AnnualReviewDelayReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'annualreviewdelayreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.annualreviewdelayreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.annualreviewdelayreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.dentalexaminationverificationcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DentalExaminationVerificationCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.DentalExaminationVerificationCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DentalExaminationVerificationCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'dentalexaminationverificationcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.dentalexaminationverificationcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.dentalexaminationverificationcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.directcertificationstatusdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.DirectCertificationStatusDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.DirectCertificationStatusDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.DirectCertificationStatusDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'directcertificationstatusdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.directcertificationstatusdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.directcertificationstatusdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.expecteddiplomatypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ExpectedDiplomaTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.ExpectedDiplomaTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ExpectedDiplomaTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'expecteddiplomatypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.expecteddiplomatypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.expecteddiplomatypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.industrycredentialdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.IndustryCredentialDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.IndustryCredentialDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.IndustryCredentialDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'industrycredentialdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.industrycredentialdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.industrycredentialdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.levelofeducationinstitutiondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.LevelOfEducationInstitutionDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.LevelOfEducationInstitutionDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.LevelOfEducationInstitutionDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'levelofeducationinstitutiondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.levelofeducationinstitutiondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.levelofeducationinstitutiondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.levelofintegrationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.LevelOfIntegrationDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.LevelOfIntegrationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.LevelOfIntegrationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'levelofintegrationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.levelofintegrationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.levelofintegrationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.mileagetypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.MileageTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.MileageTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.MileageTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'mileagetypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.mileagetypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.mileagetypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.militaryfamilydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.MilitaryFamilyDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.MilitaryFamilyDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.MilitaryFamilyDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'militaryfamilydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.militaryfamilydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.militaryfamilydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.nmpedclassperioddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.NMPEDClassPeriodDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.NMPEDClassPeriodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.NMPEDClassPeriodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'nmpedclassperioddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.nmpedclassperioddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.nmpedclassperioddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.participationinformationdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ParticipationInformationDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.ParticipationInformationDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ParticipationInformationDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'participationinformationdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.participationinformationdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.participationinformationdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.plannedpostgraduateactivitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PlannedPostGraduateActivityDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.PlannedPostGraduateActivityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PlannedPostGraduateActivityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'plannedpostgraduateactivitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.plannedpostgraduateactivitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.plannedpostgraduateactivitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.prekclasstypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PreKClassTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.PreKClassTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PreKClassTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'prekclasstypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.prekclasstypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.prekclasstypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.primaryareaofexceptionalitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.PrimaryAreaOfExceptionalityDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.PrimaryAreaOfExceptionalityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.PrimaryAreaOfExceptionalityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'primaryareaofexceptionalitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.primaryareaofexceptionalitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.primaryareaofexceptionalitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.programdeliverymethoddescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramDeliveryMethodDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.ProgramDeliveryMethodDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramDeliveryMethodDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'programdeliverymethoddescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.programdeliverymethoddescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.programdeliverymethoddescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.programintensitydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.ProgramIntensityDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.ProgramIntensityDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.ProgramIntensityDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'programintensitydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.programintensitydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.programintensitydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.roadtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.RoadTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.RoadTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.RoadTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'roadtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.roadtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.roadtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.specialeducationeventreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationEventReasonDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.SpecialEducationEventReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationEventReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'specialeducationeventreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.specialeducationeventreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.specialeducationeventreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.specialeducationeventtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationEventTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.SpecialEducationEventTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationEventTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'specialeducationeventtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.specialeducationeventtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.specialeducationeventtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.specialeducationnoncompliancereasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationNonComplianceReasonDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.SpecialEducationNonComplianceReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationNonComplianceReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'specialeducationnoncompliancereasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.specialeducationnoncompliancereasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.specialeducationnoncompliancereasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.specialeducationreferralcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialEducationReferralCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.SpecialEducationReferralCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialEducationReferralCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'specialeducationreferralcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.specialeducationreferralcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.specialeducationreferralcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.specialprogramcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.SpecialProgramCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.SpecialProgramCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.SpecialProgramCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'specialprogramcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.specialprogramcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.specialprogramcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.staffdevelopment_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.staff%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.staff j0 WHERE staffusi = old.staffusi;

    INSERT INTO tracked_changes_nmped.staffdevelopment(
        oldeducationorganizationid, oldstaffusi, oldstaffuniqueid, oldstartdate,
        id, discriminator, changeversion)
    VALUES (
        OLD.educationorganizationid, OLD.staffusi, dj0.staffuniqueid, OLD.startdate, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'staffdevelopment') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.staffdevelopment 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.staffdevelopment_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.staffdevelopmentactivitycodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffDevelopmentActivityCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.StaffDevelopmentActivityCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffDevelopmentActivityCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'staffdevelopmentactivitycodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.staffdevelopmentactivitycodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.staffdevelopmentactivitycodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.staffdevelopmentpurposecodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StaffDevelopmentPurposeCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.StaffDevelopmentPurposeCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StaffDevelopmentPurposeCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'staffdevelopmentpurposecodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.staffdevelopmentpurposecodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.staffdevelopmentpurposecodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.studentawardtypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.StudentAwardTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.StudentAwardTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.StudentAwardTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'studentawardtypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.studentawardtypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.studentawardtypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.studentcteprogramassociationcredential_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.descriptor%ROWTYPE;
    dj3 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.industrycredentialdescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.programdeliverymethoddescriptorid;

    SELECT INTO dj2 * FROM edfi.descriptor j2 WHERE descriptorid = old.programtypedescriptorid;

    SELECT INTO dj3 * FROM edfi.student j3 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_nmped.studentcteprogramassociationcredential(
        oldbegindate, oldcredentialearneddate, oldeducationorganizationid, oldindustrycredentialdescriptorid, oldindustrycredentialdescriptornamespace, oldindustrycredentialdescriptorcodevalue, oldprogramdeliverymethoddescriptorid, oldprogramdeliverymethoddescriptornamespace, oldprogramdeliverymethoddescriptorcodevalue, oldprogrameducationorganizationid, oldprogramname, oldprogramtypedescriptorid, oldprogramtypedescriptornamespace, oldprogramtypedescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.begindate, OLD.credentialearneddate, OLD.educationorganizationid, OLD.industrycredentialdescriptorid, dj0.namespace, dj0.codevalue, OLD.programdeliverymethoddescriptorid, dj1.namespace, dj1.codevalue, OLD.programeducationorganizationid, OLD.programname, OLD.programtypedescriptorid, dj2.namespace, dj2.codevalue, OLD.studentusi, dj3.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'studentcteprogramassociationcredential') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.studentcteprogramassociationcredential 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.studentcteprogramassociationcredential_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.studenteducationorganizationaward_deleted()
    RETURNS trigger AS
$BODY$
DECLARE
    dj0 edfi.descriptor%ROWTYPE;
    dj1 edfi.descriptor%ROWTYPE;
    dj2 edfi.student%ROWTYPE;
BEGIN
    SELECT INTO dj0 * FROM edfi.descriptor j0 WHERE descriptorid = old.studentawardlanguagedescriptorid;

    SELECT INTO dj1 * FROM edfi.descriptor j1 WHERE descriptorid = old.studentawardtypedescriptorid;

    SELECT INTO dj2 * FROM edfi.student j2 WHERE studentusi = old.studentusi;

    INSERT INTO tracked_changes_nmped.studenteducationorganizationaward(
        oldawarddate, oldeducationorganizationid, oldschoolyear, oldstudentawardlanguagedescriptorid, oldstudentawardlanguagedescriptornamespace, oldstudentawardlanguagedescriptorcodevalue, oldstudentawardtypedescriptorid, oldstudentawardtypedescriptornamespace, oldstudentawardtypedescriptorcodevalue, oldstudentusi, oldstudentuniqueid,
        id, discriminator, changeversion)
    VALUES (
        OLD.awarddate, OLD.educationorganizationid, OLD.schoolyear, OLD.studentawardlanguagedescriptorid, dj0.namespace, dj0.codevalue, OLD.studentawardtypedescriptorid, dj1.namespace, dj1.codevalue, OLD.studentusi, dj2.studentuniqueid, 
        OLD.id, OLD.discriminator, nextval('changes.changeversionsequence'));

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'studenteducationorganizationaward') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.studenteducationorganizationaward 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.studenteducationorganizationaward_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.transportationcategorydescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TransportationCategoryDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.TransportationCategoryDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TransportationCategoryDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'transportationcategorydescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.transportationcategorydescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.transportationcategorydescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.transportationsetcodedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TransportationSetCodeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.TransportationSetCodeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TransportationSetCodeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'transportationsetcodedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.transportationsetcodedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.transportationsetcodedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.triennialreviewdelayreasondescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.TriennialReviewDelayReasonDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.TriennialReviewDelayReasonDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.TriennialReviewDelayReasonDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'triennialreviewdelayreasondescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.triennialreviewdelayreasondescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.triennialreviewdelayreasondescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.vehiclebodymanufacturerdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.VehicleBodyManufacturerDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.VehicleBodyManufacturerDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.VehicleBodyManufacturerDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'vehiclebodymanufacturerdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.vehiclebodymanufacturerdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.vehiclebodymanufacturerdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.vehiclechassismanufacturerdescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.VehicleChassisManufacturerDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.VehicleChassisManufacturerDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.VehicleChassisManufacturerDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'vehiclechassismanufacturerdescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.vehiclechassismanufacturerdescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.vehiclechassismanufacturerdescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.vehiclefueltypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.VehicleFuelTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.VehicleFuelTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.VehicleFuelTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'vehiclefueltypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.vehiclefueltypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.vehiclefueltypedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.vehicleroutedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.VehicleRouteDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.VehicleRouteDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.VehicleRouteDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'vehicleroutedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.vehicleroutedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.vehicleroutedescriptor_deleted();
END IF;

CREATE OR REPLACE FUNCTION tracked_changes_nmped.vehicletypedescriptor_deleted()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_changes_edfi.descriptor(olddescriptorid, oldcodevalue, oldnamespace, id, discriminator, changeversion)
    SELECT OLD.VehicleTypeDescriptorId, b.codevalue, b.namespace, b.id, 'nmped.VehicleTypeDescriptor', nextval('changes.ChangeVersionSequence')
    FROM edfi.descriptor b WHERE old.VehicleTypeDescriptorId = b.descriptorid ;

    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'trackdeletes' AND event_object_schema = 'nmped' AND event_object_table = 'vehicletypedescriptor') THEN
CREATE TRIGGER TrackDeletes AFTER DELETE ON nmped.vehicletypedescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_changes_nmped.vehicletypedescriptor_deleted();
END IF;

END
$$;
