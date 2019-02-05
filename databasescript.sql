SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `valg` ;
CREATE SCHEMA IF NOT EXISTS `valg` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

USE `valg`;

-- Dropper tables hvis de eksisterer fra før -->
DROP TABLE IF EXISTS forhåndsstemmesteder;
DROP TABLE IF EXISTS valgtingsstemmesteder;
DROP TABLE IF EXISTS krets;
DROP TABLE IF EXISTS ansatt;

-- Oppretter tabell for forhåndsstemmesteder -->
CREATE TABLE IF NOT EXISTS forhåndsstemmesteder (
	id INT AUTO_INCREMENT,
	forhåndsstemmested varchar(100) NOT NULL, 
    adresse varchar(50) NOT NULL, 
    postnrSted varchar(50) NOT NULL, 
    gpsKoordinater varchar(59)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Oppretter tabell for valgtingsstemmesteder -->
CREATE TABLE IF NOT EXISTS valgtingsstemmesteder(
	id INT AUTO_INCREMENT,
	kretsnr int(4) NOT NULL,
    kretsnavn char(25) NOT NULL, 
    valglokale varchar(50) NOT NULL,
    adresse varchar(50) NOT NULL, 
    postnrSted varchar(50) NOT NULL,
    gpsKoordinater varchar(50) NOT NULL, 
    valgdag1 date, 
    tidspunkt varchar(50), 
    tekst varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Oppretter tabell for kretser -->
CREATE TABLE IF NOT EXISTS krets (
	id INT AUTO_INCREMENT,
	kretsnr int(3) NOT NULL, 
    stemmested varchar(50) NOT NULL, 
    rode int(3) NOT NULL, 
    stemmeber int(10) NOT NULL, 
    adresse varchar(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Oppretter tabell for ansatte -->
CREATE TABLE IF NOT EXISTS ansatt (
	id INT AUTO_INCREMENT,
	funksjon varchar(50) NOT NULL, 
    fornavn varchar(50) NOT NULL, 
    etternavn varchar(50) NOT NULL, 
    telefon int(8) NOT NULL, 
    mail varchar(100) NOT NULL, 
    fødselsår int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


    
