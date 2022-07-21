SELECT courses_name AS "Course", AVG(grades_grade) AS "Average Grade"
FROM courses c
INNER JOIN grades g
ON g.grades_courses_id = c.courses_id
GROUP BY courses_name
ORDER BY AVG(grades_grade) DESC;