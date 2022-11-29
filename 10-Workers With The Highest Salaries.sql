SELECT worker_title 
FROM (
    SELECT DISTINCT salary,worker_title,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS ranking
    FROM worker w
    JOIN title t ON w.worker_id = t.worker_ref_id
) titles
WHERE titles.ranking=1


/*
Output:

  worker_title	                
\---------------\
\    Manager    \
\ Asst. Manager \

*/