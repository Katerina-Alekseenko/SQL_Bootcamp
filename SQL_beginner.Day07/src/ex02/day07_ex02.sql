  (SELECT pizzeria.name,
          COUNT(pizzeria.id) AS COUNT,
          'visit' AS action_type
   FROM person_visits
   INNER JOIN pizzeria ON person_visits.pizzeria_id = pizzeria.id
   GROUP BY pizzeria.name
   ORDER BY 2 DESC
   LIMIT 3)
UNION
  (SELECT pizzeria.name,
          COUNT(pizzeria.id) AS COUNT,
          'order' AS action_type
   FROM person_order
   INNER JOIN menu ON person_order.menu_id = menu.id
   INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
   GROUP BY pizzeria.name
   ORDER BY 2 DESC
   LIMIT 3)
ORDER BY 3 ASC,
         2 DESC;