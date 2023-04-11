select sum(CITY.population)
from city, country
where CITY.CountryCode = COUNTRY.Code
and COUNTRY.continent='Asia';
