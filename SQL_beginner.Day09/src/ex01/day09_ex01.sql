CREATE OR REPLACE FUNCTION fnc_trg_person_update_audit()
RETURNS TRIGGER
AS $trg_person_update_audit$
BEGIN
    IF (TG_OP = 'UPDATE') THEN
        INSERT INTO person_audit(row_id, name, age, gender, address, type_event)
        VALUES (OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address, 'U');
        RETURN NEW;
    END IF;
    RETURN NULL;
END;
$trg_person_update_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_update_audit
AFTER UPDATE ON person
FOR EACH ROW 
EXECUTE FUNCTION fnc_trg_person_update_audit();

UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;

-- SELECT *
-- FROM person_audit;