-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: faculdade
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `Nome` varchar(255) NOT NULL DEFAULT 'Fulano de tal',
  `Data de nascimento` date NOT NULL DEFAULT '2006-01-01',
  `Matrícula` varchar(25) NOT NULL DEFAULT '1234567890',
  `Endereço` varchar(255) NOT NULL DEFAULT 'Posto Ipiranga',
  PRIMARY KEY (`Matrícula`),
  UNIQUE KEY `Matrícula_UNIQUE` (`Matrícula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES ('Euclides Galinácio','1804-02-29','1234567890','Posto Ipiranga, 123');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `Nome` varchar(255) NOT NULL DEFAULT 'Banco de dados. "Batum tsi!"',
  `Carga horária` varchar(20) NOT NULL DEFAULT '900 horas rapaiz',
  `Ementa` varchar(8000) NOT NULL DEFAULT 'Só força',
  `Id_Aluno` varchar(25) NOT NULL DEFAULT '1234567890',
  `Id_Professor` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`Nome`,`Id_Aluno`,`Id_Professor`),
  UNIQUE KEY `Id_Professor_UNIQUE` (`Id_Professor`),
  UNIQUE KEY `Id_Aluno_UNIQUE` (`Id_Aluno`),
  UNIQUE KEY `Nome_UNIQUE` (`Nome`),
  CONSTRAINT `Id_Aluno` FOREIGN KEY (`Id_Aluno`) REFERENCES `alunos` (`Matrícula`),
  CONSTRAINT `Id_Professor` FOREIGN KEY (`Id_Professor`) REFERENCES `professores` (`Id_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES ('PD','Infinita kkkk','Só fé','1234567890',1);
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professores` (
  `Nome` varchar(255) NOT NULL DEFAULT 'Senhor linguiça',
  `CPF` varchar(14) NOT NULL DEFAULT '999.888.777-65',
  `Início_Contrato` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Contato` varchar(19) NOT NULL DEFAULT 'PE-RI-GO!',
  `Id_P` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`CPF`,`Id_P`),
  UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  UNIQUE KEY `Id_P_UNIQUE` (`Id_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES ('Sr. Linguiça','888.888.888.71','2025-02-14 01:41:00','(041) 9 4723-2668',1);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-14 22:24:49
