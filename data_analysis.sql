-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex, SAL.salary
FROM employee_info AS EMP
INNER JOIN salary AS SAL
ON EMP.emp_no = SAL.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT emp_no, last_name, first_name, hire_date
FROM employee_info 
WHERE hire_date >= '1986/01/01' and hire_date < '1987/01/01' 
ORDER BY hire_date ASC; 

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT DISTINCT dept_managerID.dept_no, departments.dept_name, employee_info.emp_no, employee_info.last_name, employee_info.first_name 
FROM dept_managerID, departments, employee_info
WHERE dept_managerID.dept_no = departments.dept_no AND dept_managerID.emp_no = employee_info.emp_no; 


-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT DISTINCT employeeID_dept.emp_no, employee_info.last_name, employee_info.first_name, departments.dept_name 
FROM employeeID_dept, employee_info, departments 
WHERE employeeID_dept.emp_no = employee_info.emp_no AND employeeID_dept.dept_no= departments.dept_no
LIMIT 100; 



