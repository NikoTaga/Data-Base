USE shop;

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

truncate storehouses_products;

INSERT INTO storehouses_products
	(storehouse_id, product_id, value)
VALUES
	(1, 2, 0),
	(1, 2, 2500),
	(1, 2, 0),
	(1, 2, 30),
	(1, 2, 500),
	(1, 2, 1);

/*
Решения нет, прошу разобрать ее на вебинаре!


SELECT value FROM storehouses_products WHERE value > 0 
UNION ALL
SELECT value FROM storehouses_products WHERE value = 0 ;

*/


SELECT * FROM storehouses_products;

