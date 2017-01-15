-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2017 at 07:19 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `answer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` smallint(5) unsigned NOT NULL,
  `quiz_id` smallint(5) unsigned NOT NULL,
  `answer` text,
  `result` text,
  `digits` float DEFAULT NULL,
  `ordered` tinyint(1) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  UNIQUE KEY `ind_answer_question` (`question_id`,`answer`(150)),
  KEY `fk_a_quiz_id` (`quiz_id`),
  FULLTEXT KEY `ind_answer` (`answer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `quiz_id`, `answer`, `result`, `digits`, `ordered`, `creation_date`) VALUES
(1, 1, 4, '11 octobre 1942', 'N', NULL, NULL, '2016-08-15 19:31:18'),
(2, 1, 4, '8 mai 1945', 'N', NULL, NULL, '2016-08-15 19:31:18'),
(3, 1, 4, '3 septembre 1947', 'N', NULL, NULL, '2016-08-15 19:31:18'),
(4, 1, 4, '5 mars 1946', 'Y', NULL, NULL, '2016-08-15 19:31:18'),
(5, 1, 4, '23 août 1950', 'N', NULL, NULL, '2016-08-15 19:31:18'),
(6, 2, 4, 'La république de Weimar', 'Y', NULL, NULL, '2016-08-15 19:44:16'),
(7, 2, 4, 'La reine Elizabeth', 'N', NULL, NULL, '2016-08-15 19:44:16'),
(8, 2, 4, 'Indira Gandhi', 'N', NULL, NULL, '2016-08-15 19:44:16'),
(9, 2, 4, 'La Communauté européenne du charbon et de l''acier', 'N', NULL, NULL, '2016-08-15 19:44:16'),
(10, 2, 4, 'Svetlana Ražnatović', 'N', NULL, NULL, '2016-08-15 19:44:16'),
(11, 3, 4, 'Jacques Delors', 'N', NULL, NULL, '2016-08-15 19:49:24'),
(12, 3, 4, 'Konrad Adenauer', 'N', NULL, NULL, '2016-08-15 19:49:24'),
(13, 3, 4, 'Winston Churchill', 'N', NULL, NULL, '2016-08-15 19:49:24'),
(14, 3, 4, 'Alcide de Gasperi', 'N', NULL, NULL, '2016-08-15 19:49:24'),
(15, 3, 4, 'Jean Monnet', 'Y', NULL, NULL, '2016-08-15 19:49:24'),
(16, 4, 4, 'L''inauguration du premier TGV', 'N', NULL, NULL, '2016-08-15 20:00:16'),
(17, 5, 4, 'Konstantin Tchernenko', 'N', NULL, NULL, '2016-08-15 21:03:53'),
(18, 5, 4, 'Mikhaïl Gorbatchev', 'N', NULL, NULL, '2016-08-15 21:03:53'),
(19, 5, 4, 'Iouri Andropov', 'Y', NULL, NULL, '2016-08-15 21:03:53'),
(20, 5, 4, 'Erich Honecker', 'N', NULL, NULL, '2016-08-15 21:03:53'),
(21, 5, 4, 'Todor Jivkov', 'N', NULL, NULL, '2016-08-15 21:03:53'),
(22, 6, 2, 'Ismaël', 'Y', NULL, NULL, '2016-08-15 21:14:31'),
(23, 6, 2, 'Isaac', 'N', NULL, NULL, '2016-08-15 21:14:31'),
(24, 6, 2, 'Ibrahim', 'N', NULL, NULL, '2016-08-15 21:14:31'),
(25, 7, 4, 'Abraham, Mohammed', 'N', NULL, NULL, '2016-08-15 21:23:14'),
(26, 7, 4, 'Ali ,Abraham, Jesus, Mohammed', 'N', NULL, NULL, '2016-08-15 21:23:14'),
(27, 7, 4, 'Noé, Moïse, Abraham, Jésus, Mohammed', 'Y', NULL, NULL, '2016-08-15 21:23:14'),
(28, 7, 2, 'Moïse, Abraham, Mohammed', 'N', NULL, NULL, '2016-08-24 20:20:23'),
(29, 7, 2, 'Noé, Jésus, Mohammed, Ali', 'N', NULL, NULL, '2016-08-24 20:32:02'),
(30, 8, 2, 'L''inde', 'N', NULL, NULL, '2016-08-24 20:39:38'),
(31, 8, 2, 'Le Pakistan', 'N', NULL, NULL, '2016-08-24 20:39:38'),
(32, 8, 2, 'Le Bangladesh', 'N', NULL, NULL, '2016-08-24 20:39:38'),
(33, 8, 2, 'L''indonésie', 'Y', NULL, NULL, '2016-08-24 20:39:38'),
(34, 8, 2, 'La Turquie', 'N', NULL, NULL, '2016-08-24 20:40:05'),
(35, 9, 2, 'est convertie au bouddhisme', 'N', NULL, NULL, '2016-08-24 20:54:29'),
(36, 9, 2, 'a réalisé l''éveil', 'Y', NULL, NULL, '2016-08-24 20:54:29'),
(37, 9, 2, 'a realisé le voyage vers l''Au-delà', 'N', NULL, NULL, '2016-08-24 20:54:29'),
(38, 9, 2, 'représente une communauté spirituelle', 'N', NULL, NULL, '2016-08-24 20:54:29'),
(39, 9, 2, 'est réincarnée en leader spirituel', 'N', NULL, NULL, '2016-08-24 20:55:23'),
(40, 10, 2, 'Siddhartha Gautama', 'Y', NULL, NULL, '2016-08-25 09:40:44'),
(41, 10, 2, 'Laozi', 'N', NULL, NULL, '2016-08-25 09:40:44'),
(42, 10, 2, 'Sanatana Dharma', 'N', NULL, NULL, '2016-08-25 09:40:44'),
(43, 10, 2, 'Tripura Tapini Upanishad', 'N', NULL, NULL, '2016-08-25 09:40:44'),
(44, 11, 2, 'Le judaisme', 'N', NULL, NULL, '2016-08-25 09:46:55'),
(45, 11, 2, 'L''Islam', 'N', NULL, NULL, '2016-08-25 09:46:55'),
(46, 11, 2, 'L''hindouisme', 'Y', NULL, NULL, '2016-08-25 09:46:55'),
(47, 11, 2, 'Le christianisme', 'N', NULL, NULL, '2016-08-25 09:46:55'),
(48, 11, 2, 'Le bouddhisme', 'N', NULL, NULL, '2016-08-25 09:46:55'),
(49, 12, 1, '&quot;Citius, altius, fortius&quot; (Plus vite, plus haut, plus fort)', 'N', NULL, NULL, '2016-08-27 17:56:15'),
(50, 12, 1, '&quot;l''important dans la vie ce n''est pas le triomphe mais le combat ; l''essentiel ce n''est pas d''avoir vaincu mais de s''être bien battu&quot;', 'Y', NULL, NULL, '2016-08-27 17:56:15'),
(51, 12, 1, '&quot;l''important dans ces olympiades, c''est moins d''y gagner que d''y prendre part&quot;', 'N', NULL, NULL, '2016-08-27 17:56:15'),
(52, 12, 1, '&quot;D'' où venons-nous, où allons-nous et à quelle heure on mange?&quot;', 'N', NULL, NULL, '2016-08-27 17:56:15'),
(53, 12, 1, '&quot;Entre une mauvaise cuisinière et une empoisonneuse, il n’y a qu’une différence d’intention&quot;', 'N', NULL, NULL, '2016-08-27 17:56:15'),
(54, 13, 1, 'Montreal (été 1976)', 'N', NULL, NULL, '2016-08-27 18:12:23'),
(55, 13, 1, 'Lake Placid (hiver 1980)', 'N', NULL, NULL, '2016-08-27 18:12:23'),
(56, 13, 1, 'Los Angeles (été 1984)', 'Y', NULL, NULL, '2016-08-27 18:12:23'),
(57, 13, 1, 'Nagano (hiver 1998)', 'N', NULL, NULL, '2016-08-27 18:12:23'),
(58, 13, 1, 'Vancouver (hiver 2010)', 'N', NULL, NULL, '2016-08-27 18:12:23'),
(59, 14, 1, 'Etats Unis', 'Y', NULL, NULL, '2016-08-27 18:18:36'),
(60, 14, 1, 'Royaume Uni', 'N', NULL, NULL, '2016-08-27 18:18:36'),
(61, 14, 1, 'France', 'N', NULL, NULL, '2016-08-27 18:18:36'),
(62, 14, 1, 'Canada', 'N', NULL, NULL, '2016-08-27 18:18:36'),
(63, 14, 1, 'Italie', 'N', NULL, NULL, '2016-08-27 18:18:36'),
(64, 15, 3, '22 ans', 'N', NULL, NULL, '2016-08-27 18:21:06'),
(65, 15, 3, '29 ans', 'N', NULL, NULL, '2016-08-27 18:21:06'),
(66, 15, 3, '27 ans', 'N', NULL, NULL, '2016-08-27 18:21:06'),
(67, 15, 3, '28 ans', 'N', NULL, NULL, '2016-08-27 18:21:06'),
(68, 15, 3, '26 ans', 'Y', NULL, NULL, '2016-08-27 18:21:06'),
(69, 16, 1, '1 million d''euros', 'N', NULL, NULL, '2016-08-27 18:27:01'),
(70, 16, 1, '178 milles euros', 'N', NULL, NULL, '2016-08-27 18:27:01'),
(71, 16, 1, '250 milles euros', 'N', NULL, NULL, '2016-08-27 18:27:01'),
(72, 16, 1, '45 milles euros', 'Y', NULL, NULL, '2016-08-27 18:27:01'),
(73, 16, 1, '98 milles euros', 'N', NULL, NULL, '2016-08-27 18:27:01'),
(74, 17, 1, 'Manchester United', 'N', NULL, NULL, '2016-08-27 18:30:40'),
(75, 17, 1, 'FC Barcelona', 'N', NULL, NULL, '2016-08-27 18:30:40'),
(76, 17, 1, 'Real Madrid', 'Y', NULL, NULL, '2016-08-27 18:30:40'),
(77, 17, 1, 'Bayern Munich', 'N', NULL, NULL, '2016-08-27 18:30:40'),
(78, 17, 1, 'Chelsea', 'N', NULL, NULL, '2016-08-27 18:30:40'),
(79, 4, 4, 'L''Irak de Saddam Hussein attaque l''Iran', 'Y', NULL, NULL, '2016-08-27 20:12:44'),
(80, 4, 4, 'Mort de Josip Broz Tito, président de la république socialiste de Yougoslavie', 'N', NULL, NULL, '2016-08-27 20:17:44'),
(81, 4, 4, 'Fondation du syndicat « Solidarność » en Pologne', 'N', NULL, NULL, '2016-08-27 20:19:21'),
(82, 18, 1, '65', 'N', NULL, NULL, '2016-09-07 22:02:16'),
(83, 18, 1, '20', 'N', NULL, NULL, '2016-09-07 22:02:16'),
(84, 18, 1, '34', 'N', NULL, NULL, '2016-09-07 22:02:16'),
(85, 18, 1, '28', 'Y', NULL, NULL, '2016-09-07 22:02:16'),
(86, 18, 1, '16', 'N', NULL, NULL, '2016-09-07 22:02:16'),
(87, 19, 1, 'Se dit des jeux qu''on fêtait tous les 4 ans près d''Olympie du Péloponnèse.', 'Y', NULL, NULL, '2016-09-07 22:34:22'),
(88, 19, 1, 'Se dit de jeux qui comportaient un ensemble de disciplines regroupées en courses, sauts, lancers, épreuves combinées et marche.', 'N', NULL, NULL, '2016-09-07 22:34:22'),
(89, 19, 1, 'Du grec ''Olhos'', il est l''art de dépasser la performance des adversaires en vitesse ou en endurance, en distance ou en hauteur.', 'N', NULL, NULL, '2016-09-07 22:34:22'),
(90, 20, 1, 'Le golf', 'N', NULL, NULL, '2016-09-07 22:41:06'),
(91, 20, 1, 'Le karaté', 'Y', NULL, NULL, '2016-09-07 22:41:06'),
(92, 20, 1, 'BMX', 'N', NULL, NULL, '2016-09-07 22:41:06'),
(93, 20, 1, 'Taekwondo', 'N', NULL, NULL, '2016-09-07 22:41:06'),
(94, 20, 1, 'Trampoline', 'N', NULL, NULL, '2016-09-07 22:41:06'),
(95, 21, 4, 'Le régime d’assemblée', 'N', NULL, NULL, '2016-10-01 20:25:53'),
(96, 21, 4, 'Le régime parlementaire', 'N', NULL, NULL, '2016-10-01 20:26:21'),
(97, 21, 4, 'Le régime présidentiel', 'N', NULL, NULL, '2016-10-01 20:26:50'),
(98, 21, 4, 'Le régime mixte', 'Y', NULL, NULL, '2016-10-01 20:27:14'),
(99, 26, 4, 'En 1979', 'N', NULL, NULL, '2016-10-02 10:26:41'),
(100, 26, 4, 'En 1980', 'N', NULL, NULL, '2016-10-02 10:26:41'),
(101, 26, 4, 'En 1981', 'Y', NULL, NULL, '2016-10-02 10:26:41'),
(102, 26, 4, 'En 1982', 'N', NULL, NULL, '2016-10-02 10:26:41'),
(103, 26, 4, 'En 1983', 'N', NULL, NULL, '2016-10-02 10:26:41'),
(104, 27, 1, '500 000 euros', 'N', NULL, NULL, '2016-10-02 16:00:32'),
(105, 27, 1, '15 000 euros', 'N', NULL, NULL, '2016-10-02 16:00:32'),
(106, 27, 1, '100 000 euros', 'N', NULL, NULL, '2016-10-02 16:00:32'),
(107, 27, 1, '50 000 euros', 'Y', NULL, NULL, '2016-10-02 16:00:32'),
(108, 27, 1, '1 000 000 euros', 'N', NULL, NULL, '2016-10-02 16:00:32'),
(109, 28, 4, 'L''Espagnol', 'N', NULL, NULL, '2016-10-02 16:14:17'),
(110, 28, 4, 'L''Italien', 'N', NULL, NULL, '2016-10-02 16:14:17'),
(111, 28, 4, 'L''Anglais', 'N', NULL, NULL, '2016-10-02 16:14:17'),
(112, 28, 4, 'Le Français', 'Y', NULL, NULL, '2016-10-02 16:14:17'),
(113, 28, 4, 'L''Allemand', 'Y', NULL, NULL, '2016-10-02 16:14:17'),
(114, 29, 1, 'Kosovo', 'Y', NULL, NULL, '2016-10-02 16:45:34'),
(115, 29, 1, 'France', 'N', NULL, NULL, '2016-10-02 16:45:34'),
(116, 29, 1, 'Grande-Bretagne', 'N', NULL, NULL, '2016-10-02 16:45:34'),
(117, 29, 1, 'Singapour', 'Y', NULL, NULL, '2016-10-02 16:45:34'),
(118, 29, 1, 'Macédoine', 'N', NULL, NULL, '2016-10-02 16:45:34'),
(119, 30, 4, 'France', 'N', NULL, NULL, '2016-10-02 16:56:35'),
(120, 30, 4, 'Royaume-Uni', 'Y', NULL, NULL, '2016-10-02 16:56:35'),
(121, 30, 4, 'Allemagne', 'N', NULL, NULL, '2016-10-02 16:56:35'),
(122, 30, 4, 'Italie', 'N', NULL, NULL, '2016-10-02 16:56:35'),
(123, 30, 4, 'Espagne', 'N', NULL, NULL, '2016-10-02 16:56:35'),
(124, 31, 4, 'Royaume-Uni', 'N', NULL, NULL, '2016-10-02 16:59:43'),
(125, 31, 4, 'Allemagne', 'Y', NULL, NULL, '2016-10-02 16:59:43'),
(126, 31, 4, 'France', 'Y', NULL, NULL, '2016-10-02 16:59:43'),
(127, 31, 4, 'Autriche', 'N', NULL, NULL, '2016-10-02 16:59:43'),
(128, 31, 4, 'Espagne', 'N', NULL, NULL, '2016-10-02 16:59:43'),
(131, 35, 4, 'Indonésie', 'N', NULL, NULL, '2016-10-02 21:37:44'),
(132, 35, 4, 'Chine', 'Y', NULL, NULL, '2016-10-02 21:37:44'),
(133, 35, 4, 'Brésil', 'N', NULL, NULL, '2016-10-02 21:37:44'),
(134, 35, 4, 'Inde', 'Y', NULL, NULL, '2016-10-02 21:37:44'),
(135, 35, 4, 'Nigéria', 'Y', NULL, NULL, '2016-10-02 21:37:44'),
(136, 36, 4, 'Les Etats-Unis', 'N', NULL, NULL, '2016-10-02 21:50:14'),
(137, 36, 4, 'L''Union Européenne', 'Y', NULL, NULL, '2016-10-02 21:50:14'),
(138, 36, 4, 'La Chine', 'N', NULL, NULL, '2016-10-02 21:50:14'),
(139, 36, 4, 'Le Japon', 'N', NULL, NULL, '2016-10-02 21:50:14'),
(140, 24, 1, 'Rome', 'N', NULL, NULL, '2016-11-01 20:39:11'),
(141, 24, 1, 'Mexico', 'N', NULL, NULL, '2016-11-01 20:40:09'),
(142, 24, 1, 'Tokyo', 'Y', NULL, NULL, '2016-11-01 20:40:32'),
(143, 24, 1, 'Seoul', 'N', NULL, NULL, '2016-11-01 20:41:17'),
(144, 25, 1, 'Sapporo', 'N', NULL, NULL, '2016-11-01 20:42:05'),
(145, 25, 1, 'Beijing', 'N', NULL, NULL, '2016-11-01 20:43:18'),
(146, 25, 1, 'Oslo', 'N', NULL, NULL, '2016-11-01 20:44:29'),
(147, 25, 1, 'Pyeongchang', 'Y', NULL, NULL, '2016-11-01 20:46:06'),
(148, 22, 4, '1954', 'N', NULL, NULL, '2016-11-09 19:55:45'),
(149, 22, 4, '1944', 'N', NULL, NULL, '2016-11-09 19:56:58'),
(150, 22, 4, '1947', 'N', NULL, NULL, '2016-11-09 19:57:37'),
(151, 22, 4, '1945', 'Y', NULL, NULL, '2016-11-09 19:58:12'),
(152, 23, 3, 'Johan Cruyff', 'N', NULL, NULL, '2016-11-09 20:02:09'),
(153, 23, 3, 'Cristiano Ronaldo', 'N', NULL, NULL, '2016-11-09 20:02:49'),
(154, 23, 3, 'Lionel Messi', 'Y', NULL, NULL, '2016-11-09 20:03:16'),
(155, 23, 3, 'Michel Platini', 'N', NULL, NULL, '2016-11-09 20:03:43'),
(156, 23, 3, 'Marco van Basten', 'N', NULL, NULL, '2016-11-09 20:04:44'),
(157, 34, 2, 'Afghanistan', 'N', NULL, NULL, '2016-11-09 20:06:56'),
(158, 34, 2, 'Irak', 'Y', NULL, NULL, '2016-11-09 20:07:28'),
(159, 34, 2, 'Yémen', 'N', NULL, NULL, '2016-11-09 20:08:10'),
(160, 34, 2, 'Qatar', 'N', NULL, NULL, '2016-11-09 20:08:50'),
(161, 34, 2, 'Bahrein', 'Y', NULL, NULL, '2016-11-09 20:09:23'),
(162, 39, 3, NULL, NULL, 5, NULL, '2016-11-23 19:41:32'),
(163, 40, 3, NULL, NULL, 45, NULL, '2016-11-23 19:47:15'),
(164, 41, 1, NULL, NULL, 90, NULL, '2016-11-23 21:06:47'),
(166, 42, 3, NULL, NULL, 4, NULL, '2016-11-23 21:13:40'),
(167, 43, 3, 'Arjen Robben', NULL, NULL, 3, '2016-11-26 15:54:58'),
(171, 50, 1, 'Marion Jones', 'Y', NULL, NULL, '2016-11-27 16:15:41'),
(172, 50, 1, 'Tyson Gay', 'N', NULL, NULL, '2016-11-27 16:15:41'),
(173, 50, 1, 'Margaryta Tverdokhlib', 'N', NULL, NULL, '2016-11-27 16:15:41'),
(174, 50, 1, 'Ben Johnson', 'N', NULL, NULL, '2016-11-27 16:15:41'),
(175, 50, 1, 'Shelly Ann Fraser', 'N', NULL, NULL, '2016-11-27 16:15:41'),
(176, 45, 1, 'Tyson Gray', NULL, NULL, 3, '2016-11-27 22:04:15'),
(177, 45, 1, 'Yohan Blake', NULL, NULL, 2, '2016-11-27 22:05:36'),
(178, 45, 1, 'Usain Bolt', NULL, NULL, 1, '2016-11-27 22:06:16'),
(179, 43, 3, 'Cristiano Ronaldo', NULL, NULL, 1, '2016-11-28 21:17:10'),
(180, 43, 3, 'Neymar da Silva Santos', NULL, NULL, 2, '2016-11-28 21:18:28'),
(181, 51, 3, 'Andorre', NULL, NULL, 3, '2016-12-03 19:03:19'),
(182, 51, 3, 'Gibraltar', NULL, NULL, 1, '2016-12-03 19:03:19'),
(183, 51, 3, 'Saint-Marin', NULL, NULL, 2, '2016-12-03 19:03:19'),
(184, 52, 1, NULL, NULL, 10, NULL, '2016-12-04 21:55:34'),
(185, 53, 1, NULL, NULL, 8, NULL, '2016-12-04 22:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `historic_answers`
--

CREATE TABLE IF NOT EXISTS `historic_answers` (
  `historic_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL,
  `question_id` smallint(5) unsigned NOT NULL,
  `result_id` smallint(5) unsigned NOT NULL,
  `user_answer_id` smallint(5) unsigned DEFAULT NULL,
  `user_answer_digit` float unsigned DEFAULT NULL,
  `user_answer_order` tinyint(1) unsigned DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`historic_id`),
  KEY `fk_h_user_id` (`user_id`),
  KEY `fk_h_question_id` (`question_id`),
  KEY `fk_h_result_id` (`result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=285 ;

--
-- Dumping data for table `historic_answers`
--

INSERT INTO `historic_answers` (`historic_id`, `user_id`, `question_id`, `result_id`, `user_answer_id`, `user_answer_digit`, `user_answer_order`, `creation_date`) VALUES
(1, 7, 12, 12, 49, NULL, NULL, '2017-01-03 22:34:06'),
(2, 7, 12, 13, 49, NULL, NULL, '2017-01-03 22:45:56'),
(3, 7, 13, 13, 54, NULL, NULL, '2017-01-03 22:45:56'),
(4, 7, 14, 13, 59, NULL, NULL, '2017-01-03 22:45:56'),
(5, 7, 18, 13, 83, NULL, NULL, '2017-01-03 22:45:56'),
(6, 7, 19, 13, 87, NULL, NULL, '2017-01-03 22:45:56'),
(7, 7, 20, 13, 91, NULL, NULL, '2017-01-03 22:45:56'),
(8, 7, 24, 13, 142, NULL, NULL, '2017-01-03 22:45:56'),
(9, 7, 25, 13, 147, NULL, NULL, '2017-01-03 22:45:56'),
(10, 7, 27, 13, 107, NULL, NULL, '2017-01-03 22:45:56'),
(11, 7, 50, 13, 172, NULL, NULL, '2017-01-03 22:45:56'),
(12, 7, 29, 13, 114, NULL, NULL, '2017-01-03 22:45:56'),
(13, 7, 29, 13, 115, NULL, NULL, '2017-01-03 22:45:56'),
(19, 7, 12, 22, 49, NULL, NULL, '2017-01-04 13:38:30'),
(20, 7, 13, 22, 54, NULL, NULL, '2017-01-04 13:38:30'),
(21, 7, 14, 22, 59, NULL, NULL, '2017-01-04 13:38:30'),
(22, 7, 18, 22, 82, NULL, NULL, '2017-01-04 13:38:30'),
(23, 7, 19, 22, 87, NULL, NULL, '2017-01-04 13:38:30'),
(24, 7, 20, 22, 90, NULL, NULL, '2017-01-04 13:38:30'),
(25, 7, 24, 22, 140, NULL, NULL, '2017-01-04 13:38:30'),
(26, 7, 25, 22, 144, NULL, NULL, '2017-01-04 13:38:30'),
(27, 7, 27, 22, 107, NULL, NULL, '2017-01-04 13:38:30'),
(28, 7, 50, 22, 172, NULL, NULL, '2017-01-04 13:38:30'),
(29, 7, 29, 22, 114, NULL, NULL, '2017-01-04 13:38:30'),
(30, 7, 29, 22, 117, NULL, NULL, '2017-01-04 13:38:30'),
(31, 7, 45, 22, 176, NULL, 3, '2017-01-04 13:38:30'),
(32, 7, 45, 22, 177, NULL, 2, '2017-01-04 13:38:30'),
(33, 7, 45, 22, 178, NULL, 1, '2017-01-04 13:38:30'),
(34, 7, 52, 22, NULL, 10, NULL, '2017-01-04 13:38:30'),
(35, 7, 53, 22, NULL, 8, NULL, '2017-01-04 13:38:30'),
(36, 7, 15, 23, 68, NULL, NULL, '2017-01-08 19:55:18'),
(37, 7, 16, 23, 72, NULL, NULL, '2017-01-08 19:55:18'),
(38, 7, 17, 23, 76, NULL, NULL, '2017-01-08 19:55:18'),
(39, 7, 23, 23, 152, NULL, NULL, '2017-01-08 19:55:18'),
(40, 7, 43, 23, 167, NULL, 3, '2017-01-08 19:55:18'),
(41, 7, 43, 23, 179, NULL, 1, '2017-01-08 19:55:18'),
(42, 7, 43, 23, 180, NULL, 2, '2017-01-08 19:55:18'),
(43, 7, 51, 23, 181, NULL, 3, '2017-01-08 19:55:18'),
(44, 7, 51, 23, 182, NULL, 2, '2017-01-08 19:55:18'),
(45, 7, 51, 23, 183, NULL, 1, '2017-01-08 19:55:18'),
(46, 7, 39, 23, NULL, 5, NULL, '2017-01-08 19:55:18'),
(47, 7, 40, 23, NULL, 45, NULL, '2017-01-08 19:55:18'),
(48, 7, 41, 23, NULL, 100, NULL, '2017-01-08 19:55:18'),
(49, 7, 42, 23, NULL, 4, NULL, '2017-01-08 19:55:18'),
(50, 10, 6, 24, 22, NULL, NULL, '2017-01-08 22:01:09'),
(51, 10, 7, 24, 25, NULL, NULL, '2017-01-08 22:01:09'),
(52, 10, 8, 24, 30, NULL, NULL, '2017-01-08 22:01:09'),
(53, 10, 9, 24, 35, NULL, NULL, '2017-01-08 22:01:09'),
(54, 10, 10, 24, 40, NULL, NULL, '2017-01-08 22:01:09'),
(55, 10, 11, 24, 44, NULL, NULL, '2017-01-08 22:01:09'),
(56, 10, 34, 24, 157, NULL, NULL, '2017-01-08 22:01:09'),
(57, 10, 6, 25, 22, NULL, NULL, '2017-01-08 22:05:09'),
(58, 10, 7, 25, 27, NULL, NULL, '2017-01-08 22:05:09'),
(59, 10, 8, 25, 33, NULL, NULL, '2017-01-08 22:05:09'),
(60, 10, 9, 25, 36, NULL, NULL, '2017-01-08 22:05:09'),
(61, 10, 10, 25, 41, NULL, NULL, '2017-01-08 22:05:09'),
(62, 10, 11, 25, 46, NULL, NULL, '2017-01-08 22:05:09'),
(63, 10, 34, 25, 157, NULL, NULL, '2017-01-08 22:05:09'),
(64, 10, 6, 26, 22, NULL, NULL, '2017-01-08 22:08:38'),
(65, 10, 7, 26, 27, NULL, NULL, '2017-01-08 22:08:38'),
(66, 10, 8, 26, 33, NULL, NULL, '2017-01-08 22:08:38'),
(67, 10, 9, 26, 39, NULL, NULL, '2017-01-08 22:08:38'),
(68, 10, 10, 26, 43, NULL, NULL, '2017-01-08 22:08:38'),
(69, 10, 11, 26, 46, NULL, NULL, '2017-01-08 22:08:38'),
(70, 10, 34, 26, 157, NULL, NULL, '2017-01-08 22:08:38'),
(71, 11, 12, 27, 49, NULL, NULL, '2017-01-14 16:53:58'),
(72, 11, 13, 27, 54, NULL, NULL, '2017-01-14 16:53:58'),
(73, 11, 14, 27, 59, NULL, NULL, '2017-01-14 16:53:58'),
(74, 11, 18, 27, 82, NULL, NULL, '2017-01-14 16:53:58'),
(75, 11, 19, 27, 87, NULL, NULL, '2017-01-14 16:53:58'),
(76, 11, 20, 27, 90, NULL, NULL, '2017-01-14 16:53:58'),
(77, 11, 24, 27, 140, NULL, NULL, '2017-01-14 16:53:58'),
(78, 11, 25, 27, 144, NULL, NULL, '2017-01-14 16:53:58'),
(79, 11, 27, 27, 104, NULL, NULL, '2017-01-14 16:53:58'),
(80, 11, 50, 27, 171, NULL, NULL, '2017-01-14 16:53:58'),
(81, 11, 29, 27, 114, NULL, NULL, '2017-01-14 16:53:58'),
(82, 11, 29, 27, 115, NULL, NULL, '2017-01-14 16:53:58'),
(83, 11, 29, 27, 116, NULL, NULL, '2017-01-14 16:53:58'),
(84, 11, 45, 27, 176, NULL, 3, '2017-01-14 16:53:58'),
(85, 11, 45, 27, 177, NULL, 2, '2017-01-14 16:53:58'),
(86, 11, 45, 27, 178, NULL, 1, '2017-01-14 16:53:58'),
(87, 11, 52, 27, NULL, 8, NULL, '2017-01-14 16:53:58'),
(88, 11, 53, 27, NULL, 8, NULL, '2017-01-14 16:53:58'),
(89, 11, 12, 28, 49, NULL, NULL, '2017-01-14 16:57:13'),
(90, 11, 13, 28, 56, NULL, NULL, '2017-01-14 16:57:13'),
(91, 11, 14, 28, 59, NULL, NULL, '2017-01-14 16:57:13'),
(92, 11, 18, 28, 83, NULL, NULL, '2017-01-14 16:57:13'),
(93, 11, 19, 28, 87, NULL, NULL, '2017-01-14 16:57:13'),
(94, 11, 20, 28, 90, NULL, NULL, '2017-01-14 16:57:13'),
(95, 11, 24, 28, 142, NULL, NULL, '2017-01-14 16:57:13'),
(96, 11, 25, 28, 147, NULL, NULL, '2017-01-14 16:57:13'),
(97, 11, 27, 28, 107, NULL, NULL, '2017-01-14 16:57:13'),
(98, 11, 50, 28, 171, NULL, NULL, '2017-01-14 16:57:13'),
(99, 11, 29, 28, 114, NULL, NULL, '2017-01-14 16:57:13'),
(100, 11, 29, 28, 117, NULL, NULL, '2017-01-14 16:57:13'),
(101, 11, 45, 28, 176, NULL, 3, '2017-01-14 16:57:13'),
(102, 11, 45, 28, 177, NULL, 2, '2017-01-14 16:57:13'),
(103, 11, 45, 28, 178, NULL, 1, '2017-01-14 16:57:13'),
(104, 11, 52, 28, NULL, 10, NULL, '2017-01-14 16:57:13'),
(105, 11, 53, 28, NULL, 8, NULL, '2017-01-14 16:57:13'),
(106, 9, 12, 29, 49, NULL, NULL, '2017-01-14 20:57:31'),
(107, 9, 13, 29, 54, NULL, NULL, '2017-01-14 20:57:31'),
(108, 9, 14, 29, 59, NULL, NULL, '2017-01-14 20:57:31'),
(109, 9, 18, 29, 82, NULL, NULL, '2017-01-14 20:57:31'),
(110, 9, 19, 29, 87, NULL, NULL, '2017-01-14 20:57:31'),
(111, 9, 20, 29, 90, NULL, NULL, '2017-01-14 20:57:31'),
(112, 9, 24, 29, 140, NULL, NULL, '2017-01-14 20:57:31'),
(113, 9, 25, 29, 144, NULL, NULL, '2017-01-14 20:57:31'),
(114, 9, 27, 29, 107, NULL, NULL, '2017-01-14 20:57:31'),
(115, 9, 50, 29, 171, NULL, NULL, '2017-01-14 20:57:31'),
(116, 9, 29, 29, 114, NULL, NULL, '2017-01-14 20:57:31'),
(117, 9, 29, 29, 117, NULL, NULL, '2017-01-14 20:57:31'),
(118, 9, 45, 29, 176, NULL, 3, '2017-01-14 20:57:31'),
(119, 9, 45, 29, 177, NULL, 2, '2017-01-14 20:57:31'),
(120, 9, 45, 29, 178, NULL, 1, '2017-01-14 20:57:31'),
(121, 9, 52, 29, NULL, 10, NULL, '2017-01-14 20:57:31'),
(122, 9, 53, 29, NULL, 8, NULL, '2017-01-14 20:57:31'),
(123, 7, 12, 30, 49, NULL, NULL, '2017-01-14 20:59:32'),
(124, 7, 13, 30, 56, NULL, NULL, '2017-01-14 20:59:32'),
(125, 7, 14, 30, 59, NULL, NULL, '2017-01-14 20:59:32'),
(126, 7, 18, 30, 85, NULL, NULL, '2017-01-14 20:59:32'),
(127, 7, 19, 30, 87, NULL, NULL, '2017-01-14 20:59:32'),
(128, 7, 20, 30, 91, NULL, NULL, '2017-01-14 20:59:32'),
(129, 7, 24, 30, 143, NULL, NULL, '2017-01-14 20:59:32'),
(130, 7, 25, 30, 145, NULL, NULL, '2017-01-14 20:59:33'),
(131, 7, 27, 30, 106, NULL, NULL, '2017-01-14 20:59:33'),
(132, 7, 50, 30, 171, NULL, NULL, '2017-01-14 20:59:33'),
(133, 7, 29, 30, 116, NULL, NULL, '2017-01-14 20:59:33'),
(134, 7, 45, 30, 176, NULL, 1, '2017-01-14 20:59:33'),
(135, 7, 45, 30, 177, NULL, 3, '2017-01-14 20:59:33'),
(136, 7, 45, 30, 178, NULL, 2, '2017-01-14 20:59:33'),
(137, 7, 52, 30, NULL, 10, NULL, '2017-01-14 20:59:33'),
(138, 7, 53, 30, NULL, 8, NULL, '2017-01-14 20:59:33'),
(139, 7, 12, 31, 49, NULL, NULL, '2017-01-14 21:19:14'),
(140, 7, 13, 31, 54, NULL, NULL, '2017-01-14 21:19:14'),
(141, 7, 14, 31, 59, NULL, NULL, '2017-01-14 21:19:14'),
(142, 7, 18, 31, 83, NULL, NULL, '2017-01-14 21:19:14'),
(143, 7, 19, 31, 88, NULL, NULL, '2017-01-14 21:19:14'),
(144, 7, 20, 31, 90, NULL, NULL, '2017-01-14 21:19:14'),
(145, 7, 24, 31, 141, NULL, NULL, '2017-01-14 21:19:14'),
(146, 7, 25, 31, 145, NULL, NULL, '2017-01-14 21:19:14'),
(147, 7, 27, 31, 107, NULL, NULL, '2017-01-14 21:19:14'),
(148, 7, 50, 31, 171, NULL, NULL, '2017-01-14 21:19:14'),
(149, 7, 29, 31, 115, NULL, NULL, '2017-01-14 21:19:14'),
(150, 7, 29, 31, 117, NULL, NULL, '2017-01-14 21:19:14'),
(151, 7, 45, 31, 176, NULL, 1, '2017-01-14 21:19:14'),
(152, 7, 45, 31, 177, NULL, 2, '2017-01-14 21:19:14'),
(153, 7, 45, 31, 178, NULL, 3, '2017-01-14 21:19:14'),
(154, 7, 52, 31, NULL, 2, NULL, '2017-01-14 21:19:14'),
(155, 7, 53, 31, NULL, 2, NULL, '2017-01-14 21:19:14'),
(156, 11, 12, 32, 50, NULL, NULL, '2017-01-14 21:40:55'),
(157, 11, 13, 32, 56, NULL, NULL, '2017-01-14 21:40:55'),
(158, 11, 14, 32, 59, NULL, NULL, '2017-01-14 21:40:55'),
(159, 11, 18, 32, 84, NULL, NULL, '2017-01-14 21:40:55'),
(160, 11, 19, 32, 87, NULL, NULL, '2017-01-14 21:40:55'),
(161, 11, 20, 32, 90, NULL, NULL, '2017-01-14 21:40:55'),
(162, 11, 24, 32, 140, NULL, NULL, '2017-01-14 21:40:55'),
(163, 11, 25, 32, 144, NULL, NULL, '2017-01-14 21:40:55'),
(164, 11, 27, 32, 107, NULL, NULL, '2017-01-14 21:40:55'),
(165, 11, 50, 32, 173, NULL, NULL, '2017-01-14 21:40:55'),
(166, 11, 29, 32, 115, NULL, NULL, '2017-01-14 21:40:55'),
(167, 11, 45, 32, 176, NULL, 1, '2017-01-14 21:40:55'),
(168, 11, 45, 32, 177, NULL, 2, '2017-01-14 21:40:55'),
(169, 11, 45, 32, 178, NULL, 3, '2017-01-14 21:40:55'),
(170, 11, 52, 32, NULL, 10, NULL, '2017-01-14 21:40:55'),
(171, 11, 53, 32, NULL, 6, NULL, '2017-01-14 21:40:55'),
(172, 11, 12, 33, 49, NULL, NULL, '2017-01-14 21:46:44'),
(173, 11, 13, 33, 55, NULL, NULL, '2017-01-14 21:46:44'),
(174, 11, 14, 33, 61, NULL, NULL, '2017-01-14 21:46:44'),
(175, 11, 18, 33, 82, NULL, NULL, '2017-01-14 21:46:44'),
(176, 11, 19, 33, 88, NULL, NULL, '2017-01-14 21:46:44'),
(177, 11, 20, 33, 92, NULL, NULL, '2017-01-14 21:46:44'),
(178, 11, 24, 33, 140, NULL, NULL, '2017-01-14 21:46:44'),
(179, 11, 25, 33, 144, NULL, NULL, '2017-01-14 21:46:44'),
(180, 11, 27, 33, 105, NULL, NULL, '2017-01-14 21:46:44'),
(181, 11, 50, 33, 171, NULL, NULL, '2017-01-14 21:46:44'),
(182, 11, 29, 33, 114, NULL, NULL, '2017-01-14 21:46:44'),
(183, 11, 29, 33, 117, NULL, NULL, '2017-01-14 21:46:44'),
(184, 11, 45, 33, 176, NULL, 3, '2017-01-14 21:46:44'),
(185, 11, 45, 33, 177, NULL, 2, '2017-01-14 21:46:44'),
(186, 11, 45, 33, 178, NULL, 1, '2017-01-14 21:46:44'),
(187, 11, 52, 33, NULL, 3, NULL, '2017-01-14 21:46:44'),
(188, 11, 53, 33, NULL, 8, NULL, '2017-01-14 21:46:44'),
(189, 11, 12, 34, 49, NULL, NULL, '2017-01-15 18:50:56'),
(190, 11, 13, 34, 54, NULL, NULL, '2017-01-15 18:50:56'),
(191, 11, 14, 34, 59, NULL, NULL, '2017-01-15 18:50:56'),
(192, 11, 18, 34, 82, NULL, NULL, '2017-01-15 18:50:56'),
(193, 11, 19, 34, 87, NULL, NULL, '2017-01-15 18:50:56'),
(194, 11, 20, 34, 91, NULL, NULL, '2017-01-15 18:50:56'),
(195, 11, 24, 34, 142, NULL, NULL, '2017-01-15 18:50:56'),
(196, 11, 25, 34, 147, NULL, NULL, '2017-01-15 18:50:56'),
(197, 11, 27, 34, 107, NULL, NULL, '2017-01-15 18:50:56'),
(198, 11, 50, 34, 171, NULL, NULL, '2017-01-15 18:50:56'),
(199, 11, 29, 34, 114, NULL, NULL, '2017-01-15 18:50:56'),
(200, 11, 29, 34, 117, NULL, NULL, '2017-01-15 18:50:56'),
(201, 11, 45, 34, 176, NULL, 3, '2017-01-15 18:50:56'),
(202, 11, 45, 34, 177, NULL, 2, '2017-01-15 18:50:56'),
(203, 11, 45, 34, 178, NULL, 1, '2017-01-15 18:50:56'),
(204, 11, 52, 34, NULL, 0, NULL, '2017-01-15 18:50:56'),
(205, 11, 53, 34, NULL, 0, NULL, '2017-01-15 18:50:56'),
(206, 11, 12, 35, 49, NULL, NULL, '2017-01-15 18:53:25'),
(207, 11, 13, 35, 54, NULL, NULL, '2017-01-15 18:53:25'),
(208, 11, 14, 35, 59, NULL, NULL, '2017-01-15 18:53:25'),
(209, 11, 18, 35, 85, NULL, NULL, '2017-01-15 18:53:25'),
(210, 11, 19, 35, 87, NULL, NULL, '2017-01-15 18:53:25'),
(211, 11, 20, 35, 91, NULL, NULL, '2017-01-15 18:53:25'),
(212, 11, 24, 35, 140, NULL, NULL, '2017-01-15 18:53:25'),
(213, 11, 25, 35, 144, NULL, NULL, '2017-01-15 18:53:25'),
(214, 11, 27, 35, 104, NULL, NULL, '2017-01-15 18:53:25'),
(215, 11, 50, 35, 171, NULL, NULL, '2017-01-15 18:53:25'),
(216, 11, 29, 35, 114, NULL, NULL, '2017-01-15 18:53:26'),
(217, 11, 45, 35, 176, NULL, 1, '2017-01-15 18:53:26'),
(218, 11, 45, 35, 177, NULL, 0, '2017-01-15 18:53:26'),
(219, 11, 45, 35, 178, NULL, 0, '2017-01-15 18:53:26'),
(220, 11, 52, 35, NULL, 1, NULL, '2017-01-15 18:53:26'),
(221, 11, 53, 35, NULL, 1, NULL, '2017-01-15 18:53:26'),
(222, 11, 15, 36, 64, NULL, NULL, '2017-01-15 18:58:56'),
(223, 11, 16, 36, 69, NULL, NULL, '2017-01-15 18:58:56'),
(224, 11, 17, 36, 74, NULL, NULL, '2017-01-15 18:58:56'),
(225, 11, 23, 36, 152, NULL, NULL, '2017-01-15 18:58:56'),
(226, 11, 43, 36, 167, NULL, 1, '2017-01-15 18:58:56'),
(227, 11, 43, 36, 179, NULL, 1, '2017-01-15 18:58:56'),
(228, 11, 43, 36, 180, NULL, 2, '2017-01-15 18:58:56'),
(229, 11, 51, 36, 181, NULL, 2, '2017-01-15 18:58:56'),
(230, 11, 51, 36, 182, NULL, 1, '2017-01-15 18:58:56'),
(231, 11, 51, 36, 183, NULL, 2, '2017-01-15 18:58:56'),
(232, 11, 39, 36, NULL, 1, NULL, '2017-01-15 18:58:56'),
(233, 11, 40, 36, NULL, 1, NULL, '2017-01-15 18:58:56'),
(234, 11, 41, 36, NULL, 1, NULL, '2017-01-15 18:58:56'),
(235, 11, 42, 36, NULL, 1, NULL, '2017-01-15 18:58:56'),
(236, 11, 15, 37, 64, NULL, NULL, '2017-01-15 19:03:37'),
(237, 11, 16, 37, 69, NULL, NULL, '2017-01-15 19:03:37'),
(238, 11, 17, 37, 76, NULL, NULL, '2017-01-15 19:03:37'),
(239, 11, 23, 37, 152, NULL, NULL, '2017-01-15 19:03:37'),
(240, 11, 43, 37, 167, NULL, 1, '2017-01-15 19:03:37'),
(241, 11, 43, 37, 179, NULL, 1, '2017-01-15 19:03:37'),
(242, 11, 43, 37, 180, NULL, 1, '2017-01-15 19:03:37'),
(243, 11, 51, 37, 181, NULL, 1, '2017-01-15 19:03:37'),
(244, 11, 51, 37, 182, NULL, 1, '2017-01-15 19:03:37'),
(245, 11, 51, 37, 183, NULL, 1, '2017-01-15 19:03:37'),
(246, 11, 39, 37, NULL, 5, NULL, '2017-01-15 19:03:37'),
(247, 11, 40, 37, NULL, 45, NULL, '2017-01-15 19:03:37'),
(248, 11, 41, 37, NULL, 90, NULL, '2017-01-15 19:03:37'),
(249, 11, 42, 37, NULL, 2, NULL, '2017-01-15 19:03:37'),
(250, 11, 15, 38, 64, NULL, NULL, '2017-01-15 19:06:00'),
(251, 11, 16, 38, 69, NULL, NULL, '2017-01-15 19:06:00'),
(252, 11, 17, 38, 76, NULL, NULL, '2017-01-15 19:06:00'),
(253, 11, 23, 38, 152, NULL, NULL, '2017-01-15 19:06:00'),
(254, 11, 43, 38, 167, NULL, 1, '2017-01-15 19:06:00'),
(255, 11, 43, 38, 179, NULL, 1, '2017-01-15 19:06:00'),
(256, 11, 43, 38, 180, NULL, 1, '2017-01-15 19:06:00'),
(257, 11, 51, 38, 181, NULL, 1, '2017-01-15 19:06:00'),
(258, 11, 51, 38, 182, NULL, 1, '2017-01-15 19:06:00'),
(259, 11, 51, 38, 183, NULL, 1, '2017-01-15 19:06:00'),
(260, 11, 39, 38, NULL, 5, NULL, '2017-01-15 19:06:00'),
(261, 11, 40, 38, NULL, 45, NULL, '2017-01-15 19:06:00'),
(262, 11, 41, 38, NULL, 90, NULL, '2017-01-15 19:06:00'),
(263, 11, 42, 38, NULL, 2, NULL, '2017-01-15 19:06:00'),
(264, 11, 15, 39, 66, NULL, NULL, '2017-01-15 19:07:27'),
(265, 11, 16, 39, 72, NULL, NULL, '2017-01-15 19:07:27'),
(266, 11, 17, 39, 78, NULL, NULL, '2017-01-15 19:07:27'),
(267, 11, 23, 39, 152, NULL, NULL, '2017-01-15 19:07:27'),
(268, 11, 43, 39, 167, NULL, 1, '2017-01-15 19:07:27'),
(269, 11, 43, 39, 179, NULL, 2, '2017-01-15 19:07:27'),
(270, 11, 43, 39, 180, NULL, 2, '2017-01-15 19:07:27'),
(271, 11, 51, 39, 181, NULL, 1, '2017-01-15 19:07:27'),
(272, 11, 51, 39, 182, NULL, 2, '2017-01-15 19:07:27'),
(273, 11, 51, 39, 183, NULL, 3, '2017-01-15 19:07:27'),
(274, 11, 39, 39, NULL, 5, NULL, '2017-01-15 19:07:27'),
(275, 11, 40, 39, NULL, 20, NULL, '2017-01-15 19:07:27'),
(276, 11, 41, 39, NULL, 30, NULL, '2017-01-15 19:07:27'),
(277, 11, 42, 39, NULL, 3, NULL, '2017-01-15 19:07:27'),
(278, 11, 6, 40, 23, NULL, NULL, '2017-01-15 19:10:04'),
(279, 11, 7, 40, 27, NULL, NULL, '2017-01-15 19:10:04'),
(280, 11, 8, 40, 33, NULL, NULL, '2017-01-15 19:10:04'),
(281, 11, 9, 40, 36, NULL, NULL, '2017-01-15 19:10:04'),
(282, 11, 10, 40, 41, NULL, NULL, '2017-01-15 19:10:04'),
(283, 11, 11, 40, 46, NULL, NULL, '2017-01-15 19:10:04'),
(284, 11, 34, 40, 159, NULL, NULL, '2017-01-15 19:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` smallint(5) unsigned NOT NULL,
  `question` text NOT NULL,
  `multiple_answers` char(1) NOT NULL DEFAULT 'N',
  `digits` char(1) DEFAULT 'N',
  `ordered` char(1) DEFAULT 'N',
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `ind_question` (`question`(150)),
  KEY `fk_q_quiz_id` (`quiz_id`),
  FULLTEXT KEY `ind_search_question` (`question`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `quiz_id`, `question`, `multiple_answers`, `digits`, `ordered`, `creation_date`) VALUES
(1, 4, 'Quelle est la date marquant le début de la guerre froide?', 'N', 'N', 'N', '2016-08-15 19:31:18'),
(2, 4, 'Qui est né le 6 février 1919?', 'N', 'N', 'N', '2016-08-15 19:44:16'),
(3, 4, 'Qui appelle t''on le « Père de l''Europe »?', 'N', 'N', 'N', '2016-08-15 19:49:24'),
(4, 4, 'Que s''est-il passé le 22 septembre 1980?', 'N', 'N', 'N', '2016-08-15 20:00:16'),
(5, 4, 'Qui succède à Léonid Brejnev au poste de secrétaire général du PCUS?', 'N', 'N', 'N', '2016-08-15 21:03:53'),
(6, 2, 'Dans la tradition musulmane, qui est le fils qu’Abraham doit sacrifier à Dieu?', 'N', 'N', 'N', '2016-08-15 21:14:31'),
(7, 2, 'D''après la tradition musulmane, qui sont les prophètes envoyés par Dieux?', 'N', 'N', 'N', '2016-08-15 21:23:14'),
(8, 2, 'Quel est le pays qui compte le plus de musulmans?', 'N', 'N', 'N', '2016-08-24 20:39:38'),
(9, 2, 'Le terme ''Bouddha'' signifie qu''une personne...', 'N', 'N', 'N', '2016-08-24 20:54:29'),
(10, 2, 'Qui est le fondateur du bouddhisme?', 'N', 'N', 'N', '2016-08-25 09:40:44'),
(11, 2, 'Quelle est la religion la plus ancienne?', 'N', 'N', 'N', '2016-08-25 09:46:55'),
(12, 1, 'Quelle devise émane de Pierre de Coubertin?', 'N', 'N', 'N', '2016-08-27 17:56:15'),
(13, 1, 'Quelle est la seule ville qui a réalisé un bénéfice en organisant les JO?', 'N', 'N', 'N', '2016-08-27 18:12:23'),
(14, 1, 'Quel est le pays qui a le plus organisé les JO?', 'N', 'N', 'N', '2016-08-27 18:18:36'),
(15, 3, 'Quelle la moyenne d''âge d''un footballeur pro en Europe?', 'N', 'N', 'N', '2016-08-27 18:21:06'),
(16, 3, 'Quel est le salaire moyen d''un footballeur en ligue 1 (2014)?', 'N', 'N', 'N', '2016-08-27 18:27:01'),
(17, 3, 'Quel est le club le plus riche au monde en 2016?', 'N', 'N', 'N', '2016-08-27 18:30:40'),
(18, 1, 'Combien de sport sont représentés aux JO de Rio (2016)?', 'N', 'N', 'N', '2016-09-07 22:02:16'),
(19, 1, 'Que signifie &quot;Olympique&quot;?', 'N', 'N', 'N', '2016-09-07 22:34:22'),
(20, 1, 'Quel sport ne figurait pas aux JO de Rio (2016)?', 'N', 'N', 'N', '2016-09-07 22:41:06'),
(21, 4, 'Quel est le régime politique de la France?', 'N', 'N', 'N', '2016-10-01 20:13:30'),
(22, 4, 'En quelle année a été créée l''ONU?', 'N', 'N', 'N', '2016-10-01 22:30:29'),
(23, 3, 'Quel est le joueur qui a gagné le plus le trophée du ''ballon d''or''?', 'N', 'N', 'N', '2016-10-01 22:36:47'),
(24, 1, 'Où auront lieu les prochains JO d''été?', 'N', 'N', 'N', '2016-10-01 23:03:40'),
(25, 1, 'Où auront lieu les prochains JO d''hivers?', 'N', 'N', 'N', '2016-10-01 23:18:42'),
(26, 4, 'En quelle année a eu lieu la tentative d''assassinat de Ronald Reagan?', 'N', 'N', 'N', '2016-10-02 10:26:01'),
(27, 1, 'Quelle est la somme perçue par un champion olympique français aux jeux de Rio (été 2016)?', 'N', 'N', 'N', '2016-10-02 15:59:14'),
(28, 4, 'Quelles sont les 2 langues les pplus parlées en Europe?', 'Y', 'N', 'N', '2016-10-02 16:13:10'),
(29, 1, 'Quels sont les pays où les femmes ont remporté plus de médailles que les hommes (jeux de 2000 à 2016)?', 'Y', 'N', 'N', '2016-10-02 16:43:49'),
(30, 4, 'Quel est le 3ème pays le plus peuplé de l''UE en 2015?', 'N', 'N', 'N', '2016-10-02 16:55:38'),
(31, 4, 'Quels sont les 2 pays les plus peuplés en Europe', 'Y', 'N', 'N', '2016-10-02 16:58:50'),
(32, 4, 'Quels sont les pays qui ont rejoint l''UE en 2007?', 'Y', 'N', 'N', '2016-10-02 17:26:56'),
(33, 4, 'Quels sont les 3 pays les plus peuplés au monde?', 'Y', 'N', 'N', '2016-10-02 17:32:39'),
(34, 2, 'Quels sont les pays mulsumans majoritairement chiites?', 'Y', 'N', 'N', '2016-10-02 19:41:52'),
(35, 4, 'Quels seront les 3 pays les plus peuplés en 2100?', 'Y', 'N', 'N', '2016-10-02 21:36:36'),
(36, 4, 'Quelle est la première puissance économique du monde (PIB)?', 'N', 'N', 'N', '2016-10-02 21:49:31'),
(37, 1, 'Combien y a-t-il d''anneaux sur le drapeau olympique?', 'N', 'N', 'N', '2016-11-20 18:56:02'),
(38, 3, 'Quelle est la longueur d''un terrain de football?', 'N', 'N', 'N', '2016-11-23 19:19:14'),
(39, 3, 'Combien y a-t-il d''arbitres en Ligue des Champions ?', 'N', 'Y', 'N', '2016-11-23 19:41:32'),
(40, 3, 'Quelle est la largeur minimum d''un terrain de football?', 'N', 'Y', 'N', '2016-11-23 19:47:15'),
(41, 3, 'Quelle est la longueur minimum d''un terrain de football?', 'N', 'Y', 'N', '2016-11-23 21:06:47'),
(42, 3, 'Combien de coupe du monde a remporté l''Allemagne?', 'N', 'Y', 'N', '2016-11-23 21:13:20'),
(43, 3, 'Classez dans l''ordre croissant les 3 meilleurs jours du monde en 2015 selon Lionel Messi?', 'N', 'N', 'Y', '2016-11-26 15:54:58'),
(44, 3, 'Classez les équipes ayant remporté le plus de coupe du monde:', 'N', 'Y', 'N', '2016-11-27 15:25:20'),
(45, 1, 'Classez les 3 meilleurs sprinters de tous les temps:', 'N', 'N', 'Y', '2016-11-27 15:30:40'),
(46, 1, 'Classez les 3 meilleurs sprinters de tous les temps :', 'N', 'N', 'Y', '2016-11-27 15:37:29'),
(47, 1, 'Classez les 3 meilleurs sprinters de tous les temps ::', 'N', 'N', 'Y', '2016-11-27 15:45:07'),
(48, 1, 'Classez les 3 meilleurs sprinters de tous les temps :::', 'N', 'N', 'Y', '2016-11-27 15:53:31'),
(49, 1, 'Classez les 3 meilleurs sprinters de tous les temps ::::', 'N', 'N', 'Y', '2016-11-27 16:01:24'),
(50, 1, 'Quel(le) athlète a dû rendre ses 5 médailles olympiques pour cause de dopage?', 'N', 'N', 'N', '2016-11-27 16:10:28'),
(51, 3, 'Classez les pires équipes de foot en 2016:', 'N', 'N', 'Y', '2016-12-03 19:02:37'),
(52, 1, 'Combien y a t''il de haies sur un 110m haies?', 'N', 'Y', 'N', '2016-12-04 21:55:28'),
(53, 1, 'Quel est le nombre de coureur au départ d''un 100 mètres?', 'N', 'Y', 'N', '2016-12-04 22:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
  `quiz_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `quiz` varchar(100) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`quiz_id`),
  UNIQUE KEY `ind_quiz_name` (`quiz`),
  FULLTEXT KEY `ind_search_quiz_name` (`quiz`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`quiz_id`, `quiz`, `creation_date`) VALUES
(1, 'Les jeux olympiques', '2016-08-09 15:50:44'),
(2, 'Les affaires religieuses', '2016-08-09 16:01:09'),
(3, 'Le football', '2016-08-09 16:03:08'),
(4, 'La politique internationale', '2016-08-09 16:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE IF NOT EXISTS `results` (
  `result_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL,
  `quiz_id` smallint(5) unsigned NOT NULL,
  `submitted` char(1) NOT NULL,
  `creation_date` datetime NOT NULL,
  `results` smallint(6) NOT NULL,
  PRIMARY KEY (`result_id`),
  KEY `fk_r_quiz_id` (`quiz_id`),
  KEY `fk_r_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `user_id`, `quiz_id`, `submitted`, `creation_date`, `results`) VALUES
(1, 2, 3, 'Y', '2016-11-07 21:59:29', 34),
(2, 4, 3, 'Y', '2016-11-10 21:03:49', 75),
(3, 4, 4, 'Y', '2016-11-10 21:06:39', 62),
(4, 5, 3, 'Y', '2016-11-12 16:15:38', 50),
(5, 6, 2, 'Y', '2016-11-13 21:32:41', 15),
(6, 7, 3, 'Y', '2016-12-01 21:16:33', 0),
(7, 2, 1, 'Y', '2016-12-22 22:11:46', 34),
(8, 2, 4, 'Y', '2016-12-22 22:19:42', 16),
(9, 9, 2, 'Y', '2016-12-26 22:52:31', 72),
(10, 9, 3, 'Y', '2016-12-26 22:58:44', 20),
(11, 9, 4, 'Y', '2016-12-26 23:05:50', 31),
(12, 7, 1, 'Y', '2017-01-03 22:34:06', 29),
(13, 7, 1, 'Y', '2017-01-03 22:45:56', 58),
(14, 7, 1, 'Y', '2017-01-03 22:58:59', 58),
(15, 7, 1, 'Y', '2017-01-03 23:06:42', 58),
(16, 7, 1, 'Y', '2017-01-04 13:21:56', 50),
(17, 7, 1, 'Y', '2017-01-04 13:23:41', 50),
(18, 7, 1, 'Y', '2017-01-04 13:23:51', 50),
(19, 7, 1, 'Y', '2017-01-04 13:26:03', 50),
(20, 7, 1, 'Y', '2017-01-04 13:26:50', 50),
(21, 7, 1, 'Y', '2017-01-04 13:31:19', 50),
(22, 7, 1, 'Y', '2017-01-04 13:38:30', 50),
(23, 7, 3, 'Y', '2017-01-08 19:55:18', 70),
(24, 10, 2, 'Y', '2017-01-08 22:01:09', 29),
(25, 10, 2, 'Y', '2017-01-08 22:05:09', 72),
(26, 10, 2, 'Y', '2017-01-08 22:08:38', 58),
(27, 11, 1, 'Y', '2017-01-14 16:53:58', 36),
(28, 11, 1, 'Y', '2017-01-14 16:57:13', 79),
(29, 9, 1, 'Y', '2017-01-14 20:57:31', 58),
(30, 7, 1, 'Y', '2017-01-14 20:59:32', 58),
(31, 7, 1, 'Y', '2017-01-14 21:19:14', 22),
(32, 11, 1, 'Y', '2017-01-14 21:40:55', 43),
(33, 11, 1, 'Y', '2017-01-14 21:46:44', 29),
(34, 11, 1, 'Y', '2017-01-15 18:50:56', 65),
(35, 11, 1, 'Y', '2017-01-15 18:53:25', 36),
(36, 11, 3, 'Y', '2017-01-15 18:58:56', 0),
(37, 11, 3, 'Y', '2017-01-15 19:03:37', 40),
(38, 11, 3, 'Y', '2017-01-15 19:06:00', 40),
(39, 11, 3, 'Y', '2017-01-15 19:07:27', 20),
(40, 11, 2, 'Y', '2017-01-15 19:10:04', 58);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `admin` char(1) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user`, `password`, `admin`, `creation_date`) VALUES
(1, 'admin', '8ae33564251582b078f974557c693f0fd2f09e2c', 'Y', '2016-08-01 18:32:02'),
(2, 'Gérard', '397b67dc98853537704f5e030167d9a833737f5b', NULL, '2016-11-06 09:43:51'),
(3, 'Marc', 'bc0762e0f9550daef53f5a00b2779714deab340f', NULL, '2016-11-06 10:22:14'),
(4, 'Larry', '20300831a253ec84bca6e01034f5ef3d8a247e85', NULL, '2016-11-06 21:57:06'),
(5, 'Léo', '4bcaf4af54afdcb6e32058a5c870395eb3f3f025', NULL, '2016-11-12 16:15:15'),
(6, 'ash', 'bcb9f8fb1f8f311128e69353d6a488f0d69da831', NULL, '2016-11-13 21:29:16'),
(7, 'Didier', 'f046aef37bac160a35b9ec4635c376e3da5ff55a', NULL, '2016-11-28 20:26:50'),
(8, 'Bernard', 'e1a24e60c1e8a7eb1e44252d42a56a696a164941', NULL, '2016-12-03 19:34:32'),
(9, 'Pierre', 'e15beb24ec76dbb603157b88bf6b33c3ce951df4', NULL, '2016-12-26 22:34:13'),
(10, 'Jane', '3d27e941a3da046db64e565a09787b15d0401aaf', NULL, '2017-01-08 19:59:51'),
(11, 'Tiou', 'd8be44b5b7a9b5bf790fe5ffdd0e772d7bfba50e', NULL, '2017-01-14 16:52:53');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_quiz_details`
--
CREATE TABLE IF NOT EXISTS `v_quiz_details` (
`quiz_id` smallint(5) unsigned
,`quiz` varchar(100)
,`question_id` smallint(5) unsigned
,`question` text
,`multiple_answers` char(1)
,`q_digit` char(1)
,`q_order` char(1)
,`answer_id` smallint(5) unsigned
,`answer` text
,`result` text
,`digit` float
,`order` tinyint(1)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_scores_quizs`
--
CREATE TABLE IF NOT EXISTS `v_scores_quizs` (
`quiz` varchar(100)
,`quiz_id` smallint(5) unsigned
,`user` varchar(20)
,`user_id` smallint(5) unsigned
,`results` smallint(6)
,`result_id` smallint(5) unsigned
,`creation_date` datetime
);
-- --------------------------------------------------------

--
-- Structure for view `v_quiz_details`
--
DROP TABLE IF EXISTS `v_quiz_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`quizman`@`localhost` SQL SECURITY DEFINER VIEW `v_quiz_details` AS select `a`.`quiz_id` AS `quiz_id`,`a`.`quiz` AS `quiz`,`b`.`question_id` AS `question_id`,`b`.`question` AS `question`,`b`.`multiple_answers` AS `multiple_answers`,`b`.`digits` AS `q_digit`,`b`.`ordered` AS `q_order`,`c`.`answer_id` AS `answer_id`,`c`.`answer` AS `answer`,`c`.`result` AS `result`,`c`.`digits` AS `digit`,`c`.`ordered` AS `order` from ((`quizzes` `a` join `questions` `b` on((`a`.`quiz_id` = `b`.`quiz_id`))) join `answers` `c` on((`b`.`question_id` = `c`.`question_id`))) order by `a`.`quiz_id`,`b`.`question_id`,`c`.`answer_id`;

-- --------------------------------------------------------

--
-- Structure for view `v_scores_quizs`
--
DROP TABLE IF EXISTS `v_scores_quizs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`quizman`@`localhost` SQL SECURITY DEFINER VIEW `v_scores_quizs` AS select `q`.`quiz` AS `quiz`,`q`.`quiz_id` AS `quiz_id`,`u`.`user` AS `user`,`u`.`user_id` AS `user_id`,`r`.`results` AS `results`,`r`.`result_id` AS `result_id`,`r`.`creation_date` AS `creation_date` from ((`results` `r` join `quizzes` `q` on((`r`.`quiz_id` = `q`.`quiz_id`))) join `users` `u` on((`r`.`user_id` = `u`.`user_id`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_a_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`),
  ADD CONSTRAINT `fk_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`);

--
-- Constraints for table `historic_answers`
--
ALTER TABLE `historic_answers`
  ADD CONSTRAINT `fk_h_result_id` FOREIGN KEY (`result_id`) REFERENCES `results` (`result_id`),
  ADD CONSTRAINT `fk_h_question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`),
  ADD CONSTRAINT `fk_h_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_q_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_r_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`),
  ADD CONSTRAINT `fk_r_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
