USE `devcamp-sql-course-project`;

SELECT 
	c.courses_name AS "Course",
	AVG(g.grades_value) AS "Mean grades"
FROM grades g
JOIN courses c ON g.grades_courses_id = c.courses_id
GROUP BY c.courses_name
ORDER BY `Mean grades` ASC;