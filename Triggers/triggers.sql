-- -----------------------------------------------------
-- TRIGGERS DO SISTEMA
-- -----------------------------------------------------

-- Criando o trigger
DELIMITER $$
CREATE TRIGGER after_insert_tb_exemplo
AFTER INSERT ON tb_exemplo
FOR EACH ROW
BEGIN
    -- Ação que será executada após a inserção de dados na tabela tb_exemplo
    INSERT INTO log_tb_exemplo (acao, data) VALUES ('Inserção', NOW());
END$$
DELIMITER ;




