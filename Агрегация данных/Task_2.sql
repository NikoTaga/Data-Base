USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, ) VALUES
  ('��������', '1990-10-05'),birthday_at
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29');
 
SELECT count(*), date_format((DATE_ADD(birthday_at, INTERVAL (YEAR(now()) - YEAR(birthday_at)) YEAR)), '%W') AS day_of_week 
FROM users 
GROUP BY day_of_week;

 
--  SELECT count(*), date_format(birthday_at, '%W') AS day_of_week FROM users GROUP BY day_of_week;