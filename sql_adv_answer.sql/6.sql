SELECT
    p.name AS player_name,
    p.position,
    p.club,
    IFNULL(g.goals, 0) AS goals
FROM players p
LEFT JOIN (
    SELECT player_id, COUNT(*) AS goals
    FROM goals
    GROUP BY player_id
) AS g ON p.id = g.player_id
ORDER BY goals DESC;  