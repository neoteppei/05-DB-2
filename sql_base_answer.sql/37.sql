SELECT g.goal_time,
       p.uniform_num,
       p.position,
       IFNULL(p.name, 'NULL') AS name
FROM players p
RIGHT JOIN goals g ON p.id = g.player_id;