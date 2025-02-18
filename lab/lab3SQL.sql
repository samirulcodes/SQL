-- connected from lab 2

use StudentManagementSystem;

-- ques 1

-- Create the Student table
CREATE TABLE STUDENTS1 (
    StudentID INT PRIMARY KEY ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO STUDENTS1  VALUES
(1, 'Alice', 'Smith', '2002-03-15', 'Female', 'alice.smith@example.com', '123-456-7890'),
(2, 'Bob', 'Johnson', '2001-07-22', 'Male', 'bob.johnson@example.com', '987-654-3210'),
(3, 'Eva', 'Garcia', '2003-11-08', 'Female', 'eva.garcia@example.com', '555-123-4567'),
(4, 'Michael', 'Lee', '2002-05-19', 'Male', 'michael.lee@example.com', '111-222-3333'),
(5, 'Sophia', 'Brown', '2001-09-25', 'Female', 'sophia.brown@example.com', '444-555-6666');

set sql_safe_updates=0; -- allow permission to update , delete ,etc

-- lab1-> lab 3 task 1
update STUDENTS1 set email='jane_smith@example.com' where firstName='Jane'and lastName='Smith';

-- labAssignment1-> day 3 ,task 2
DELETE FROM STUDENTS1 WHERE LastName = 'Smith';

-- labAssignment1-> day 3 ,task 3
SELECT * FROM STUDENTS1 WHERE FirstName LIKE 'J%';

select * from STUDENTS1;


-- ques 2

-- Create the Instructor table
CREATE TABLE Instructor1(
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

INSERT INTO Instructor1 VALUES
(1, 'David', 'Wilson', 'david.wilson@example.com'),
(2, 'Sarah', 'Martinez', 'sarah.martinez@example.com'),
(3, 'James', 'Anderson', 'james.anderson@example.com'),
(4, 'Emily', 'Taylor', 'emily.taylor@example.com'),
(5, 'Thomas', 'Jackson', 'thomas.jackson@example.com');

select * from Instructor1;

-- labAssignment1-> day 3 ,task 1
update Instructor1 set email='rogerwhiteh@example.com' where firstName='Roger'and lastName='White';


-- labAssigment2 -> day3 

-- creating Employee Table

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    email VARCHAR(255)
);

-- Task 1 Insert data
INSERT INTO Employee VALUES 
(1, 'John', 'Doe', 35, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 30, 'janesmith@example.com'),
(3, 'Alice', 'Smith', 26, 'alicesmith@example.com');  
-- Task 2 Retrieving data
SELECT first_name, last_name FROM Employee;

-- Task 3 Filtering data
SELECT first_name, last_name, age FROM Employee WHERE age > 30;

-- Task 4 Updating data
UPDATE Employee SET age = age + 1 WHERE age > 25;

-- chatGPT Exercise

UPDATE Employee SET salary = salary * 1.10 WHERE job_title = 'Manager';