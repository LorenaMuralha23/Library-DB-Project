/* STORED PROCEDURES PARA DELETE */

-- ====================> SP para deletar um usuário
/*DELIMITER $$

CREATE PROCEDURE delete_user(
	IN id INT
)
BEGIN
	delete from library_db.tb_user WHERE tb_user.id = id;
END$$
DELIMITER ;
*/

-- ====================> SP para deletar um autor 
/* DELIMITER $$

CREATE PROCEDURE delete_author(
	IN id INT
)
BEGIN
	delete from library_db.tb_author WHERE tb_author.id = id;
END$$
DELIMITER ;
*/

-- ====================> SP para deletar categorias
/*DELIMITER $$

CREATE PROCEDURE delete_category(
	IN id INT,
    IN name VARCHAR(200)
)
BEGIN
	delete from library_db.tb_category WHERE tb_category.id = id AND tb_category.name = name;
END$$
DELIMITER ;*/

-- ====================> SP para deletar um editora
/*DELIMITER $$

CREATE PROCEDURE delete_publisher(
	IN id INT
)
BEGIN
	delete from library_db.tb_publisher WHERE tb_publisher.id = id;
END$$
DELIMITER ;
*/

-- ====================> SP para deletar livros 
/*DELIMITER $$

CREATE PROCEDURE delete_book(
	IN id INT
)
BEGIN
	delete from library_db.tb_book WHERE tb_book.id = id;
END$$
DELIMITER ;*/

-- ====================> SP para deletar empréstimos
/*DELIMITER $$

CREATE PROCEDURE delete_loan(
	IN id INT,
    IN id_client INT,
    IN id_book INT,
    IN loan_date DATE
)
BEGIN
	delete from library_db.tb_loan WHERE tb_loan.id = id AND tb_loan.id_user = id_client AND tb_loan.loan_date = loan_date AND tb_loan.id_book = id_book;
END$$
DELIMITER ;*/

-- ====================> SP para deletar devoluções
/*DELIMITER $$

CREATE PROCEDURE delete_return(
	IN id INT
)
BEGIN
	delete from library_db.tb_return WHERE tb_return.id = id;
END$$
DELIMITER ;*/