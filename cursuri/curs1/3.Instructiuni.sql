SHOW DATABASES;

CREATE DATABASE amgajati;

USE angajati;

CREATE TABLE dezvoltatori (id INT PRIMARY KEY, nume VARCHAR(255));

SELECT * FROM dezvoltatori;

INSERT INTO dezvoltatori VALUES (1, "Ionescu");

INSERT INTO dezvoltatori VALUES (2, "Popescu");

INSERT INTO dezvoltatori VALUES (1, "Georgescu");

INSERT INTO dezvoltatori VALUES (6, "Popescu");

UPDATE dezvoltatori SET nume = "Popescu-Popescu" WHERE id =1;

INSERT INTO dezvoltatori VALUES (3, "Georgescu");

INSERT INTO dezvoltatori SET id =7;


CREATE TABLE studenti(id INT PRIMARY KEY AUTO_INCREMENT, nume VARCHAR(10));
INSERT INTO studenti VALUES (1, "Mihai"); 

SELECT * FROM studenti;

INSERT INTO studenti SET  nume = "Florin"; 

INSERT INTO studenti VALUES (8, "Andreea"); 
SELECT * FROM studenti;

INSERT INTO studenti SET  nume = "Ana"; 
SELECT * FROM studenti;

INSERT INTO studenti SET  nume = "Alexa"; 

INSERT INTO studenti VALUES (3, "Andreea"); 

DELETE FROM studenti WHERE id=10;
SELECT * FROM studenti;
