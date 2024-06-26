SELECT
    birth AS 誕生日,
    TIMESTAMPDIFF(YEAR, birth, '2014-06-13') AS 年齢,
    name AS 名前,
    position AS ポジション
FROM players
ORDER BY 年齢 DESC;