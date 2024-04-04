# Write your MySQL query statement below
SELECT customer_number
FROM (
    SELECT customer_number, COUNT(*) AS cnt 
    FROM Orders
    GROUP BY customer_number
) AS R
WHERE cnt = (
    SELECT MAX(cnt) 
    FROM (
        SELECT COUNT(*) AS cnt 
        FROM Orders 
        GROUP BY customer_number
    ) AS S
);
