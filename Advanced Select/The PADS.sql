select name || '(' || substr(occupation, 1, 1) || ')'
from occupations
union
select 'There are a total of ' || count(occupation) || ' ' || lower(occupation) || 's.'
from occupations
group by occupation;
