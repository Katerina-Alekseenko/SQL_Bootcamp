DROP function IF EXISTS fnc_persons_female();
DROP function IF EXISTS fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(pgender VARCHAR DEFAULT 'female')
RETURNS TABLE (
    id BIGINT,
    name VARCHAR,
    age INTEGER,
    gender VARCHAR,
    address VARCHAR
)
AS $$
    SELECT id, name, age, gender, address
    FROM person
    WHERE gender = pgender;
$$ LANGUAGE plpgsql;

-- select *
-- from fnc_persons(pgender := 'male');

-- select *
-- from fnc_persons();