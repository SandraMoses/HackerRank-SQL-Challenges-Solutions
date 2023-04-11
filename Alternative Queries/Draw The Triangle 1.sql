DECLARE @i int
SET @i = 22

WHILE @i >0
    BEGIN
        print replicate ('* ', @i)
        SET @i = @i-1
    END 
