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