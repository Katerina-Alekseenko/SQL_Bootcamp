SELECT 
    menu.pizza_name AS pizza_name,
    menu.price AS price,
    pizzeria.name AS pizzeria_name,
    person_visits.visit_date AS visit_date
FROM person_visits
    JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
    JOIN menu ON menu.pizzeria_id = pizzeria.id
    JOIN person ON person.id = person_visits.person_id
WHERE menu.price BETWEEN 800 AND 1000 AND person.name = 'Kate'
ORDER BY pizza_name, price, pizzeria_name;