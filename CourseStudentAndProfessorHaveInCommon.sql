SELECT TOP 1 students_name AS "Student Name", professors_name AS "Professor Name", COUNT(grades_professors_id) AS "Common Courses"
FROM students s
INNER JOIN grades g
ON s.students_id = g.grades_students_id
INNER JOIN professors p
ON g.grades_professors_id = p.professors_id
GROUP BY grades_students_id, grades_professors_id, students_name, professors_name
ORDER BY COUNT(grades_professors_id) DESC;