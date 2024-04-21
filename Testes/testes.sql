-- -----------------------------------------------------
-- TESTES DAS STORED PROCEDURES
-- -----------------------------------------------------

-- -----------------------------------------------------
-- TESTES DE INSERÇÃO
-- -----------------------------------------------------
-- Chamada de teste para insert_user
CALL insert_user('John Doe', 'johndoe', 'johndoe@example.com', 'password123');

-- Chamada de teste para insert_author
CALL insert_author('Jane Austen', 'Unknown', 'English novelist known primarily for her six major noveles.', 'United Kingdom', 'janeausten@example.com', 'password123');

-- Chamada de teste para insert_category
CALL insert_category('Fiction');

-- Chamada de teste para insert_publisher
CALL insert_publisher('Penguin Books', 'United States', 1935, 'info@penguinbooks.com');

-- Chamada de teste para insert_book
CALL insert_book('Pride and Prejudice', 'Pride and Prejudice is an 1813 romantic novel of manners written by Jane Austen.', 1, 1, 1);

-- Chamada de teste para insert_loan
CALL insert_loan('2024-04-11', '2024-05-11', 0.0, 4, NULL, 1);

-- Chamada de teste para insert_return
CALL insert_return('2024-05-11', 4);

-- -----------------------------------------------------
-- TESTES DE UPDATE
-- -----------------------------------------------------
-- Chamada de teste para update_user
CALL update_user(4, 'John Doe Updated', NULL, 'johndoe_updated@example.com', 'newpassword');

-- Chamada de teste para update_author
CALL update_author(3, 'Jane Austen Updated', NULL, NULL, NULL, 'janeausten_updated@example.com', 'newpassword');

-- Chamada de teste para update_category
CALL update_category(3, 'Non-fiction');

-- Chamada de teste para update_publisher
CALL update_publisher(3, 'Penguin Books Updated', 'United States', 1935, 'info@penguinbooks.com');

-- Chamada de teste para update_book
CALL update_book(3, 'Pride and Prejudice Updated', NULL, 3, 3, 3);

-- Chamada de teste para update_loan
CALL update_loan(6, '2024-04-12', '2024-05-12', 0.0, 4, NULL, 3);

-- Chamada de teste para update_return
CALL update_return(1, '2024-05-12');


-- -----------------------------------------------------
-- TESTES DE DELETAR
-- -----------------------------------------------------
-- Chamada de teste para delete_loan
CALL delete_loan(6, 4, 3, '2024-04-11');

-- Chamada de teste para delete_return
CALL delete_return(1);

-- Chamada de teste para delete_author
CALL delete_author(3);

-- Chamada de teste para delete_category
CALL delete_category(3, 'Fiction');

-- Chamada de teste para delete_publisher
CALL delete_publisher(3);

-- Chamada de teste para delete_book
CALL delete_book(3);

-- Chamada de teste para delete_user
CALL delete_user(4);

-- -----------------------------------------------------
-- TESTES DAS VIEWS
-- -----------------------------------------------------
-- Visualização `book_loan_info`
SELECT * FROM book_loan_info;

-- Visualização `user_loan_info`
SELECT * FROM user_loan_info;

-- Visualização `author_book_info`
SELECT * FROM author_book_info;

-- Visualização `loan_info`
SELECT * FROM loan_info;

-- Visualização `publisher_info`
SELECT * FROM publisher_info;

-- Visualização `category_info`
SELECT * FROM category_info;







