USE `devcamp-sql-course-project`;

SELECT 
	p.professors_name,
    AVG(g.grades_value) AS "Mean grade"
FROM grades g
JOIN courses c ON g.grades_courses_id = c.courses_id
JOIN professors p ON c.courses_professors_id = p.professors_id
GROUP BY p.professors_name
ORDER BY `Mean grade` DESC;
