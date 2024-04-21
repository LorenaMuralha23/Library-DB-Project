-- Inserção de usuários
CALL insert_user('Alice', 'alice123', 'alice@example.com', 'password123');
CALL insert_user('Bob', 'bob456', 'bob@example.com', 'password456');
CALL insert_user('Charlie', 'charlie789', 'charlie@example.com', 'password789');
CALL insert_user('David', 'david101', 'david@example.com', 'password101');
CALL insert_user('Eva', 'eva202', 'eva@example.com', 'password202');
CALL insert_user('Frank', 'frank303', 'frank@example.com', 'password303');
CALL insert_user('Grace', 'grace404', 'grace@example.com', 'password404');
CALL insert_user('Henry', 'henry505', 'henry@example.com', 'password505');
CALL insert_user('Ivy', 'ivy606', 'ivy@example.com', 'password606');
CALL insert_user('Jack', 'jack707', 'jack@example.com', 'password707');
CALL insert_user('Karen', 'karen808', 'karen@example.com', 'password808');
CALL insert_user('Liam', 'liam909', 'liam@example.com', 'password909');
CALL insert_user('Mia', 'mia010', 'mia@example.com', 'password010');
CALL insert_user('Nora', 'nora111', 'nora@example.com', 'password111');
CALL insert_user('Oliver', 'oliver121', 'oliver@example.com', 'password121');

-- Inserção de autores
CALL insert_author('John Green', 'Unknown', 'American author known for his young adult fiction.', 'United States', 'johngreen@example.com', 'password123');
CALL insert_author('J.K. Rowling', 'Robert Galbraith', 'British author known for the Harry Potter series.', 'United Kingdom', 'jkrowling@example.com', 'password456');
CALL insert_author('Agatha Christie', 'Mary Westmacott', 'English writer known for her detective novels.', 'United Kingdom', 'agathachristie@example.com', 'password789');
CALL insert_author('Stephen King', 'Richard Bachman', 'American author known for his horror and supernatural fiction.', 'United States', 'stephenking@example.com', 'password101');
CALL insert_author('Haruki Murakami', 'None', 'Japanese author known for his surrealistic and existentialist fiction.', 'Japan', 'harukimurakami@example.com', 'password202');
CALL insert_author('George Orwell', 'None', 'English novelist known for his dystopian fiction.', 'United Kingdom', 'georgeorwell@example.com', 'password303');
CALL insert_author('Jane Austen', 'Unknown', 'English novelist known primarily for her six major novels.', 'United Kingdom', 'janeausten@example.com', 'password404');
CALL insert_author('Leo Tolstoy', 'None', 'Russian author known for his epic novels.', 'Russia', 'leotolstoy@example.com', 'password505');
CALL insert_author('Gabriel García Márquez', 'None', 'Colombian author known for his magical realism.', 'Colombia', 'gabrielgarciamarquez@example.com', 'password606');
CALL insert_author('J.R.R. Tolkien', 'None', 'English writer known for his high fantasy works.', 'United Kingdom', 'jrrtolkien@example.com', 'password707');
CALL insert_author('Mark Twain', 'Samuel Clemens', 'American author known for his adventure novels.', 'United States', 'marktwain@example.com', 'password808');
CALL insert_author('Emily Dickinson', 'None', 'American poet known for her unique style.', 'United States', 'emilydickinson@example.com', 'password909');
CALL insert_author('Virginia Woolf', 'None', 'English writer known for her modernist novels.', 'United Kingdom', 'virginiawoolf@example.com', 'password010');
CALL insert_author('Ernest Hemingway', 'None', 'American author known for his concise writing style.', 'United States', 'ernesthemingway@example.com', 'password111');

-- Inserção de categorias
CALL insert_category('Science Fiction');
CALL insert_category('Mystery');
CALL insert_category('Romance');
CALL insert_category('Fantasy');
CALL insert_category('Horror');
CALL insert_category('Thriller');
CALL insert_category('Biography');
CALL insert_category('Historical Fiction');
CALL insert_category('Young Adult');
CALL insert_category('Poetry');
CALL insert_category('Self-Help');
CALL insert_category('Drama');
CALL insert_category('Adventure');
CALL insert_category('Classic');
CALL insert_category('Humor');

