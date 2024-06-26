SELECT id, position, name, height, weight
FROM (
    SELECT id, position, name, height, weight
    FROM players
    WHERE height >  195 OR weight > 95

    UNION ALL

    SELECT id, position, name, height, weight
    FROM players
    WHERE height >  195 AND weight > 95
) AS combined
ORDER BY id;