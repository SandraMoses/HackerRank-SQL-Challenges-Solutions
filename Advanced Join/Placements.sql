select s.name
from students s
join friends f
on s.id = f.id
join packages p1
on p1.id = s.id
join packages p2
on p2.id=f.friend_id
where p2.salary > p1.salary
order by p2.salary;