-- Inserção de editoras
CALL insert_publisher('Penguin Books', 'United States', 1935, 'info@penguinbooks.com');
CALL insert_publisher('HarperCollins', 'United States', 1817, 'info@harpercollins.com');
CALL insert_publisher('Random House', 'United States', 1927, 'info@randomhouse.com');
CALL insert_publisher('Simon & Schuster', 'United States', 1924, 'info@simonandschuster.com');
CALL insert_publisher('Macmillan Publishers', 'United States', 1843, 'info@macmillanpublishers.com');
CALL insert_publisher('Hachette Livre', 'France', 1826, 'info@hachette.com');
CALL insert_publisher('Scholastic Corporation', 'United States', 1920, 'info@scholastic.com');
CALL insert_publisher('Pearson PLC', 'United Kingdom', 1844, 'info@pearson.com');
CALL insert_publisher('Oxford University Press', 'United Kingdom', 1586, 'info@oup.com');
CALL insert_publisher('Cambridge University Press', 'United Kingdom', 1534, 'info@cambridge.org');
CALL insert_publisher('Pantheon Books', 'United States', 1942, 'info@pantheonbooks.com');
CALL insert_publisher('Viking Press', 'United States', 1925, 'info@vikingpress.com');
CALL insert_publisher('Little, Brown and Company', 'United States', 1837, 'info@littlebrown.com');
CALL insert_publisher('Knopf Doubleday Publishing Group', 'United States', 1915, 'info@knopfdoubleday.com');
CALL insert_publisher('Harvard University Press', 'United States', 1913, 'info@harvard.edu');


-- Inserção de livros
CALL insert_book('The Fault in Our Stars', 'The story follows the main character, Hazel Grace Lancaster, as she battles cancer.', 1, 3, 1);
CALL insert_book('Harry Potter and the Philosopher\'s Stone', 'The first book in the Harry Potter series.', 2, 4, 2);
CALL insert_book('The Shining', 'A horror novel by Stephen King.', 4, 5, 4);
CALL insert_book('Norwegian Wood', 'A novel by Haruki Murakami.', 5, 3, 5);
CALL insert_book('1984', 'A dystopian novel by George Orwell.', 6, 1, 6);
CALL insert_book('Pride and Prejudice', 'A romantic novel by Jane Austen.', 7, 3, 7);
CALL insert_book('War and Peace', 'An epic novel by Leo Tolstoy.', 8, 8, 8);
CALL insert_book('One Hundred Years of Solitude', 'A landmark novel by Gabriel García Márquez.', 9, 1, 9);
CALL insert_book('The Lord of the Rings', 'A high fantasy novel by J.R.R. Tolkien.', 10, 4, 10);
CALL insert_book('The Adventures of Tom Sawyer', 'An adventure novel by Mark Twain.', 11, 13, 11);
CALL insert_book('Selected Poems of Emily Dickinson', 'A collection of poems by Emily Dickinson.', 12, 10, 12);
CALL insert_book('To the Lighthouse', 'A modernist novel by Virginia Woolf.', 13, 3, 13);
CALL insert_book('The Old Man and the Sea', 'A novella by Ernest Hemingway.', 14, 14, 14);

-- Inserção de empréstimos

CALL insert_loan('2024-04-12', '2024-05-12', 0.0, 12, NULL, 12);
CALL insert_loan('2024-04-13', '2024-05-13', 0.0, 13, NULL, 13);
CALL insert_loan('2024-04-14', '2024-05-14', 0.0, 14, NULL, 14);
CALL insert_loan('2024-04-15', '2024-05-15', 0.0, 15, NULL, 15);

-- Inserção de devoluções

CALL insert_return('2024-05-09', 9);
CALL insert_return('2024-05-10', 10);
CALL insert_return('2024-05-11', 11);
CALL insert_return('2024-05-12', 12);
CALL insert_return('2024-05-13', 13);
CALL insert_return('2024-05-14', 14);
CALL insert_return('2024-05-15', 15);
