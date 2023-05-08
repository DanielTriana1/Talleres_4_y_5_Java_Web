create database my_app;
use my_app;

create table users_tbl(
user_firstname varchar (60),
user_lastname varchar (70),
user_email varchar (60),
user_password varbinary (255));

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('nombres'), UPPER('apellidos'), 'buzon@correo.com',
AES_ENCRYPT('password','$2a$12$71SJ2B6qdXDQrZUF4KR5suDytQ062kLQf/QHbatSw8wLqu1DoMppm'));


SELECT *,
 CAST(AES_DECRYPT(user_password, '$2a$12$71SJ2B6qdXDQrZUF4KR5suDytQ062kLQf/QHbatSw8wLqu1DoMppm') AS CHAR(50))
end_data FROM users_tbl WHERE user_id = 1;

