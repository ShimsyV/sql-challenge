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

DROP TABLE title;

CREATE TABLE title (
    title_id VARCHAR(10)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_title PRIMARY KEY (
        title_id
     )
);

-- display employee title table

SELECT * 
FROM title;

-- create employee salary table

CREATE TABLE salary (
    emp_no INT  NOT NULL,
    salary INT   NOT NULL
);

-- display employee salary table

SELECT * 
FROM salary
LIMIT 100;

-- adding foreign key for employeeID_dept to employee number from employee info table

ALTER TABLE employeeID_dept ADD CONSTRAINT fk_employeeID_dept_emp_no FOREIGN KEY(emp_no)
REFERENCES employee_info (emp_no);

-- adding foreign key for employeeID_dept to department number from departments table

ALTER TABLE employeeID_dept ADD CONSTRAINT fk_employeeID_dept_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

-- adding foreign key for department manager ID to department number from departments table

ALTER TABLE dept_managerID ADD CONSTRAINT fk_dept_managerID_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

-- adding foreign key for department manager ID to employee number from employee info table

ALTER TABLE dept_managerID ADD CONSTRAINT fk_dept_managerID_emp_no FOREIGN KEY(emp_no)
REFERENCES employee_info (emp_no);

-- adding foreign key for salary to employee number from employee info table

ALTER TABLE salary ADD CONSTRAINT fk_salary_emp_no FOREIGN KEY(emp_no)
REFERENCES employee_info (emp_no);

-- adding foreign key for title to employee number from employee info table

ALTER TABLE employee_info ADD CONSTRAINT fk_employee_info_emp_title FOREIGN KEY(emp_title)
REFERENCES title (title_id);


