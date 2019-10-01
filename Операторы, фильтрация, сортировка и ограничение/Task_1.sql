USE shop;
update users 
set created_at = NULL, updated_at = NULL;
update users 
set created_at = now(), updated_at = now();
SELECT * FROM users;