USE CompanyDB;

-- Find all employees who have received a bonus.
select * from Employees where bonus is not null;

-- List employees who have a salary greater than 60000 and also got a bonus.
select * from Employees where salary > 60000 and bonus is not null;

--  Show total salary paid per department.
select department, SUM(salary) as total_salary from Employees group by department;

--  List employees whose salary is not between 55000 and 70000.
select * from Employees where salary not between 55000 and 70000;

-- Find departments where average salary is above 60000.
select department, avg(salary) as average_salary from Employees group by department having avg(salary) > 60000;

-- List names and departments of employees whose name ends with 'a'.
select * from Employees where name like '%a';

-- Show employee names and their manager names.
select e.name , d.manager from Employees as e join departments as d on e.department=d.dept_name;

-- Count how many employees are from each city.
select city, count(*) as Total_Employees from Employees group by city;

-- Show highest salary in each department.
select department , max(salary) as Maximum_Salary from Employees group by department;

-- Show lowest salary in each department.
select department , min(salary) as Minimum_Salary from Employees group by department;

--  Get employees who either work in 'IT' or live in 'Chicago'.
select * from Employees where department='IT' or city='Chicago';

-- Show departments with no employees.
SELECT dept_name FROM departments WHERE dept_name is null;

-- List top 3 highest-paid employees.
select * from Employees order by salary desc limit 3;

-- Display employees who belong to the same department as 'Mike'.
SELECT * FROM Employees
WHERE department = (
    SELECT department FROM Employees WHERE name = 'Mike'
);

--  Bonus: Create View for All Employees with Manager
CREATE VIEW EmployeeDetails AS
SELECT e.id, e.name, e.department, e.salary, e.city, e.bonus, d.manager
FROM Employees e
JOIN Departments d ON e.department = d.dept_name;

SELECT * FROM EmployeeDetails;


