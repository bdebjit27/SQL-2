# Write your MySQL query statement below
Select class
from (Select class,count(student) as cnt
from Courses
group by class) as R
where cnt >= 5;
