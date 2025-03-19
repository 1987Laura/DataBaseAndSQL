## SELECTARE FARA TABELA

SELECT 10;

SELECT 10 AS 'Nota';

CREATE DATABASE `masini furate`;
SHOW DATABASES;

USE `masini furate`;

USE personal;

CREATE table people (
first_name VARCHAR(255), 
last_name VARCHAR(255)
);

SELECT * FROM people;

ALTER TABLE people ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
SELECT * FROM people;

INSERT INTO people set first_name = 'Duck', last_name = 'Donald';
SELECT * FROM people;

INSERT INTO people set first_name = 'Mouse', last_name = 'Mickey';
SELECT * FROM people;

INSERT INTO people set first_name = 'Duck', last_name = 'Duffy';
SELECT * FROM people;

INSERT INTO people set first_name = 'Mouse', last_name = 'Minnie';
SELECT * FROM people;

DELETE FROM people WHERE id = 5;
SELECT * FROM people;

ALTER TABLE people ADD COLUMN varsta INT;
SELECT * FROM people;

ALTER TABLE people ADD COLUMN retea VARCHAR(255) DEFAULT 'Disney';
SELECT * FROM people;

ALTER TABLE people ADD COLUMN culoare VARCHAR(255), ADD dimensiune INT;
SELECT * FROM people;






