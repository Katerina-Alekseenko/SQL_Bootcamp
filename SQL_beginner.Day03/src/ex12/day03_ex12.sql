INSERT INTO person_order
SELECT
  generate_series((SELECT MAX(id) + 1 FROM person_order),
          (SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person)),
  (generate_series((SELECT MIN(id) FROM person),
           (SELECT MAX(id) FROM person))),
  (SELECT id FROM menu WHERE pizza_name = 'greek pizza'),
  '2022-02-25';

-- DELETE FROM person_order
-- WHERE order_date = '2022-02-25';