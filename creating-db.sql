-- CREATE DATABASE IF NOT EXISTS library_db;

-- USE library_db;

-- -----------------------------------------------------
-- Table `library_db`.`tb_author`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_author` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(255) NOT NULL,
--   `pseudonym` VARCHAR(255) NULL,
--   `biography` VARCHAR(150) NULL,
--   `country` VARCHAR(20) NOT NULL,
--   PRIMARY KEY (`id`)
-- )
-- ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `library_db`.`category`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_category` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(100) NOT NULL,
--   PRIMARY KEY (`id`)
-- )
-- ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `library_db`.`tb_publisher`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_publisher` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(255) NOT NULL,
--   `country` VARCHAR(20) NOT NULL,
--   `year_founder` INT NOT NULL,
--   `email` VARCHAR(45) NOT NULL,
--   PRIMARY KEY (`id`)
-- )
-- ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `library_db`.`tb_book`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_book` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `title` VARCHAR(50) NOT NULL,
--   `synopsis` VARCHAR(600) NULL,
--   `id_author` INT NOT NULL,
--   `id_category` INT NOT NULL,
--   `id_publisher` INT NOT NULL,
--   PRIMARY KEY (`id`),
--   INDEX `fk_tb_book_tb_author_idx` (`id_author` ASC),
--   INDEX `fk_tb_book_category1_idx` (`id_category` ASC),
--   INDEX `fk_tb_book_tb_publisher1_idx` (`id_publisher` ASC),
--   CONSTRAINT `fk_tb_book_tb_author`
--     FOREIGN KEY (`id_author`)
--     REFERENCES `tb_author` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tb_book_category1`
--     FOREIGN KEY (`id_category`)
--     REFERENCES `tb_category` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tb_book_tb_publisher1`
--     FOREIGN KEY (`id_publisher`)
--     REFERENCES `tb_publisher` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
-- )
-- ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `library_db`.`tb_user`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_user` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(255) NOT NULL,
--   `username` VARCHAR(255) NOT NULL,
--   `email` VARCHAR(45) NOT NULL,
--   `password` VARCHAR(255) NOT NULL,
--   PRIMARY KEY (`id`)
-- )
-- ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `library_db`.`return`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_return` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `return_date` DATE NOT NULL,
--   PRIMARY KEY (`id`)
-- )
-- ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `library_db`.`tb_loan`
-- -----------------------------------------------------
-- CREATE TABLE IF NOT EXISTS `tb_loan` (
--   `id` INT NOT NULL AUTO_INCREMENT,
--   `loan_date` DATE NOT NULL,
--   `due_date` DATE NOT NULL,
--   `fine` DOUBLE NULL,
--   `id_user` INT NOT NULL,
--   `id_return` INT NOT NULL,
--   `id_book` INT NOT NULL,
--   PRIMARY KEY (`id`),
--   INDEX `fk_tb_loan_tb_user1_idx` (`id_user` ASC) ,
--   INDEX `fk_tb_loan_return1_idx` (`id_return` ASC) ,
--   INDEX `fk_tb_loan_tb_book1_idx` (`id_book` ASC) ,
--   CONSTRAINT `fk_tb_loan_tb_user1`
--     FOREIGN KEY (`id_user`)
--     REFERENCES `tb_user` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tb_loan_return1`
--     FOREIGN KEY (`id_return`)
--     REFERENCES `tb_return` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `fk_tb_loan_tb_book1`
--     FOREIGN KEY (`id_book`)
--     REFERENCES `tb_book` (`id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION
-- )
-- ENGINE = InnoDB;

-- COMANDOS NOVOS PARA EXECUTAR
ALTER TABLE `library_db`.`tb_author` 
ADD COLUMN `email` VARCHAR(45) NOT NULL AFTER `country`,
ADD COLUMN `password` VARCHAR(255) NOT NULL AFTER `email`;

ALTER TABLE `library_db`.`tb_author` 
CHANGE COLUMN `country` `country` VARCHAR(40) NOT NULL ;
