CREATE TABLE employee(
-- unique and not null
    EmpCode INT(4),
    EmpFName VARCHAR(40) NOT NULL,
    EmpLName VARCHAR(40) ,
    JOB VARCHAR(50) NOT NULL,
    -- correct char to int
    ManagerCode CHAR(4),
    HireDate DATE NOT NULL,
    -- salary datatype add
    Salary INT(10) NOT NULL,
    Commission INT(10),
    DEPTCODE INT(3) NOT NULL
    -- email
);

-- Alter command
    -- columns -> add, remove, rename
        -- Add
            -- add column
                Alter Table employee
                    ADD COLUMN email VARCHAR(50) NOT NULL;
            -- add column after
                ALTER TABLE employee
                    ADD COLUMN bob DATE
                    AFTER EmpLName;
            -- add column first
                ALTER TABLE employee
                    ADD COLUMN ManagerFName VARCHAR(40)
                    FIRST;
        -- Remove
            ALTER TABLE employee
            DROP COLUMN ManagerFName;
        -- Multiple Remove
            ALTER TABLE employee
            DROP COLUMN dob;
            DROP COLUMN ManagerFName;
        -- Rename column
            ALTER TABLE employee
                CHANGE COLUMN JOB designation VARCHAR(50) NOT NULL; 

-- constraints -> 
    -- add, remove, modify
        ALTER TABLE employee
        CHANGE COLUMN EmpCode EmpCode INT(4) UNIQUE NOT NULL;

        ALTER TABLE employee
        CHANGE COLUMN Salary Salary FLOAT;

    -- remove
        ALTER TABLE employee
        CHANGE COLUMN DEPTCODE DEPTCODE INT(3);

-- select
    -- everything
        select * from employee;
    -- column
        SELECT EmpCode, EmpFName, EmpLName FROM employee;
    -- where clause
        SELECT * FROM  employee
        WHERE Salary > 2000;
    -- manager code 7566
        SELECT EmpFName, EmpLName, DEPTCODE FROM employee
        WHERE ManagerCode = 7566;
        -- operators :
            -- comparison : =, >, <, >=, <= <> (Not Equals too)
            -- Logical Operator: AND, OR, BETWEEN, NOT, LIKE
    -- ORDER BY ->   USED FOR ORDERING ON THE BASIS OF A COLUMN
    -- BY DEFAULT ORDERING ASCEDING ORDER.
    SELECT * FROM employee
    ODER BY Salary;

    -- Descending order
    SELECT * FROM employee
    ORDER BY Salary DESC;

    -- in the case of common order data
    SELECT * FROM employee
    ORDER BY Salary DESC, DEPTCODE ASC;

    -- using with where clause
    SELECT * FROM employee
    WHERE Salary > 2000
    ODER BY Salary DESC, DEPTCODE ASC;

-- aggregate dunctions: count, sum, avg, max, min

-- count number of employees
SELECT count(*) FROM employee;
-- count average salary
SELECT AVG(Salary) FROM employee;
-- highest earner data
SELECT MAX(Salary) FROM employee;
-- min salary
SELECT MIN(Salary) FROM employee;
-- total salary
SELECT SUM(Salary) FROM employee;

-- get dpt -
-- it is used to get data on the basis of a group
-- it give summary of a group
-- it also applies those aggregate functions on that group only
-- group by on the basis of dept

SELECT DEPTCODE from employee
GROUP BY DEPTCODE;
-- count number of employees in each deptcode
SELECT DEPTCODE, COUNT(DEPTCODE) FROM employee
GROUP BY DEPTCODE;
-- calculate maximum salary dept wise and give there names
SELECT DEPTCODE, MAX(Salary), EmpFName, EmpLName FROM employee
GROUP BY DEPTCODE;

-- having is used to add check on group by with aggregate function on that group only
-- dept code -> min salary -> min salry > 2000

-- Group by
-- 1. on the basis if which you are going to so group by
-- -> i will print it only once if you select it

-- rest of the entries except
-- 2. aggregate function ka output dega group wise

-- 3. rest of the entries except
-- aggregate function i will just print randomly

SELECT DEPTCODE, MIN(Salary), EmpFName FROM employee
GROUP BY DEPTCODE
-- aggregate function
HAVING MIN(Salary > 2000);

SELECT DEPTCODE, MIN(Salary), EmpFName FROM employee
GROUP BY DEPTCODE
-- aggregate function
HAVING MIN(Salary > 2000);