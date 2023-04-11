select cont.contest_id, hacker_id, name, 
        sum(ss.tot_sub), sum(ss.tot_acc), 
        sum(v.sum_views), sum(v.tot_views)
from contests cont

join colleges col
on cont.contest_id=col.contest_id

join challenges ch
on ch.college_id=col.college_id

left join (select challenge_id, 
            sum(total_views) sum_views, 
            sum(total_unique_views) tot_views
            from view_stats
            group by challenge_id) as v
on v.challenge_id=ch.challenge_id

left join (select challenge_id, 
            sum(total_submissions) tot_sub, 
            sum(total_accepted_submissions) tot_acc
            from submission_stats 
            group by challenge_id) as ss
on ss.challenge_id=ch.challenge_id

group by cont.contest_id, hacker_id, name
having (sum(ss.tot_sub) + sum(ss.tot_acc) + sum(v.sum_views) + sum(v.tot_views)) >0
order by cont.contest_id;
