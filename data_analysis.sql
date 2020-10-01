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

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,last_name,sex
FROM employee_info 
WHERE first_name = 'Hercules' and last_name like 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT DISTINCT employeeID_dept.emp_no, last_name, first_name, departments.dept_name 
FROM employeeID_dept, employee_info, departments 
WHERE employeeID_dept.emp_no = employee_info.emp_no AND employeeID_dept.dept_no= departments.dept_no AND departments.dept_name = 'Sales' 
ORDER BY emp_no; 

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT DISTINCT employeeID_dept.emp_no, last_name, first_name, departments.dept_name 
FROM employeeID_dept, employee_info, departments 
WHERE employeeID_dept.emp_no = employee_info.emp_no AND employeeID_dept.dept_no= departments.dept_no AND (departments.dept_name = 'Sales' OR departments.dept_name = 'Development')
ORDER BY emp_no; 

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employee_info.last_name, COUNT(employee_info.last_name) AS "Emp Last Name Count" 
FROM employee_info
GROUP BY employee_info.last_name 
ORDER BY "Emp Last Name Count" DESC; 

