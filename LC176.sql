--Problem: LC176
--Description: Second Highest Salary
-- Link : https://leetcode.com/problems/second-highest-salary/description/




-- LC176.sql



/* Write your T-SQL query statement below */
select max(case when rn=2 then salary else null end) as SecondHighestSalary from
(select salary, dense_rank() over (order by salary desc) as rn 
from Employee) a;