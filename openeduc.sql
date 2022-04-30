-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 28 avr. 2022 à 20:15
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `openeduc`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

DROP TABLE IF EXISTS `classe`;
CREATE TABLE IF NOT EXISTS `classe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Effectif` int(3) NOT NULL,
  `id_ecole` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id`, `Nom`, `Effectif`, `id_ecole`) VALUES
(1, 'CP Mme Borleau', 20, 1),
(2, 'CE1/CE2 Mme Hetre', 32, 1),
(3, 'CE1/CE2 M Dupent', 34, 1),
(4, 'CM1 M Karma', 28, 1),
(5, 'CM2 Mme Kieffa', 32, 1),
(6, 'CP Mme Bouleau', 29, 2),
(7, 'CE1 Mme Kadifa', 26, 2),
(8, 'CE2 M Sprung', 25, 2),
(9, 'CM1 M Heitz', 28, 2),
(10, 'CM2 Mme Lorentz', 15, 2),
(11, 'CP Bilingue Mme Kumpf, M King', 23, 3),
(12, 'CP, CE1 Bilingue Mme Kumpf, M King', 24, 3),
(13, 'CP, CE1 Mme Laroute', 26, 3),
(14, 'CP, CE1 Mme Charlou', 25, 3),
(15, 'CE1 Biligue Mme Paturelle, Mme Troussi', 25, 3),
(16, 'CE1, CE2 M Raoult', 28, 3),
(17, 'CE2 M Vinasse', 29, 3),
(18, 'CE2 Bilingue Mme Schwarz, Mme Longlet', 25, 3),
(19, 'CM1Bilingue M DeTibot', 23, 3),
(20, 'CM1 M Eicher', 25, 3),
(21, 'CM1 Mme Lallemand', 25, 3),
(22, 'CM2 Bilingue Mme Schwarz, Mme Longlet', 24, 3),
(23, 'CM2 M Lalanne', 27, 3),
(25, 'CM2 Mme richer', 20, 3),
(34, 'CE1 Mme Clear', 20, 1),
(32, 'CP Mme Uria', 24, 3);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

DROP TABLE IF EXISTS `ecole`;
CREATE TABLE IF NOT EXISTS `ecole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(20) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Code_Postal` int(5) NOT NULL,
  `Ville` varchar(30) NOT NULL,
  `Telephone` varchar(17) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Identifiant` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id`, `Nom`, `Adresse`, `Code_Postal`, `Ville`, `Telephone`, `Mail`, `Identifiant`) VALUES
(1, 'Bischoffsheim', '2 rue des Ecoles', 67870, 'BISCHOFFSHEIM', '03 88 50 21 24', ' ce.0671236E@ac-strasbourg.fr', '0671236E'),
(2, 'Boersch', '21 rue Mgr Médard Barth', 67530, 'BOERSCH', '03 88 48 13 37', 'ce.0671238G@ac-strasbourg.fr', '0671236E'),
(3, 'Rosheim', '11 rue de l\'Eglise', 67560, 'ROSHEIM', '03 88 48 13 37', 'ce.0672868D@ac-strasbourg.fr', '0672868D');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

DROP TABLE IF EXISTS `historique`;
CREATE TABLE IF NOT EXISTS `historique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Dates` varchar(20) NOT NULL,
  `Fonction` varchar(30) NOT NULL,
  `Messages` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `Dates`, `Fonction`, `Messages`) VALUES
(1, '2022-04-03 20:02:45', 'Ajout_classe', 'Nom=CP Mme U Effectif= 16  ecole= 3 id_personnel= 1'),
(2, '2022-04-23 18:29:53', 'Modification_classe', 'Nom=CM2 Mme richerere Effectif= 10  ecole=  id_personnel= 1'),
(3, '2022-04-23 18:32:10', 'Modification_classe', 'Nom=CM2 Mme richer Effectif= 20  ecole= 3 id_personnel= 1'),
(4, '2022-04-23 18:34:37', 'Modification_classe', 'Nom=CP Mme Uriage Effectif= 19  ecole= 3 id_personnel= 3'),
(5, '2022-04-23 18:45:46', 'Modification_classe', 'Nom=CP Mme Uriag Effectif= 17  ecole= 3 id_personnel= '),
(6, '2022-04-23 18:49:59', 'Modification_classe', 'Nom=CP Mme Uria Effectif= 24  ecole= 3 id_personnel= 1'),
(7, '2022-04-26 12:25:46', 'Modification_classe', 'Nom=CP, CE1 Mme Charlout Effectif= 25  ecole= 3 id_personnel= 4'),
(8, '2022-04-26 12:35:22', 'Modification_classe', 'Nom=CP, CE1 Mme Charlou Effectif= 25  ecole= 3 id_personnel= 4'),
(9, '2022-04-26 13:19:57', 'Ajout_classe', 'Nom=CE1 Mme Clear Effectif= 20  ecole= 1 id_personnel= 4');

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Civilite` varchar(5) NOT NULL,
  `Nom` varchar(10) NOT NULL,
  `Prenom` varchar(10) NOT NULL,
  `Mail` varchar(40) NOT NULL,
  `id_ecole` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `Civilite`, `Nom`, `Prenom`, `Mail`, `id_ecole`) VALUES
(1, 'Mme', 'Bokolski', 'Nadia ', 'n.bokolski@laposte.net', 3),
(2, 'Mme', 'Goutfard', 'Elise', 'elise.goutfardr@sfr.fr', 2),
(3, 'M', 'Meyer', 'Luc', 'luc.meyer@orange.fr', 1),
(4, 'Mme', 'Lame', 'Anne', 'anne.lame@gmail.com', 0),
(5, 'M', 'Andre', 'Pierre', 'pierre.andre@orange.fr', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Identifiant` varchar(20) NOT NULL,
  `Mot_De_Passe` varchar(60) NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `id_personnel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `Identifiant`, `Mot_De_Passe`, `Fonction`, `id_personnel`) VALUES
(1, 'N.bolk', '$2y$10$OyY2vfIlUTC.XEzB0u2h3uWLFC2E933nulflzwo0rZYg996VFYp1m', 'responsable_ecole', 1),
(2, 'E.gout', '$2y$10$V/BFxQuQlBKfawvURDS4j.FJdB9sDzi7mJ0guDKa27FkfvUE1FDtS', 'responsable_ecole', 2),
(3, 'L.meyer', '$2y$10$n0xkmsOqkmmaGUeoEcOrLuGFKCl0hFH9aBYnEPCo4xakAk4fro1dC', 'responsable_ecole', 3),
(4, 'A.lame', '$2y$10$ysWGUzQ34dJtZVTK5AY/OumeHSuPq6X/0R9ZGh2bWnFvnwKJxOzku', 'secretaire', 4),
(5, 'P.andre', '$2y$10$vfJ7QQ6RDASg//I8CgmKouSiGcJ2RXF260K22VhPP0oU6JmWIsxqm', 'secretaire', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
