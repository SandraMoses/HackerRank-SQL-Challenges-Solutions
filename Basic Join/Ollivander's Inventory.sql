select id, age, coins_needed, power
from wands w
join wands_property wp
on w.code=wp.code
where coins_needed = (select min(coins_needed) 
                        from wands w2
                        join wands_property wp2
                        on w2.code = wp2.code
                        where is_evil=0
                        and wp2.age = wp.age
                        and w2.power=w.power)
order by power desc, age desc;
