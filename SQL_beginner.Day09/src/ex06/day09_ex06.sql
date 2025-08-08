CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(
    pperson VARCHAR DEFAULT 'Dmitriy',
    pprice NUMERIC DEFAULT 500,
    pdate DATE DEFAULT '2022-01-08'
)
RETURNS TABLE(pizzeria_name VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT pizzeria.name
    FROM pizzeria
    JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
    JOIN person ON person_visits.person_id = person.id
    JOIN menu ON pizzeria.id = menu.pizzeria_id
    WHERE person.name = pperson
      AND menu.price < pprice
      AND person_visits.visit_date = pdate;
END;
$$ LANGUAGE plpgsql;

-- select *
-- from fnc_person_visits_and_eats_on_date(pprice := 800);

-- select *
-- from fnc_person_visits_and_eats_on_date
-- (
--     pperson := 'Anna', pprice := 1300, pdate := '2022-01-01'
-- );