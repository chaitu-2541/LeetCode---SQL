
--Problem: LC177
--Description: Nth Highest Salary
-- Link : https://leetcode.com/problems/nth-highest-salary/description/




-- LC177.sql



CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select max(case when rn=@N then salary else null end) as SecondHighestSalary from
    (select salary, dense_rank() over (order by salary desc) as rn 
    from Employee) a
    );
END