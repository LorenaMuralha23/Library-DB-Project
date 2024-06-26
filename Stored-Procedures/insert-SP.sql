-- -----------------------------------------------------
-- STORED PROCEDURE DE INSERÇÃO
-- -----------------------------------------------------


-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UM USUÁRIO
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UM AUTOR
-- -----------------------------------------------------
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

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UMA CATEGORIA
-- -----------------------------------------------------
DELIMITER $$

 CREATE PROCEDURE insert_category(
   IN name VARCHAR(200)
 )
 BEGIN
   INSERT INTO library_db.tb_category (name) 
   VALUES (name);
 END$$

DELIMITER ;

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UMA EDITORA
-- -----------------------------------------------------
DELIMITER $$
CREATE PROCEDURE insert_publisher(
    IN name VARCHAR(255),
    IN country VARCHAR(300),
    IN year_founder INT(11),
    IN email VARCHAR(45)
)
BEGIN
    INSERT INTO library_db.tb_publisher (name, country, year_founder, email) VALUES (name, country, year_founder, email);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UM LIVRO
-- -----------------------------------------------------
DELIMITER $$
CREATE PROCEDURE insert_book(
   IN title VARCHAR(50),
   IN synopsis VARCHAR(600),
   IN id_author INT,
   IN id_category INT,
   IN id_publisher INT
)
BEGIN
   INSERT INTO library_db.tb_book (title, synopsis, id_author, id_category, id_publisher) VALUES (title, synopsis, id_author, id_category, id_publisher);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UM EMPRÉSTIMO
-- -----------------------------------------------------
DELIMITER $$

CREATE PROCEDURE insert_loan(
   IN loan_date DATE,
   IN due_date DATE,
   IN fine DOUBLE,
   IN id_user INT,
   IN id_return INT,
   IN id_book INT
)
BEGIN
   INSERT INTO library_db.tb_loan (loan_date, due_date, fine, id_user, id_return, id_book) 
   VALUES (loan_date, due_date, fine, id_user, id_return, id_book);
END$$

DELIMITER ;

-- -----------------------------------------------------
-- STORED PROCEDURE PARA INSERIR UMA DEVOLUÇÃO
-- -----------------------------------------------------
DELIMITER $$
CREATE PROCEDURE insert_return(
   IN return_date DATE,
   IN loan_id INT
)
BEGIN
	DECLARE new_return_id INT;

   INSERT INTO library_db.tb_return (return_date) 
   VALUES (return_date);
   
   SET new_return_id = LAST_INSERT_ID();

   UPDATE library_db.tb_loan SET id_return = new_return_id WHERE id = loan_id;
END$$

DELIMITER ;
