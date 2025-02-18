-- Day 7

-- using  StudentManagementSystem DataBAse
use StudentManagementSystem;

-- Create the Student table
CREATE TABLE STUDENTS2 (
    StudentID INT PRIMARY KEY ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO STUDENTS2  VALUES
(1, 'Alice', 'Smith', '2002-03-15', 'Female', 'alice.smith@example.com', '123-456-7890'),
(2, 'Bob', 'Johnson', '2001-07-22', 'Male', 'bob.johnson@example.com', '987-654-3210'),
(3, 'Eva', 'Garcia', '2003-11-08', 'Female', 'eva.garcia@example.com', '555-123-4567'),
(4, 'Michael', 'Lee', '2002-05-19', 'Male', 'michael.lee@example.com', '111-222-3333'),
(5, 'Sophia', 'Brown', '2001-09-25', 'Female', 'sophia.brown@example.com', '444-555-6666'),
(6, 'Aman', 'Brown', '2001-01-25', 'Male', 'aman.brown@example.com', '111-555-6666'),
(7, 'Harry', 'Brown', '2010-07-25', 'Male', 'harry.brown@example.com', '111-555-6666');

-- Assigment 1 
-- Task 1 Students born after June 16, 2009
SELECT * FROM STUDENTS2  WHERE DateOfBirth > '2009-06-16';

-- Task 2  Students whose first names start with 'A' or 'J'
SELECT *  FROM STUDENTS2 WHERE FirstName LIKE 'A%' OR FirstName LIKE 'J%';

-- Task 3 Students whose first name is not 'Alice' and email contains '@example.com'
SELECT * FROM STUDENTS2  WHERE FirstName <> 'Alice' AND Email LIKE '%@example.com';


 -- Assignment 2

-- Task 1: Create the Person table
CREATE TABLE Person (
    PersonID INT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    age INT,
    PRIMARY KEY (PersonID)
);

-- Task 2: Create the Employee table
CREATE TABLE Employees (
    emp_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INT,
    PRIMARY KEY (emp_id)
);

-- Task 3: Insert data into the Person table
INSERT INTO Person VALUES
(1, 'John', 'Doe', 30),
(2, 'Jane', 'Smith', 25),
(3, 'David', 'Lee', 40);
    
-- Task 4: Insert data into the Employee table

INSERT INTO Employees VALUES
(101, 'Michael', 'Brown', 35),
(102, 'Emily', 'Davis', 28),
(103, 'Robert', 'Wilson', 45);
    
-- Task 5: Create a UNION of the two tables(combined)

SELECT PersonID AS ID, FirstName , LastName, age, 'Person' AS TableSource FROM Person
UNION  SELECT emp_id, first_name, last_name, age, 'Employees' FROM Employees;