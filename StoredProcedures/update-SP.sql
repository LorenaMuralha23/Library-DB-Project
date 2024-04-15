-- ====================> SP para atualizar um autor
/* DELIMITER $$
CREATE PROCEDURE update_author(
	IN id_author INT,
    IN new_name VARCHAR(255),
    IN new_pseudonym VARCHAR(255),
    IN new_biography VARCHAR(150),
    IN new_country VARCHAR(300),
    IN new_email VARCHAR(45),
    IN new_password VARCHAR(255)
)
BEGIN
	UPDATE library_db.tb_author
    SET 
        name = new_name,
        pseudonym = new_pseudonym,
        biography = new_biography,
        country = new_country,
        email = new_email,
        password = new_password
    WHERE
        id = id_author;
END $$
DELIMITER ;*/

-- ====================> SP para atualizar um usuario
/* DELIMITER $$
CREATE PROCEDURE update_user(
	IN id_user INT,
    IN new_name VARCHAR(255),
    IN new_username VARCHAR(255),
    IN new_email VARCHAR(45),
    IN new_password VARCHAR(255)
)
BEGIN
	UPDATE library_db.tb_author
    SET 
        name = new_name,
        username = new_username,
        email = new_email,
        password = new_password
    WHERE
        id = id_user;
END $$
DELIMITER ;*/

-- ====================> SP para atualizar uma editora
/* DELIMITER $$
CREATE PROCEDURE update_publisher(
	IN id_publisher INT,
	IN new_name VARCHAR(255),
    IN new_country VARCHAR(300),
    IN new_year_founder INT(11),
    IN new_email VARCHAR(45)
)
BEGIN
	UPDATE library_db.tb_author
    SET 
        name = new_name,
        country = new_country,
        year_founder = new_year_founder,
        email = new_email
    WHERE
        id = id_publisher;
END $$
DELIMITER ; */

-- ====================> SP para atualizar um livro
/* DELIMITER $$
CREATE PROCEDURE update_book(
	IN id_book INT,
	IN new_title VARCHAR(50),
    IN new_synopsis VARCHAR(600),
    IN new_id_author INT,
    IN new_id_category INT,
    IN new_id_publisher INT
)
BEGIN
	UPDATE library_db.tb_author
    SET 
        title = new_title,
        synopsis = new_synopsis,
        id_author = new_id_author,
        id_category = new_id_category,
        id_publisher = new_id_publisher
    WHERE
        id = id_book;
END $$
DELIMITER ; */
