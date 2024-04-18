-- -----------------------------------------------------
-- VIEWS E ÍNDICES DO SISTEMA
-- -----------------------------------------------------


-- -----------------------------------------------------
-- ÍNDICE E VIEW DE LIVROS
-- -----------------------------------------------------
 CREATE INDEX index_book_id_title ON tb_book (id, title) USING HASH;


-- A VIEW ABAIXO RETORNA A INFORMAÇÃO DOS LIVROS CONTENDO: NOME DO LIVRO, DO SEU AUTOR, DA SUA CATEGORIA, DA SUA EDITORA E O NÚMERO DE VEZES EM QUE ESTEVE EM EMPRÉSTIMO NO MÊS ATUAL
CREATE VIEW book_loan_info AS
SELECT tb_book.title AS book_title, tb_author.name AS author, tb_category.name AS category, tb_publisher.name as publisher, COUNT(tb_loan.id) AS num_loans_month
FROM tb_book JOIN tb_author ON tb_book.id_author = tb_author.id JOIN tb_category ON tb_book.id_category = tb_category.id JOIN tb_publisher ON tb_book.id_publisher = tb_publisher.id
JOIN tb_loan ON tb_loan.id_book = tb_book.id
WHERE MONTH(tb_loan.loan_date) = MONTH(CURRENT_DATE())
GROUP BY tb_book.title, tb_author.name, tb_category.name, tb_publisher.name
;
-- ------------------------------------------------------


-- -----------------------------------------------------
-- ÍNDICE E VIEW DE USUÁRIOS
-- -----------------------------------------------------
-- CREATE INDEX index_user_id_name ON tb_user (id, name) USING HASH;


-- A VIEW ABAIXO RETORNA A INFORMAÇÃO DOS USUÁRIOS CONTENDO: SEU NOME, EMAIL, A DATA DE EMPRÉSTIMO E DEVOLUÇÃO, A MULTA (CASO HAJA) E O TÍTULO DO LIVRO EMPRESTADO
/* CREATE VIEW user_loan_info AS 
SELECT library_db.tb_user.name AS user_name, library_db.tb_user.email, library_db.tb_loan.loan_date, library_db.tb_loan.due_date, library_db.tb_loan.id_return, library_db.tb_loan.fine,
library_db.tb_book.title FROM tb_loan JOIN tb_user ON tb_loan.id_user = tb_user.id JOIN tb_book on tb_loan.id_book = tb_book.id; */
-- -----------------------------------------------------


-- -----------------------------------------------------
-- ÍNDICE E VIEW DE AUTORES
-- -----------------------------------------------------
-- CREATE INDEX index_author_id_name ON tb_author (id, name) USING HASH;

-- A VIEW ABAIXO RETORNA A INFORMAÇÃO DOS AUTORES CONTENDO: SEU NOME, PSEUDONOME, EMAIL, LIVRO QUE ESCREVEU E A CATEGORIA DO LIVRO
/*CREATE VIEW author_book_info AS 
SELECT library_db.tb_author.name AS author_name, library_db.tb_author.pseudonym, library_db.tb_author.email, library_db.tb_book.title, library_db.tb_category.name 
FROM tb_author JOIN tb_book ON tb_author.id = tb_book.id_author JOIN tb_category on tb_book.id_category = tb_category.id;*/
-- -----------------------------------------------------
