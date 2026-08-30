CREATE TABLE person(
person_id SERIAL PRIMARY KEY ,
name VARCHAR(50)
);

CREATE TABLE passport(
passport_id SERIAL PRIMARY KEY,
passport_no VARCHAR(50) UNIQUE,
person_id INT UNIQUE,

FOREIGN KEY  (person_id) REFERENCES person (person_id)
);

INSERT INTO person (name) 
VALUES ('Ahmed'),('Hamza'),('Ali Sher');
SELECT * FROM person;

INSERT INTO passport(passport_no,person_id)
VALUES
('PKR2345',2),
('PKT5676',1),
('PYU8998',3);
SELECT * FROM passport;

SELECT p.name,pp.passport_no
FROM person p 
JOIN passport pp
ON p.person_id=pp.person_id;

-------------------------ONE TO MANY  RELATIONSHIP---------------------------------------
CREATE TABLE Department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Student (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id)
);
INSERT INTO Department(dept_name)
VALUES ('CS'), ('IT');

INSERT INTO Student(name, dept_id)
VALUES
('Ali',1),
('Ahmed',1),
('Sara',2);

SELECT S.name,D.dept_name
FROM Student S
JOIN Department D
ON S. dept_id=D. dept_id;
------ADDING NEW DATA-----------------------------
BEGIN;
INSERT INTO Student (name, dept_id)
VALUES ('Zara',2);
COMMIT;
------------------------------------------------
SELECT *FROM Student;

--------MANY TO MANY RELATIONSHIIP----------------------------------------------------------------------



CREATE TABLE alphastudents(
student_id INT PRIMARY KEY,
name VARCHAR (50)
);

CREATE TABLE Course (
 course_id INT PRIMARY KEY,
 course_name VARCHAR(50)
);

CREATE TABLE enrollment(
student_id INT ,
course_id INT,
PRIMARY KEY(student_id,COURSE_id),
FOREIGN KEY (student_id) REFERENCES alphastudents (student_id),
FOREIGN KEY (course_id) REFERENCES Course (course_id)
);

INSERT INTO alphastudents VALUES
(1,'Ali'),
(2,'Sara'),
(3,'Ahmed');

INSERT INTO Course VALUES
(101,'DBMS'),
(102,'AI'),
(103,'Web');

INSERT INTO Enrollment VALUES
(1,101),
(1,102),
(2,101),
(3,103);

SELECT A.name ,C.course_name
FROM Enrollment e 
JOIN alphastudents A
ON e.student_id=A.student_id
JOIN Course C
ON e.course_id=C.course_id;


----------------------------------------------------------------------------------------------------------

















