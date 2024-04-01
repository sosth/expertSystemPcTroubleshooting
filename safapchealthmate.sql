-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 avr. 2024 à 03:02
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `safapchealthmate`
--

-- --------------------------------------------------------

--
-- Structure de la table `problems`
--

CREATE TABLE `problems` (
  `Prblm_id` varchar(255) NOT NULL,
  `Problem_name` varchar(255) DEFAULT NULL,
  `Description` varchar(550) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `problems`
--

INSERT INTO `problems` (`Prblm_id`, `Problem_name`, `Description`) VALUES
('PS001', 'test1', 'test1'),
('PS002', 'test2', 'test2'),
('PS003', 'BIOS/UEFI Corruption', 'The BIOS (Basic Input/Output System) or UEFI (Unified Extensible Firmware Interface) controls hardware initialization and startup processes. Corruption can occur due to firmware updates gone wrong, malware, or power surges. Symptoms include boot failures, error messages during startup, and inability to access BIOS settings.'),
('PS004', 'USB Port Malfunction', 'USB ports allow connection to external devices such as mice, keyboards, and storage drives. Malfunctions can occur due to physical damage, software issues, or power surges. Symptoms include devices not being recognized, intermittent connectivity, and USB devices not receiving power.'),
('PS005', 'Fan Bearing Wear', 'Description: The fan bearings facilitate smooth rotation of the cooling fans. Wear and tear over time can cause grinding or rattling noises. Symptoms include unusual fan noises, decreased cooling efficiency, and overheating due to reduced airflow.'),
('PS006', 'Webcam Failure', 'The webcam allows for video conferencing and capturing images. Failure can occur due to driver issues, software conflicts, or hardware malfunctions. Symptoms include the webcam not being detected, black or distorted images, and error messages when attempting to use the webcam.'),
('PS007', 'Speaker Distortion', 'The laptop\'s speakers produce audio output. Distortion can occur due to damaged speakers, audio driver issues, or software settings. Symptoms include crackling or buzzing sounds, muffled audio, and inconsistent volume levels.'),
('PS008', 'Trackpad Button Failure:', 'The trackpad buttons provide tactile feedback for left and right-click actions. Failure can occur due to wear and tear, physical damage, or debris accumulation. Symptoms include buttons becoming stiff or unresponsive, inconsistent clicking, and difficulty performing click-and-drag actions.'),
('PS009', 'Screen Backlight Dimming', 'The screen backlight illuminates the display for visibility. Dimming can occur due to aging components, power management settings, or software issues. Symptoms include a visibly dim display, uneven backlighting, and difficulty viewing the screen in bright environments.');

-- --------------------------------------------------------

--
-- Structure de la table `rules`
--

CREATE TABLE `rules` (
  `Problem_No` varchar(255) NOT NULL,
  `Problem` varchar(255) DEFAULT NULL,
  `Rule_1` varchar(255) DEFAULT NULL,
  `Rule_2` varchar(255) DEFAULT NULL,
  `Rule_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rules`
--

INSERT INTO `rules` (`Problem_No`, `Problem`, `Rule_1`, `Rule_2`, `Rule_3`) VALUES
('PE001', 'test1', 'test2', 'test3', 'test4'),
('PE002', 'test2', 't', 's', 's'),
('PE003', 'Touchpad Not Working', 'Cursor Movement: The touchpad may fail to respond to finger movements, resulting in an immobile cursor on the screen.', 'Physical Damage: Cracks or scratches on the touchpad surface can impair its functionality.', 'Driver Issues: Outdated or corrupted touchpad drivers can cause malfunctions.'),
('PE004', 'Power Adapter Failure', 'Charging Indicator: The laptop may not indicate that it\'s charging when plugged into the power adapter', 'Intermittent Charging: The laptop may only charge intermittently or require the power adapter to be positioned in a specific way', 'Physical Damage: Damage to the power adapter cable or connector can prevent proper charging'),
('PE005', 'Random Shutdowns', 'No Warning: The laptop may shut down abruptly without any warning or error message', 'Heat-Related: Overheating due to blocked vents or malfunctioning cooling fans can trigger sudden shutdowns as a safety measure', 'Battery Issues: Faulty batteries or power management settings can cause the laptop to shut down unexpectedly, especially when running on battery power'),
('PE006', 'Loud Fan Noise', 'Continuous Operation: The laptop\'s fan may run loudly and continuously even when the system is not under heavy load.', 'Dust Accumulation: Accumulated dust or debris in the laptop\'s cooling system can cause the fan to work harder, leading to louder noise.', 'Overheating: Excessive heat buildup in the laptop due to poor ventilation or thermal issues can cause the fan to work overtime, resulting in loud noise.'),
('PE007', 'Screen Blackouts', 'Intermittent Screen Flickering: The screen may flicker or go black intermittently during use.', 'Backlight Failure: The screen may remain black even though the laptop is powered on, indicating a backlight failure.', 'Loose Connection: Loose connections between the screen and the laptop\'s hardware can cause intermittent blackouts.'),
('PE008', 'Software Crashes', 'Program Freezes: Applications may freeze or become unresponsive during use.d', 'Error Messages: Users may encounter error messages indicating software crashes or failures. ', 'Compatibility Issues: Certain software may not run properly or crash due to compatibility issues with the laptop\'s operating system.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'safa', 'bechchaa', 'safa2002', 'Expert'),
(2, 'sara', 'bechaa', 'sara2002', 'User');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`Prblm_id`);

--
-- Index pour la table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`Problem_No`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
