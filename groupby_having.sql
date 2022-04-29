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

-- Having: it is always used with a aggregate function
--         used to add condition on group by(group data)
--         therefore it comes after group by statement

SELECT designation FROM employee
GROUP BY designation
HAVING MAX(Salary) > 3000;