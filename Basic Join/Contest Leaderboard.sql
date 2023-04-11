select m.hacker_id, name, sum(max_sc) as total_score
from (select hacker_id, challenge_id, max(score) max_sc
     from submissions s
     group by hacker_id, challenge_id) m
join hackers h
on h.hacker_id=m.hacker_id
group by m.hacker_id, name
having total_score>0
order by total_score desc, m.hacker_id;
