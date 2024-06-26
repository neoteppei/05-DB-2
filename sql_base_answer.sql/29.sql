SELECT SUM(goal_count) AS 日本のゴール数
FROM (
    SELECT COUNT(*) AS goal_count
    FROM goals
    WHERE player_id BETWEEN 714 AND 736
) AS subquery;