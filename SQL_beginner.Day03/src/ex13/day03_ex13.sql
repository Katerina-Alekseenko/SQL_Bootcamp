DELETE FROM person_order
WHERE order_date = '2022-02-25';

DELETE FROM menu
WHERE pizzeria_id = 2 AND pizza_name = 'greek pizza';