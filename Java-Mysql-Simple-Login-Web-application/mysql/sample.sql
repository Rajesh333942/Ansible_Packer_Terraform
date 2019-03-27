create database sample;
use sample
CREATE TABLE USER (first_name VARCHAR(100), last_name VARCHAR(100),email VARCHAR(100), username VARCHAR(100), password VARCHAR(100), regdate  VARCHAR(100));
GRANT ALL ON sample.* TO 'root'@'%' IDENTIFIED BY 'Qwerty@12345';
GRANT ALL ON sample.* TO 'root'@'localhost' IDENTIFIED BY 'Qwerty@12345';
FLUSH PRIVILEGES;
