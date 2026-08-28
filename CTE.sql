CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(20),
    Marks INT
);
INSERT INTO Students VALUES
(1, 'Ali',    'CS', 85),
(2, 'Ahmed',  'CS', 70),
(3, 'Sara',   'IT', 92),
(4, 'Ayesha', 'IT', 78),
(5, 'Bilal',  'CS', 60),
(6, 'Hina',   'SE', 88),
(7, 'Usman',  'SE', 95),
(8, 'Fatima', 'IT', 65);

WITH Department AS(
Select * FROM Students Where 
Department='CS'
)
Select * From Department;


With AverageMarks AS(
Select Avg(Marks) AS  avg From Students
)
Select avg From AverageMarks;



With aboveavg AS(
Select Avg(Marks) AS  avg  From Students)
AverageMarks AS
(Select * From Students Where
Marks > avg
)
Select Name From aboveavg;


WITH AvgMarks AS (
    SELECT AVG(Marks) AS avg_mark
    FROM Students
)
SELECT Name
FROM Students
WHERE Marks > (SELECT AVG(Marks) FROM Students);



With AverageMarks AS(
Select Avg(Marks) as avgmarks
From Students

),
aboveAverage AS(
Select * From Students  
cross join AverageMarks WHERE 
Students.marks>avgmarks

)
Select Name From aboveAverage;












