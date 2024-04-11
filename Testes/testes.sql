-- ====================> TESTES DE CHAMADAS DAS SP de insert <====================

-- inserindo o autor 1
-- CALL insert_author("Suzanne Collins", null, "
-- Suzanne Collins is an American author known for her successful Hunger Games series.", "United States of America", "suzzCollins@email.com", "hungerGamesPswd");

-- inserindo o autor 2
-- CALL insert_author("Dan Brown", null, "
-- Dan Brown is an American author famous for his bestselling novel The Da Vinci Code and its sequels.", "United States of America", "danBrown@email.com", "davinciPswd");

-- inserindo uma editora 1
-- CALL insert_publisher("Scholastic Press", "United States of America", 1920, "scholasticSupport@email.com");

-- inserindo uma editora 2
-- CALL insert_publisher("Doubleday", "United States of America", 1897, "doubledaySupport@email.com");

-- inserindo a categoria 1
-- CALL insert_category("Adventure");

-- inserindo a categoria 2
-- CALL insert_category("Mistery");

-- inserindo o livro 1
-- CALL insert_book("Hunger Games", "In a dystopian future, Katniss Everdeen volunteers to take her sister's place in a televised fight to the death known as the Hunger Games. 
-- With survival at stake, Katniss navigates treacherous challenges, challenging the oppressive regime of the Capitol. 
-- A gripping tale of resistance, sacrifice, and hope.", 1, 1, 1);

-- inserindo o livro 2
-- CALL insert_book("The Da Vinci Code", "Renowned symbologist Robert Langdon finds himself entangled in a thrilling quest to solve a murder and unravel an ancient secret guarded for centuries. 
-- tb_bookWith cryptic clues and relentless pursuit, Langdon races against time, unveiling shocking truths that challenge conventional beliefs about religion and history.", 2, 2, 2);

-- inserindo um usuario 1
-- CALL insert_user('Ted Mosby', 'tedmosby', 'ted@example.com', 'password123');

-- inserindo um usuario 2
-- CALL insert_user('Michael Scofield', 'mscofield', 'michael@example.com', 'prisonbreak456');

-- inserindo empréstimo do usuário 1


-- inserindo empréstimo do usuário 2


-- inserindo a devolução do empréstimo 3


-- ====================> TESTES DE CHAMADAS DAS SP de delete <====================

-- <<<INSERINDO DADOS DE TESTE PARA SEREM EXCLUIDO>>>
-- inserindo o autor teste
-- CALL insert_author("J.R.R. Tolkien", null, "J.R.R. Tolkien was an English writer, poet, and philologist. He is best known as the author of the high fantasy works.", "United Kingdom", "tolkien@email.com", "middleearth");

-- inserindo uma editora teste
-- CALL insert_publisher("HarperCollins Publishers", "United States of America", 1989, "harpercollins@email.com");

-- inserindo a categoria teste
-- CALL insert_category("Fantasy");

-- inserindo o livro teste
-- CALL insert_book("The Hobbit", "The Hobbit is a fantasy novel by J.R.R. Tolkien. It follows the quest of home-loving hobbit Bilbo Baggins to win a share of the treasure guarded by Smaug the dragon.", 1, 1, 1);

-- inserindo um usuario teste
-- CALL insert_user('Harry Potter', 'hpotter', 'harrypotter@example.com', 'gryffindor123');

-- deletando um usuario
-- CALL delete_user(3);

-- deletando um livro
-- CALL delete_book(3);

-- deletando uma editora
-- CALL delete_publisher(5);

-- deletando um autor
-- CALL delete_author(5);

-- deletando uma categoria
-- CALL delete_category(3, "Fantasy");