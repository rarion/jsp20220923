CREATE DATABASE mydb4;
USE mydb4;
SHOW CREATE TABLE Movie;

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT '0',
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SHOW CREATE TABLE Director;

CREATE TABLE `Director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

SHOW CREATE TABLE MovieDirector;

CREATE TABLE `MovieDirector` (
  `directorId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  PRIMARY KEY (`directorId`,`movieId`),
  KEY `fk_Director_has_Movie_Movie1_idx` (`movieId`),
  KEY `fk_Director_has_Movie_Director_idx` (`directorId`),
  CONSTRAINT `fk_Director_has_Movie_Director` FOREIGN KEY (`directorId`) REFERENCES `Director` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Director_has_Movie_Movie1` FOREIGN KEY (`movieId`) REFERENCES `Movie` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;