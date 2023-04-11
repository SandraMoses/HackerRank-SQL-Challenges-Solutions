select h.hacker_id, name, count(challenge_id) cnt
from hackers h
join challenges c
on h.hacker_id=c.hacker_id
group by h.hacker_id, name     
/*max count*/
having cnt = (select count(*)
              from challenges
              group by hacker_id
              order by count(*) desc
              limit 1)
/*count which occured only once*/
or cnt in (select cnt
           from(select count(challenge_id) cnt
                    from challenges
                    group by hacker_id) as only_once
            group by cnt
            having count(cnt)=1)
order by count(challenge_id) desc, h.hacker_id;
