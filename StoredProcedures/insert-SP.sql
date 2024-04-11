/* STORED PROCEDURES PARA INSERT */

/* ====================> SP para inserir um usuário */
/*
DELIMITER $$

CREATE PROCEDURE insert_user(
    IN name VARCHAR(255),
    IN username VARCHAR(255),
    IN email VARCHAR(45),
    IN password VARCHAR(255)
)
BEGIN
    INSERT INTO library_db.tb_user (name, username, email, password) VALUES (name, username, email, password);
END$$

DELIMITER ;
*/

/* ====================> SP para inserir um autor */
/*
DELIMITER $$
CREATE PROCEDURE insert_author(
    IN name VARCHAR(255),
    IN pseudonym VARCHAR(255),
    IN biography VARCHAR(150),
    IN country VARCHAR(300),
    IN email VARCHAR(45),
    IN password VARCHAR(255)
)
BEGIN
    INSERT INTO library_db.tb_author (name, pseudonym, biography, country, email, password) VALUES (name, pseudonym, biography, country, email, password);
END$$

DELIMITER ;
*/

-- ====================> SP para inserir categorias
-- DELIMITER $$

 -- CREATE PROCEDURE insert_category(
 --   IN name VARCHAR(200)
 -- )
 -- BEGIN
 --   INSERT INTO library_db.tb_category (name) 
 --   VALUES (name);
 -- END$$

-- DELIMITER ;

/* ====================> SP para inserir um editora */
/*
DELIMITER $$
CREATE PROCEDURE insert_publisher(
    IN name VARCHAR(255),
    IN country VARCHAR(300),
    IN year_founder INT(11),
    IN email VARCHAR(45),
)
BEGIN
    INSERT INTO library_db.tb_publisher (name, country, year_founder, email) VALUES (name, country, year_founder, email);
END$$

DELIMITER ;
*/

-- ====================> SP para inserir livros 
-- DELIMITER $$
-- CREATE PROCEDURE insert_book(
--    IN title VARCHAR(50),
--    IN synopsis VARCHAR(600),
--    IN id_author INT,
--    IN id_category INT,
--   IN id_publisher INT
-- )
-- BEGIN
--    INSERT INTO library_db.tb_book (title, synopsis, id_author, id_category, id_publisher) VALUES (title, synopsis, id_author, id_category, id_publisher);
-- END$$

-- DELIMITER ;

-- ====================> SP para inserir empréstimos
-- DELIMITER $$

-- CREATE PROCEDURE insert_loan(
--    IN loan_date DATE,
--    IN due_date DATE,
--    IN fine DOUBLE,
--    IN id_user INT,
--    IN id_return INT,
--    IN id_book INT
-- )
-- BEGIN
--    INSERT INTO library_db.tb_loan (loan_date, due_date, fine, id_user, id_return, id_book) 
--    VALUES (loan_date, due_date, fine, id_user, id_return, id_book);
-- END$$

-- DELIMITER ;

-- ====================> SP para inserir devoluções
-- DELIMITER $$

-- CREATE PROCEDURE insert_return(
--    IN return_date DATE
-- )
-- BEGIN
--    INSERT INTO library_db.tb_return (return_date) 
--    VALUES (return_date);
-- END$$

-- DELIMITER ;

