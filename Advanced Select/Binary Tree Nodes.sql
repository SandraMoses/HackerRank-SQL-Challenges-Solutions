select n, (case when p is null then 'Root'
                when (select count(*) from bst t2 where t2.p=t1.n)=0 then 'Leaf'
                else 'Inner'
            end)
from bst t1
order by n;
