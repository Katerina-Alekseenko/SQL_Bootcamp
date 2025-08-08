SELECT
    COALESCE(person.name, '-') AS person_name,
    visits.visit_date AS visit_date,
    COALESCE(pizzeria.name, '-') AS pizzeria_name
FROM (SELECT * 
    FROM person_visits 
    WHERE visit_date = '2022-01-01' OR 
        visit_date = '2022-01-02' OR 
        visit_date = '2022-01-03') AS visits
FULL OUTER JOIN person ON visits.person_id = person.id
FULL OUTER JOIN pizzeria ON visits.pizzeria_id = pizzeria.id
ORDER BY person_name, visit_date, pizzeria_name;