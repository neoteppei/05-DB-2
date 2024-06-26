SELECT
    p.kickoff AS kick_off_time,
    home.name AS 自国名,
    away.name AS 対戦相手国名,
    home.ranking AS 自国ランキング,
    away.ranking AS 相手ランキング,
    COUNT(g.id) AS 自国のゴール数
FROM
    pairings p
LEFT JOIN
    goals g ON p.id = g.pairing_id
JOIN
    countries home ON p.my_country_id = home.id
JOIN
    countries away ON p.enemy_country_id = away.id
WHERE
    home.group_name = 'C'
     AND p.kickoff BETWEEN '2014-06-13' AND '2014-06-27'
GROUP BY
    p.id
ORDER BY
    p.kickoff,
    home.ranking;