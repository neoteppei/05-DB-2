SELECT name, average_height
FROM (
    SELECT country_id, AVG(height) AS average_height
    FROM players
    GROUP BY country_id
) AS avg_heights
JOIN countries ON avg_heights.country_id = countries.id
ORDER BY average_height DESC;