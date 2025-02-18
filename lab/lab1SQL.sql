create database StudentManagementSystem;
use StudentManagementSystem;

-- lab question 1
CREATE TABLE student2 (
student_id VARCHAR(20) primary key,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DateOfBirth DATE,
Gender VARCHAR(50),Email VARCHAR(50), Phone VARCHAR(50)
);

select * from student2;


-- lab question 2
CREATE TABLE course (
CourseId VARCHAR(20) primary key,
Course_Title VARCHAR(50),
Credit int
);

select * from course;

-- lab question 3
CREATE TABLE instructor (
InstructorId VARCHAR(20) primary key,
First_Name VARCHAR(50),
 Last_Name VARCHAR(50),
 Email VARCHAR(50)
 );

select * from instructor;


-- lab question 4
CREATE TABLE enrollment1 (
enrollmentID INT primary key,
 enrollmentDate DATE,
 studentId VARCHAR(20) references student2 , 
 CourseId VARCHAR(20) references course,
 InstructorId VARCHAR(20) references instructor
 );

select * from enrollment1;

-- lab question 5

CREATE TABLE Score1 (
ScoreID VARCHAR(20) primary key,
CourseId VARCHAR(20) references course,
studentId VARCHAR(20) references student2,
 DateOfExam DATE,
 CreditObtained INT
 );

select * from Score1;


-- lab question 6
CREATE TABLE Feedback1 (
FeedbackID VARCHAR(20) primary key,
StudentId VARCHAR(20) references student2 ,
 Date DATE,
 InstructorName VARCHAR(20),
 Feedback VARCHAR(20)
 );

select * from Feedback1;