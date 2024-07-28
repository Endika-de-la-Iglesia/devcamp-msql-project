USE `devcamp-sql-course-project`;

SELECT 
    s.students_name AS "Name",
    c.courses_name AS "Course" 
FROM students s
JOIN grades g ON g.grades_students_id = s.students_id
JOIN courses c ON g.grades_courses_id = c.courses_id
ORDER BY `Course` ASC;