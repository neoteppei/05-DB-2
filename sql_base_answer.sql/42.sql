SELECT p.position,
       p.name AS name,
       p.height AS 最大身長,
       p.club AS club
FROM players p
WHERE (p.position, p.height) IN (
    SELECT position, MAX(height)
    FROM players
    GROUP BY position
);