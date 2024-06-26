SELECT '1980年' AS 誕生年, COUNT(*) AS count
FROM players
WHERE YEAR(birth) = 1980

UNION ALL

SELECT '1981年' AS 誕生年, COUNT(*) AS count
FROM players
WHERE YEAR(birth) = 1981;