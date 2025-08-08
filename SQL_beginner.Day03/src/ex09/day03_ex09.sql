INSERT INTO person_visits VALUES (
    (SELECT max(id)+1 FROM person_visits),
	(SELECT id FROM person
		WHERE person.name = 'Denis'), 
    (SELECT pizzeria.id FROM pizzeria
		WHERE pizzeria.name = 'Dominos'), '2022-02-24');

INSERT INTO person_visits VALUES (
    (SELECT max(id)+1 FROM person_visits),
	(SELECT id FROM person
		WHERE person.name = 'Irina'), 
    (SELECT pizzeria.id FROM pizzeria
		WHERE pizzeria.name = 'Dominos'), '2022-02-24');

-- DELETE FROM person_visits
-- WHERE id = 20 AND visit_date = '2022-02-24';

-- DELETE FROM person_visits
-- WHERE id = 21 AND visit_date = '2022-02-24';