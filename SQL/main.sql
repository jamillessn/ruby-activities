
CREATE TABLE students (
	id 				integer 			PRIMARY KEY, 
	first_name 		VARCHAR(25)   		NOT NULL,
	middle_name		VARCHAR(100)		NULL,
	last_name		VARCHAR(100)		NOT NULL,
	age				INTEGER				NOT NULL,
	location		VARCHAR(100)		NOT NULL
);

INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (1, 'Juan', 'Cruz', 18, 'Manila');
INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (2, 'Anne', 'Wall', 20, 'Manila');
INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (3, 'Theresa', 'Joseph', 21, 'Manila');
INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (4, 'Isaac', 'Gray', 18, 'Laguna');
INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (5, 'Zack', 'Mathews', 18, 'Marikina');
INSERT INTO
    students (id, first_name, last_name, age, location)
VALUES
    (6, 'Finn', 'Lam', 18, 'Manila');
    
UPDATE students SET first_name ='Ivan', middle_name ='Ingram', last_name ='Howard', age = 25, location ='Bulacan'WHERE id = 1;

DELETE FROM students WHERE id=6;

-- 2ND PART OF ACTIVITY

SELECT COUNT(id) from students;
SELECT first_name from students where location = 'Manila';
SELECT ROUND(AVG(age),2) as average_age from students;
SELECT * from students ORDER BY age DESC; 

SELECT * from students

--- JOINS ACTIVITY

CREATE TYPE grade_options AS ENUM ('A','B','C','D','E','F');

CREATE TABLE research_papers (
	id 				integer 			PRIMARY KEY, 
	student_id 		integer   		    NOT NULL,
	grade			grade_options				NULL,
	FOREIGN KEY (student_id) REFERENCES students(id)
);

--- C

INSERT INTO research_papers (id, student_id, grade) VALUES
('1','4','C'),
('2','1','A'),
('3','3','A'),
('4','1','D'),
('5','2','B'),
('6','2','F'),
('7','5','B'),
('8','1',null),
('9','2',null),
('10','2','C')

--- D

SELECT students.first_name, students.last_name, COUNT(research_papers.id) as number_of_research_papers
FROM students
INNER JOIN research_papers
ON students.id = research_papers.student_id
GROUP BY students.first_name, students.last_name
HAVING COUNT(research_papers.id) > 1 ;

--- E

SELECT students.first_name, students.last_name, research_papers.id as research_paper_id, research_papers.grade
FROM students
INNER JOIN research_papers
ON students.id = research_papers.student_id
WHERE research_papers.grade is NULL
GROUP BY research_papers.id, students.first_name, students.last_name

