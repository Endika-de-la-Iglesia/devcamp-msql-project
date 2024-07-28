USE `devcamp-sql-course-project`;

-- pruebas de que ha funcionado
SELECT *
FROM students;

SELECT *
FROM courses;

SELECT *
FROM professors;

SELECT *
FROM grades;

SELECT
g.grades_value,
c.courses_name,
s.students_name,
p.professors_name
FROM grades g
JOIN students s ON s.students_id = g.grades_students_id
JOIN courses c ON c.courses_id = g.grades_courses_id
JOIN professors p ON p.professors_id = c.courses_professors_id
ORDER BY s.students_name ASC;

-- fin de pruebas 

-- código para poblar de datos las tablas generadas
INSERT INTO `students` (`students_name`, `students_email`) VALUES
('Luke Skywalker', 'luke.skywalker@example.com'),
('Leia Organa', 'leia.organa@example.com'),
('Han Solo', 'han.solo@example.com'),
('Anakin Skywalker', 'anakin.skywalker@example.com'),
('Obi-Wan Kenobi', 'obiwan.kenobi@example.com'),
('Yoda', 'yoda@example.com'),
('Padmé Amidala', 'padme.amidala@example.com'),
('Rey', 'rey@example.com'),
('Finn', 'finn@example.com'),
('Kylo Ren', 'kylo.ren@example.com');

INSERT INTO `professors` (`professors_name`, `professors_email`) VALUES
('Dr. Harry Potter', 'harry.potter@example.com'),
('Dr. Hermione Granger', 'hermione.granger@example.com'),
('Dr. Ron Weasley', 'ron.weasley@example.com');

INSERT INTO `courses` (`courses_name`, `courses_professors_id`) VALUES
('Defense Against the Dark Arts', 1),
('Potions', 2),
('Herbology', 3),
('Transfiguration', 1),
('Charms', 2),
('Astronomy', 3),
('History of Magic', 1),
('Divination', 2),
('Care of Magical Creatures', 3),
('Muggle Studies', 1);

INSERT INTO `grades` (`grades_students_id`, `grades_courses_id`, `grades_value`) VALUES
(1, 1, 9.5),
(1, 5, 7.0),
(1, 10, 8.0),
(2, 2, 8.0),
(2, 4, 8.0),
(2, 8, 7.0),
(3, 3, 7.0),
(3, 6, 7.5),
(3, 9, 6.5),
(4, 4, 6.5),
(4, 7, 9.0),
(4, 2, 7.5),
(5, 5, 8.5),
(5, 8, 8.5),
(5, 3, 6.5),
(6, 6, 9.0),
(6, 9, 9.5),
(6, 1, 7.5),
(7, 7, 7.5),
(7, 10, 6.5),
(7, 4, 7.0),
(8, 8, 8.0),
(8, 1, 7.0),
(8, 5, 8.5),
(9, 9, 6.0),
(9, 2, 6.5),
(9, 6, 6.5),
(10, 10, 5.5),
(10, 3, 5.0),
(10, 7, 5.0);
