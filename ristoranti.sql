/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.36 : Database - ristoranti
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ristoranti` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ristoranti`;

/*Table structure for table `ingredienti` */

DROP TABLE IF EXISTS `ingredienti`;

CREATE TABLE `ingredienti` (
  `nome_ingrediente` varchar(20) NOT NULL,
  `qualita_ingrediente` varchar(20) NOT NULL,
  PRIMARY KEY (`nome_ingrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ingredienti` */

insert  into `ingredienti`(`nome_ingrediente`,`qualita_ingrediente`) values 
('crudo','f'),
('gamberi','c'),
('hamburger','c'),
('insalata','f'),
('olive','c'),
('pasta','f'),
('patata','c'),
('polipo','c'),
('pomodoro','f'),
('provola','f'),
('ragù','f'),
('uova','f'),
('zucca','f');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `nome_menu` varchar(20) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`id_menu`,`nome_menu`) values 
(1,'menù dei primi'),
(2,'menù dei secondi'),
(3,'menù aperitivo'),
(4,'menù del bere'),
(5,'menù pizze'),
(6,'menù vegano');

/*Table structure for table `ordini` */

DROP TABLE IF EXISTS `ordini`;

CREATE TABLE `ordini` (
  `fk_utente` int(5) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `fk_piatto` int(5) NOT NULL,
  `quantita` int(2) NOT NULL,
  `indirizzo_consegna` varchar(30) NOT NULL DEFAULT 'Ristorante',
  PRIMARY KEY (`fk_utente`,`data`),
  KEY `fk_piatto` (`fk_piatto`),
  CONSTRAINT `ordini_ibfk_1` FOREIGN KEY (`fk_utente`) REFERENCES `utenti` (`id_utente`),
  CONSTRAINT `ordini_ibfk_2` FOREIGN KEY (`fk_piatto`) REFERENCES `piatti` (`id_piatto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ordini` */

/*Table structure for table `piatti` */

DROP TABLE IF EXISTS `piatti`;

CREATE TABLE `piatti` (
  `id_piatto` int(5) NOT NULL AUTO_INCREMENT,
  `nome_piatto` varchar(25) NOT NULL,
  `numero_persone` int(2) DEFAULT NULL,
  `prezzo_piatto` decimal(5,2) NOT NULL,
  `fk_menu` int(5) NOT NULL,
  PRIMARY KEY (`id_piatto`),
  KEY `fk_menu` (`fk_menu`),
  CONSTRAINT `piatti_ibfk_1` FOREIGN KEY (`fk_menu`) REFERENCES `menu` (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `piatti` */

insert  into `piatti`(`id_piatto`,`nome_piatto`,`numero_persone`,`prezzo_piatto`,`fk_menu`) values 
(1,'lasagna alla bolognese',4,10.00,1),
(2,'spaghetti allo scoglio',2,12.00,1),
(3,'insalata di mare',1,9.99,3),
(4,'tortelli di zucca',2,15.00,1),
(5,'piadina',1,9.99,3),
(6,'acqua naturale',2,2.00,4),
(7,'tagliatelle con tartufo',4,20.00,1),
(8,'cotoletta alla milanese',1,14.99,2),
(9,'patatine fritte',1,5.00,3),
(10,'calice di vino rosso',2,7.89,4),
(11,'calice di vino bianco',2,7.89,4),
(12,'acqua frizzante',2,2.00,4),
(13,'coca cola',1,1.00,4),
(14,'cozze',4,25.00,3),
(15,'pasta al pesto',1,10.00,1),
(16,'pizza margherita',1,5.00,5),
(17,'pizza siciliana',1,6.00,5),
(18,'pizza provola e crudo',1,10.00,5),
(19,'pizza marina',1,15.00,5),
(20,'pizza vegana',1,9.99,6),
(21,'hamburger di soia',5,50.00,6),
(22,'spaghetti di soia',1,10.00,6),
(23,'polpette vegane',6,5.00,6),
(24,'polpette',6,5.00,3),
(25,'olive ascolane',6,7.00,3),
(26,'focaccia ripiena',2,7.00,3),
(27,'stinco',1,10.00,2),
(28,'baccalà',1,16.99,2),
(29,'pennette al salmone',1,20.00,1),
(30,'pennette al ragù',1,19.99,1),
(31,'fritto misto',8,20.00,3);

/*Table structure for table `piatti_ingr` */

DROP TABLE IF EXISTS `piatti_ingr`;

CREATE TABLE `piatti_ingr` (
  `fk_piatto` int(5) NOT NULL,
  `fk_ingrediente` varchar(20) NOT NULL,
  PRIMARY KEY (`fk_piatto`,`fk_ingrediente`),
  KEY `fk_ingrediente` (`fk_ingrediente`),
  CONSTRAINT `piatti_ingr_ibfk_1` FOREIGN KEY (`fk_piatto`) REFERENCES `piatti` (`id_piatto`),
  CONSTRAINT `piatti_ingr_ibfk_2` FOREIGN KEY (`fk_ingrediente`) REFERENCES `ingredienti` (`nome_ingrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `piatti_ingr` */

insert  into `piatti_ingr`(`fk_piatto`,`fk_ingrediente`) values 
(5,'crudo'),
(18,'crudo'),
(26,'crudo'),
(25,'olive'),
(2,'pasta'),
(2,'polipo'),
(3,'polipo'),
(16,'pomodoro'),
(18,'pomodoro'),
(19,'pomodoro'),
(18,'provola');

/*Table structure for table `utenti` */

DROP TABLE IF EXISTS `utenti`;

CREATE TABLE `utenti` (
  `id_utente` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `eta` int(3) DEFAULT NULL,
  `sesso` varchar(10) DEFAULT 'Altro',
  PRIMARY KEY (`id_utente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `utenti` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
