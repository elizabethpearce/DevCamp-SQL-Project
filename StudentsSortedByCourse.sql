SELECT courses_name AS "Course Name", students_name AS "Student Name"
FROM students s
INNER JOIN grades g
ON g.grades_students_id = s.students_id
INNER JOIN courses c
ON g.grades_courses_id = c.courses_id
ORDER BY courses_name