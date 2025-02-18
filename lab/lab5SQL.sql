-- Day 5

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
(6, 'Aman', 'Brown', '2001-01-25', 'Male', 'aman.brown@example.com', '111-555-6666');

-- Lab 1:  student information ordered by last name (ascending)
SELECT *  FROM STUDENTS2 ORDER BY LastName ; -- by default it is in ascending order 

-- Lab 2: Count students by gender
SELECT Gender, COUNT(*) AS number_of_students  FROM STUDENTS2  GROUP BY Gender;

