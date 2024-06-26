SELECT
    p.position,
    SUM(IFNULL(g.goals, 0)) AS total_goals
FROM players p
LEFT JOIN (
    SELECT player_id, COUNT(*) AS goals
    FROM goals
    GROUP BY player_id
) AS g ON p.id = g.player_id
GROUP BY p.position
ORDER BY total_goals DESC;