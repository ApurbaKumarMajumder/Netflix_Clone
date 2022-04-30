-- 1. dafault
-- only valid single column is the one on the basis of which you made group by.
SELECT designation FROM employee
-- I will make group on the basis of given column
GROUP BY designation;

-- 2. if you are group by : column aggregate data get -> get grouped
SELECT designation, Count(designation) as "count per dept",
MAX(Salary) as "Max Salary" from employee
-- i will make group on the basis of given column
GROUP BY designation; 

-- group by -> to form formal groups
--          -> to apply aggregation on these groups

--         (It always filtering group wise)
-- Having: it is always used with a aggregate function
--         used to add condition on group by(group data)
--         therefore it comes after group by statement

-- Que1: designation tell me ki highest salary kya hai ??
-- but ignore where the highest salary is less then 3000?

SELECT designation FROM employee
GROUP BY designation
HAVING MAX(Salary) > 3000;

-- Where : It is used to filter row wise data

-- Que2: designation tell me ki highest salary kya hai ??
-- but ignore where the highest salary is less then 3000?
-- i also don't want data of deptcode 20
SELECT designation,
Count(designation) as "count per dep",
MAX(Salary) as "Max Salary" FROM employee
WHERE DEPTCODE <> 20
-- i will make group on the basis of given column
GROUP BY designation
-- to put condition on group by ka output uspe condition lagane ke kaam

-- Que3: designation tell me ki highest salary kya hai ??
-- i also don't want data of Salesman
SELECT designation,
COUNT(designation) as "count per dep",
MAX(Salary) as "Max Salary" FROM employee
WHERE designation <> "SALESMAN"
-- i will make group on the basis of given column
GROUP BY designation
-- to put condition on group by ka output uspe condition lagane ke kaam