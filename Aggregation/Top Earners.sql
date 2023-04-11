select (salary*months) || ' ' || count (*)
from employee
where (salary*months) IN (select max(salary*months) from employee)
group by (salary*months);
