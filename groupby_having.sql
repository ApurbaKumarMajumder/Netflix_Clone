-- 1. dafault
-- only valid single column is the one on the basis of which you made group by.
SELECT designation FROM employee
-- I will make group on the basis of given column
GROUP BY designation;

-- 2. if you are group by : column aggregate data get -> get grouped
SELECT designation, Count(designation) as "count per dept",
MAX(Salary) from employee
-- i will make group on the basis of given column
GROUP BY designation; 