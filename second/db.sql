-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.58-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных dig_library
CREATE DATABASE IF NOT EXISTS `dig_library` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `dig_library`;

-- Дамп структуры для таблица dig_library.author
CREATE TABLE IF NOT EXISTS `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы dig_library.author: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`id`, `name`, `surname`) VALUES
	(1, 'Юрий', 'Иванов'),
	(2, 'Иван', 'Рясеков'),
	(3, 'Михаил', 'Ившин');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- Дамп структуры для таблица dig_library.book
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы dig_library.book: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `name`) VALUES
	(1, 'Рассказ 1'),
	(2, 'Рассказ 2'),
	(3, 'Рассказ 3'),
	(4, 'Рассказ 4'),
	(5, 'Рассказ 5'),
	(6, 'Рассказ 6'),
	(7, 'Рассказ 7'),
	(8, 'Рассказ 8'),
	(9, 'Рассказ 9'),
	(10, 'Повесть'),
	(11, 'Роман'),
	(12, 'Поэма');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- Дамп структуры для таблица dig_library.book_author
CREATE TABLE IF NOT EXISTS `book_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_author` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_book_author_author` (`id_author`),
  KEY `FK_book_author_book` (`id_book`),
  CONSTRAINT `FK_book_author_book` FOREIGN KEY (`id_book`) REFERENCES `book` (`id`),
  CONSTRAINT `FK_book_author_author` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы dig_library.book_author: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` (`id`, `id_author`, `id_book`) VALUES
	(2, 2, 1),
	(3, 2, 2),
	(4, 2, 3),
	(5, 2, 4),
	(6, 2, 5),
	(7, 2, 6),
	(8, 2, 7),
	(9, 2, 8),
	(10, 2, 9),
	(11, 1, 10),
	(12, 3, 12),
	(13, 3, 11);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
