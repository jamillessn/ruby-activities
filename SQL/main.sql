
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

SELECT COUNT(id) from students
SELECT first_name from students where location = 'Manila'
Select AVG(age) as average_age from students
SELECT * from students ORDER BY age DESC; 
