SELECT count(id) AS NO_OF_CUSTOMERS FROM customers
WHERE id NOT IN(
    SELECT cust_id FROM orders
);

/*
Output:

| NO_OF_CUSTOMERS |
|-----------------|
|        9        |

*/