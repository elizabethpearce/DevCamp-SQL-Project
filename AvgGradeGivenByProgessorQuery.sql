SELECT professors_name AS "Professor", AVG(grades_grade) AS "Average Grade Given"
FROM grades g
INNER JOIN professors p
ON g.grades_professors_id = p.professors_id
GROUP BY professors_name;