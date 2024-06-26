SELECT id,
       goal_time, 
       (SELECT name 
        FROM players 
        WHERE id = g.player_id) AS player_name
FROM goals g
WHERE player_id IS NOT NULL;