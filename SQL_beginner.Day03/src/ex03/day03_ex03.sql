SELECT pizzeria.name AS pizzeria_name
FROM pizzeria
LEFT JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
LEFT JOIN person ON person_visits.person_id = person.id
WHERE person_visits.pizzeria_id IS NOT NULL
GROUP BY pizzeria_name
HAVING COUNT(CASE WHEN person.gender = 'female' THEN 1 END) !=
       COUNT(CASE WHEN person.gender = 'male' THEN 1 END)
ORDER BY pizzeria_name;