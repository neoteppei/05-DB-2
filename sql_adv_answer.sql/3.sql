SELECT c.name, AVG(p.height) AS average_height
FROM countries c
JOIN players p ON c.id = p.country_id
GROUP BY c.name
ORDER BY average_height DESC;