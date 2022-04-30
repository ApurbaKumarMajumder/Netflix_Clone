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