SELECT students_name AS "Student Name", MAX(grades_grade) AS "Top Grade"
FROM grades g
INNER JOIN students p
ON g.grades_students_id = p.students_id
GROUP BY students_name;