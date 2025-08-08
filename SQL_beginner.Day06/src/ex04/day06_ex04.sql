ALTER TABLE person_discounts
    ADD CONSTRAINT ch_nn_person_id CHECK (person_id IS NOT NULL);
ALTER TABLE person_discounts
    ADD CONSTRAINT ch_nn_pizzeria_id CHECK (pizzeria_id IS NOT NULL);
ALTER TABLE person_discounts
    ADD CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL);
ALTER TABLE person_discounts
    ALTER COLUMN discount SET DEFAULT 0;
ALTER TABLE person_discounts
    ADD CONSTRAINT ch_range_discount CHECK (discount >= 0 AND discount <= 100);

-- -- Проверка значений в столбце person_id
-- SELECT * FROM person_discounts WHERE person_id IS NULL;
-- -- Проверка значений в столбце pizzeria_id
-- SELECT * FROM person_discounts WHERE pizzeria_id IS NULL;
-- -- Проверка значений в столбце discount
-- SELECT * FROM person_discounts WHERE discount IS NULL OR discount < 0 OR discount > 100;