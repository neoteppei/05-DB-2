SELECT  g.id, g.goal_time, p.name AS player_name
FROM goals g
JOIN players p ON g.player_id = p.id
WHERE g.player_id IS NOT NULL;