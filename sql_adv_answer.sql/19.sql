SELECT
    CASE
        WHEN MONTH('2014-06-13') > MONTH(birth) OR (MONTH('2014-06-13') = MONTH(birth) AND DAY('2014-06-13') >= DAY(birth))
            THEN YEAR('2014-06-13') - YEAR(birth)
        ELSE YEAR('2014-06-13') - YEAR(birth) - 1
    END AS 年齢,
    COUNT(*) AS 選手数
FROM
    players
GROUP BY
    年齢
ORDER BY
    年齢;