-- 1. Retrieve the first and last names of all employees in the "IT" department.
SELECT firstname, lastname, Department from employees where department = 'IT';

-- 2. Calculate the total budget allocated to all projects.
select  sum(budget) as total_budget from projects;

-- 3. Find the average salary of employees in the "Finance" department.
SELECT department, AVG(Salary) as avg_sal from employees where Department = 'finance';

-- 4. List the project names along with their start and end dates.
select startdate, enddate, projectname from projects;

-- 5. Display the first name, last name, and salary of employees earning more than $60,000.
SELECT firstname, lastname, salary from employees where salary > '60000';

-- 6. Count the number of projects managed by each employee.
SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(p.ProjectID) AS NumberOfProjects
FROM Employees e
LEFT JOIN Projects p ON e.EmployeeID = p.ManagerID
GROUP BY e.EmployeeID, e.FirstName, e.LastName;


-- 7. Find the highest budget among all projects.
SELECT MAX(Budget) as HighBudgeT FROM projects;

-- 8. Calculate the total salary expense for each department.
SELECT Department, SUM(salary) AS SalaryExpense FROM employees group by Department;

-- 9. List the project names and their managers' first and last names.
SELECT p.projectname, e.firstname, e.lastname from employees as e 
JOIN projects as p ON e.employeeid = p.ProjectID;

-- 10. Find the department with the highest total salary expense.
SELECT Department, SUM(Salary) AS total_sal from employees group by department;

-- 11. Calculate the average budget of projects that started after '2022-04-01'.
SELECT AVG(Budget) as AvgBudget from projects where StartDate > '2022-04-01';

-- 12. Display the employee names and project names for employees who are managing projects.
SELECT e.firstname, e.lastname, p.projectname FROM employees e 
JOIN projects p ON e.employeeid = p.ManagerID;

-- 13. List the names of employees who are not assigned to any project.
SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT DISTINCT ManagerID FROM Projects);

-- 14. Calculate the total salary expense for the entire company.
SELECT SUM(Salary) as totalsalary FROM employees;

-- 15. Find the projects that have a budget greater than the average budget of all projects.
SELECT ProjectName, Budget FROM projects
WHERE Budget > (SELECT AVG(BUDGET) AS AVGBD FROM PROJECTS);
