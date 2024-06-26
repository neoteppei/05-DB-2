SELECT c.name,
       g.goal_time,
       p.position,
       IFNULL(p.name, 'No Player') AS player_name
FROM goals g
LEFT JOIN players p ON g.player_id = p.id
LEFT JOIN countries c ON p.country_id = c.id;