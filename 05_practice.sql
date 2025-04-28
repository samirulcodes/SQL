CREATE DATABASE CompanyDB;

USE CompanyDB;

create table Employees(
id int primary key,
 Name varchar(50),
 department varchar(50),
 salary int,
 city varchar(50)
 );
 
insert into Employees values
(1, 'John', 'HR', 50000, 'New York'),
(2, 'Alice', 'IT', 70000, 'Chicago'),
(3, 'Bob', 'Finance', 60000, 'Dallas'),
(4, 'Mike', 'IT', 75000, 'New York'),
(5, 'Emma', 'HR', 52000, 'Miami');

select * from Employees;

create table departments(
dept_name varchar(50) primary key,
manager varchar(50)
);

insert into departments values
('HR', 'Mr. Smith'),
('IT', 'Mr. Brown'),
('Finance','Mr. Davis');

select * from departments;

select * from Employees where department='IT';

select * from Employees where Name like 'A%';
select * from Employees where Name like '__i%';

select * from Employees where department in ('HR','Finance');

select * from Employees where salary between 40000 and 60000;

select * from Employees order by salary desc;

SELECT department, COUNT(*) AS total_employees FROM Employees GROUP BY department;
select city , count(*) as Total_employees from Employees group by city;

SELECT department, COUNT(*) AS total_employees FROM Employees GROUP BY department having count(*) > 1;
select city , count(*) as Total_employees from Employees group by city having count(*) >= 1;


select * from Employees as e left join departments as d on e.id = d.dept_name;

select * from Employees as e left join departments as d on e.id = d.dept_name union
select * from Employees as e right join departments as d on e.id = d.dept_name; 

-- two table merged into single table and return only two columns i.e name from Employees table and manager(name) from departments table
SELECT Employees.name, Departments.manager
FROM Employees
JOIN Departments
ON Employees.department = Departments.dept_name;

-- distinct -- show only different val not repeat the same val.
select distinct city from Employees; 
select COUNT(distinct city) FROM Employees;

select * from Employees order by salary desc limit 2;  -- only desc two value will return

-- new columns add
alter table Employees add bonus int ;

-- Null
select * from Employees where bonus is null;

-- not null
select * from Employees where bonus is not null;

set sql_safe_updates=0;

-- update rows
UPDATE Employees SET salary = 55000 WHERE name = 'John';
UPDATE Employees SET bonus = 5000 WHERE name = 'John';
UPDATE Employees SET bonus = 4000 WHERE name = 'Emma';

-- removed one rows
delete from Employees where city='Miami';

-- again inserting new values
INSERT INTO Employees (id, name, department, salary, city)
VALUES (6, 'Sophia', 'Marketing', 58000, 'Boston');

select * from Employees;

