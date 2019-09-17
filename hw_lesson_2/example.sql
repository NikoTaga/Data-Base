DROP DATABASE IF EXISTS sample;
DROP DATABASE IF EXISTS example;

CREATE DATABASE example;
CREATE DATABASE sample;

USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id int auto_increment not null primary key,
	name varchar(100) not null 
);

INSERT INTO users VALUES (NULL, 'Petya');
INSERT INTO users VALUES (NULL, 'Vasya');

