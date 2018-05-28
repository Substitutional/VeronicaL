CREATE DATABASE  IF NOT EXISTS `VeronicaL` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci */;
USE `VeronicaL`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: VeronicaL
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Rented`
--

DROP TABLE IF EXISTS `Rented`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rented` (
  `idRented` int(11) NOT NULL AUTO_INCREMENT,
  `rentedDate` date NOT NULL,
  `dueDate` date NOT NULL COMMENT '	',
  `movieReturned` varchar(45) NOT NULL,
  `customers_idcustomers` int(11) NOT NULL,
  `movies_idmovies` int(11) NOT NULL,
  `employee_idemployee` int(11) NOT NULL,
  PRIMARY KEY (`idRented`),
  KEY `fk_Rented_movie1_idx` (`movies_idmovies`),
  KEY `fk_Rented_employee1_idx` (`employee_idemployee`),
  KEY `fk_Rented_customers1_idx` (`customers_idcustomers`,`movies_idmovies`),
  CONSTRAINT `fk_Rented_customers1` FOREIGN KEY (`customers_idcustomers`) REFERENCES `customers` (`idcustomers`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rented_employee1` FOREIGN KEY (`employee_idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movies_id_movies` FOREIGN KEY (`movies_idmovies`) REFERENCES `movies` (`idmovies`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rented`
--

LOCK TABLES `Rented` WRITE;
/*!40000 ALTER TABLE `Rented` DISABLE KEYS */;
INSERT INTO `Rented` VALUES (1,'2018-04-04','2018-04-08','0',1,1,1),(2,'2017-08-26','2017-08-19','1',46,7,25),(5,'2017-11-15','2017-10-29','0',56,35,3),(6,'2017-10-04','2017-11-29','0',19,14,55),(8,'2017-07-26','2017-12-12','1',36,22,79),(9,'2017-05-16','2017-06-11','0',66,36,87),(16,'2018-04-07','2018-04-11','0',1,1,1),(17,'2018-04-07','2018-04-11','0',1,1,1),(18,'2018-04-07','2018-04-11','0',3,1,2),(19,'2018-04-07','2018-04-11','0',3,4,2);
/*!40000 ALTER TABLE `Rented` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `idactor` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL COMMENT '			',
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`idactor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Aeriela','Varah'),(2,'Elayne','Caseborne'),(3,'Angie','Eyam'),(4,'Othello','Duligal'),(5,'Brandea','Faraday'),(6,'Arabele','Juster'),(7,'Annalise','Swyne'),(8,'Ambros','Carlon'),(9,'Mortimer','Prose'),(10,'Verile','McGiven'),(11,'Shaylah','Hadeke'),(12,'Verla','Beswell'),(13,'Sib','Hele'),(14,'Tootsie','Giannoni'),(15,'Montgomery','Drache'),(16,'Yetty','Bergin'),(17,'Goldie','Coppo'),(18,'Wilfred','Succamore'),(19,'Derk','Hartop'),(20,'Ivory','Carillo'),(21,'Gaultiero','Fayre'),(22,'Golda','Merryweather'),(23,'Crawford','McIlhatton'),(24,'Allianora','Brockton'),(25,'Elton','Pyke'),(26,'Valeda','Crichten'),(27,'Stewart','Timmons'),(28,'Fairfax','Derrell'),(29,'Rosa','Kelle'),(30,'Alisander','McNess'),(31,'Ellsworth','Archer'),(32,'Kiel','Hartopp'),(33,'Zebulen','Labro'),(34,'Raine','Rucklesse'),(35,'Booth','Croux'),(36,'Darby','Czajka'),(37,'Rory','Aikin'),(38,'Donalt','Leithgoe'),(39,'Brandice','Dole'),(40,'Annemarie','Keen'),(41,'Gan','Gaymar'),(42,'Norbie','Hampshire'),(43,'Jethro','Kelner'),(44,'Serene','Scotchbrook'),(45,'Ichabod','Dyneley'),(46,'Konstantine','Lorant'),(47,'Ramonda','Preshous'),(48,'Ramsey','Kroll'),(49,'Alayne','Hullett'),(50,'Claribel','Elstub'),(51,'Guillemette','Figurski'),(52,'Wadsworth','Arpur'),(53,'Cass','Spiers'),(54,'Dale','Walkley'),(55,'Winnifred','Filippozzi'),(56,'Leanora','Clother'),(57,'Jesselyn','Annear'),(58,'Fedora','Eustice'),(59,'Adelheid','Duffin'),(60,'Gaspar','Chadd'),(61,'Debra','Sidary'),(62,'Jordanna','Clampton'),(63,'Paulie','Burney'),(64,'Banky','Bigrigg'),(65,'Orelie','Tremoille'),(66,'Vaughn','France'),(67,'Crosby','Shitliff'),(68,'Wilburt','Courtin'),(69,'Darrel','Rodway'),(70,'Brady','Syalvester'),(71,'Gib','Klejin'),(72,'Isaac','Reede'),(73,'Sandi','Carn'),(74,'Rolph','Tendahl'),(75,'Jan','McGiffin'),(76,'Joey','Barchrameev'),(77,'Audi','Dullard'),(78,'Terza','Challenger'),(79,'Constantino','Vasyunin'),(80,'Rusty','Dore'),(81,'Otho','Eakins'),(82,'Grenville','Euplate'),(83,'Carole','Mudie'),(84,'Illa','Chelam'),(85,'Quill','Turpin'),(86,'Jasen','McCrostie'),(87,'Amity','Rix'),(88,'Florri','Dover'),(89,'Ahmad','Avramovitz'),(90,'Rebecca','Rolling'),(91,'Binnie','Zamora'),(92,'Fredric','Dyka'),(93,'Ash','MacRitchie'),(94,'Jacquelyn','Buchett'),(95,'Owen','Cogzell'),(96,'Emmett','Alejandre'),(97,'Puff','Caskey'),(98,'Aloysia','Cortes'),(99,'Kelby','Luciani'),(100,'Callida','Thurgood');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `idcustomers` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`idcustomers`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Irma','Bamforth'),(2,'Philipa','Mityashin'),(3,'Jolynn','Beston'),(4,'Merrily','Badwick'),(5,'Davine','Redmond'),(6,'Aryn','Pinnere'),(7,'Pincus','Garnar'),(8,'Isabella','Redmell'),(9,'Nickey','Barber'),(10,'Nancie','Willgrass'),(11,'Dag','McDonnell'),(12,'Modestia','Imloch'),(13,'Augusta','Strangman'),(14,'Kattie','Pooley'),(15,'Estell','Brokenshaw'),(16,'Octavius','Jacquest'),(17,'Layne','Looby'),(18,'Chickie','Fane'),(19,'Engracia','Corrett'),(20,'Suzi','Whitland'),(21,'Maud','Manass'),(22,'Willette','Gurwood'),(23,'Bobby','Keedy'),(24,'Amalea','Airy'),(25,'Lee','Dyble'),(26,'Mariejeanne','Sutliff'),(27,'Alicia','Hunnybun'),(28,'Sam','Morgon'),(29,'Anatollo','Cottesford'),(30,'Maye','Heinle'),(31,'Tremayne','Puttnam'),(32,'Dewain','Tapping'),(33,'Alanson','Borthwick'),(34,'Lulu','Tebbitt'),(35,'Dominga','Enden'),(36,'Loren','GiacobbiniJacob'),(37,'Marley','Pincott'),(38,'Aurel','Masham'),(39,'Eddi','Crossingham'),(40,'Ettie','Lavalde'),(41,'Bird','Carbine'),(42,'Avram','Rubie'),(43,'Tobias','Woodnutt'),(44,'Waldon','Blaycock'),(45,'Lauretta','Gauch'),(46,'Dal','Giamitti'),(47,'Alison','Jarman'),(48,'Hale','Mitchener'),(49,'Odella','Spiby'),(50,'Axel','Kynoch'),(51,'Maxie','Dorwood'),(52,'Karlan','Calender'),(53,'Lexis','Jedrzejkiewicz'),(54,'Alis','Driffill'),(55,'Rolland','Walhedd'),(56,'Arron','Wagner'),(57,'Stormie','Lestrange'),(58,'Consuelo','Andress'),(59,'Samson','Hiddsley'),(60,'Klarrisa','Suttell'),(61,'Cherlyn','Gath'),(62,'Merilee','Rickword'),(63,'Afton','Raunds'),(64,'Jeanne','Punton'),(65,'Tanner','McAnellye'),(66,'Ginger','Cohani'),(67,'Neddie','Sword'),(68,'Lorianna','Scola');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Marjorie','Chappell'),(2,'Dorolice','Creboe'),(3,'Orelia','Oselton'),(4,'Patin','Henryson');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_has_actor`
--

DROP TABLE IF EXISTS `movie_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_has_actor` (
  `movies_idmovies` int(11) NOT NULL,
  `actor_idactor` int(11) NOT NULL,
  KEY `fk_movie_has_actor_actor1_idx` (`actor_idactor`),
  KEY `fk_movie_has_actor_movie1_idx` (`movies_idmovies`),
  CONSTRAINT `fk_movie_has_actor_actor1` FOREIGN KEY (`actor_idactor`) REFERENCES `actor` (`idactor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movies_idmovies` FOREIGN KEY (`movies_idmovies`) REFERENCES `movies` (`idmovies`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_has_actor`
--

LOCK TABLES `movie_has_actor` WRITE;
/*!40000 ALTER TABLE `movie_has_actor` DISABLE KEYS */;
INSERT INTO `movie_has_actor` VALUES (1,100),(2,72),(3,15),(4,1),(4,19),(4,31),(4,39),(5,42),(5,59),(6,26),(6,50),(6,68),(6,100),(7,42),(7,55),(7,75),(7,80),(8,34),(8,80),(9,7),(9,15),(10,62),(10,75),(11,31),(11,55),(11,60),(11,85),(12,7),(12,79),(12,85),(12,94),(12,97),(13,49),(13,58),(13,94),(14,49),(15,3),(15,7),(15,20),(15,27),(15,30),(15,44),(16,19),(17,12),(18,7),(18,60),(18,80),(19,44),(19,78),(19,88),(20,27),(21,62),(22,3),(22,94),(23,94),(23,100),(24,55),(24,71),(25,11),(25,30),(26,12),(26,30),(26,42),(26,73),(27,42),(27,59),(28,7),(28,59),(31,23),(31,54),(32,39),(32,80),(33,1),(33,54),(33,81),(34,72),(34,80),(35,19),(35,40),(35,94),(35,100);
/*!40000 ALTER TABLE `movie_has_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `idmovies` int(11) NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(75) COLLATE utf8mb4_swedish_ci NOT NULL,
  `aboutMovie` tinytext COLLATE utf8mb4_swedish_ci NOT NULL,
  `genere` varchar(45) COLLATE utf8mb4_swedish_ci NOT NULL,
  `releaseYear` year(4) NOT NULL,
  `copiesInStock` int(11) NOT NULL,
  `regi_idregi` int(11) NOT NULL,
  PRIMARY KEY (`idmovies`),
  KEY `regi_idregi_idx` (`regi_idregi`),
  CONSTRAINT `regi_idregi` FOREIGN KEY (`regi_idregi`) REFERENCES `regi` (`idregi`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Endurance: Shackleton\'s Legendary Antarctic Expedition, The','aenean lectus pellentesque eget nunc','Documentary',2012,6,3),(2,'Neds','praesent id massa id nisl venenatis lacinia aenean','Drama',2001,6,4),(3,'Half Life of Timofey Berezin, The (PU-239)','consequat dui nec nisi volutpat eleifend donec ut dolor morbi','Drama',2005,7,2),(4,'Felicia\'s Journey','sed augue aliquam erat volutpat in','Thriller',2004,8,3),(5,'Mysterious Geographic Explorations of Jasper Morello, The','purus aliquet at feugiat non','Adventure',2002,5,1),(6,'Gambler, The','ipsum praesent blandit lacinia erat vestibulum sed','Drama',1989,5,1),(7,'Farewell, Home Sweet Home (Adieu, plancher des vaches!)','turpis a pede posuere nonummy integer','Comedy',2010,7,5),(8,'Insidious','non velit nec nisi vulputate nonummy maecenas','Fantasy',1995,9,4),(9,'Arn: The Kingdom at Road\'s End (Arn: Riket vid vägens slut)','lobortis est phasellus sit amet erat nulla tempus','Action',1999,7,1),(10,'Oslo, August 31st (Oslo, 31. august)','posuere nonummy integer non velit donec diam neque','Drama',1997,7,4),(11,'Missing Star, The (La stella che non c\'è)','aliquam quis turpis eget elit sodales scelerisque','Drama',1992,6,4),(12,'Crossfire','sem sed sagittis nam congue risus semper porta volutpat','Crime',2008,5,3),(13,'Endurance: Shackleton\'s Legendary Antarctic Expedition, The','aenean lectus pellentesque eget nunc','Documentary',2012,6,3),(14,'Neds','praesent id massa id nisl venenatis lacinia aenean','Drama',2001,6,4),(15,'Half Life of Timofey Berezin, The (PU-239)','consequat dui nec nisi volutpat eleifend donec ut dolor morbi','Drama',2005,7,2),(16,'Felicia\'s Journey','sed augue aliquam erat volutpat in','Thriller',2004,8,3),(17,'Mysterious Geographic Explorations of Jasper Morello, The','purus aliquet at feugiat non','Adventure',2002,5,1),(18,'Gambler, The','ipsum praesent blandit lacinia erat vestibulum sed','Drama',1989,5,1),(19,'Farewell, Home Sweet Home (Adieu, plancher des vaches!)','turpis a pede posuere nonummy integer','Comedy',2010,7,5),(20,'Insidious','non velit nec nisi vulputate nonummy maecenas','Fantasy',1995,9,4),(21,'Arn: The Kingdom at Road\'s End (Arn: Riket vid vägens slut)','lobortis est phasellus sit amet erat nulla tempus','Action',1999,7,1),(22,'Oslo, August 31st (Oslo, 31. august)','posuere nonummy integer non velit donec diam neque','Drama',1997,7,4),(23,'Missing Star, The (La stella che non c\'è)','aliquam quis turpis eget elit sodales scelerisque','Drama',1992,6,4),(24,'Crossfire','sem sed sagittis nam congue risus semper porta volutpat','Crime',2008,5,3),(25,'Endurance: Shackleton\'s Legendary Antarctic Expedition, The','aenean lectus pellentesque eget nunc','Documentary',2012,6,3),(26,'Neds','praesent id massa id nisl venenatis lacinia aenean','Drama',2001,6,4),(27,'Half Life of Timofey Berezin, The (PU-239)','consequat dui nec nisi volutpat eleifend donec ut dolor morbi','Drama',2005,7,2),(28,'Felicia\'s Journey','sed augue aliquam erat volutpat in','Thriller',2004,8,3),(29,'Mysterious Geographic Explorations of Jasper Morello, The','purus aliquet at feugiat non','Adventure',2002,5,1),(30,'Gambler, The','ipsum praesent blandit lacinia erat vestibulum sed','Drama',1989,5,1),(31,'Farewell, Home Sweet Home (Adieu, plancher des vaches!)','turpis a pede posuere nonummy integer','Comedy',2010,7,5),(32,'Insidious','non velit nec nisi vulputate nonummy maecenas','Fantasy',1995,9,4),(33,'Arn: The Kingdom at Road\'s End (Arn: Riket vid vägens slut)','lobortis est phasellus sit amet erat nulla tempus','Action',1999,7,1),(34,'Oslo, August 31st (Oslo, 31. august)','posuere nonummy integer non velit donec diam neque','Drama',1997,7,4),(35,'Missing Star, The (La stella che non c\'è)','aliquam quis turpis eget elit sodales scelerisque','Drama',1992,6,4),(36,'Crossfire','sem sed sagittis nam congue risus semper porta volutpat','Crime',2008,5,3);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regi`
--

DROP TABLE IF EXISTS `regi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regi` (
  `idregi` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`idregi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regi`
--

LOCK TABLES `regi` WRITE;
/*!40000 ALTER TABLE `regi` DISABLE KEYS */;
INSERT INTO `regi` VALUES (1,'Pepito','Eates'),(2,'Kristen','Fenby'),(3,'Horace','Beston'),(4,'Shay','Stanier'),(5,'Alphonso','Charter');
/*!40000 ALTER TABLE `regi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_employee_rented`
--

DROP TABLE IF EXISTS `v_employee_rented`;
/*!50001 DROP VIEW IF EXISTS `v_employee_rented`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_employee_rented` AS SELECT 
 1 AS `numberOfRentedMovies`,
 1 AS `idemployee`,
 1 AS `firstName`,
 1 AS `lastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_movie_in_genere`
--

DROP TABLE IF EXISTS `v_movie_in_genere`;
/*!50001 DROP VIEW IF EXISTS `v_movie_in_genere`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_movie_in_genere` AS SELECT 
 1 AS `genere`,
 1 AS `movieTitle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_movies_owned_and_info`
--

DROP TABLE IF EXISTS `v_movies_owned_and_info`;
/*!50001 DROP VIEW IF EXISTS `v_movies_owned_and_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_movies_owned_and_info` AS SELECT 
 1 AS `aboutMovie`,
 1 AS `movieTitle`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_not_returned`
--

DROP TABLE IF EXISTS `v_not_returned`;
/*!50001 DROP VIEW IF EXISTS `v_not_returned`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_not_returned` AS SELECT 
 1 AS `movieTitle`,
 1 AS `idcustomers`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `dueDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_rented_movies`
--

DROP TABLE IF EXISTS `v_rented_movies`;
/*!50001 DROP VIEW IF EXISTS `v_rented_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_rented_movies` AS SELECT 
 1 AS `movieTitle`,
 1 AS `idcustomers`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `idemployee`,
 1 AS `empFirstName`,
 1 AS `empLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'VeronicaL'
--

--
-- Dumping routines for database 'VeronicaL'
--
/*!50003 DROP PROCEDURE IF EXISTS `movie_gets_rented` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `movie_gets_rented`(
p_moviesId int, 
p_customerId int,
p_employeeId int
)
BEGIN
INSERT INTO Rented (rentedDate, dueDate, movieReturned, customers_idcustomers,movies_idMovies, employee_idemployee)
VALUES (curdate(), DATE_ADD(CURDATE(), INTERVAL + 4 DAY), 0, p_customerId, p_moviesId, p_employeeId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_employee_rented`
--

/*!50001 DROP VIEW IF EXISTS `v_employee_rented`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_employee_rented` AS select count(`re`.`idRented`) AS `numberOfRentedMovies`,`e`.`idemployee` AS `idemployee`,`e`.`firstName` AS `firstName`,`e`.`lastName` AS `lastName` from (`employee` `e` join `rented` `re` on((`e`.`idemployee` = `re`.`employee_idemployee`))) group by `e`.`idemployee` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_movie_in_genere`
--

/*!50001 DROP VIEW IF EXISTS `v_movie_in_genere`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_movie_in_genere` AS select `m`.`genere` AS `genere`,`m`.`movieTitle` AS `movieTitle` from `movies` `m` where (`m`.`genere` = 'Drama') group by `m`.`movieTitle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_movies_owned_and_info`
--

/*!50001 DROP VIEW IF EXISTS `v_movies_owned_and_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_movies_owned_and_info` AS select `m`.`aboutMovie` AS `aboutMovie`,`m`.`movieTitle` AS `movieTitle` from `movies` `m` group by `m`.`aboutMovie`,`m`.`movieTitle` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_not_returned`
--

/*!50001 DROP VIEW IF EXISTS `v_not_returned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_not_returned` AS select `m`.`movieTitle` AS `movieTitle`,`c`.`idcustomers` AS `idcustomers`,`c`.`firstName` AS `firstName`,`c`.`lastName` AS `lastName`,`re`.`dueDate` AS `dueDate` from ((`rented` `re` join `customers` `c` on((`re`.`customers_idcustomers` = `c`.`idcustomers`))) join `movies` `m` on((`re`.`movies_idmovies` = `m`.`idmovies`))) where ((`re`.`movieReturned` = 0) and (`re`.`dueDate` < curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_rented_movies`
--

/*!50001 DROP VIEW IF EXISTS `v_rented_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_rented_movies` AS select `m`.`movieTitle` AS `movieTitle`,`c`.`idcustomers` AS `idcustomers`,`c`.`firstName` AS `firstName`,`c`.`lastName` AS `lastName`,`e`.`idemployee` AS `idemployee`,`e`.`firstName` AS `empFirstName`,`e`.`lastName` AS `empLastName` from (((`rented` `re` join `customers` `c` on((`re`.`customers_idcustomers` = `c`.`idcustomers`))) join `employee` `e` on((`re`.`employee_idemployee` = `e`.`idemployee`))) join `movies` `m` on((`re`.`movies_idmovies` = `m`.`idmovies`))) where (`re`.`movieReturned` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-28 17:29:08
