-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema evaluación práctica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema evaluación práctica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `evaluación práctica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema musimundos
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movies_db
-- -----------------------------------------------------
USE `evaluación práctica` ;

-- -----------------------------------------------------
-- Table `evaluación práctica`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evaluación práctica`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evaluación práctica`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evaluación práctica`.`notas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `fecha_modificacion` DATE NULL,
  `descripcion` VARCHAR(255) NOT NULL,
  `eliminable` INT NOT NULL,
  `usuarios.id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `usuarios.id`
    FOREIGN KEY (`id`)
    REFERENCES `evaluación práctica`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evaluación práctica`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evaluación práctica`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `evaluación práctica`.`notas_categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `evaluación práctica`.`notas_categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `notas.id` INT NOT NULL,
  `categorias.id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `categorias`
    FOREIGN KEY (`id`)
    REFERENCES `evaluación práctica`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `notas`
    FOREIGN KEY (`id`)
    REFERENCES `evaluación práctica`.`notas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `evaluación práctica`.`usuarios`
-- -----------------------------------------------------
START TRANSACTION;
USE `evaluación práctica`;
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (1, 'johndoe87', 'johndoe87@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (2, 'sarahsmith123', 'sarahsmith123@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (3, 'tomjones456', 'tomjones456@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (4, 'laurawilson789', 'laurawilson789@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (5, 'samjohnson101', 'samjohnson101@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (6, 'emilybrown222', 'emilybrown222@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (7, 'michaeljackson999', 'michaeljackson999@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (8, 'amandamiller777', 'amandamiller777@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (9, 'kevinlee888', 'kevinlee888@example.com');
INSERT INTO `evaluación práctica`.`usuarios` (`id`, `nombre`, `email`) VALUES (10, 'rachelgreen246', 'rachelgreen246@example.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `evaluación práctica`.`notas`
-- -----------------------------------------------------
START TRANSACTION;
USE `evaluación práctica`;
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (1, 'Lista de compras', '2023/03/10', '2023/03/10', 'Lista de los productos necesarios para la semana.', 0, '1');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (2, 'Resumen de reunión', '2023/03/11', '2023/03/10', 'Notas resumiendo los temas discutidos en la reunión del equipo.', 1, '2');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (3, 'Plan de marketing', '2023/07/03', '2023/03/10', 'Planificación de la estrategia de marketing para el próximo trimestre.', 0, '3');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (4, 'Ideas para el nuevo producto', '2022/05/22', '2023/03/10', 'Lista de posibles ideas para el desarrollo del nuevo producto de la empresa.', 1, '4');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (5, 'Registro de gastos', '2021/02/15', '2023/03/10', 'Registro de todos los gastos realizados en el mes.', 0, '5');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (6, 'Plan de capacitación', '2021/02/09', '2023/03/10', 'Planificación de la capacitación y entrenamiento del personal para el próximo mes.', 1, '6');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (7, 'Agenda de viaje', '2022/02/01', '2023/03/10', 'Itinerario detallado del viaje de negocios a la ciudad de Nueva York.', 0, '7');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (8, 'Plan de mejora de procesos', '2023/05/21', '2023/03/10', 'Planificación de las mejoras necesarias en los procesos internos de la empresa.', 1, '8');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (9, 'Lista de tareas', '2023/02/05', '2023/03/10', 'Lista de tareas pendientes para la semana.', 0, '9');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (10, 'Resultados de la encuesta de satisfacción', '2023/01/31', '2023/03/10', 'Resumen de los resultados de la encuesta de satisfacción del cliente realizada el mes pasado.', 1, '10');
INSERT INTO `evaluación práctica`.`notas` (`id`, `titulo`, `fecha_creacion`, `fecha_modificacion`, `descripcion`, `eliminable`, `usuarios.id`) VALUES (DEFAULT, DEFAULT, DEFAULT, '', DEFAULT, DEFAULT, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `evaluación práctica`.`categorias`
-- -----------------------------------------------------
START TRANSACTION;
USE `evaluación práctica`;
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (1, 'Proyectos en curso');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (2, 'Tareas pendientes');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (3, 'Ideas y brainstorming');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (4, 'Resúmenes de reuniones');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (5, 'Planificación estratégica');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (6, 'Finanzas y presupuestos');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (7, 'Contactos y networking');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (8, 'Recursos y herramientas');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (9, 'Inspiración y motivación');
INSERT INTO `evaluación práctica`.`categorias` (`id`, `categoria`) VALUES (10, 'Investigación y datos');

COMMIT;

