INSERT INTO menu VALUES (
    (SELECT max(id)+1 FROM menu),
	(SELECT pizzeria.id FROM pizzeria
		WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', 900);

-- DELETE FROM menu
-- WHERE pizzeria_id = 2 AND pizza_name = 'sicilian pizza';