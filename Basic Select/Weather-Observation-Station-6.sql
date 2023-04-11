SELECT DISTINCT city
FROM station
WHERE LEFT(city,1) IN ('a', 'e', 'i', 'o', 'u');

/*
Another Solution:

SELECT DISTINCT city
FROM station
WHERE city like 'a%' || city like 'e%' || city like 'i%' || city like 'o%' || city like 'u%';

*/
