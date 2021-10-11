-- MySQL Script generated by MySQL Workbench
-- Tue Sep 28 20:29:55 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Table `MealsDb`.`Meals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`Meals` (
  `MealId` INT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Price` DECIMAL(10,2) UNSIGNED NULL,
  `Status` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`MealId`));


-- -----------------------------------------------------
-- Table `MealsDb`.`Ingredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`Ingredients` (
  `IngId` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `IngName` VARCHAR(45) NOT NULL,
  `Status` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`IngId`));


-- -----------------------------------------------------
-- Table `MealsDb`.`MealsIngredients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`MealsIngredients` (
  `MealIngId` INT NOT NULL AUTO_INCREMENT,
  `MealId` INT NOT NULL,
  `IngId` INT UNSIGNED NOT NULL,
  `Status` INT NULL DEFAULT 1,
  PRIMARY KEY (`MealIngId`));


-- -----------------------------------------------------
-- Table `MealsDb`.`ClientsWeb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`ClientsWeb` (
  `Clients` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `PhoneNumber` VARCHAR(9) NULL,
  `PermissionLvl` INT NOT NULL,
  `Status` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`Clients`));


-- -----------------------------------------------------
-- Table `MealsDb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`Orders` (
  `OrderId` INT NOT NULL AUTO_INCREMENT,
  `OrderNo` VARCHAR(45) NOT NULL,
  `OrderPrice` DECIMAL(10,2) NOT NULL,
  `Status` INT NOT NULL DEFAULT 0,
  `OrderDate` DATETIME NOT NULL,
  `EndDate` DATETIME NOT NULL,
  PRIMARY KEY (`OrderId`));


-- -----------------------------------------------------
-- Table `MealsDb`.`OrderMeals`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `MealsDb`.`OrderMeals` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ClientId` INT UNSIGNED NOT NULL,
  `MealId` INT UNSIGNED NOT NULL,
  `OrderDate` DATETIME NOT NULL,
  `Status` INT NOT NULL DEFAULT 1,
  `OrderId` INT NOT NULL,
  PRIMARY KEY (`Id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;