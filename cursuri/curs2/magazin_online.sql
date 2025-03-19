CREATE DATABASE online_store;
USE online_store;

DROP DATABASE IF EXISTS online_store;

CREATE TABLE computer_parts(
id INT PRIMARY KEY AUTO_INCREMENT,
cod VARCHAR(5),
type_device VARCHAR(20) DEFAULT 'Electronic',
name_device VARCHAR(100) UNIQUE NOT NULL,
price DECIMAL(7,2)
);

SELECT * FROM computer_parts;

INSERT INTO computer_parts SET id = 1, name_device = 'telefon', price = 590.02;
SELECT * FROM computer_parts;