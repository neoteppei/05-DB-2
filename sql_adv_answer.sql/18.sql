SELECT
    p.kickoff AS キックオフ時間_現地,
   DATE_SUB(p.kickoff, INTERVAL 12 HOUR) AS キックオフ時間_日本
FROM   
    pairings p
WHERE
    (p.my_country_id = 1 AND p.enemy_country_id = 4);