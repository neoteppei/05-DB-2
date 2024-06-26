SELECT id, country_id, uniform_num, position, name, club, birth, height, weight
FROM players
WHERE  TIMESTAMPDIFF(YEAR, birth, CURDATE()) >= 40;