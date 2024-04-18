-- -----------------------------------------------------
-- TRIGGERS DO SISTEMA
-- -----------------------------------------------------

-- Criando o trigger

-- -----------------------------------------------------
-- TRIGGER PARA ATUALIZAR A DATA DE DEVOLUÇÃO
-- REGRA: Ao realizar o empréstimo, o usuário terá até 30 dias para a devolução do livro
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER UPDATE_DUE_DATE_BEFORE_INSERT
BEFORE INSERT ON tb_loan
FOR EACH ROW
BEGIN
    SET NEW.due_date = DATE_ADD(NEW.loan_date, INTERVAL 30 DAY);
END$$
DELIMITER ;

-- -----------------------------------------------------
-- TRIGGER PARA VERIFICAR SE O CLIENTE EXCEDEU O NÚMERO DE EMPRÉSTIMOS
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER VERIFY_NUM_LOAN_BEFORE_INSERT
BEFORE INSERT ON tb_loan
FOR EACH ROW
BEGIN
	DECLARE num_of_loans INT;
	SELECT COUNT(*) INTO num_of_loans FROM tb_loan WHERE id_user = NEW.id_user AND id_return IS NULL;
    
    IF num_of_loans >= 3 THEN 
		SIGNAL SQLSTATE '04500'
        SET MESSAGE_TEXT = 'User exceeded the allowed loan limit.';
    END IF;
END$$
DELIMITER ;


