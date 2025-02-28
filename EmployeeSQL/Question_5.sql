SELECT * FROM "Employee";
SELECT * FROM "Salaries";
SELECT * FROM "Dept_Emp";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT "Employee".first_name, "Employee".last_name, "Employee".sex
FROM "Employee"
WHERE first_name = 'Hercules'
AND last_name Like 'B%';