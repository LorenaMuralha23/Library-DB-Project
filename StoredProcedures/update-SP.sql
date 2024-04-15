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
	DECLARE name_changed BOOL DEFAULT FALSE;
    DECLARE pseudonym_changed BOOL DEFAULT FALSE;
    DECLARE biography_changed BOOL DEFAULT FALSE;
    DECLARE country_changed BOOL DEFAULT FALSE;
    DECLARE email_changed BOOL DEFAULT FALSE;
    DECLARE password_changed BOOL DEFAULT FALSE;
    
    IF new_name IS NOT NULL THEN
        SET name_changed = TRUE;
    END IF;
    
    IF new_pseudonym IS NOT NULL THEN
        SET pseudonym_changed = TRUE;
    END IF;
    
    IF new_biography IS NOT NULL THEN
        SET biography_changed = TRUE;
    END IF;
    
    IF new_country IS NOT NULL THEN
        SET country_changed = TRUE;
    END IF;
    
    IF new_email IS NOT NULL THEN
        SET email_changed = TRUE;
    END IF;
    
    IF new_password IS NOT NULL THEN
        SET password_changed = TRUE;
    END IF;
    
    IF name_changed OR pseudonym_changed OR biography_changed OR country_changed OR email_changed OR password_changed THEN
        UPDATE library_db.tb_user
        SET 
            name = IF(name_changed, new_name, name),
            pseudonym = IF(pseudonym_changed, new_pseudonym, pseudonym),
            biography = IF(biography_changed, new_biography, biography),
            country = IF(country_changed, new_country, country),
            email = IF(email_changed, new_email, email),
            password = IF(password_changed, new_password, password)
        WHERE
            id = author_id;
    ELSE
        SELECT 'Nenhum dado fornecido para atualização.';
    END IF;
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
		DECLARE name_changed BOOL DEFAULT FALSE;
	DECLARE country_changed BOOL DEFAULT FALSE;
    DECLARE year_founder_changed BOOL DEFAULT FALSE;
    DECLARE email_changed BOOL DEFAULT FALSE;
    
    IF name_changed IS NOT NULL THEN
		SET name_changed = TRUE;
    END IF;
    
    IF country_changed IS NOT NULL THEN
		SET country_changed = TRUE;
    END IF;
    
    IF year_founder_changed IS NOT NULL THEN
		SET year_founder_changed = TRUE;
    END IF;
    
    IF email_changed IS NOT NULL THEN
		SET email_changed = TRUE;
    END IF;
    
	IF name_changed OR country_changed OR year_founder_changed OR email_changed THEN
		UPDATE library_db.tb_publisher
		SET 
			name = IF(name_changed, new_name, name),
			country = IF(country_changed, new_country, country),
			year_founder = IF(year_founder_changed, new_year_founder, year_founder),
			email = IF(email_changed, new_email, email)
		WHERE
			id = id_publisher;
    ELSE
		SELECT 'No data provided for update';
    END IF;
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
	UPDATE library_db.tb_book
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

-- ====================> SP para atualizar empréstimos
/* DELIMITER $$
CREATE PROCEDURE update_loan(
	IN id_loan INT,
    IN new_loan_date DATE,
    IN new_due_date DATE,
    IN new_fine DOUBLE,
    IN new_id_user INT,
    IN new_id_return INT,
    IN new_id_book INT
)
BEGIN
	DECLARE loan_date_changed BOOL DEFAULT FALSE;
    DECLARE due_date_changed BOOL DEFAULT FALSE;  
    DECLARE fine_changed BOOL DEFAULT FALSE;
    DECLARE id_user_changed BOOL DEFAULT FALSE;
    DECLARE id_return_changed BOOL DEFAULT FALSE;
    DECLARE id_book_changed BOOL DEFAULT FALSE;
    
    IF new_loan_date IS NOT NULL THEN
        SET loan_date_changed = TRUE;
    END IF;
    
    IF new_due_date IS NOT NULL THEN
        SET due_date_changed = TRUE;
    END IF;
    
    IF new_fine IS NOT NULL THEN
        SET fine_changed = TRUE;
    END IF;
    
    IF new_id_user IS NOT NULL THEN
        SET id_user_changed = TRUE;
    END IF;
    
    IF new_id_return IS NOT NULL THEN
        SET id_return_changed = TRUE;
    END IF;
    
    IF new_id_book IS NOT NULL THEN
        SET id_book_changed = TRUE;
    END IF;

    IF loan_date_changed OR due_date_changed OR fine_changed OR id_user_changed OR id_return_changed OR id_book_changed THEN
        UPDATE library_db.tb_loan
        SET 
            loan_date = IF(loan_date_changed, new_loan_date, loan_date),
            due_date = IF(due_date_changed, new_due_date, due_date),
            fine = IF(fine_changed, new_fine, fine),
            id_user = IF(id_user_changed, new_id_user, id_user),
            id_return = IF(id_return_changed, new_id_return, id_return),
            id_book = IF(id_book_changed, new_id_book, id_book)
        WHERE
            id = id_loan;
    ELSE
        SELECT 'No data provided for update.';
    END IF;
END $$
DELIMITER ;*/

-- ====================> SP para atualizar devoluções
/*DELIMITER $$
CREATE PROCEDURE update_return(
	IN id_return INT,
    IN new_return_date DATE
)
BEGIN
	DECLARE date_changed BOOL DEFAULT FALSE;
    
    IF new_return_date IS NOT NULL THEN
		SET date_changed = TRUE;
	END IF;

	IF date_changed IS TRUE THEN
		UPDATE library_db.tb_return
		SET return_date = new_return_date
		WHERE id = id_return;
	ELSE
		SELECT 'No data provided for update';
    END IF;
END $$
DELIMITER */

-- ====================> SP para atualizar categorias
/* DELIMITER $$
CREATE PROCEDURE update_category(
	IN id_category INT,
    IN new_name VARCHAR(200)
)
BEGIN
	UPDATE library_db.tb_category
    SET 
		name = new_name
    WHERE
        id = id_category;
END $$
DELIMITER */
