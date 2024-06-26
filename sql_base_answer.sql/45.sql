SELECT 
    group_name,
    MAX(ranking) AS max_rank,
    MIN(ranking) AS min_rank
FROM 
    countries
GROUP BY 
    group_name
HAVING 
    (MAX(ranking) - MIN(ranking)) > 50;