USE `devcamp-sql-course-project`;

SELECT 
    s.students_name AS "Name",
	g.grades_value AS "Top grades",
    c.courses_name AS "Course"
FROM grades g
JOIN students s ON g.grades_students_id = s.students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
WHERE g.grades_value = (
    SELECT MAX(grades_value)
    FROM grades
    WHERE grades_students_id = g.grades_students_id
)
ORDER BY `Top grades` DESC;