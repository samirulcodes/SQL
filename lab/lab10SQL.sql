-- LAB 9
-- student_id , FirstName and LastName from the Student table (written as s as this query shorter and more readable.).
-- enrollmentID and CourseId from the Enrollment3 table (written as e as this query shorter and more readable.).
use StudentManagementSystem;

-- 1. FULL OUTER JOIN
-- -- FULL OUTER JOIN doesn't directly support so using LEFT JOIN, RIGHT JOIN, and UNION doing FULL OUTER JOIN
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    e.enrollmentID,
    e.CourseId
FROM STUDENTS2 s LEFT JOIN Enrollment3 e ON s.StudentID = e.StudentID UNION
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    e.enrollmentID,
    e.CourseId
FROM STUDENTS2 s RIGHT JOIN Enrollment3 e ON s.StudentID = e.StudentID;



-- 2. NATURAL JOIN
SELECT * FROM STUDENTS2 NATURAL JOIN Enrollment3;