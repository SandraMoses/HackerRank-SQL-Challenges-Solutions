select round(lat_n, 4)
from (select lat_n, percent_rank() over (order by lat_n) med
      from station)
where med = .5;
