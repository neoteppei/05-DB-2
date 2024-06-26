SELECT
    c.group_name,
    SUM(IFNULL(g.goals_count, 0)) AS 総得点
FROM
    pairings p
JOIN
    countries c ON p.my_country_id = c.id
LEFT JOIN (
    SELECT
        pairing_id,
        COUNT(*) AS goals_count
    FROM
        goals
    GROUP BY
        pairing_id
) g ON p.id = g.pairing_id
WHERE
    p.kickoff BETWEEN '2014-06-13' AND '2014-06-27'
GROUP BY
    c.group_name;