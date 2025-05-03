USE CompanyDB;

set sql_safe_updates=0;

-- ALTER
-- Add a new column joining_date to the table
alter table Employees add joining_date date;

--  Change data type of column bonus to DECIMAL
alter table Employees modify bonus decimal(10,2);
alter table Employees modify bonus int;

-- Rename column city to location
alter table Employees rename column city to location;

--  Drop (delete) column bonus from the table
-- alter table Employees drop column bonus;

-- Add a new column email of type VARCHAR(100) to the Employees table.
alter table Employees add email varchar(100);

-- Rename salary column to base_salary.
alter table employees rename column salary to base_salary;

-- Add a column status with default value 'active'.
alter table Employees add column status varchar(50) default 'active';


-- UPDATE 
-- Increase salary of all employees by 10%
update Employees set base_salary=base_salary*1.10;

--  Change department of 'Emma' to 'Marketing'
update Employees set department='Marketing' where name='Alice';

--  Set bonus = 0 for employees who don’t have any bonus
update Employees set bonus=0 where bonus is null;

-- Set city = 'Remote' for employees in 'Marketing'.
update Employees set location='Remote' where department='Marketing';

-- Update Alice’s salary to 80000.
update Employees set base_salary=80000 where name='Alice';

-- Reduce salary by 5000 for all in 'HR'.
update Employees set base_salary=base_salary-5000 where department='HR';

-- Set bonus to 2000 where it is currently NULL.
update Employees set bonus=2000 where bonus =0;

-- Change city to 'San Francisco' where name is 'Bob'.
update Employees set location='Bob' where location='San Francisco';

-- DELETE 
--  Delete employees from 'Miami'
delete from Employees where location='Miami'; 

-- Delete all employees with salary below 55000
delete from Employees where base_salary < 55000;

-- TRUNCATE, DROP, DELETE ALL ROWS

-- Delete all rows (but keep structure) 2 ways
-- delete from Employees;
-- TRUNCATE TABLE Employees;

--  Delete entire table (structure + data)
-- delete table Employees;


-- BACKUP TABLE
create table Employees_backup as select * from Employees;

-- Verify Backup
select * from Employees_backup; 

--  delete all employees in the HR department
DELETE FROM Employees WHERE department = 'HR';

--  deletes all data from the table but keeps the structure.
truncate table Employees;

--  Drop the Table (Structure + Data Gone)
drop table Employees;

select * from Employees; -- table does not exists

-- now Backup table
select * from Employees_backup; 