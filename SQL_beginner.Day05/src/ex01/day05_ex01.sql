SET enable_seqscan = off;
EXPLAIN ANALYZE
SELECT menu.pizza_name,
    pizzeria.name as pizzeria_name
FROM menu JOIN pizzeria ON pizzeria.id = menu.pizzeria_id;