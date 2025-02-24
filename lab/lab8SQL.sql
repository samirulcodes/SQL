-- LAB 8
-- student_id , FirstName and LastName from the Student table (written as s as this query shorter and more readable.).
-- enrollmentID and CourseId from the Enrollment3 table (written as e as this query shorter and more readable.).

use StudentManagementSystem;

-- INNER JOIN 
SELECT 
    s.StudentID, 
    s.FirstName, 
    s.LastName, 
    e.enrollmentID , 
    e.CourseId
FROM STUDENTS2 s  INNER JOIN Enrollment3 e ON s.StudentID = e.StudentID; 

