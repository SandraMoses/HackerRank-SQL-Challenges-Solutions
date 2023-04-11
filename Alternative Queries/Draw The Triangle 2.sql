DECLARE @i int
SET @i = 0

PRINT ('*')

WHILE @i<=20
    BEGIN
    PRINT REPLICATE ('* ', @i)
    SET @i =@i + 1
    END
