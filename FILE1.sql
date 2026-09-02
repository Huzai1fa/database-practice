
CREATE TABLE cities(
name VARCHAR(50),
  country VARCHAR(50),
  population INTEGER,
  area INTEGER
);
INSERT INTO cities (name, country, population, area)
VALUES 
	('Delhi', 'India', 28125000, 2240),
  ('Shanghai', 'China', 22125000, 4015),
  ('Sao Paulo', 'Brazil', 20935000, 3043);
SELECT * FROM cities;
SELECT name , population / area AS populationDensity FROM cities;
SELECT UPPER(CONCAT(name , ', ', country )) AS location FROM cities;
SELECT LOWER(CONCAT(name , ', ', country )) AS location FROM cities;
SELECT name , population / area AS population_density FROM cities WHERE 
population / area >6000;
SELECT name ,price * units_sold AS total_revenue FROM phones where price * units_sold 
>10000;
UPDATE cities  SET area = 3344 WHERE name ='Sao Paulo';
INSERT INTO cities 
VALUES
('New York', ' USA' , 78900 , 9080);
DELETE FROM cities WHERE name='New York';
DELETE FROM cities WHERE name='Sao Paulo';

CREATE TABLE boats (
id SERIAL PRIMARY KEY,
names VARCHAR(50)
);
INSERT INTO boats (names)
VALUES 
('Rouge Wave'),
('Harbour Master');
SELECT * FROM boats;

CREATE TABLE crewmembers(
id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
boat_id INTEGER REFERENCES boats (id)
);
INSERT INTO crewmembers(first_name ,boat_id)
VALUES
('Zaman',1), ('Zameer',1);
SELECT * FROM crewmembers WHERE boat_id=1;


CREATE DATABASE Myfirstpractice;




