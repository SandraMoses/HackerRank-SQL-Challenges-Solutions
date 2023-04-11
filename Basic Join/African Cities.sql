select c.name
from city c
join country co
on c.CountryCode = co.Code
where co.continent='Africa'
