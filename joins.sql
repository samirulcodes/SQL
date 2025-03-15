use StudentManagementSystem;

select * from STUDENTS2;
select * from Enrollment3;

-- INNER JOIN 1 
select * from
STUDENTS2 as s
inner join Enrollment3  as e
on s.StudentId=e.StudentId;

-- 2 
select 
s.StudentId,s.FirstName from
STUDENTS2 as s
inner join Enrollment3 as e
on s.StudentId=e.StudentId;

-- LEFT JOIN 1 
select * from
STUDENTS2 as s
left join Enrollment3  as e
on s.StudentID=e.StudentID;

-- 2
select 
s.StudentId, s.FirstName, e.EnrollmentDate from
STUDENTS2 as s
left join Enrollment3 as e
on s.StudentId=e.StudentID; 


-- RIGHT JOIN 1
select * from
STUDENTS2 as s
right join Enrollment3  as e
on s.StudentID=e.StudentID;

-- 2
select 
s.StudentID, s.FirstName, e.EnrollmentDate, e.CourseId from
STUDENTS2 as s
right join Enrollment3 as e
on s.StudentID=e.StudentID; 

-- FULL OUTER JOIN 1
-- FULL OUTER JOIN doesn't directly support so using LEFT JOIN, RIGHT JOIN, and UNION doing FULL OUTER JOIN
select * from STUDENTS2 as s left join Enrollment3 as e on s.StudentID=e.StudentID union
select * from STUDENTS2 as s right join Enrollment3 as e on s.StudentID=e.StudentId;

-- 2
select
s.StudentID,
e.StudentID,
s.FirstName,
e.enrollmentID,
e.CourseID
from
STUDENTS2 as s left join Enrollment3 as e on s.StudentID=e.StudentID union
select
s.StudentID,
e.StudentID,
s.FirstName,
e.enrollmentID,
e.CourseID
from STUDENTS2 as s right join Enrollment3 as e on s.StudentID=e.StudentId;
 
 




