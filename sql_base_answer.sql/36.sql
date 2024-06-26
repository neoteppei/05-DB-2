SELECT g.goal_time,
       p.uniform_num,
       p.position,
       IFNULL(p.name, 'NULL') AS name   
FROM goals g
LEFT JOIN players p ON g.player_id = p.id;