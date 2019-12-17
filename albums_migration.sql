USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist varchar(100) NOT NULL,
name varchar(100) NOT NULL,
release_date int NOT NULL,
sales FLOAT,
genre varchar(50) NOT NULL,
PRIMARY KEY (id)
);