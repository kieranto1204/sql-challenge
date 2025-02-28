SELECT * FROM "Employee";
SELECT * FROM "Salaries";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT "Departments".dept_no, "Departments".dept_name, "Dept_Manager".emp_no, "Employee".last_name, "Employee".first_name
FROM "Departments"
JOIN "Dept_Manager"
ON "Departments".dept_no = "Dept_Manager".dept_no
JOIN "Employee"
ON "Dept_Manager".emp_no = "Employee".emp_no;