-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema universitate
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema universitate
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `universitate` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema m
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema m
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `m` ;
USE `universitate` ;

-- -----------------------------------------------------
-- Table `universitate`.`adresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`adresa` (
  `idadresa` INT NOT NULL AUTO_INCREMENT,
  `strada` VARCHAR(255) NOT NULL,
  `numar` INT NULL,
  `zip` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`idadresa`),
  UNIQUE INDEX `strada_UNIQUE` (`strada` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`cladire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`cladire` (
  `idcladire` INT NOT NULL AUTO_INCREMENT,
  `etaje` INT NOT NULL DEFAULT 1,
  `denumire` VARCHAR(45) NULL,
  `adresa` VARCHAR(45) NULL,
  `adresa_idadresa` INT NOT NULL,
  PRIMARY KEY (`idcladire`),
  UNIQUE INDEX `denumire_UNIQUE` (`denumire` ASC) VISIBLE,
  INDEX `fk_cladire_adresa_idx` (`adresa_idadresa` ASC) VISIBLE,
  CONSTRAINT `fk_cladire_adresa`
    FOREIGN KEY (`adresa_idadresa`)
    REFERENCES `universitate`.`adresa` (`idadresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`profesor` (
  `idprofesor` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(255) NOT NULL,
  `prenume` VARCHAR(255) NOT NULL,
  `adresa_fk` INT NULL,
  `data_nasterii` DATE NULL,
  `grad` ENUM("I", "II", "III") NULL DEFAULT 'I',
  PRIMARY KEY (`idprofesor`),
  INDEX `adresa_foreign_key_idx` (`adresa_fk` ASC) VISIBLE,
  CONSTRAINT `adresa_foreign_key`
    FOREIGN KEY (`adresa_fk`)
    REFERENCES `universitate`.`adresa` (`idadresa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`student` (
  `idstudent` INT NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NULL,
  `prenume` VARCHAR(45) NULL,
  `gen` ENUM('m', 'f') NULL,
  `an` INT NULL,
  `grupa` INT NULL,
  `bursa` INT NULL DEFAULT 0,
  `status('restantier', 'bursier','admis')` VARCHAR(45) NULL,
  PRIMARY KEY (`idstudent`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`curs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`curs` (
  `idcurs` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `an` INT NULL,
  `semestru` ENUM("I", "II") NULL,
  `credite` INT NULL,
  PRIMARY KEY (`idcurs`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`predare`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`predare` (
  `profesor_idprofesor` INT NOT NULL,
  `curs_idcurs` INT NOT NULL,
  PRIMARY KEY (`curs_idcurs`, `profesor_idprofesor`),
  INDEX `fk_predare_profesor1_idx` (`profesor_idprofesor` ASC) VISIBLE,
  INDEX `fk_predare_curs1_idx` (`curs_idcurs` ASC) VISIBLE,
  CONSTRAINT `fk_predare_profesor1`
    FOREIGN KEY (`profesor_idprofesor`)
    REFERENCES `universitate`.`profesor` (`idprofesor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_predare_curs1`
    FOREIGN KEY (`curs_idcurs`)
    REFERENCES `universitate`.`curs` (`idcurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `universitate`.`nota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `universitate`.`nota` (
  `idnota` INT NOT NULL,
  `student_idstudent` INT NOT NULL,
  `curs_idcurs` INT NOT NULL,
  `valoare` INT NOT NULL,
  `data_notare` DATE NULL,
  PRIMARY KEY (`idnota`),
  INDEX `fk_nota_student1_idx` (`student_idstudent` ASC) VISIBLE,
  INDEX `fk_nota_curs1_idx` (`curs_idcurs` ASC) VISIBLE,
  CONSTRAINT `fk_nota_student1`
    FOREIGN KEY (`student_idstudent`)
    REFERENCES `universitate`.`student` (`idstudent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_nota_curs1`
    FOREIGN KEY (`curs_idcurs`)
    REFERENCES `universitate`.`curs` (`idcurs`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `m` ;

-- -----------------------------------------------------
-- Table `m`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `m`.``
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m`.`` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `m`.`fdg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m`.`fdg` (
)
ENGINE = InnoDB;

USE `m` ;

-- -----------------------------------------------------
-- Placeholder table for view `m`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `m`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `m`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `m`.`view1`;
USE `m`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
