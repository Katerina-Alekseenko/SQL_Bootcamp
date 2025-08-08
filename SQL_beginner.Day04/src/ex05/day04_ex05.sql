CREATE VIEW v_price_with_discount AS
SELECT
    person.name,
    menu.pizza_name,
    menu.price,
    CAST((menu.price - (menu.price * 0.1)) AS INT) AS discount_price
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
ORDER BY name, pizza_name;