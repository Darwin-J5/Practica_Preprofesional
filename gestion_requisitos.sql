-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: gestion_requisitos
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Comentario`
--

DROP TABLE IF EXISTS `Comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comentario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(1000) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `requisito` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `requisito` (`requisito`),
  CONSTRAINT `Comentario_ibfk_1` FOREIGN KEY (`requisito`) REFERENCES `Requisito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comentario`
--

LOCK TABLES `Comentario` WRITE;
/*!40000 ALTER TABLE `Comentario` DISABLE KEYS */;
INSERT INTO `Comentario` VALUES (1,'Buen enfoque, pero debe afinarse la seguridad.','2025-05-10',1),(2,'Considerar uso de herramientas ágiles.','2025-05-15',2),(3,'Muy útil para la trazabilidad.','2025-05-20',3),(4,'Agregar justificación técnica.','2025-05-22',4),(5,'Requiere revisión de viabilidad.','2025-05-25',5),(6,'Implementar con control de versiones.','2025-05-28',6),(7,'Validar con cliente antes de aprobar.','2025-06-01',7),(8,'Excelente funcionalidad.','2025-06-05',8),(9,'Cumple con estándares.','2025-06-10',9),(10,'Debe incluir pruebas automatizadas.','2025-06-12',10);
/*!40000 ALTER TABLE `Comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ComentariosRequisitosImplementados`
--

DROP TABLE IF EXISTS `ComentariosRequisitosImplementados`;
/*!50001 DROP VIEW IF EXISTS `ComentariosRequisitosImplementados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ComentariosRequisitosImplementados` AS SELECT 
 1 AS `descripcion`,
 1 AS `contenido`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Proyecto`
--

DROP TABLE IF EXISTS `Proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proyecto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `estado` enum('Activo','Finalizado') NOT NULL,
  `fecha_creacion` date NOT NULL,
  `usuario` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `Proyecto_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `Usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proyecto`
--

LOCK TABLES `Proyecto` WRITE;
/*!40000 ALTER TABLE `Proyecto` DISABLE KEYS */;
INSERT INTO `Proyecto` VALUES (1,'Optimized 3rdgeneration website','Sitio web de tercera generación optimizado para velocidad, accesibilidad, experiencia del usuario y compatibilidad multiplataforma, utilizando tecnologías web modernas y mejores prácticas de desarrollo.','Activo','2024-12-23',3),(2,'Profound well-modulated firmware','Firmware bien estructurado y cuidadosamente modulado, diseñado para ofrecer alto rendimiento, fácil mantenimiento y escalabilidad, garantizando un control preciso y eficiente del hardware.','Activo','2024-12-29',2),(3,'Robust systematic superstructure','Superestructura robusta y sistemática que proporciona una base sólida, organizada y escalable para el desarrollo e integración de componentes complejos dentro del sistema.','Finalizado','2025-06-08',5),(4,'Universal holistic archive','Archivo universal y holístico que centraliza, organiza e integra diversos tipos de datos e información, facilitando su acceso, gestión y análisis desde una perspectiva integral.','Finalizado','2025-02-01',6),(5,'User-friendly coherent knowledgebase','Base de conocimientos coherente y fácil de usar, diseñada para ofrecer información clara, estructurada y accesible, mejorando la comprensión y la experiencia del usuario.','Activo','2025-01-20',1),(6,'Pre-emptive zero administration','Sistema proactivo con administración cero, capaz de autoconfigurarse, autogestionarse y resolver problemas automáticamente sin intervención del usuario o del administrador.','Activo','2025-05-10',7);
/*!40000 ALTER TABLE `Proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ProyectosConRequisitosDependientes`
--

DROP TABLE IF EXISTS `ProyectosConRequisitosDependientes`;
/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosDependientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosConRequisitosDependientes` AS SELECT 
 1 AS `nombre_proyecto`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProyectosConRequisitosFuncionalesAprobados`
--

DROP TABLE IF EXISTS `ProyectosConRequisitosFuncionalesAprobados`;
/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosFuncionalesAprobados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosConRequisitosFuncionalesAprobados` AS SELECT 
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProyectosConRequisitosNoFuncionalesPropuestos`
--

DROP TABLE IF EXISTS `ProyectosConRequisitosNoFuncionalesPropuestos`;
/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosNoFuncionalesPropuestos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosConRequisitosNoFuncionalesPropuestos` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `fecha_creacion`,
 1 AS `usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProyectosConRequisitosRechazados`
--

DROP TABLE IF EXISTS `ProyectosConRequisitosRechazados`;
/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosRechazados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosConRequisitosRechazados` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProyectosConResponsables`
--

DROP TABLE IF EXISTS `ProyectosConResponsables`;
/*!50001 DROP VIEW IF EXISTS `ProyectosConResponsables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosConResponsables` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `estado`,
 1 AS `nombre_usuario`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ProyectosSinRequisitos`
--

DROP TABLE IF EXISTS `ProyectosSinRequisitos`;
/*!50001 DROP VIEW IF EXISTS `ProyectosSinRequisitos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ProyectosSinRequisitos` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Relacion_Requisito`
--

DROP TABLE IF EXISTS `Relacion_Requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Relacion_Requisito` (
  `requisito_origen` int NOT NULL,
  `requisito_destino` int NOT NULL,
  KEY `requisito_origen` (`requisito_origen`),
  KEY `requisito_destino` (`requisito_destino`),
  CONSTRAINT `Relacion_Requisito_ibfk_1` FOREIGN KEY (`requisito_origen`) REFERENCES `Requisito` (`id`),
  CONSTRAINT `Relacion_Requisito_ibfk_2` FOREIGN KEY (`requisito_destino`) REFERENCES `Requisito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relacion_Requisito`
--

LOCK TABLES `Relacion_Requisito` WRITE;
/*!40000 ALTER TABLE `Relacion_Requisito` DISABLE KEYS */;
INSERT INTO `Relacion_Requisito` VALUES (1,2),(3,5),(4,1),(6,7);
/*!40000 ALTER TABLE `Relacion_Requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Requisito`
--

DROP TABLE IF EXISTS `Requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Requisito` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `tipo` enum('Funcional','No Funcional','Restricciòn') NOT NULL,
  `estado` enum('Propuesto','Aprovado','Implementado','Rechazado') NOT NULL,
  `prioridad` enum('Baja','Media','Alta') NOT NULL,
  `fuente` enum('Docente','Cliente','Reglamento') NOT NULL,
  `fecha_registro` date NOT NULL,
  `proyecto` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proyecto` (`proyecto`),
  CONSTRAINT `Requisito_ibfk_1` FOREIGN KEY (`proyecto`) REFERENCES `Proyecto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Requisito`
--

LOCK TABLES `Requisito` WRITE;
/*!40000 ALTER TABLE `Requisito` DISABLE KEYS */;
INSERT INTO `Requisito` VALUES (1,'Facilitate user engagement','Diseñar funcionalidades interactivas e intuitivas que promuevan la participación activa del usuario en el sitio web.','Funcional','Aprovado','Alta','Docente','2025-02-01',2),(2,'Implement encryption features','Incorporar mecanismos de cifrado para garantizar la confidencialidad e integridad de los datos en el firmware.','No Funcional','Propuesto','Media','Reglamento','2025-01-15',1),(3,'Improve latency rate','Optimizar la arquitectura para reducir la latencia del sistema y mejorar el rendimiento general de respuesta.','Funcional','Implementado','Alta','Cliente','2025-06-20',3),(4,'Restrict unauthorized access','Establecer medidas de control que impidan accesos no autorizados a la superestructura del sistema.','Restricciòn','Rechazado','Media','Docente','2025-03-25',5),(5,'Enable data portability','Permitir la exportación e importación de datos entre sistemas de manera eficiente y conforme a normativas.','Funcional','Propuesto','Alta','Reglamento','2025-04-11',2),(6,'Audit system logs','Implementar auditoría de registros del sistema para asegurar trazabilidad y facilitar el diagnóstico.','No Funcional','Aprovado','Baja','Docente','2025-03-12',6),(7,'Create UI mockups','Diseñar prototipos visuales de la interfaz para facilitar validación temprana de usabilidad y estructura.','Funcional','Aprovado','Media','Cliente','2025-05-19',1),(8,'Monitor performance metrics','Implementar monitoreo continuo de métricas clave del sistema para evaluar rendimiento y detectar anomalías.','No Funcional','Implementado','Media','Cliente','2025-06-10',4),(9,'Automate test coverage','Desarrollar mecanismos automáticos de pruebas para validar componentes de forma continua y eficiente.','Funcional','Propuesto','Alta','Docente','2025-06-28',5),(10,'Ensure scalability','Diseñar la arquitectura del archivo para permitir su crecimiento progresivo sin comprometer el rendimiento.','No Funcional','Implementado','Alta','Reglamento','2025-07-01',6);
/*!40000 ALTER TABLE `Requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `RequisitosAltaAprobados`
--

DROP TABLE IF EXISTS `RequisitosAltaAprobados`;
/*!50001 DROP VIEW IF EXISTS `RequisitosAltaAprobados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosAltaAprobados` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `tipo`,
 1 AS `estado`,
 1 AS `prioridad`,
 1 AS `fuente`,
 1 AS `fecha_registro`,
 1 AS `proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosClienteAprobados`
--

DROP TABLE IF EXISTS `RequisitosClienteAprobados`;
/*!50001 DROP VIEW IF EXISTS `RequisitosClienteAprobados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosClienteAprobados` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `tipo`,
 1 AS `estado`,
 1 AS `prioridad`,
 1 AS `fuente`,
 1 AS `fecha_registro`,
 1 AS `proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosConComentarios`
--

DROP TABLE IF EXISTS `RequisitosConComentarios`;
/*!50001 DROP VIEW IF EXISTS `RequisitosConComentarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosConComentarios` AS SELECT 
 1 AS `nombre`,
 1 AS `contenido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosDeProyectoOptimizado`
--

DROP TABLE IF EXISTS `RequisitosDeProyectoOptimizado`;
/*!50001 DROP VIEW IF EXISTS `RequisitosDeProyectoOptimizado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosDeProyectoOptimizado` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosDestino`
--

DROP TABLE IF EXISTS `RequisitosDestino`;
/*!50001 DROP VIEW IF EXISTS `RequisitosDestino`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosDestino` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosFuncionalesAltaImplementados`
--

DROP TABLE IF EXISTS `RequisitosFuncionalesAltaImplementados`;
/*!50001 DROP VIEW IF EXISTS `RequisitosFuncionalesAltaImplementados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosFuncionalesAltaImplementados` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `tipo`,
 1 AS `estado`,
 1 AS `prioridad`,
 1 AS `fuente`,
 1 AS `fecha_registro`,
 1 AS `proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosOrigen`
--

DROP TABLE IF EXISTS `RequisitosOrigen`;
/*!50001 DROP VIEW IF EXISTS `RequisitosOrigen`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosOrigen` AS SELECT 
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `RequisitosPropuestos`
--

DROP TABLE IF EXISTS `RequisitosPropuestos`;
/*!50001 DROP VIEW IF EXISTS `RequisitosPropuestos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `RequisitosPropuestos` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `tipo`,
 1 AS `estado`,
 1 AS `prioridad`,
 1 AS `fuente`,
 1 AS `fecha_registro`,
 1 AS `proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `rol` enum('Estudiante','Docente') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Esmeralda','Muro','muroesmeralda@unl.edu.ec','v8r1yLQkG*','Docente'),(2,'Albano','Carrera','carreraalbano@unl.edu.ec','X1KDzIz0^Z','Docente'),(3,'Lina','Iniesta','iniestalina@unl.edu.ec','+*76pIfeG(','Docente'),(4,'Trinidad','Costa','costatrinidad@unl.edu.ec','*38Rk^Px*P','Estudiante'),(5,'Julia','Quero','querojulia@unl.edu.ec','4m1XQ4kp_U','Docente'),(6,'Ale','Heredia','herediaale@unl.edu.ec','L3G6C&Lo(V','Docente'),(7,'Iván','Montoya','montoyaivan@unl.edu.ec','v9q5ZFTv!&','Estudiante'),(8,'Timoteo','Costa','costatimoteo@unl.edu.ec','#^1ZlqbtI+','Docente');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `UsuariosConProyectosDependientes`
--

DROP TABLE IF EXISTS `UsuariosConProyectosDependientes`;
/*!50001 DROP VIEW IF EXISTS `UsuariosConProyectosDependientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsuariosConProyectosDependientes` AS SELECT 
 1 AS `nombre_usuario`,
 1 AS `nombre_proyecto`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UsuariosConProyectosFinalizados`
--

DROP TABLE IF EXISTS `UsuariosConProyectosFinalizados`;
/*!50001 DROP VIEW IF EXISTS `UsuariosConProyectosFinalizados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsuariosConProyectosFinalizados` AS SELECT 
 1 AS `nombre`,
 1 AS `nombre_proyecto`,
 1 AS `estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UsuariosConRequisitosAprobados`
--

DROP TABLE IF EXISTS `UsuariosConRequisitosAprobados`;
/*!50001 DROP VIEW IF EXISTS `UsuariosConRequisitosAprobados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsuariosConRequisitosAprobados` AS SELECT 
 1 AS `nombre`,
 1 AS `nombre_proyecto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UsuariosConRequisitosRestriccion`
--

DROP TABLE IF EXISTS `UsuariosConRequisitosRestriccion`;
/*!50001 DROP VIEW IF EXISTS `UsuariosConRequisitosRestriccion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsuariosConRequisitosRestriccion` AS SELECT 
 1 AS `nombre_usuario`,
 1 AS `nombre_proyecto`,
 1 AS `tipo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `UsuariosProyectosActivosConFuncionales`
--

DROP TABLE IF EXISTS `UsuariosProyectosActivosConFuncionales`;
/*!50001 DROP VIEW IF EXISTS `UsuariosProyectosActivosConFuncionales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `UsuariosProyectosActivosConFuncionales` AS SELECT 
 1 AS `nombre`,
 1 AS `nombre_proyecto`,
 1 AS `estado`,
 1 AS `nombre_requisito`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ComentariosRequisitosImplementados`
--

/*!50001 DROP VIEW IF EXISTS `ComentariosRequisitosImplementados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ComentariosRequisitosImplementados` AS select `R`.`descripcion` AS `descripcion`,`C`.`contenido` AS `contenido`,`R`.`estado` AS `estado` from (`Comentario` `C` join `Requisito` `R` on((`C`.`requisito` = `R`.`id`))) where (`R`.`estado` = 'Implementado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosConRequisitosDependientes`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosDependientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosConRequisitosDependientes` AS select distinct `P`.`nombre` AS `nombre_proyecto`,`R`.`nombre` AS `nombre` from ((`Proyecto` `P` join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) join `Relacion_Requisito` `RR` on((`R`.`id` = `RR`.`requisito_origen`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosConRequisitosFuncionalesAprobados`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosFuncionalesAprobados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosConRequisitosFuncionalesAprobados` AS select distinct `P`.`nombre` AS `nombre_proyecto` from (`Proyecto` `P` join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where ((`R`.`tipo` = 'Funcional') and (`R`.`estado` = 'Aprovado')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosConRequisitosNoFuncionalesPropuestos`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosNoFuncionalesPropuestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosConRequisitosNoFuncionalesPropuestos` AS select distinct `P`.`id` AS `id`,`P`.`nombre` AS `nombre`,`P`.`descripcion` AS `descripcion`,`P`.`estado` AS `estado`,`P`.`fecha_creacion` AS `fecha_creacion`,`P`.`usuario` AS `usuario` from (`Proyecto` `P` join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where ((`R`.`tipo` = 'No Funcional') and (`R`.`estado` = 'Propuesto')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosConRequisitosRechazados`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosConRequisitosRechazados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosConRequisitosRechazados` AS select distinct `P`.`nombre` AS `nombre`,`P`.`descripcion` AS `descripcion` from (`Proyecto` `P` join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where (`R`.`estado` = 'Rechazado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosConResponsables`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosConResponsables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosConResponsables` AS select `P`.`id` AS `id`,`P`.`nombre` AS `nombre`,`P`.`descripcion` AS `descripcion`,`P`.`estado` AS `estado`,`U`.`nombre` AS `nombre_usuario`,`U`.`apellido` AS `apellido` from (`Proyecto` `P` join `Usuario` `U` on((`P`.`usuario` = `U`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ProyectosSinRequisitos`
--

/*!50001 DROP VIEW IF EXISTS `ProyectosSinRequisitos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ProyectosSinRequisitos` AS select `P`.`nombre` AS `nombre`,`P`.`descripcion` AS `descripcion` from (`Proyecto` `P` left join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where (`R`.`id` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosAltaAprobados`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosAltaAprobados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosAltaAprobados` AS select `Requisito`.`id` AS `id`,`Requisito`.`nombre` AS `nombre`,`Requisito`.`descripcion` AS `descripcion`,`Requisito`.`tipo` AS `tipo`,`Requisito`.`estado` AS `estado`,`Requisito`.`prioridad` AS `prioridad`,`Requisito`.`fuente` AS `fuente`,`Requisito`.`fecha_registro` AS `fecha_registro`,`Requisito`.`proyecto` AS `proyecto` from `Requisito` where ((`Requisito`.`prioridad` = 'Alta') and (`Requisito`.`estado` = 'Aprovado')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosClienteAprobados`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosClienteAprobados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosClienteAprobados` AS select `Requisito`.`id` AS `id`,`Requisito`.`nombre` AS `nombre`,`Requisito`.`descripcion` AS `descripcion`,`Requisito`.`tipo` AS `tipo`,`Requisito`.`estado` AS `estado`,`Requisito`.`prioridad` AS `prioridad`,`Requisito`.`fuente` AS `fuente`,`Requisito`.`fecha_registro` AS `fecha_registro`,`Requisito`.`proyecto` AS `proyecto` from `Requisito` where ((`Requisito`.`fuente` = 'Cliente') and (`Requisito`.`estado` = 'Aprovado')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosConComentarios`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosConComentarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosConComentarios` AS select `R`.`nombre` AS `nombre`,`C`.`contenido` AS `contenido` from (`Requisito` `R` join `Comentario` `C` on((`C`.`requisito` = `R`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosDeProyectoOptimizado`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosDeProyectoOptimizado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosDeProyectoOptimizado` AS select `R`.`nombre` AS `nombre`,`R`.`descripcion` AS `descripcion` from (`Requisito` `R` join `Proyecto` `P` on((`R`.`proyecto` = `P`.`id`))) where (`P`.`nombre` = 'Optimized 3rdgeneration website') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosDestino`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosDestino`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosDestino` AS select `R`.`nombre` AS `nombre` from (`Requisito` `R` join `Relacion_Requisito` `RR` on((`R`.`id` = `RR`.`requisito_destino`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosFuncionalesAltaImplementados`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosFuncionalesAltaImplementados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosFuncionalesAltaImplementados` AS select `Requisito`.`id` AS `id`,`Requisito`.`nombre` AS `nombre`,`Requisito`.`descripcion` AS `descripcion`,`Requisito`.`tipo` AS `tipo`,`Requisito`.`estado` AS `estado`,`Requisito`.`prioridad` AS `prioridad`,`Requisito`.`fuente` AS `fuente`,`Requisito`.`fecha_registro` AS `fecha_registro`,`Requisito`.`proyecto` AS `proyecto` from `Requisito` where ((`Requisito`.`tipo` = 'Funcional') and (`Requisito`.`prioridad` = 'Alta') and (`Requisito`.`estado` = 'Implementado')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosOrigen`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosOrigen`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosOrigen` AS select `R`.`nombre` AS `nombre` from (`Requisito` `R` join `Relacion_Requisito` `RR` on((`R`.`id` = `RR`.`requisito_origen`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `RequisitosPropuestos`
--

/*!50001 DROP VIEW IF EXISTS `RequisitosPropuestos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `RequisitosPropuestos` AS select `Requisito`.`id` AS `id`,`Requisito`.`nombre` AS `nombre`,`Requisito`.`descripcion` AS `descripcion`,`Requisito`.`tipo` AS `tipo`,`Requisito`.`estado` AS `estado`,`Requisito`.`prioridad` AS `prioridad`,`Requisito`.`fuente` AS `fuente`,`Requisito`.`fecha_registro` AS `fecha_registro`,`Requisito`.`proyecto` AS `proyecto` from `Requisito` where (`Requisito`.`estado` = 'Propuesto') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsuariosConProyectosDependientes`
--

/*!50001 DROP VIEW IF EXISTS `UsuariosConProyectosDependientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UsuariosConProyectosDependientes` AS select distinct `U`.`nombre` AS `nombre_usuario`,`P`.`nombre` AS `nombre_proyecto`,`P`.`estado` AS `estado` from (((`Usuario` `U` join `Proyecto` `P` on((`P`.`usuario` = `U`.`id`))) join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) join `Relacion_Requisito` `RR` on((`RR`.`requisito_origen` = `R`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsuariosConProyectosFinalizados`
--

/*!50001 DROP VIEW IF EXISTS `UsuariosConProyectosFinalizados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UsuariosConProyectosFinalizados` AS select `U`.`nombre` AS `nombre`,`P`.`nombre` AS `nombre_proyecto`,`P`.`estado` AS `estado` from (`Usuario` `U` join `Proyecto` `P` on((`P`.`usuario` = `U`.`id`))) where (`P`.`estado` = 'Finalizado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsuariosConRequisitosAprobados`
--

/*!50001 DROP VIEW IF EXISTS `UsuariosConRequisitosAprobados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UsuariosConRequisitosAprobados` AS select distinct `U`.`nombre` AS `nombre`,`P`.`nombre` AS `nombre_proyecto` from ((`Usuario` `U` join `Proyecto` `P` on((`P`.`usuario` = `U`.`id`))) join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where (`R`.`estado` = 'Aprovado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsuariosConRequisitosRestriccion`
--

/*!50001 DROP VIEW IF EXISTS `UsuariosConRequisitosRestriccion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UsuariosConRequisitosRestriccion` AS select distinct `U`.`nombre` AS `nombre_usuario`,`P`.`nombre` AS `nombre_proyecto`,`R`.`tipo` AS `tipo` from ((`Usuario` `U` join `Proyecto` `P` on((`P`.`usuario` = `U`.`id`))) join `Requisito` `R` on((`R`.`proyecto` = `P`.`id`))) where (`R`.`tipo` = 'Restricción') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `UsuariosProyectosActivosConFuncionales`
--

/*!50001 DROP VIEW IF EXISTS `UsuariosProyectosActivosConFuncionales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `UsuariosProyectosActivosConFuncionales` AS select distinct `U`.`nombre` AS `nombre`,`P`.`nombre` AS `nombre_proyecto`,`P`.`estado` AS `estado`,`R`.`nombre` AS `nombre_requisito` from ((`Usuario` `U` join `Proyecto` `P` on(((`P`.`usuario` = `U`.`id`) and (`P`.`estado` = 'Activo')))) join `Requisito` `R` on(((`R`.`proyecto` = `P`.`id`) and (`R`.`tipo` = 'Funcional')))) */;
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

-- Dump completed on 2025-07-30  2:39:49
