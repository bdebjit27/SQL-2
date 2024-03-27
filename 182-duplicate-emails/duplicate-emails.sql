# Write your MySQL query statement below
SELECT x.email
FROM (
    SELECT p.*,
           COUNT(*) OVER (PARTITION BY p.email ORDER BY p.id DESC) AS cnt
    FROM Person p
) x
WHERE x.cnt = 2;