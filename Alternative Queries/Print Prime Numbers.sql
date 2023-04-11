CREATE TABLE PrimeNumbers (p int);

DECLARE @num INT;
DECLARE @divisor INT;
DECLARE @prime BIT;

SELECT @num = 2;

WHILE @num <=1000

BEGIN
    SELECT @divisor = @num-1;
    SELECT @prime = 1;
    WHILE @divisor > 1
        BEGIN
            IF @num % @divisor = 0
            SELECT @prime = 0
            SELECT @divisor = @divisor-1
        END

IF @prime = 1
    INSERT INTO PrimeNumbers (p) values (@num)
    
SELECT @num = @num +1
END

SELECT string_agg(p, '&')
FROM PrimeNumbers;


/*
Another Solution:

WITH prime AS
(
    select 2 as num
    
    UNION ALL
    
    select num+1 as rec
    from prime
    where num < 1000
)

select string_agg(num, '&')
from prime a
where not exists (select *
                  from prime b
                  where a.num % b.num = 0
                  and a.num != b.num)
                  
OPTION (MAXRECURSION 0)

*/
