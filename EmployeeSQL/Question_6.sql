SELECT * FROM "Employee";
SELECT * FROM "Salaries";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT "Departments".dept_name, "Employee".last_name, "Employee".first_name
FROM "Dept_Emp"
JOIN "Employee"
ON "Dept_Emp".emp_no = "Employee".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';