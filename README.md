# Employee Database: A Mystery in Two Parts

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/readme.png)

It has been two weeks since I have been hired as a new data engineer at Pewlett Hackard. My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.


In this assignment, I will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, I will perform:

#### * Data Engineering
#### * Data Analysis


### Data Modeling

I inspected the CSVs and sketched out an ERD of the tables.

![](https://github.com/ShimsyV/sql-challenge/blob/master/ERD_EmployeeSQL.png)

### Data Engineering

Using the information I have, I created a table schema for each of the six CSV files. Remembering to specify data types, primary keys, foreign keys, and other constraints.

Imported each CSV file into the corresponding SQL table. 

### Data Analysis

Once I had a complete database, I did the following:

1. Listed the following details of each employee: employee number, last name, first name, sex, and salary. Part of the image shown below

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ1.PNG)


2. Listed first name, last name, and hire date for employees who were hired in 1986. Part of the image shown below

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ2.PNG)


3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name. Part of the image shown below

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ3.PNG)


4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ4.PNG)


5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ5.PNG)


6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ6.PNG)


7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ7.PNG)

8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/AnalysisQ8.PNG)


### As I examined the data,I was overcome with a creeping suspicion that the dataset is fake. I summarized that my boss handed me spurious data in order to test the data engineering skills of a new employee. To confirm my hunch,I decided to take the following steps to generate a visualization of the data, with which I confronted my boss:


#### I imported the SQL database into Pandas. 

#### I created a histogram to visualize the most common salary ranges for employees.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/salary_range_employees.png)


#### I created a bar chart of average salary by title.

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/avg_emp_salary_title1.png)


### Epilogue
Evidence in hand, I marched into my boss's office and presented the visualization. With a sly grin,my boss thanks me for my work. On my way out of the office, I hear the words, "Search your ID number." I look down at my badge to see that my employee ID number is 499942. I went back to my office and checked the tables to see the following:

![](https://github.com/ShimsyV/sql-challenge/blob/master/images/idcheck.PNG)



