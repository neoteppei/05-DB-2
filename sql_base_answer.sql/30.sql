SELECT COUNT(CASE WHEN player_id IS NOT NULL THEN 1 END) AS オウンゴール以外のゴール数
FROM goals;