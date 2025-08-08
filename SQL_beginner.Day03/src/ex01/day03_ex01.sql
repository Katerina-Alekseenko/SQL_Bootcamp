SELECT id AS menu_id
FROM menu
WHERE NOT EXISTS (
    SELECT person_order.id
    FROM person_order
    WHERE menu_id = menu.id
);