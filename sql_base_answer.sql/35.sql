SELECT c.name AS name, p.name AS name, g.goal_time
FROM goals g
JOIN players p ON g.player_id = p.id
JOIN countries c ON p.country_id = c.id
WHERE g.player_id IS NOT NULL;