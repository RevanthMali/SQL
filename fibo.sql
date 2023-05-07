CREATE OR REPLACE FUNCTION fibo(n IN NUMBER)
  RETURN NUMBER
AS
  a NUMBER := 0;
  b NUMBER := 1;
  c NUMBER;
BEGIN
  IF n = 1 THEN
    RETURN a;
  ELSIF n = 2 THEN
    RETURN b;
  ELSE
    FOR i IN 3..n LOOP
      c := a + b;
      a := b;
      b := c;
    END LOOP;
    RETURN c;
  END IF;
END;
