SELECT * FROM "Employee";
SELECT * FROM "Salaries";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";

--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Employee".sex, "Salaries".salary
FROM "Employee"
JOIN "Salaries"
ON "Salaries".emp_no = "Employee".emp_no;
	
--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM "Employee"
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employee".last_name, "Employee".first_name
FROM "Departments"
JOIN "Dept_Manager"
ON "Departments".dept_no = "Dept_Manager".dept_no
JOIN "Employee"
ON "Dept_Manager".emp_no = "Employee".emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employee"
ON "Dept_Emp".emp_no = "Employee".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT "Employee".first_name, "Employee".last_name, "Employee".sex
FROM "Employee"
WHERE first_name = 'Hercules'
AND last_name Like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT "Departments".dept_name, "Employee".last_name, "Employee".first_name
FROM "Dept_Emp"
JOIN "Employee"
ON "Dept_Emp".emp_no = "Employee".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employee"
ON "Dept_Emp".emp_no = "Employee".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' 
OR "Departments".dept_name = 'Development';

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) as frequency
FROM "Employee"
GROUP BY last_name
ORDER BY frequency desc;