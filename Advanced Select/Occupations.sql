SELECT MAX(CASE WHEN occupation = 'Doctor' THEN name END),
        MAX(CASE WHEN occupation = 'Professor' THEN name END),
        MAX(CASE WHEN occupation = 'Singer' THEN name END),
        MAX(CASE WHEN occupation = 'Actor' THEN name END)
        
FROM (SELECT name, occupation, row_number() over (partition by occupation order by name) as rnk
     FROM occupations) as occ

GROUP BY occ.rnk;
