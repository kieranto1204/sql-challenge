SELECT * FROM "Employee";
SELECT * FROM "Salaries";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT "Employee".emp_no, "Employee".last_name, "Employee".first_name, "Departments".dept_name
FROM "Dept_Emp"
JOIN "Employee"
ON "Dept_Emp".emp_no = "Employee".emp_no
JOIN "Departments"
ON "Dept_Emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales' 
OR "Departments".dept_name = 'Development';