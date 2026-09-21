DO $$
BEGIN
IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'nmped' AND event_object_table = 'staffdevelopment') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON nmped.staffdevelopment
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'nmped' AND event_object_table = 'studentcteprogramassociationcredential') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON nmped.studentcteprogramassociationcredential
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

IF NOT EXISTS(SELECT 1 FROM information_schema.triggers WHERE trigger_name = 'updatechangeversion' AND event_object_schema = 'nmped' AND event_object_table = 'studenteducationorganizationaward') THEN
CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON nmped.studenteducationorganizationaward
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();
END IF;

END
$$;
