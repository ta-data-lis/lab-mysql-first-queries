CREATE DATABASE ironhack_personnel;
CREATE TABLE IF NOT EXISTS teachers (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(25),
last_name VARCHAR(50) NOT NULL,
campus VARCHAR(50),
hire_date date,
salary numeric);
INSERT INTO teachers (first_name, last_name, campus, hire_date, salary)
VALUES ('Cristina','Zappullo','Lisbon','2011-10-30', 400), 
('Jose','Carneiro','Lisbon','1993-05-22',650), 
('Claudia','Rivera','Barcelona','2005-08-01', 400),
('Maxence','Bouret','Paris','2011-10-30',362), 
('Hugo','Rocha','Lisbon','2005-08-30', 400);
SELECT campus, salary FROM teachers
WHERE salary <=400
AND campus = "Lisbon";
SELECT campus, SUM(salary) FROM teachers 
GROUP BY campus;
SELECT campus, max(salary), min(salary) FROM teachers;
SELECT * FROM books;
SELECT title, authors FROM books
WHERE authors = "J.K. Rowling";
SELECT DISTINCT language_code FROM books
WHERE authors ="J.K. Rowling"
ORDER BY language_code DESC;
SELECT title, average_rating FROM books
WHERE ratings_count <> 0
ORDER BY average_rating ASC
LIMIT 10;
SELECT AVG(average_rating) FROM books
 WHERE `# num_pages` BETWEEN 200 AND 500;
 SELECT AVG(average_rating) FROM books
 WHERE `# num_pages` BETWEEN 1500 AND 2500;
 SELECT COUNT(text_reviews_count) FROM books
 WHERE `# num_pages` BETWEEN 200 AND 500;
  SELECT COUNT(text_reviews_count) FROM books
 WHERE `# num_pages` BETWEEN 1500 AND 2500;
CREATE DATABASE ironhack_lab;
