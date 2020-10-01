-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT EMP.emp_no, EMP.last_name, EMP.first_name, EMP.sex, SAL.salary
FROM employee_info AS EMP
INNER JOIN salary AS SAL
ON EMP.emp_no = SAL.emp_no
