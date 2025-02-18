use StudentManagementSystem;

-- ques 1

-- Create the Student table
CREATE TABLE STUDENTS (
    StudentID INT PRIMARY KEY ,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);
select * from STUDENTS;
INSERT INTO STUDENTS  VALUES
(1, 'Alice', 'Smith', '2002-03-15', 'Female', 'alice.smith@example.com', '123-456-7890'),
(2, 'Bob', 'Johnson', '2001-07-22', 'Male', 'bob.johnson@example.com', '987-654-3210'),
(3, 'Eva', 'Garcia', '2003-11-08', 'Female', 'eva.garcia@example.com', '555-123-4567'),
(4, 'Michael', 'Lee', '2002-05-19', 'Male', 'michael.lee@example.com', '111-222-3333'),
(5, 'Sophia', 'Brown', '2001-09-25', 'Female', 'sophia.brown@example.com', '444-555-6666');

set sql_safe_updates=0; -- allow permission to update , delete ,etc


 -- ques 2
 
-- Create the Course table
CREATE TABLE COURSE1 (
    CourseID INT PRIMARY KEY ,
    CourseTitle VARCHAR(100),
    Credits INT
);

select * from COURSE1;
INSERT INTO COURSE1 VALUES
(1,'programming',3),
(2,'data structure',5),
(3,'Database Management',7),
(4,'Web Development',10),
(5,'Operating Systems',12);


-- ques 3

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

update Instructor1 set firstName='Roger', lastName='White', email='rogerwhite@example.com';

-- ques 4 

-- Create the Enrollment table
CREATE TABLE Enrollment3 (
    EnrollmentID INT PRIMARY KEY,
    EnrollmentDate DATE,
    StudentID INT REFERENCES STUDENTS,
     CourseID INT REFERENCES COURSE1,
     InstructorID INT REFERENCES Instructor1
);

INSERT INTO Enrollment3 VALUES
(1, '2023-09-01', 1, 1, 1),
(2, '2023-09-01', 2, 2, 2),
(3, '2023-09-01', 3, 3, 3),
(4, '2023-09-01', 4, 1, 1),
(5, '2023-09-01', 5, 2, 2);

select * from Enrollment3;


-- ques 5

-- Create the Score table
CREATE TABLE Score2 (
    ScoreID INT PRIMARY KEY,
     CourseID INT REFERENCES COURSE1(CourseID),
     StudentID  INT REFERENCES STUDENTS(StudentID),
     DateOfExam DATE,
    CreditObtained INT
);

INSERT INTO Score2 VALUES
(1, 1, 1, '2023-10-26', 95),
(2, 2, 2, '2023-10-27', 88),
(3, 3, 3, '2023-10-28', 92),
(4, 1, 4, '2023-10-26', 85),
(5, 2, 5, '2023-10-27', 90);

select * from Score2;


-- ques 6

-- Create the Feedback table
CREATE TABLE Feedback2 (
    FeedbackID INT PRIMARY KEY,
    StudentID  INT REFERENCES STUDENTS,
    Date DATE,
    InstructorName VARCHAR(100),
    Feedback TEXT
);

INSERT INTO Feedback2 VALUES
(1, 1, '2023-10-29', 'David Wilson', 'Excellent !'),
(2, 2, '2023-10-30', 'Sarah Martinez', 'Very informative  .'),
(3, 3, '2023-10-31', 'James Anderson', ' very helpful.'),
(4, 4, '2023-10-29', 'David Wilson', 'Great teaching .'),
(5, 5, '2023-10-30', 'Sarah Martinez', 'I learned a lot!');

select * from Feedback2;

