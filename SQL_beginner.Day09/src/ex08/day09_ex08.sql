CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE (
    fib_number BIGINT
)
AS $$
DECLARE
    prev_num BIGINT := 0;
    cur_num BIGINT := 1;
BEGIN
    WHILE cur_num < pstop LOOP
        fib_number := cur_num;
        cur_num := prev_num + cur_num;
        prev_num := fib_number;
        RETURN NEXT;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- select * from fnc_fibonacci(100);
-- select * from fnc_fibonacci();