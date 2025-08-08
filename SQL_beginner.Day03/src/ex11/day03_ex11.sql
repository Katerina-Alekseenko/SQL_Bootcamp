UPDATE menu
SET price = CAST(price * 0.9 AS int)
WHERE pizza_name = 'greek pizza';

-- UPDATE menu
-- SET price = 800
-- WHERE pizza_name = 'greek pizza';