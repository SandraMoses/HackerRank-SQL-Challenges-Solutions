(SELECT city, LENGTH(city)
FROM station
GROUP BY city
ORDER BY LENGTH(city) asc, city asc
LIMIT 1)

UNION ALL

(SELECT city, LENGTH(city)
FROM station
GROUP BY city
ORDER BY LENGTH(city) desc, city asc
LIMIT 1);
