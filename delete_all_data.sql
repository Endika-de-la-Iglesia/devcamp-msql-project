USE `devcamp-sql-course-project`;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM `grades`;

DELETE FROM `courses`;

DELETE FROM `students`;

DELETE FROM `professors`;

TRUNCATE `grades`;
TRUNCATE `courses`;
TRUNCATE `students`;
TRUNCATE `professors`;