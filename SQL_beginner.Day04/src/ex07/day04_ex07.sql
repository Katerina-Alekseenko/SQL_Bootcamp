INSERT INTO person_visits(id, person_id, pizzeria_id, visit_date)
VALUES ((SELECT MAX(id) FROM person_visits) + 1, (SELECT id from person  WHERE name = 'Dmitriy'),
      (SELECT menu.pizzeria_id FROM menu
           JOIN pizzeria ON menu.pizzeria_id = pizzeria.id AND pizzeria.name != 'Papa Johns'
                                  WHERE price < 800
                                  LIMIT 1), '2022-01-08');

-- DELETE FROM person_visits
-- WHERE id = 22 AND visit_date = '2022-01-08';

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT *
FROM mv_dmitriy_visits_and_eats;