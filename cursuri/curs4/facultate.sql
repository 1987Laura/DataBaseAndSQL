CREATE DATABASE facultate;
USE facultate;

CREATE TABLE student(
id_student INT PRIMARY KEY AUTO_INCREMENT,
nume VARCHAR(100) NOT NULL UNIQUE,
prenume VARCHAR(100) UNIQUE NOT NULL,
grupa INT NOT NULL CHECK (grupa IN (1, 2, 3, 4)),
email VARCHAR(100) UNIQUE,
data_inscrierii DATE DEFAULT (CURRENT_DATE),
statut VARCHAR(100) DEFAULT 'NEEVALUAT' CHECK (statut IN ('admis', 'respins', 'neevaluat'))
);

SELECT * FROM student;

INSERT INTO student SET id_student = 1, nume = 'Georgescu', prenume = 'Emilia', grupa = 3, email = 'emilia@gmail.com';
SELECT * FROM student;

INSERT INTO student SET id_student = 2, nume = 'Gabriel', prenume = 'Ion', grupa = 2, email = 'dccg@gmail.com';
SELECT * FROM student;

INSERT INTO student SET id_student = 3, nume = 'Popa', prenume = 'Eliana', grupa = 1, email = 'ep@gmail.com';
SELECT * FROM student;