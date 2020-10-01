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

SELECT * 
FROM employee_info;

