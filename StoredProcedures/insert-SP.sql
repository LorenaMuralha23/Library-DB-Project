-- STORED PROCEDURES PARA INSERT

-- ====================> SP para inserir um usuário
-- DELIMITER $$
-- CREATE PROCEDURE insert_user(
-- IN name VARCHAR(255),
-- IN username VARCHAR(255),
-- IN email VARCHAR(45),
-- IN password VARCHAR(255)
-- )
-- BEGIN
-- 	INSERT INTO library_db.tb_user (name, username, email, password) VALUES (name, username, email, password);
-- END$$
-- DELIMITER ;

-- ====================> SP para inserir um autor
-- DELIMITER $$
-- CREATE PROCEDURE insert_author(
--     IN name VARCHAR(255),
--     IN pseudonym VARCHAR(255),
--     IN biography VARCHAR(150),
--     IN country VARCHAR(20),
--     IN email VARCHAR(45),
--     IN password VARCHAR(255)
-- )
-- BEGIN
-- 	INSERT INTO library_db.tb_author (name, pseudonym, biography, country, email, password) VALUES (name, pseudonym, biography, country, email, password);
-- END$$
-- DELIMITER ;

-- ====================> SP para inserir um editoras
-- DELIMITER $$
-- CREATE PROCEDURE insert_publisher(
--     IN name VARCHAR(255),
--     IN country VARCHAR(40),
--     IN year_founder INT(11),
--     IN email VARCHAR(45),
--     IN password VARCHAR(255)
-- )
-- BEGIN
-- 	INSERT INTO library_db.tb_publisher (name, country, year_founder, email, password) VALUES (name, country, year_founder, email, password);
-- END$$
-- DELIMITER ;


