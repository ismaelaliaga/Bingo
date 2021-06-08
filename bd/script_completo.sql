DROP DATABASE IF EXISTS `bingo`;
CREATE DATABASE `bingo`;
USE `bingo`;
CREATE TABLE `cartones`(`id_carton` TINYINT PRIMARY KEY AUTO_INCREMENT, `numeros` VARCHAR(150) NOT NULL, `estado_default` VARCHAR(150) NOT NULL);
CREATE TABLE `jugadores`(`id_jugador` TINYINT PRIMARY KEY AUTO_INCREMENT, `nombre_jugador` VARCHAR(50) NOT NULL);
CREATE TABLE `partida`(`id_jugador` TINYINT ,`id_carton` TINYINT , `estado` VARCHAR(150) NOT NULL, FOREIGN KEY (`id_carton`) REFERENCES `cartones`(`id_carton`), FOREIGN KEY (`id_jugador`) REFERENCES `jugadores`(`id_jugador`));
CREATE TABLE `log`(`log` VARCHAR (150));
INSERT INTO `jugadores`(`nombre_jugador`) VALUES ('Juan'),('Pepe'),('Sonia'),('Rafaela');
INSERT INTO `cartones`(`id_carton`, `numeros`, `estado_default`) VALUES
(1, '5, 10, NULL, NULL, 44, NULL, 62, 70, NULL, NULL, 16, NULL, 37, 47, NULL, NULL, 76, 81, 7, NULL, 21, 39, NULL, 58, NULL, NULL, 89', '0, 0, 2, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0'),
(2, '1, NULL, 20, NULL, 45, 54, NULL, NULL, 83, 3, 14, NULL, 35, NULL, NULL, 66, 73, NULL, NULL, NULL, 22, 36, NULL, 56, NULL, 77, 87', '0, 2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(3, 'NULL, NULL, 24, NULL, 41, 55, NULL, 74, 84, 6, 11, NULL, NULL, 46, NULL, 60, 76, NULL, 8, NULL, NULL, 30, NULL, 57, 64, NULL, 90', '2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0'),
(4, 'NULL, 12, 23, NULL, 42, 50, NULL, 71, NULL, NULL, 18, NULL, 31, 48, NULL, 61, NULL, 86, 4, NULL, 29, 34, NULL, 52, 68, NULL, NULL', '2, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 2'),
(5, '1, NULL, 13, NULL, 32, 53, NULL, 75, 80, 2, NULL, 25, NULL, NULL, 59, 63, NULL, 82, NULL, 15, 27, NULL, 43, NULL, 65, 79, NULL', '0, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2'),
(6, 'NULL, 17, NULL, 33, 40, NULL, 67, NULL, 85, NULL, 19, 26, NULL, 49, 51, NULL, 78, NULL, 9, NULL, 28, 38, NULL, NULL, 69, NULL, 88', '2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0'),
(7, 'NULL, 14, 21, NULL, 46, NULL, 62, NULL, 83, 4, NULL, 28, 31,NULL, NULL, 65, 70, NULL, NULL, 18, NULL, 37, NULL, 50, NULL, 78, 86', '2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0,2, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 0'),
(8, 'NULL, 14, 21, NULL, 46, NULL, 62, NULL, 83, 4, NULL, 28, 31,NULL, NULL, 65, 70, NULL, NULL, 18, NULL, 37, NULL, 50, NULL, 78, 86', '2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0,2, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 0'),
(9, '9, NULL, NULL, 30, 41, NULL, 60, 74, NULL, NULL, 13, 25, NULL,NULL, 56, NULL, 76, 84, NULL, 16, NULL, 32, 43, NULL, 64, NULL, 90', '0, 2, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2,2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0'),
(10, '1, NULL, NULL, 33, NULL, 52, NULL, 71, 85, NULL, 10, 20, NULL,45, NULL, 68, 79, NULL, 5, 12, NULL, NULL, 47, 57, NULL, NULL, 89', '0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2,0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2, 2, 0'),
(11, '2, NULL, 23, 35, NULL, 51, 60, NULL, NULL, 3, NULL, NULL, 36, 43, NULL, 63, NULL, 87, NULL, 17, 27, NULL, 49, 56, NULL, 76, NULL', '0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2'),
(12, '3, NULL, 24, NULL, NULL, 53, 66, 72, NULL, NULL, 15, NULL, 34, 40, NULL, 67, NULL, 81, NULL, NULL, 29, 38, NULL, 59, NULL, 74, 88', '0, 2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(13, '2, NULL, 20, 37, NULL, 57, NULL, 71, NULL, NULL, NULL, 24, 39,43, NULL, 62, NULL, 81, 7, 19, NULL, NULL, 47, NULL, NULL, 79, 87', '0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 2, 0, 0,0, 2, 0, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0, 0'),
(14, '3, NULL, 22, 32, NULL, NULL, 65, NULL, 82, NULL, 12, 27, NULL,46, 53, NULL, NULL, 85, 8, 18, NULL, 38, NULL, NULL, 67, 71, NULL', '0, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2,0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2'),
(15, '4, NULL, 26, NULL, 41, 55, NULL, 75, NULL, NULL, 10, NULL, 31,NULL, 58, 66, NULL, 86, NULL, 17, 29, NULL, 48, NULL, 69, NULL, 90', '0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0,2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0'),
(16, 'NULL, 13, NULL, 30, NULL, 50, 60, NULL, 89, NULL, 15, NULL, 35, 40, NULL, 68, 74, NULL, 5, NULL, 28, NULL, 49, 52, NULL, 77, NULL', '2, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 2'),
(17, 'NULL, NULL, 21, NULL, 42, 54, 63, NULL, 81, 1, 16, NULL, 33, 45, NULL, NULL, 73, NULL, NULL, NULL, 25, 36, NULL, 59, NULL, 78, 83', '2, 2, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 2, 2, 0, 2, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(18, 'NULL, 11, 23, NULL, NULL, 51, NULL, 70, 84, 6, NULL, NULL, 34, NULL, 56, 61, 72, NULL, 9, 14, NULL, NULL, 44, NULL, 64, NULL, 88', '2, 0, 0, 2, 2, 0, 2, 0, 0, 0, 2, 2, 0, 2, 0, 0, 0, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0'),
(19, '2, NULL, 23, NULL, NULL, 50, 65, NULL, 81, NULL, 12, NULL, 32, NULL, 54, NULL, 71, 85, NULL, 15, NULL, 34, 42, NULL, 67, 74, NULL', '0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2'),
(20, '5, NULL, 21, NULL, 44, 51, NULL, 76, NULL, NULL, 14, NULL, 33, 47, NULL, 69, NULL, 84, 7, NULL, 24, 35, NULL, 56, NULL, NULL, 86', '0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0'),
(21, '9, NULL, 22, 36, NULL, NULL, 60, NULL, 87, NULL, 16, NULL, 39, NULL, 58, NULL, 75, 89, NULL, 18, 25, NULL, 48, NULL, 62, 78, NULL', '0, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2'),
(22, '6, 11, NULL, NULL, 46, 53, NULL, 70, NULL, NULL, NULL, 27, NULL, 49, NULL, 64, 77, 88, 8, 19, NULL, 37, NULL, 59, 66, NULL, NULL', '0, 0, 2, 2, 0, 0, 2, 0, 2, 2, 2, 0, 2, 0, 2, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 2, 2'),
(23, '1, NULL, 26, NULL, 41, 55, NULL, NULL, 83, NULL, 17, NULL, 31, NULL, 57, NULL, 73, 90, 4, NULL, 29, 38, 43, NULL, 68, NULL, NULL', '0, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2, 2'),
(24, '3, NULL, 20, NULL, 40, NULL, 61, NULL, 80, NULL, 10, 28, NULL, NULL, 52, NULL, 72, 82, NULL, 13, NULL, 30, 45, NULL, 63, 79, NULL', '0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2'),
(25, '4, NULL, 21, NULL, 40, NULL, 60, NULL, 80, NULL, 10, NULL, 32, NULL, 55, NULL, 72, 83, NULL, 16, 26, NULL, 42, NULL, 65, 79, NULL', '0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2'),
(26, 'NULL, 12, NULL, 30, NULL, 53, 62, NULL, 82, 7, NULL, 23, NULL, 49, 58, NULL, 76, NULL, NULL, 17, NULL, 33, NULL, NULL, 67, 78, 87', '2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 2, 2, 0, 0, 0'),
(27, '9, 22, NULL, 36, NULL, 50, NULL, NULL, 86, 16, NULL, 29, NULL, 46, NULL, 69, 70, NULL, NULL, 18, NULL, NULL, 48, 52, NULL, 75, 88', '0, 0, 2, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 2, 2, 0, 0, 2, 0, 0'),
(28, '2, NULL, 27, NULL, NULL, 54, NULL, 71, 84, 9, NULL, 28, 34, 43, NULL, 66, NULL, NULL, NULL, 19, NULL, 37, 46, NULL, 69, 73, NULL', '0, 2, 0, 2, 2, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2, 2, 2, 0, 2, 0, 0, 2, 0, 0, 2'),
(29, '1, NULL, 24, 36, NULL, NULL, 61, NULL, 85, 3, NULL, 29, NULL, 45, 52, NULL, 74, NULL, NULL, 15, NULL, 39, NULL, 57, 68, NULL, 89', '0, 2, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0'),
(30, '5, NULL, 20, 31, NULL, 50, 63, NULL, NULL, NULL, 11, NULL, 38, 41, NULL, NULL, 77, 81, NULL, 13, 22, NULL, 48, 59, NULL, NULL, 90', '0, 2, 0, 0, 2, 0, 0, 2, 2, 2, 0, 2, 0, 0, 2, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 2, 0'),
(31, '2, NULL, 21, NULL, 47, NULL, 63, NULL, 82, NULL, 12, 27, NULL, NULL, 53, 67, NULL, 87, 6, 16, NULL, 34, NULL, 58, NULL, 78, NULL', '0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 0, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2'),
(32, 'NULL, 17, NULL, 36, 46, NULL, 64, NULL, 84, 8, NULL, 20, NULL, 48, NULL, 68, 74, NULL, NULL, NULL, 23, 39, NULL, 55, NULL, 76, 89', '2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(33, '7, NULL, 22, NULL, 41, 50, NULL, 75, NULL, NULL, 14, NULL, 37, 49, NULL, 65, NULL, 83, NULL, 19, NULL, 38, NULL, 57, 69, NULL, 86', '0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0'),
(34, 'NULL, 11, NULL, 31, 40, NULL, 60, NULL, 85, 4, 15, NULL, 33, NULL, 59, NULL, 72, NULL, 9, NULL, 24, NULL, 43, NULL, NULL, 79, 88', '2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 2, 0, 0'),
(35, '1, NULL, NULL, 30, 42, NULL, NULL, 71, 81, NULL, 13, 25, NULL, NULL, 52, 61, NULL, 90, NULL, 18, 29, NULL, 45, 54, NULL, 77, NULL', '0, 2, 2, 0, 0, 2, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2'),
(36, '3, NULL, 26, NULL, 44, NULL, 62, 70, NULL, 5, NULL, 28, 32, NULL, 51, NULL, 73, NULL, NULL, 10, NULL, 35, NULL, 56, 66, NULL, 80', '0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0'),
(37, 'NULL, NULL, 21, NULL, 42, 55, NULL, 71, 85, 6, NULL, 24, NULL, NULL, 59, 63, NULL, 89, 9, 12, NULL, 38, 47, NULL, NULL, 78, NULL', '2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2, 0, 0, 0, 2, 0, 0, 2, 2, 0, 2'),
(38, 'NULL, 17, NULL, 30, 43, NULL, NULL, 70, 80, 1, NULL, 23, NULL, NULL, 50, 66, NULL, 88, 4, NULL, 26, NULL, 46, 58, NULL, 74, NULL', '2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2'),
(39, 'NULL, 11, NULL, 35, NULL, 51, 62, 79, NULL, 2, 14, NULL, 39, NULL, NULL, 67, NULL, 84, 8, NULL, 22, NULL, 41, 54, NULL, NULL, 90', '2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 2, 0'),
(40, 'NULL, 13, NULL, 32, NULL, 53, 65, 73, NULL, NULL, NULL, 27, NULL, 44, 56, NULL, 75, 81, 3, 16, NULL, 37, 48, NULL, 69, NULL, NULL', '2, 0, 2, 0, 2, 0, 0, 0, 2, 2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2'),
(41, 'NULL, 15, NULL, 33, 40, NULL, 60, 72, NULL, NULL, 18, 25, 36, NULL, NULL, 68, NULL, 83, 7, NULL, 29, NULL, NULL, 52, NULL, 77, 86', '2, 0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0'),
(42, 'NULL, NULL, 20, 31, 45, NULL, 61, NULL, 82, NULL, 10, NULL, 34, NULL, 57, 64, NULL, 87, 5, 19, 28, NULL, 49, NULL, NULL, 76, NULL', '2, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 2, 2, 0, 2'),
(43, '2, NULL, 23, NULL, NULL, 55, 62, NULL, 83, NULL, 17, NULL, 36, 43, NULL, NULL, 74, 88, 5, NULL, 27, NULL, 48, NULL, 65, 77, NULL', '0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2'),
(44, 'NULL, NULL, 25, 33, NULL, 52, NULL, 76, 81, 4, 12, NULL, NULL, 40, NULL, 67, NULL, 86, NULL, 19, NULL, 38, 45, 57, NULL, 78, NULL', '2, 2, 0, 0, 2, 0, 2, 0, 0, 0, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2'),
(45, 'NULL, 11, NULL, 30, 42, NULL, 64, NULL, 84, 6, 14, NULL, NULL, 47, 54, NULL, 75, NULL, 9, NULL, 24, 35, NULL, 59, 69, NULL, NULL', '2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 2'),
(46, '8, NULL, 21, NULL, NULL, 51, 61, NULL, 87, NULL, 13, NULL, 32, 44, NULL, 66, 70, NULL, NULL, NULL, 29, 37, NULL, 56, NULL, 72, 90', '0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(47, '1, 15, 20, NULL, NULL, 53, NULL, 71, NULL, NULL, 18, NULL, 34, 46, NULL, 63, NULL, 82, NULL, NULL, 26, 39, NULL, 58, NULL, 79, 89', '0, 0, 0, 2, 2, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 0'),
(48, '3, NULL, 22, NULL, 41, NULL, 60, NULL, 80, 7, 10, NULL, 31, NULL, NULL, 68, NULL, 85, NULL, 16, 28, NULL, 49, 50, NULL, 73, NULL', '0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2'),
(49, 'NULL, 12, NULL, 31, 41, NULL, 60, 73, NULL, 4, NULL, NULL, 38, NULL, 52, NULL, 76, 83, NULL, 19, 25, NULL, NULL, 57, 64, NULL, 86', '2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2, 0'),
(50, 'NULL, 11, NULL, 30, NULL, 54, 65, NULL, 85, 6, NULL, NULL, 33, 44, NULL, 69, NULL, 88, NULL, 14, 27, NULL, 47, 59, NULL, 78, NULL', '2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2'),
(51, 'NULL, 13, 22, NULL, 43, NULL, 68, NULL, 80, 8, NULL, 29, 32, 46, NULL, NULL, 70, NULL, NULL, 16, NULL, 35, NULL, 51, NULL, 75, 90', '2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 0, 2, 2, 0, 2, 2, 0, 2, 0, 2, 0, 2, 0, 0'),
(52, '2, NULL, NULL, 34, NULL, 53, NULL, 72, 82, NULL, 15, 21, NULL, 45, NULL, 61, NULL, 87, 5, NULL, 24, 37, NULL, 56, 67, NULL, NULL', '0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 2'),
(53, 'NULL, 17, NULL, 36, 40, NULL, NULL, 74, 84, 1, NULL, 23, NULL, NULL, 52, 62, NULL, 89, 7, NULL, 26, NULL, 49, NULL, 66, 77, NULL', '2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2'),
(54, '3, NULL, 20, NULL, 42, 50, NULL, NULL, 81, 9, 10, NULL, 39, NULL, 58, NULL, 71, NULL, NULL, 18, 28, NULL, 48, NULL, 63, 79, NULL', '0, 2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 0, 2'),
(55, '4, NULL, 22, 30, NULL, NULL, 63, 75, NULL, NULL, 11, 27, NULL, 43, 52, NULL, 78, NULL, 6, NULL, NULL, 33, NULL, 59, 66, NULL, 88', '0, 2, 0, 0, 2, 2, 0, 0, 2, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0'),
(56, 'NULL, 13, NULL, 32, 42, NULL, 65, NULL, 81, 5, NULL, 29, NULL, 45, 51, NULL, 70, NULL, 7, NULL, NULL, 35, NULL, 54, 68, NULL, 90', '2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0'),
(57, 'NULL, 14, NULL, 34, 44, NULL, 60, NULL, 80, NULL, 19, 21, NULL, 47, 53, NULL, 72, NULL, 8, NULL, 24, NULL, NULL, 56, NULL, 77, 83', '2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2, 2, 0, 2, 0, 0'),
(58, '2, NULL, NULL, 36, NULL, 55, NULL, 74, 82, NULL, 16, 23, NULL, 49, NULL, 62, NULL, 85, 9, 17, NULL, 39, NULL, 58, NULL, 76, NULL', '0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2'),
(59, 'NULL, 15, 25, NULL, 41, NULL, 64, NULL, 84, NULL, NULL, 26, NULL, 46, 57, NULL, 71, 87, 1, 18, NULL, 38, NULL, NULL, 67, 79, NULL', '2, 0, 0, 2, 0, 2, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 2, 2, 0, 0, 2'),
(60, 'NULL, 10, NULL, 31, 40, NULL, 61, 73, NULL, 3, NULL, 20, 37, NULL, 50, NULL, NULL, 86, NULL, 12, 28, NULL, 48, NULL, 69, NULL, 89', '2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (1, 10,'0, 2, 2, 0, 2, 0, 2, 0, 0, 2, 0, 0, 2,0, 2, 0, 0, 2, 0, 0, 2, 2, 0, 0, 2, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (2, 3,'2, 2, 0, 2, 0, 0, 2, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (2, 33,'0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (3, 60,'2, 0, 2, 0, 0, 2, 0, 0, 2, 0, 2, 0, 0, 2, 0, 2, 2, 0, 2, 0, 0, 2, 0, 2, 0, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (3, 1,'0, 0, 2, 2, 0, 2, 0, 0, 2, 2, 0, 2, 0, 0, 2, 2, 0, 0, 0, 2, 0, 0, 2, 0, 2, 2, 0');
INSERT INTO `partida`(`id_jugador`,`id_carton`,`estado`) VALUES (3, 27,'0, 0, 2, 0, 2, 0, 2, 2, 0, 0, 2, 0, 2, 0, 2, 0, 0, 2, 2, 0, 2, 2, 0, 0, 2, 0, 0');
