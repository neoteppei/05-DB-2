SELECT COUNT(*) AS null_count
FROM goals
WHERE player_id IS NULL;