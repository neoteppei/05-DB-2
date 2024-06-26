SELECT group_name, 
       MAX(ranking) AS ランキング最下位, 
       MIN(ranking) AS ランキング最上位
FROM countries
GROUP BY group_name;