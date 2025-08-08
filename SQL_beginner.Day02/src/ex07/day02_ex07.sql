SELECT pizzeria.name
FROM pizzeria
JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person ON person.id = person_visits.person_id
WHERE 
    person.name = 'Dmitriy' AND 
    menu.price < 800 AND 
    person_visits.visit_date = '2022-01-08'