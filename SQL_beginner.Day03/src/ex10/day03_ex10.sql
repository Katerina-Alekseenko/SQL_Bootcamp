INSERT INTO person_order VALUES (
    (SELECT max(id)+1 FROM person_order),
	(SELECT id FROM person
		WHERE person.name = 'Denis'), 
    (SELECT menu.id FROM menu
		WHERE menu.pizza_name = 'sicilian pizza'), '2022-02-24');

INSERT INTO person_order VALUES (
    (SELECT max(id)+1 FROM person_order),
	(SELECT id FROM person
		WHERE person.name = 'Irina'), 
    (SELECT menu.id FROM menu
		WHERE menu.pizza_name = 'sicilian pizza'), '2022-02-24');

-- DELETE FROM person_order
-- WHERE id = 21 AND order_date = '2022-02-24';

-- DELETE FROM person_order
-- WHERE id = 22 AND order_date = '2022-02-24';