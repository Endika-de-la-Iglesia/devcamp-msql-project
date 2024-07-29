CREATE SCHEMA `devcamp-sql-course-project`;

USE `devcamp-sql-course-project`;

CREATE TABLE `students` (
    `students_id` INT AUTO_INCREMENT PRIMARY KEY,
    `students_name` VARCHAR(100) NOT NULL,
    `students_email` VARCHAR(100) NOT NULL
);

CREATE TABLE `professors` (
    `professors_id` INT AUTO_INCREMENT PRIMARY KEY,
    `professors_name` VARCHAR(100) NOT NULL,
    `professors_email` VARCHAR(100) NOT NULL
);

CREATE TABLE `courses` (
    `courses_id` INT AUTO_INCREMENT PRIMARY KEY,
    `courses_name` VARCHAR(100) NOT NULL,
    `courses_professors_id` INT NOT NULL,
    FOREIGN KEY (`courses_professors_id`) REFERENCES `professors` (`professors_id`)
);

CREATE TABLE `grades` (
    `grades_id` INT AUTO_INCREMENT PRIMARY KEY,
    `grades_students_id` INT NOT NULL,
    `grades_courses_id` INT NOT NULL,
    `grades_value` DECIMAL(3, 1) NOT NULL,
    FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`),
    FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`)
);