CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(100)
);
INSERT INTO students (name, age, course)
VALUES
('Ali', 20, 'CS'),
('Ahmed', 21, 'SE'),
('Sara', 19, 'AI');
SELECT *FROM students;

BEGIN;
UPDATE students
SET AGE=22 WHERE name='Ali';
ROLLBACK ;
COMMIT;

DELETE FROM students
WHERE student_id=1;

INSERT INTO students (name,age,course)
VALUES ('Ali', 20, 'CS');
INSERT INTO students (name,age,course)
VALUES ('ZiA', 20, 'CS');

BEGIN;
DELETE FROM students
WHERE student_id=4;
ROLLBACK;
---------------------------------------------------------
BEGIN;

UPDATE students
SET age = 26
WHERE student_id = 2;
SAVEPOINT sp1;

UPDATE students
SET course = 'Cyber Security'
WHERE student_id = 5;
SAVEPOINT sp2;

UPDATE students
SET course = 'AI'
WHERE student_id = 4;
SAVEPOINT sp3;


ROLLBACK TO sp2;
ROLLBACK;
SELECT * FROM students ORDER BY student_id ASC;


