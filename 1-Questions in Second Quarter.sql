SELECT EXTRACT(QUARTER FROM date) as Quarter,COUNT(*) no_of_searches
FROM fb_searches 
WHERE EXTRACT(QUARTER FROM date)=2 AND EXTRACT(YEAR FROM date)=2021
GROUP BY Quarter


/*
Output:

| quarter |no_of_searches|
|---------|--------------|
|    2    |      38      |

*/