WITH start_dates AS(SELECT start_date,
                   RANK () OVER (ORDER BY start_date) rnk_start
                   FROM projects
                   WHERE start_date NOT IN (SELECT end_date from projects)),
                   
end_dates AS(SELECT end_date,
              RANK () OVER (ORDER BY end_date) rnk_end
              FROM projects
              WHERE end_date NOT IN (SELECT start_date from projects))    

SELECT start_date, end_date
FROM start_dates, end_dates
WHERE rnk_start=rnk_end
ORDER BY datediff(day, start_date, end_date), start_date;
