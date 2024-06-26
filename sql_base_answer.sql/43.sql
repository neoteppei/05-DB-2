SELECT 
    p.position,
    (SELECT name 
     FROM players 
     WHERE position = p.position 
     ORDER BY height DESC 
     LIMIT 1) AS 名前,
    (SELECT height 
     FROM players 
     WHERE position = p.position 
     ORDER BY height DESC 
     LIMIT 1) AS 最大身長
FROM 
    players p
GROUP BY 
    p.position;