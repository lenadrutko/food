-- MySQL Workbench Forward Engineering
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema food_store
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema food_store
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `food_store` DEFAULT CHARACTER SET utf8 ;
USE `food_store` ;

-- -----------------------------------------------------
-- Table `food_store`.`FOOD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `food_store`.`FOOD` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `TITLE` VARCHAR(45) NULL,
  `DESCRIPTION` VARCHAR(60) NULL,
  `PRICE` DECIMAL NULL,
  `PICTURE` VARCHAR(60) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `food_store`.`CART`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `food_store`.`CART` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(45) NULL,
  `EMAIL` VARCHAR(45) NULL,
  `ADDRESS` VARCHAR(60) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `food_store`.`ORDER_FOOD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `food_store`.`CART_FOOD` (
  `CART_ID` INT NOT NULL,
  `FOOD_ID` INT NOT NULL,
  PRIMARY KEY (`CART_ID`, `FOOD_ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
