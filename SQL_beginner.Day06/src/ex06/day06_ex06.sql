CREATE SEQUENCE seq_person_discounts
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807;
ALTER TABLE person_discounts
    ALTER COLUMN id SET DEFAULT NEXTVAL('seq_person_discounts');
SELECT setval(
    'seq_person_discounts',
    (SELECT COUNT(*) + 1 FROM person_discounts)
);

-- ALTER TABLE person_discounts
-- ALTER COLUMN id DROP DEFAULT;
-- DROP SEQUENCE seq_person_discounts;