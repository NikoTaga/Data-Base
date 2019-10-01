USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(250),
  updated_at VARCHAR(250)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('Геннадий', '1990-10-05', '20.10.2017 8:10', '20.10.2017 8:10'),
  ('Наталья', '1984-11-12', '20.10.2017 9:10', '20.10.2017 9:10'),
  ('Александр', '1985-05-20', '20.10.2017 10:10', '20.10.2017 10:10'),
  ('Сергей', '1988-02-14', '20.10.2017 11:10', '20.10.2017 11:10'), 
  ('Иван', '1998-01-12', '20.10.2017 10:10', '20.10.2017 10:10'),
  ('Мария', '1992-08-29', '20.10.2017 11:10', '20.10.2017 11:10');

ALTER TABLE users
ADD COLUMN (tmp_1 DATETIME, 
	        tmp_2 DATETIME); 

UPDATE users 
SET tmp_1 = str_to_date(created_at, '%d.%m.%Y %h:%i'),
	tmp_2 = str_to_date(updated_at, '%d.%m.%Y %h:%i');

ALTER TABLE users 
DROP created_at,
DROP updated_at;

ALTER TABLE users 
CHANGE COLUMN tmp_1 created_at DATETIME,
CHANGE COLUMN tmp_2 updated_at DATETIME;

SELECT * FROM users;


