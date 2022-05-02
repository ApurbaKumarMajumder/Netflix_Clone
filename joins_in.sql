-- Joins: Joins are tools that are used to access data from two or more tables with the help of a common key/entry/column.

CREATE TABLE DEPARTMENT
(
    DEPTCODE INT(10) PRIMARY KEY,
    DeptName VARCHAR(15) UNIQUE,
    LOCATION VARCHAR(33) NOT NULL
);

-- entries for the table
INSERT INTO DEPARTMENT VALUES (10, 'FINANCE', 'EDINBURGH'),
                              (20,'SOFTWARE','PADDINGTON'),
                              (30, 'SALES', 'MAIDSTONE'),
                              (40,'MARKETING', 'DARLINGTON'),
                              (50,'ADMIN', 'BIRMINGHAM');

-- now we have two tables in the same database (comapny) 

SELECT * FROM DEPARTMENT
INNER JOIN employee
ON
employee.DEPTCODE = DEPARTMENT.DEPTCODE; 

-- Inner Join to get all the results
-- select everything from employe
-- SELECT * FROM department 
-- -- and while selecting from employee make a inner join with Department
-- INNER JOIN employee
-- -- on which column we need to  make intersection 
-- --  on intersection corresponding rows of both the table will be joined
-- ON DEPARTMENT.DEPTCODE=employee.DEPTCODE;

-- to get my  result in desired  order column wise 

SELECT * FROM department 
-- and while selecting from employee make a inner join with Department
INNER JOIN employee
-- on which column we need to  make intersection 
--  on intersection corresponding rows of both the table will be joined
ON DEPARTMENT.DEPTCODE=employee.DEPTCODE;

-- to get you result in a given order

SELECT employee.DEPTCODE,department.DEPTCODE,employee.EmpFName,department.LOCATION
from employee
INNER JOIN department
ON employee.DEPTCODE=department.DEPTCODE;
-- list of employees who belong a valid particular department


-- LEFT JOIN 
SELECT employee.DEPTCODE,department.DEPTCODE,employee.EmpFName,department.LOCATION
from employee
LEFT JOIN department
ON employee.DEPTCODE=department.DEPTCODE;


-- right Join
SELECT employee.DEPTCODE,department.DEPTCODE,employee.EmpFName,department.LOCATION
from employee
RIGHT JOIN department
ON employee.DEPTCODE=department.DEPTCODE;



-- full outer join 

-- LEFT JOIN 
SELECT employee.DEPTCODE,department.DEPTCODE,employee.EmpFName,department.LOCATION
from employee
LEFT JOIN department
ON employee.DEPTCODE=department.DEPTCODE
UNION
-- right Join
SELECT employee.DEPTCODE,department.DEPTCODE,employee.EmpFName,department.LOCATION
from employee
RIGHT JOIN department
ON employee.DEPTCODE=department.DEPTCODE;
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
