-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 26 juin 2024 à 14:20
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `openinov`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auteur` varchar(255) CHARACTER SET utf8 NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8 NOT NULL,
  `theme` text CHARACTER SET utf8 NOT NULL,
  `resume` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contenu` text CHARACTER SET utf8 NOT NULL,
  `date_post` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `auteur`, `titre`, `theme`, `resume`, `contenu`, `date_post`) VALUES
(25, 'melanie', 'Article inaugural de ce site ! ', 'Actu', 'Le premier article du site :)', 'Chers étudiants,\r\n\r\nC\\\'est avec une grande joie que nous célébrons aujourd\\\'hui l\\\'inauguration de notre tout nouveau site d\\\'entraide, un espace virtuel dédié à votre réussite académique et à votre épanouissement personnel. Cette plateforme, fruit d\\\'une collaboration passionnée entre 4 étudiants, a pour objectif de créer une communauté solidaire où chacun peut trouver le soutien nécessaire pour surmonter les défis de la vie étudiante\r\n\r\nRestez connecté pour de futures fonctionnalités (service de tutorat, recherche de bons plans, etc...)', '2023-05-10 20:48:31');

-- --------------------------------------------------------

--
-- Structure de la table `clavardage`
--

DROP TABLE IF EXISTS `clavardage`;
CREATE TABLE IF NOT EXISTS `clavardage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `date_clavar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clavardage`
--

INSERT INTO `clavardage` (`id`, `pseudo`, `message`, `date_clavar`) VALUES
(34, 'melanie', 'Salut a tous :)', '2023-05-10 21:00:24'),
(35, 'melanie', 'des conseils a me donner ?', '2023-05-10 21:00:49');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_billet` int(11) NOT NULL,
  `auteur` varchar(255) CHARACTER SET utf8 NOT NULL,
  `commentaire` text CHARACTER SET utf8 NOT NULL,
  `date_commentaire` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_billet`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(27, 25, 'melanie', 'N\\\'hésitez pas a me faire part de votre avis, suggestions et améliorations vis à vis de cette plateforme !', '2023-05-10 19:00:06');

-- --------------------------------------------------------

--
-- Structure de la table `recuperation`
--

DROP TABLE IF EXISTS `recuperation`;
CREATE TABLE IF NOT EXISTS `recuperation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recuperation`
--

INSERT INTO `recuperation` (`id`, `email`, `code`) VALUES
(8, 'm.m@m.com', 57368);

-- --------------------------------------------------------

--
-- Structure de la table `visiteurs`
--

DROP TABLE IF EXISTS `visiteurs`;
CREATE TABLE IF NOT EXISTS `visiteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `mdp` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `visiteurs`
--

INSERT INTO `visiteurs` (`id`, `pseudo`, `mdp`, `email`, `date_inscription`) VALUES
(7, 'Melanie', '$2y$10$bscEgCPMWv/rXovfrs6fOeqrlKtzA5WbYvcDGXFQT6NW2ZGLAKsGq', 'm.m@m.com', '2023-05-10 20:44:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
