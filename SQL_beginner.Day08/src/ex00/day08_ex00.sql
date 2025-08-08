
-- Session #1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';
-- 5

--Session #2
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';
-- 4.6

-- Session #1
COMMIT;

--Session #2
SELECT * FROM pizzeria WHERE name  = 'Pizza Hut';
-- 5