COMMENT ON TABLE person_discounts IS 'Таблица, содержащая информацию о скидках, предоставляемых клиентам в различных пиццериях.';

COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификатор записи о скидке.';
COMMENT ON COLUMN person_discounts.person_id IS 'Идентификатор клиента, которому предоставляется скидка.';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Идентификатор пиццерии, в которой предоставляется скидка.';
COMMENT ON COLUMN person_discounts.discount IS 'Размер скидки, предоставляемой клиенту в процентах.';