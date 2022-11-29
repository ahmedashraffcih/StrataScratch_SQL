SELECT date,SUM(consumption) AS sum_consumption
FROM(
    SELECT * from fb_eu_energy
    UNION ALL
    SELECT * from fb_asia_energy
    UNION ALL
    SELECT * from fb_na_energy
) data
GROUP BY date
ORDER BY sum_consumption DESC
LIMIT 2;

/*
Output:

|       date       | sum_consumption |
|------------------|-----------------|
|    2020-01-06    |      1250       |
|    2020-01-06    |      1250       |

*/