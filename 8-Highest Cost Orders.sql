SELECT first_name,order_date,SUM(total_order_cost) as total_cost
FROM customers c
JOIN orders o ON c.id = o.cust_id
WHERE order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY first_name,order_date
ORDER BY total_cost DESC
LIMIT 1



/*
Output:

| first_name | order_date |total_cost|
|------------|------------|----------|
|    Jill    | 2019-04-19 |   275    |

*/