-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 24 avr. 2022 à 18:40
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `location_colocation_logement_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `Id_administrateur` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`Id_administrateur`, `Nom_utilisateur`, `Email`, `Mot_de_passe`, `photo`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '');

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

CREATE TABLE `annonce` (
  `Id_annonce` int(11) NOT NULL,
  `Titre` varchar(150) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Logement_meublé` tinyint(1) NOT NULL,
  `Surface` decimal(10,0) NOT NULL,
  `N_chambre` int(11) NOT NULL,
  `Date_deposition` timestamp NOT NULL DEFAULT current_timestamp(),
  `N_colocation_possible` int(11) NOT NULL,
  `Photo1` varchar(150) NOT NULL,
  `Photo2` varchar(150) NOT NULL,
  `Photo3` varchar(150) NOT NULL,
  `Photo4` varchar(150) NOT NULL,
  `Photo5` varchar(150) NOT NULL,
  `Id_propriétaire` int(11) NOT NULL,
  `Description_logement` text NOT NULL,
  `Université` varchar(150) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`Id_annonce`, `Titre`, `Adresse`, `Type`, `Prix`, `Logement_meublé`, `Surface`, `N_chambre`, `Date_deposition`, `N_colocation_possible`, `Photo1`, `Photo2`, `Photo3`, `Photo4`, `Photo5`, `Id_propriétaire`, `Description_logement`, `Ville`, `Université`, `Pays`) VALUES
