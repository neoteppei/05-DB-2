SELECT
    '日本' AS country,
    (SELECT COUNT(*) FROM goals WHERE pairing_id = 39) AS goals_scored
UNION ALL
SELECT
    'コロンビア' AS country,
    (SELECT COUNT(*) FROM goals WHERE pairing_id = 103) AS goals_scored;