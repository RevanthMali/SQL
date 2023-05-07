create or replace procedure primeN
as
  n INTEGER := 2;
  num_primes INTEGER := 0;
BEGIN
  LOOP
    -- check if n is prime
      is_prime BOOLEAN := TRUE;
    BEGIN
      FOR i IN 2..(n - 1) LOOP
        IF (n % i) = 0 THEN
          is_prime := FALSE;
          EXIT;
        END IF;
      END LOOP;

      -- print the prime number and increment the count
      IF is_prime THEN
        dbms_output.put_line(n);
        num_primes := num_primes + 1;
      END IF;

      -- exit the loop if we've printed enough prime numbers
      IF num_primes = 10 THEN
        EXIT;
      END IF;

      -- increment n for the next iteration
      n := n + 1;
    END;
  END LOOP;
END;
/