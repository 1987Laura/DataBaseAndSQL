SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS baza_de_date_4;

USE baza_de_date_4;

CREATE TABLE IF NOT EXISTS iepuri (nume VARCHAR(255), varsta SMALLINT); 

SELECT * FROM iepuri;

INSERT INTO iepuri VALUES ("Bugs", 5);

INSERT INTO iepuri SET varsta = 9, nume = "Morcoveata";

UPDATE iepuri SET nume = "Bugs Bunny" WHERE nume = "Bugs";

SELECT * FROM iepuri WHERE nume  = "Bugs";

INSERT INTO iepuri VALUES ("Bugs", 7);
INSERT INTO iepuri VALUES ("Bugs", 10);
INSERT INTO iepuri VALUES ("Bugs", 12);

SET sql_safe_updates =0;
UPDATE iepuri SET nume = "Bugs Bunny" WHERE nume = "Bugs";

SET sql_safe_updates =1;
