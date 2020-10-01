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

-- create department manager ID table

CREATE TABLE dept_managerID (
    dept_no VARCHAR(10)   NOT NULL,
    emp_no INT   NOT NULL
);

-- display departments manager ID table

SELECT * 
FROM dept_managerID;

-- create employee ID and department table

CREATE TABLE employeeID_dept (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(10)   NOT NULL
);

-- display employee ID and department table

SELECT * 
FROM employeeID_dept
LIMIT 100;

-- create employee title table

CREATE TABLE title (
    title_id VARCHAR(10)   NOT NULL,
    title VARCHAR(30)   NOT NULL
);

-- display employee title table

SELECT * 
FROM title;

-- create employee salary table

CREATE TABLE salary (
    emp_no VARCHAR(10)   NOT NULL,
    salary INT   NOT NULL
);

-- display employee salary table

SELECT * 
FROM salary
LIMIT 100;


