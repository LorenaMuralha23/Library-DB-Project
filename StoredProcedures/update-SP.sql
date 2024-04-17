-- ====================> SP para atualizar um autor
DELIMITER $$
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
		UPDATE library_db.tb_author
		SET 
			name = IF(name_changed, new_name, name),
            pseudonym = IF(pseudonym_changed, new_pseudonym, pseudonym),
            biography = IF(biography_changed, new_biography, biography),
            country = IF(country_changed, new_country, country),
            email = IF(email_changed, new_email, email),
            password = IF(password_changed, new_password, password)
		WHERE
			id = id_author;
            
	ELSE
		SELECT 'No data provided for update';
    END IF;
    
    
END $$
DELIMITER ;

-- ====================> SP para atualizar um usuario
DELIMITER $$
CREATE PROCEDURE update_user(
    IN id_user INT,
    IN new_name VARCHAR(255),
    IN new_username VARCHAR(255),
    IN new_email VARCHAR(45),
    IN new_password VARCHAR(255)
)
BEGIN
    DECLARE name_changed BOOL DEFAULT FALSE;
    DECLARE username_changed BOOL DEFAULT FALSE;
    DECLARE email_changed BOOL DEFAULT FALSE;
    DECLARE password_changed BOOL DEFAULT FALSE;
    
    IF new_name IS NOT NULL THEN
        SET name_changed = TRUE;
    END IF;
    
    IF new_username IS NOT NULL THEN
        SET username_changed = TRUE;
    END IF;
    
    IF new_email IS NOT NULL THEN
        SET email_changed = TRUE;
    END IF;
    
    IF new_password IS NOT NULL THEN
        SET password_changed = TRUE;
    END IF;
    
    IF name_changed OR username_changed OR email_changed OR password_changed THEN
        UPDATE library_db.tb_user
        SET 
            name = IF(name_changed, new_name, name),
			username = IF(username_changed, new_username, username),
            email = IF(email_changed, new_email, email),
            password = IF(password_changed, new_password, password)
        WHERE
            id = id_user;
    ELSE
        SELECT 'No data provided for update';
    END IF;
END $$
DELIMITER ;

-- ====================> SP para atualizar uma editora
DELIMITER $$
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
    
    IF new_name IS NOT NULL THEN
        SET name_changed = TRUE;
    END IF;
    
    IF new_country IS NOT NULL THEN
        SET country_changed = TRUE;
    END IF;
    
    IF new_year_founder IS NOT NULL THEN
        SET year_founder_changed = TRUE;
    END IF;
    
    IF new_email IS NOT NULL THEN
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
DELIMITER ;

-- ====================> SP para atualizar um livro
DELIMITER $$
CREATE PROCEDURE update_book(
    IN id_book INT,
    IN new_title VARCHAR(50),
    IN new_synopsis VARCHAR(600),
    IN new_id_author INT,
    IN new_id_category INT,
    IN new_id_publisher INT
)
BEGIN
	DECLARE title_changed BOOL DEFAULT NOT NULL;
	DECLARE synopsis_changed BOOL DEFAULT NOT NULL;
    DECLARE id_author_changed BOOL DEFAULT NOT NULL;
    DECLARE id_category_changed BOOL DEFAULT NOT NULL;
    DECLARE id_publisher_changed BOOL DEFAULT NOT NULL;
	
    IF title_changed IS NOT NULL THEN
		SET title_changed = TRUE;
    END IF;

	IF synopsis_changed IS NOT NULL THEN
		SET synopsis_changed = TRUE;
    END IF;

	IF id_author_changed IS NOT NULL THEN
		SET id_author_changed = TRUE;
    END IF;
    
	IF id_category_changed IS NOT NULL THEN
		SET id_category_changed = TRUE;
    END IF;
    
    IF id_publisher_changed IS NOT NULL THEN
		SET id_publisher_changed = TRUE;
    END IF;
	
    IF title_changed OR synopsis_changed OR id_author_changed OR id_category_changed OR id_publisher_changed THEN
		UPDATE library_db.tb_book
        SET
			title = IF(title_changed, new_title, title),
            synopsis = IF(synopsis_changed, new_synopsis, synopsis),
            id_author = IF(id_author_changed, new_id_author, id_author),
            id_category = IF(id_category_changed, new_id_category, id_category),
            id_publisher = IF(id_publisher_changed, new_id_publisher, id_publisher)
        WHERE
			id = id_book;
        ELSE
			SELECT 'No data provided for update';
    END IF;
END $$
DELIMITER ;

-- ====================> SP para atualizar empréstimos
DELIMITER $$
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
DELIMITER ;

-- ====================> SP para atualizar devoluções
DELIMITER $$
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
DELIMITER ;

-- ====================> SP para atualizar categorias
DELIMITER $$
CREATE PROCEDURE update_category(
    IN id_category INT,
    IN new_name VARCHAR(200)
)
BEGIN
	IF new_name IS NOT NULL THEN
		UPDATE library_db.tb_category
		SET 
			name = new_name
		WHERE
			id = id_category;
	ELSE
		SELECT 'No data provided for update';
	END IF;
END $$
DELIMITER ;
