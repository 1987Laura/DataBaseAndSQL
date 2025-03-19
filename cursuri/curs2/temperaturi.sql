SHOW DATABASES;
## CREATE
CREATE DATABASE vremea;

##FOLOSIRE
USE vremea;

CREATE TABLE temperaturi(
	id INT PRIMARY KEY AUTO_INCREMENT, grade SMALLINT 
);

SELECT * FROM temperaturi;

SELECT grade, id FROM temperaturi;

INSERT INTO temperaturi set id = 1, grade = 6;
SELECT * FROM temperaturi;

INSERT INTO temperaturi set id = 2, grade = 7;
SELECT * FROM temperaturi;

INSERT INTO temperaturi set id = 5, grade = 17;
SELECT * FROM temperaturi;

INSERT INTO temperaturi set grade = 27;
SELECT * FROM temperaturi;

INSERT INTO temperaturi set id = 7;
SELECT * FROM temperaturi;

DROP TABLE IF EXISTS masurari;

CREATE TABLE masurari(
	id INT PRIMARY KEY AUTO_INCREMENT, grade SMALLINT NOT NULL DEFAULT 0
);
SELECT * FROM masurari;

INSERT INTO masurari set id = 1, grade = 10;
SELECT * FROM masurari;

INSERT INTO masurari set id = 2;
SELECT * FROM masurari;

UPDATE masurari set grade = 3 where id = 2;
SELECT * FROM masurari;


