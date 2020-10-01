-- create employee_info table

CREATE TABLE employee_info (
    emp_no INT   NOT NULL,
    emp_title VARCHAR(10)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(10)   NOT NULL,
    hire_date DATE   NOT NULL,
    CONSTRAINT pk_employee_info PRIMARY KEY (
        emp_no
     )
);

-- display employee_info table

SELECT * 
FROM employee_info
LIMIT 100;


-- create departments table

CREATE TABLE departments (
    dept_no VARCHAR(10)   NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

-- display departments table

SELECT * 
FROM departments;

