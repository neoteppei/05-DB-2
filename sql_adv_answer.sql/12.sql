SELECT g.goal_time
FROM goals g
JOIN pairings p ON g.pairing_id = p.id
JOIN countries c ON p.my_country_id = c.id 
WHERE p.id = 103
AND c.name = 'コロンビア';