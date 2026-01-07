-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
-- 
-- Client :  localhost
-- Généré le :  Lun 24 Novembre 2025 à 19:58
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;






-- INTRO :

-- Création de la base de données pour la gestion des formations, matières, cours, devoirs, élèves, prof / tables avec clés primaires + étrangères pour intégrité des données / exemple insérés





-- --------------------------------------------
-- Base de données :  `bdd_data4_ecole`
-- -----------------------------------------




-- --------------------------------------------------------





-- --
-- Structure de la table `formations`
-- --


-- identifiant + nom





CREATE TABLE IF NOT EXISTS `formations` (
  `frm_id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_nom` varchar(100) NOT NULL,
  PRIMARY KEY (`frm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --
-- Contenu de la table `formations`
-- --


-- exemple formations 




INSERT INTO `formations` (`frm_id`, `frm_nom`) VALUES
(1, 'Développement Web'),
(2, 'Marketing Digital'),
(3, 'Data Analyse');


-- --------------------------------------------------------




-- --
-- Structure de la table `matieres`
-- --


-- matières enseignées + identifiant nom description



CREATE TABLE IF NOT EXISTS `matieres` (
  `matiere_id` int(11) NOT NULL AUTO_INCREMENT,
  `matiere_nom` varchar(100) NOT NULL,
  `matiere_desc` text DEFAULT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --
-- Contenu de la table `matieres`
-- --




INSERT INTO `matieres` (`matiere_id`, `matiere_nom`, `matiere_desc`) VALUES
(1, 'PHP', 'Programmation back-end'),
(2, 'Marketing', 'Stratégies marketing digital'),
(3, 'Analyse de données', 'Traitement et analyse des données'),
(4, 'JavaScript', 'Programmation front-end'),
(5, 'PHP initiation', NULL),
(6, 'PHP intermédiaire', NULL),
(7, 'Gérer une base de données', NULL);





-- -----------------------------------------------------------------------




-- --
-- Structure de la table `formations_matieres`
-- --



CREATE TABLE IF NOT EXISTS `formations_matieres` (
  `frm_mat_id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  PRIMARY KEY (`frm_mat_id`),
  KEY `frm_id` (`frm_id`),
  KEY `matiere_id` (`matiere_id`),
  CONSTRAINT `formations_matieres_ibfk_1` FOREIGN KEY (`frm_id`) REFERENCES `formations` (`frm_id`),
  CONSTRAINT `formations_matieres_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;





-- --
-- Contenu de la table `formations_matieres`
-- --



INSERT INTO `formations_matieres` (`frm_mat_id`, `frm_id`, `matiere_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 1, 7),
(6, 2, 2),
(7, 3, 3);





-- ---------------------------------------------------------------------------



-- --
-- Structure de la table `cours`
-- --





CREATE TABLE IF NOT EXISTS `cours` (
  `cours_id` int(11) NOT NULL AUTO_INCREMENT,
  `cours_nom` varchar(255) NOT NULL,
  `cours_desc` text DEFAULT NULL,
  `matiere_id` int(11) NOT NULL,            -- clé étrangère vers matieres
  PRIMARY KEY (`cours_id`),
  KEY `matiere_id` (`matiere_id`),
  CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --
-- Contenu de la table `cours`
-- --


-- Exemple insertion



INSERT INTO `cours` (`cours_id`, `cours_nom`, `cours_desc`, `matiere_id`) VALUES
(1, 'Introduction PHP', 'Bases de PHP', 1),
(2, 'PHP avancé', 'Fonctions avancées en PHP', 1),
(3, 'Principes marketing', 'Bases du marketing digital', 2),
(4, 'Analyse statistique', 'Méthodes statistiques', 3),
(5, 'JS pour débutants', 'Bases de JavaScript', 4),
(6, 'Installation et fonctionnement', NULL, 5),
(7, 'Bien démarrer en PHP', NULL, 5),
(8, 'Les variables et constantes', NULL, 5),
(9, 'Les conditions, les opérateurs et les boucles', NULL, 5),
(10, 'tableaux de données', NULL, 5),
(11, 'Variables prédéfinies et variables externes', NULL, 5),
(12, 'PHP et les formulaires', NULL, 5),
(13, 'Qu’est-ce qu’une base de données', NULL, 6),
(14, 'MySQL', NULL, 6),
(15, 'Premier script PHP-MySQL', NULL, 6),
(16, 'Les requêtes MySQL', NULL, 6),
(17, 'Les types de données MySQL', NULL, 6),
(18, 'Réalisation d’un site de contenu en base de données', NULL, 6),
(19, 'Les sessions', NULL, 6),
(20, 'Les cookies', NULL, 6),
(32, 'Recenser les informations du domaine étudié', NULL, 7),
(33, 'Organiser les données', NULL, 7),
(34, 'Construire l\'organisation physique des données', NULL, 7),
(35, 'Mettre en oeuvre les instructions de création, de modification et de suppression de base de données', NULL, 7),
(36, 'Mettre en oeuvre les instructions pour implémenter les contraintes et l\'optimisation des accès', NULL, 7),
(37, 'Ecrire et exécuter un script de création de base de données à l\'aide de l\'environnement intégré de développement', NULL, 7),
(38, 'Générer un script de création de la base de données à l\'aide de l\'outil de modélisation', NULL, 7),
(39, 'Elaborer des scripts d\'alimentation de la base de test', NULL, 7),
(40, 'Les avantages et inconvénients du relationnel et du non-relationnel', NULL, 7),
(41, 'Le langage de requête pour la base de données', NULL, 7),
(42, 'Outil de sauvegarde de base de données', NULL, 7),
(43, 'Base de données', 'Gestion des bases de données', 3);



-- --------------------------------------------------------



-- --
-- Structure de la table `devoirs`
-- --


-- chaque dev appartient a un cours



CREATE TABLE IF NOT EXISTS `devoirs` (
  `devoir_id` int(11) NOT NULL AUTO_INCREMENT,
  `devoir_nom` varchar(100) NOT NULL,
  `devoir_desc` text DEFAULT NULL,
  `cours_id` int(11) NOT NULL,           -- clé étrangère vers cours
  PRIMARY KEY (`devoir_id`),
  KEY `cours_id` (`cours_id`),
  CONSTRAINT `devoirs_ibfk_1` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`cours_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --
-- Contenu de la table `devoirs`
-- --



INSERT INTO `devoirs` (`devoir_id`, `devoir_nom`, `devoir_desc`, `cours_id`) VALUES
(1, 'Devoir 1 PHP', 'Exercices de base PHP', 1),
(2, 'Projet PHP avancé', 'Projet pratique avancé', 2),
(3, 'Devoir marketing', 'Analyse de campagne', 3),
(4, 'Exercice statistiques', 'Travail sur données réelles', 4),
(5, 'TP JavaScript', 'Mini-projet JS', 5),
(11, 'Élaborer des scripts d\'alimentation de la base de données', 'Devoir lié à la gestion des bases de données', 6),
(12, 'DEVOIR 1 - Élaborer des scripts d’alimentation de la base de test', 'Devoir sur l’alimentation de tables', 39);



-- --------------------------------------------------------




-- --
-- Structure de la table `eleves`
-- --



-- liste élèves 


CREATE TABLE IF NOT EXISTS `eleves` (
  `eleve_id` int(11) NOT NULL AUTO_INCREMENT,
  `eleve_nom` varchar(100) NOT NULL,
  `eleve_prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`eleve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --
-- Contenu de la table `eleves`
-- --


INSERT INTO `eleves` (`eleve_id`, `eleve_nom`, `eleve_prenom`) VALUES
(1, 'Dupont', 'Alice'),
(2, 'Martin', 'Jean'),
(3, 'Durand', 'Sophie'),
(4, 'Bernard', 'Paul'),
(5, 'PAGANOTTO', 'Vanessa');




-- --------------------------------------------------------



-- --
-- Structure de la table `eleves_formations`
-- --


-- gérer inscriptions 
-- colonnes `date_deb_frm` et `date_fin_frm` optionnelles (peuvent être NULL)



CREATE TABLE IF NOT EXISTS `eleves_formations` (
  `ele_frm_id` int(11) NOT NULL AUTO_INCREMENT,
  `eleve_id` int(11) NOT NULL,      -- clé étrangère vers eleves
  `frm_id` int(11) NOT NULL,        -- clé étrangère vers formations
  `date_deb_frm` date DEFAULT NULL,     -- date de début de la formation pour l'élève
  `date_fin_frm` date DEFAULT NULL,     -- date de fin
  PRIMARY KEY (`ele_frm_id`),
  UNIQUE KEY `eleve_id_2` (`eleve_id`,`frm_id`),        -- evite les doublons d'inscription
  KEY `eleve_id` (`eleve_id`),
  KEY `frm_id` (`frm_id`),
  CONSTRAINT `eleves_formations_ibfk_1` FOREIGN KEY (`eleve_id`) REFERENCES `eleves` (`eleve_id`),
  CONSTRAINT `eleves_formations_ibfk_2` FOREIGN KEY (`frm_id`) REFERENCES `formations` (`frm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






-- --
-- Contenu de la table `eleves_formations`
-- --



-- Exemple d’inscription 


INSERT INTO `eleves_formations` (`ele_frm_id`, `eleve_id`, `frm_id`, `date_deb_frm`, `date_fin_frm`) VALUES
(1, 1, 1, '2024-09-01', '2025-06-30'),
(2, 2, 1, '2024-09-01', '2025-06-30'),
(3, 3, 2, '2024-09-01', '2025-06-30'),
(4, 4, 3, '2024-09-01', '2025-06-30'),
(5, 5, 1, '2024-09-01', '2025-06-30');




-- inscription Vanessa PAGANOTTO à la formation 'Développement Web' si pas inscrite


INSERT INTO eleves_formations (eleve_id, frm_id, date_deb_frm)
SELECT e.eleve_id, f.frm_id, CURDATE()
FROM eleves e
JOIN formations f ON f.frm_nom = 'Développement Web'
WHERE e.eleve_nom = 'PAGANOTTO'
  AND e.eleve_prenom = 'Vanessa'
  AND NOT EXISTS (
    SELECT 1
    FROM eleves_formations ef
    WHERE ef.eleve_id = e.eleve_id
      AND ef.frm_id = f.frm_id
);






-- --------------------------------------------------------




-- --
-- Structure de la table `professeurs`
-- --



CREATE TABLE IF NOT EXISTS `professeurs` (
  `prof_id` int(11) NOT NULL AUTO_INCREMENT,
  `prof_nom` varchar(100) NOT NULL,
  `prof_prenom` varchar(100) NOT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --
-- Contenu de la table `professeurs`
-- --



INSERT INTO `professeurs` (`prof_id`, `prof_nom`, `prof_prenom`) VALUES
(1, 'Leroy', 'Claire'),
(2, 'Dubois', 'Marc'),
(3, 'Moreau', 'Lucie'),
(4, 'Petit', 'Thomas');


-- --------------------------------------------------------



-- --
-- Structure de la table `professeurs_matieres`
-- --



CREATE TABLE IF NOT EXISTS `professeurs_matieres` (
  `prof_mat_id` int(11) NOT NULL AUTO_INCREMENT,
  `prof_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  PRIMARY KEY (`prof_mat_id`),
  KEY `prof_id` (`prof_id`),
  KEY `matiere_id` (`matiere_id`),
  CONSTRAINT `professeurs_matieres_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `professeurs` (`prof_id`),
  CONSTRAINT `professeurs_matieres_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




-- --
-- Contenu de la table `professeurs_matieres`
-- --


INSERT INTO `professeurs_matieres` (`prof_mat_id`, `prof_id`, `matiere_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 3, 3),
(5, 4, 1),
(6, 4, 2);



-- --------------------------------------------------------



-- --
-- Structure de la table `rdv`
-- --


CREATE TABLE IF NOT EXISTS `rdv` (
  `rdv_id` int(11) NOT NULL AUTO_INCREMENT,
  `eleve_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `rdv_date` date NOT NULL,
  `rdv_h_deb` time NOT NULL,
  `rdv_h_fin` time NOT NULL,
  PRIMARY KEY (`rdv_id`),
  KEY `eleve_id` (`eleve_id`),
  KEY `matiere_id` (`matiere_id`),
  KEY `prof_id` (`prof_id`),
  CONSTRAINT `rdv_ibfk_1` FOREIGN KEY (`eleve_id`) REFERENCES `eleves` (`eleve_id`),
  CONSTRAINT `rdv_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matieres` (`matiere_id`),
  CONSTRAINT `rdv_ibfk_3` FOREIGN KEY (`prof_id`) REFERENCES `professeurs` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --
-- Contenu de la table `rdv`
-- --


INSERT INTO `rdv` (`rdv_id`, `eleve_id`, `matiere_id`, `prof_id`, `rdv_date`, `rdv_h_deb`, `rdv_h_fin`) VALUES
(1, 1, 1, 1, '2024-10-10', '10:00:00', '11:00:00'),
(2, 2, 1, 4, '2024-10-11', '14:00:00', '15:00:00'),
(3, 3, 2, 2, '2024-10-12', '09:30:00', '10:30:00'),
(4, 4, 3, 3, '2024-10-13', '16:00:00', '17:00:00');




-- ------------------------------------------------------------------------------------------------------------



-- J'ai préféré définir directement les clés primaires, AUTO_INCREMENT et clés étrangères dans les CREATE TABLE pour plus de clarté et de simplicité. Mais je peux faire l'ajout de ces contraintes avec ALTER TABLE si besoin.




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

