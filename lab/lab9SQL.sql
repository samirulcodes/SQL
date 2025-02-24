-- LAB 9
 -- student_id and email from the Student table (written as s as this query shorter and more readable).
-- enrollmentID and CourseId from the Enrollment3 table (written as s as this query shorter and more readable).


use StudentManagementSystem;

-- Question 1 RIGHT OUTER JOIN
SELECT 
     s.StudentID, 
    s.FirstName, 
    s.LastName, 
    e.enrollmentID , 
    e.CourseId
FROM STUDENTS2 s RIGHT OUTER JOIN Enrollment3 e ON s.StudentID = e.StudentID;


-- Question 2 LEFT JOIN 

SELECT 
    s.StudentID,  
    s.Email, 
    e.enrollmentID,  
    e.CourseId
FROM STUDENTS2 s LEFT JOIN Enrollment3 e ON s.StudentID = e.StudentID;
    
