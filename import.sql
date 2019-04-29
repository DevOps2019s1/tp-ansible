CREATE DATABASE IF NOT EXISTS `employes` CHARACTER SET ascii COLLATE ascii_general_ci;

CREATE TABLE IF NOT EXISTS `employes` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` TEXT(128) CHARACTER SET ascii COLLATE ascii_general_ci,
	`prenom` TEXT(128) CHARACTER SET ascii COLLATE ascii_general_ci,
	`adresse` TEXT(128) CHARACTER SET ascii COLLATE ascii_general_ci,
	PRIMARY KEY (`id`)
);

INSERT INTO `employes` (`nom`,`prenom`,`adresse`) VALUES ('Hofstadter','Leonaes','Woodcrest');  
INSERT INTO `employes` (`nom`,`prenom`,`adresse`) VALUES ('Titi','toto','Africa');  
INSERT INTO `employes` (`nom`,`prenom`,`adresse`) VALUES ('Euclide','Jean-Mouloud','Africa');  
INSERT INTO `employes` (`nom`,`prenom`,`adresse`) VALUES ('Bongo','Cat','Internet');  

GRANT ALL PRIVILEGES ON employes.* TO 'vagrant'@'%' IDENTIFIED BY 'BOURNE';
FLUSH PRIVILEGES;