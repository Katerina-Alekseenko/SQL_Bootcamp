SELECT DISTINCT name
FROM person
    JOIN person_order AS po1 ON person.id = po1.person_id
    JOIN menu AS m1 ON m1.id = po1.menu_id AND m1.pizza_name = 'pepperoni pizza'
    JOIN person_order AS po2 ON person.id = po2.person_id
    JOIN menu AS m2 ON m2.id = po2.menu_id AND m2.pizza_name = 'cheese pizza'
WHERE gender = 'female'
ORDER BY name;