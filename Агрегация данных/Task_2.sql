USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, ) VALUES
  ('Геннадий', '1990-10-05'),birthday_at
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
SELECT count(*), date_format((DATE_ADD(birthday_at, INTERVAL (YEAR(now()) - YEAR(birthday_at)) YEAR)), '%W') AS day_of_week 
FROM users 
GROUP BY day_of_week;

 
--  SELECT count(*), date_format(birthday_at, '%W') AS day_of_week FROM users GROUP BY day_of_week;