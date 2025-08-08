SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
    LEFT JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
    LEFT JOIN person ON person.id = person_visits.person_id
WHERE person.name = 'Andrey'
AND person_visits.id IN (
    SELECT person_order.id
    FROM person_order
    WHERE person_order.person_id = person.id
)
ORDER BY pizzeria_name;