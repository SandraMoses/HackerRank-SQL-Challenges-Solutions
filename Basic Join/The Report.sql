select case when grade < 8 then 'NULL' else name end, grade, marks
from students s, grades g
where s.marks between min_mark and max_mark
order by grade desc, name;
