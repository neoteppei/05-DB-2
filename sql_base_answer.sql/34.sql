SELECT  c.name AS name, p.name AS name, p.uniform_num
FROM players p
JOIN countries c ON p.country_id = c.id;