
--Problem: LC184
--Description: Department Highest Salary
-- Link : https://leetcode.com/problems/department-highest-salary/description/




-- LC184.sql
SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary as Salary
FROM   
    Employee e
JOIN
    Department d
ON
    e.departmentId = d.id
WHERE
    e.salary = (
        SELECT MAX(salary) FROM Employee
        WHERE departmentId = e.departmentId
    );