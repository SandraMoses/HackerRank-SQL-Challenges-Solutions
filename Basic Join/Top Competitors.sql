select h.hacker_id, h.name
from hackers h, difficulty d, challenges c, submissions s
where h.hacker_id = s.hacker_id
and s.challenge_id = c.challenge_id
and d.difficulty_level = c.difficulty_level
and s.score=d.score
group by h.hacker_id, h.name
having count(s.hacker_id)>1
order by count(s.hacker_id) desc, s.hacker_id asc;