(1, 'Chambre à louer près de la gare des Bénédictins', 'Rue Aristide Briand', 'Chambre', 400, 0, '15', 1, '2024-11-16 10:00:00', 1, '../Annonce_images/62656c1d05b960.99458842.jpg', '', '', '', '', 1, 'Chambre lumineuse idéale pour étudiant, à proximité des commerces et des transports.', 'Limoges', 'Université de Limoges', 'France'),
(2, 'Appartement à louer au centre-ville', 'Rue Jean Jaurès, bâtiment A', 'Appartement', 1200, 1, '65', 2, '2024-11-16 10:30:00', 0, '../Annonce_images/62656c63529e64.64322046.jpg', '', '', '', '', 2, 'Appartement meublé avec cuisine équipée, proche des commodités.', 'Limoges', 'Université de Limoges', 'France'),
(3, 'Chambre à louer à proximité de la Fac de Lettres', 'Rue des Écoles', 'Chambre', 450, 0, '12', 1, '2024-11-16 11:00:00', 0, '../Annonce_images/62656ce76612e6.56773459.jpg', '', '', '', '', 3, 'Chambre cosy pour étudiant, située à deux pas de l’université.', 'Limoges', 'Université de Limoges', 'France'),
(4, 'Bureau à louer au centre d’affaires', 'Rue Turgot, Limoges', 'Bureau', 800, 0, '30', 0, '2024-11-16 11:30:00', 0, '../Annonce_images/62656d4f82d546.07953802.jpg', '', '', '', '', 4, 'Bureau spacieux dans un environnement calme et professionnel.', 'Limoges', '', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `Id_etudiant` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Id_etudiant`, `Nom_utilisateur`, `Email`, `Mot_de_passe`, `photo`) VALUES
(1, 'paul martin', 'paul.martin@etu.unilim.fr', 'password123', ''),
(2, 'jeanne_dubois', 'jeanne.dubois@etu.unilim.fr', 'azerty', ''),
(3, 'etudiant_test', 'etudiant.test@unilim.fr', 'etudiant', ''),
(4, 'camille_dupont', 'camille.dupont@etu.unilim.fr', 'bonjour', ''),
(5, 'nicolas_roux', 'nicolas.roux@etu.unilim.fr', 'securepass', ''),
(6, 'sophie_leclerc', 'sophie.leclerc@etu.unilim.fr', 'mypassword', ''),
(7, 'julien_moreau', 'julien.moreau@etu.unilim.fr', '123456', ''),
(8, 'marie_brun', 'marie.brun@etu.unilim.fr', 'monmotdepasse', ''),
(9, 'antoine_garcia', 'antoine.garcia@etu.unilim.fr', 'pass1234', ''),
(10, 'lucie_blanc', 'lucie.blanc@etu.unilim.fr', 'lucie2024', '');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `Id_message` int(11) NOT NULL,
  `Personne` varchar(20) NOT NULL,
  `Id_personne` int(11) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`Id_message`, `Personne`, `Id_personne`, `Email`, `Message`) VALUES
(1, 'Anonyme', 0, 'paul.martin@etu.unilim.fr', 'Bonjour, je suis intéressé par une annonce.'),
(2, 'Anonyme', 0, 'jeanne.dubois@etu.unilim.fr', 'Est-ce que le logement est toujours disponible ?'),
(3, 'Anonyme', 0, 'camille.dupont@etu.unilim.fr', 'Merci de me rappeler pour plus d’informations.'),
(4, 'Propriétaire', 1, 'proprietaire1@logements-limoges.fr', 'Bonjour, merci pour votre message.'),
(5, 'Étudiant', 2, 'nicolas.roux@etu.unilim.fr', 'Bonjour, je suis intéressé par une visite.'),
(6, 'Anonyme', 0, 'julien.moreau@etu.unilim.fr', 'Pouvez-vous me donner plus de détails sur le logement ?'),
(7, 'Anonyme', 0, 'sophie.leclerc@etu.unilim.fr', 'Quel est le loyer exact ?'),
(8, 'Anonyme', 0, 'marie.brun@etu.unilim.fr', 'Y a-t-il des frais supplémentaires à prévoir ?'),
(9, 'Anonyme', 0, 'antoine.garcia@etu.unilim.fr', 'Puis-je visiter l’appartement ce week-end ?'),
(10, 'Anonyme', 0, 'lucie.blanc@etu.unilim.fr', 'Bonjour, le logement est-il toujours disponible ?'),
(11, 'Anonyme', 0, 'paul.martin@etu.unilim.fr', 'Est-ce que le logement est meublé ?'),
(12, 'Anonyme', 0, 'jeanne.dubois@etu.unilim.fr', 'Y a-t-il un parking à proximité ?'),
(13, 'Anonyme', 0, 'camille.dupont@etu.unilim.fr', 'Merci de me répondre dès que possible.'),
(14, 'Anonyme', 0, 'nicolas.roux@etu.unilim.fr', 'Je suis un étudiant de l’Université de Limoges.'),
(15, 'Anonyme', 0, 'julien.moreau@etu.unilim.fr', 'Le logement est-il accessible en transport en commun ?'),
(16, 'Anonyme', 0, 'marie.brun@etu.unilim.fr', 'Merci pour votre retour rapide.');


-- --------------------------------------------------------

--
-- Structure de la table `propriétaire`
--

CREATE TABLE `propriétaire` (
  `Id_propriétaire` int(11) NOT NULL,
  `Nom_utilisateur` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `Gmail` varchar(50) NOT NULL,
  `Telephone` varchar(13) NOT NULL,
  `Mot_de_passe` varchar(50) NOT NULL,
  `photo` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `propriétaire`
--

INSERT INTO `propriétaire` (`Id_propriétaire`, `Nom_utilisateur`, `Email`, `ville`, `Gmail`, `Telephone`, `Mot_de_passe`, `photo`) VALUES
(1, 'martin_durand', 'martin.durand@logements-limoges.fr', 'Limoges', 'martin.durand@gmail.com', '0654123456', 'password123', ''),
(2, 'sophie_moreau', 'sophie.moreau@logements-limoges.fr', 'Limoges', 'sophie.moreau@gmail.com', '0678123456', 'azerty', ''),
(3, 'camille_brunet', 'camille.brunet@logements-limoges.fr', 'Limoges', 'camille.brunet@gmail.com', '0645236789', 'bonjour', ''),
(4, 'julien_leclerc', 'julien.leclerc@logements-limoges.fr', 'Limoges', 'julien.leclerc@gmail.com', '0667123456', 'securepass', ''),
(5, 'anne_roux', 'anne.roux@logements-limoges.fr', 'Limoges', 'anne.roux@gmail.com', '0634123456', 'mypassword', ''),
(6, 'luc_blanc', 'luc.blanc@logements-limoges.fr', 'Limoges', 'luc.blanc@gmail.com', '0656237890', '123456', ''),
(7, 'marie_garcia', 'marie.garcia@logements-limoges.fr', 'Limoges', 'marie.garcia@gmail.com', '0678541234', 'monmotdepasse', ''),
(8, 'antoine_dubois', 'antoine.dubois@logements-limoges.fr', 'Limoges', 'antoine.dubois@gmail.com', '0647581236', 'antoine2024', ''),
(9, 'juliette_bois', 'juliette.bois@logements-limoges.fr', 'Limoges', 'juliette.bois@gmail.com', '0669874321', 'juliettepass', ''),
(10, 'nicolas_tourel', 'nicolas.tourel@logements-limoges.fr', 'Limoges', 'nicolas.tourel@gmail.com', '0623457891', 'nicolas123', '');


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`Id_administrateur`);

--
-- Index pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`Id_annonce`),
  ADD KEY `Id_propriétaire_fk` (`Id_propriétaire`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`Id_etudiant`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Id_message`);

--
-- Index pour la table `propriétaire`
--
ALTER TABLE `propriétaire`
  ADD PRIMARY KEY (`Id_propriétaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `Id_administrateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `Id_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `Id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `Id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `propriétaire`
--
ALTER TABLE `propriétaire`
  MODIFY `Id_propriétaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
