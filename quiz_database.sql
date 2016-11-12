-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 06:26 PM
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
  `answer` text NOT NULL,
  `result` char(1) NOT NULL,
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`answer_id`),
  UNIQUE KEY `ind_answer_question` (`question_id`,`answer`(150)),
  KEY `fk_a_quiz_id` (`quiz_id`),
  FULLTEXT KEY `ind_answer` (`answer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `quiz_id`, `answer`, `result`, `creation_date`) VALUES
(1, 1, 4, '11 octobre 1942', 'N', '2016-08-15 19:31:18'),
(2, 1, 4, '8 mai 1945', 'N', '2016-08-15 19:31:18'),
(3, 1, 4, '3 septembre 1947', 'N', '2016-08-15 19:31:18'),
(4, 1, 4, '5 mars 1946', 'Y', '2016-08-15 19:31:18'),
(5, 1, 4, '23 août 1950', 'N', '2016-08-15 19:31:18'),
(6, 2, 4, 'La république de Weimar', 'Y', '2016-08-15 19:44:16'),
(7, 2, 4, 'La reine Elizabeth', 'N', '2016-08-15 19:44:16'),
(8, 2, 4, 'Indira Gandhi', 'N', '2016-08-15 19:44:16'),
(9, 2, 4, 'La Communauté européenne du charbon et de l''acier', 'N', '2016-08-15 19:44:16'),
(10, 2, 4, 'Svetlana Ražnatović', 'N', '2016-08-15 19:44:16'),
(11, 3, 4, 'Jacques Delors', 'N', '2016-08-15 19:49:24'),
(12, 3, 4, 'Konrad Adenauer', 'N', '2016-08-15 19:49:24'),
(13, 3, 4, 'Winston Churchill', 'N', '2016-08-15 19:49:24'),
(14, 3, 4, 'Alcide de Gasperi', 'N', '2016-08-15 19:49:24'),
(15, 3, 4, 'Jean Monnet', 'Y', '2016-08-15 19:49:24'),
(16, 4, 4, 'L''inauguration du premier TGV', 'N', '2016-08-15 20:00:16'),
(17, 5, 4, 'Konstantin Tchernenko', 'N', '2016-08-15 21:03:53'),
(18, 5, 4, 'Mikhaïl Gorbatchev', 'N', '2016-08-15 21:03:53'),
(19, 5, 4, 'Iouri Andropov', 'Y', '2016-08-15 21:03:53'),
(20, 5, 4, 'Erich Honecker', 'N', '2016-08-15 21:03:53'),
(21, 5, 4, 'Todor Jivkov', 'N', '2016-08-15 21:03:53'),
(22, 6, 2, 'Ismaël', 'Y', '2016-08-15 21:14:31'),
(23, 6, 2, 'Isaac', 'N', '2016-08-15 21:14:31'),
(24, 6, 2, 'Ibrahim', 'N', '2016-08-15 21:14:31'),
(25, 7, 4, 'Abraham, Mohammed', 'N', '2016-08-15 21:23:14'),
(26, 7, 4, 'Ali ,Abraham, Jesus, Mohammed', 'N', '2016-08-15 21:23:14'),
(27, 7, 4, 'Noé, Moïse, Abraham, Jésus, Mohammed', 'Y', '2016-08-15 21:23:14'),
(28, 7, 2, 'Moïse, Abraham, Mohammed', 'N', '2016-08-24 20:20:23'),
(29, 7, 2, 'Noé, Jésus, Mohammed, Ali', 'N', '2016-08-24 20:32:02'),
(30, 8, 2, 'L''inde', 'N', '2016-08-24 20:39:38'),
(31, 8, 2, 'Le Pakistan', 'N', '2016-08-24 20:39:38'),
(32, 8, 2, 'Le Bangladesh', 'N', '2016-08-24 20:39:38'),
(33, 8, 2, 'L''indonésie', 'Y', '2016-08-24 20:39:38'),
(34, 8, 2, 'La Turquie', 'N', '2016-08-24 20:40:05'),
(35, 9, 2, 'est convertie au bouddhisme', 'N', '2016-08-24 20:54:29'),
(36, 9, 2, 'a réalisé l''éveil', 'Y', '2016-08-24 20:54:29'),
(37, 9, 2, 'a realisé le voyage vers l''Au-delà', 'N', '2016-08-24 20:54:29'),
(38, 9, 2, 'représente une communauté spirituelle', 'N', '2016-08-24 20:54:29'),
(39, 9, 2, 'est réincarnée en leader spirituel', 'N', '2016-08-24 20:55:23'),
(40, 10, 2, 'Siddhartha Gautama', 'Y', '2016-08-25 09:40:44'),
(41, 10, 2, 'Laozi', 'N', '2016-08-25 09:40:44'),
(42, 10, 2, 'Sanatana Dharma', 'N', '2016-08-25 09:40:44'),
(43, 10, 2, 'Tripura Tapini Upanishad', 'N', '2016-08-25 09:40:44'),
(44, 11, 2, 'Le judaisme', 'N', '2016-08-25 09:46:55'),
(45, 11, 2, 'L''Islam', 'N', '2016-08-25 09:46:55'),
(46, 11, 2, 'L''hindouisme', 'Y', '2016-08-25 09:46:55'),
(47, 11, 2, 'Le christianisme', 'N', '2016-08-25 09:46:55'),
(48, 11, 2, 'Le bouddhisme', 'N', '2016-08-25 09:46:55'),
(49, 12, 1, '&quot;Citius, altius, fortius&quot; (Plus vite, plus haut, plus fort)', 'N', '2016-08-27 17:56:15'),
(50, 12, 1, '&quot;l''important dans la vie ce n''est pas le triomphe mais le combat ; l''essentiel ce n''est pas d''avoir vaincu mais de s''être bien battu&quot;', 'Y', '2016-08-27 17:56:15'),
(51, 12, 1, '&quot;l''important dans ces olympiades, c''est moins d''y gagner que d''y prendre part&quot;', 'N', '2016-08-27 17:56:15'),
(52, 12, 1, '&quot;D'' où venons-nous, où allons-nous et à quelle heure on mange?&quot;', 'N', '2016-08-27 17:56:15'),
(53, 12, 1, '&quot;Entre une mauvaise cuisinière et une empoisonneuse, il n’y a qu’une différence d’intention&quot;', 'N', '2016-08-27 17:56:15'),
(54, 13, 1, 'Montreal (été 1976)', 'N', '2016-08-27 18:12:23'),
(55, 13, 1, 'Lake Placid (hiver 1980)', 'N', '2016-08-27 18:12:23'),
(56, 13, 1, 'Los Angeles (été 1984)', 'Y', '2016-08-27 18:12:23'),
(57, 13, 1, 'Nagano (hiver 1998)', 'N', '2016-08-27 18:12:23'),
(58, 13, 1, 'Vancouver (hiver 2010)', 'N', '2016-08-27 18:12:23'),
(59, 14, 1, 'Etats Unis', 'Y', '2016-08-27 18:18:36'),
(60, 14, 1, 'Royaume Uni', 'N', '2016-08-27 18:18:36'),
(61, 14, 1, 'France', 'N', '2016-08-27 18:18:36'),
(62, 14, 1, 'Canada', 'N', '2016-08-27 18:18:36'),
(63, 14, 1, 'Italie', 'N', '2016-08-27 18:18:36'),
(64, 15, 3, '22 ans', 'N', '2016-08-27 18:21:06'),
(65, 15, 3, '29 ans', 'N', '2016-08-27 18:21:06'),
(66, 15, 3, '27 ans', 'N', '2016-08-27 18:21:06'),
(67, 15, 3, '28 ans', 'N', '2016-08-27 18:21:06'),
(68, 15, 3, '26 ans', 'Y', '2016-08-27 18:21:06'),
(69, 16, 1, '1 million d''euros', 'N', '2016-08-27 18:27:01'),
(70, 16, 1, '178 milles euros', 'N', '2016-08-27 18:27:01'),
(71, 16, 1, '250 milles euros', 'N', '2016-08-27 18:27:01'),
(72, 16, 1, '45 milles euros', 'Y', '2016-08-27 18:27:01'),
(73, 16, 1, '98 milles euros', 'N', '2016-08-27 18:27:01'),
(74, 17, 1, 'Manchester United', 'N', '2016-08-27 18:30:40'),
(75, 17, 1, 'FC Barcelona', 'N', '2016-08-27 18:30:40'),
(76, 17, 1, 'Real Madrid', 'Y', '2016-08-27 18:30:40'),
(77, 17, 1, 'Bayern Munich', 'N', '2016-08-27 18:30:40'),
(78, 17, 1, 'Chelsea', 'N', '2016-08-27 18:30:40'),
(79, 4, 4, 'L''Irak de Saddam Hussein attaque l''Iran', 'Y', '2016-08-27 20:12:44'),
(80, 4, 4, 'Mort de Josip Broz Tito, président de la république socialiste de Yougoslavie', 'N', '2016-08-27 20:17:44'),
(81, 4, 4, 'Fondation du syndicat « Solidarność » en Pologne', 'N', '2016-08-27 20:19:21'),
(82, 18, 1, '65', 'N', '2016-09-07 22:02:16'),
(83, 18, 1, '20', 'N', '2016-09-07 22:02:16'),
(84, 18, 1, '34', 'N', '2016-09-07 22:02:16'),
(85, 18, 1, '28', 'Y', '2016-09-07 22:02:16'),
(86, 18, 1, '16', 'N', '2016-09-07 22:02:16'),
(87, 19, 1, 'Se dit des jeux qu''on fêtait tous les 4 ans près d''Olympie du Péloponnèse.', 'Y', '2016-09-07 22:34:22'),
(88, 19, 1, 'Se dit de jeux qui comportaient un ensemble de disciplines regroupées en courses, sauts, lancers, épreuves combinées et marche.', 'N', '2016-09-07 22:34:22'),
(89, 19, 1, 'Du grec ''Olhos'', il est l''art de dépasser la performance des adversaires en vitesse ou en endurance, en distance ou en hauteur.', 'N', '2016-09-07 22:34:22'),
(90, 20, 1, 'Le golf', 'N', '2016-09-07 22:41:06'),
(91, 20, 1, 'Le karaté', 'Y', '2016-09-07 22:41:06'),
(92, 20, 1, 'BMX', 'N', '2016-09-07 22:41:06'),
(93, 20, 1, 'Taekwondo', 'N', '2016-09-07 22:41:06'),
(94, 20, 1, 'Trampoline', 'N', '2016-09-07 22:41:06'),
(95, 21, 4, 'Le régime d’assemblée', 'N', '2016-10-01 20:25:53'),
(96, 21, 4, 'Le régime parlementaire', 'N', '2016-10-01 20:26:21'),
(97, 21, 4, 'Le régime présidentiel', 'N', '2016-10-01 20:26:50'),
(98, 21, 4, 'Le régime mixte', 'Y', '2016-10-01 20:27:14'),
(99, 26, 4, 'En 1979', 'N', '2016-10-02 10:26:41'),
(100, 26, 4, 'En 1980', 'N', '2016-10-02 10:26:41'),
(101, 26, 4, 'En 1981', 'Y', '2016-10-02 10:26:41'),
(102, 26, 4, 'En 1982', 'N', '2016-10-02 10:26:41'),
(103, 26, 4, 'En 1983', 'N', '2016-10-02 10:26:41'),
(104, 27, 1, '500 000 euros', 'N', '2016-10-02 16:00:32'),
(105, 27, 1, '15 000 euros', 'N', '2016-10-02 16:00:32'),
(106, 27, 1, '100 000 euros', 'N', '2016-10-02 16:00:32'),
(107, 27, 1, '50 000 euros', 'Y', '2016-10-02 16:00:32'),
(108, 27, 1, '1 000 000 euros', 'N', '2016-10-02 16:00:32'),
(109, 28, 4, 'L''Espagnol', 'N', '2016-10-02 16:14:17'),
(110, 28, 4, 'L''Italien', 'N', '2016-10-02 16:14:17'),
(111, 28, 4, 'L''Anglais', 'N', '2016-10-02 16:14:17'),
(112, 28, 4, 'Le Français', 'Y', '2016-10-02 16:14:17'),
(113, 28, 4, 'L''Allemand', 'Y', '2016-10-02 16:14:17'),
(114, 29, 1, 'Kosovo', 'Y', '2016-10-02 16:45:34'),
(115, 29, 1, 'France', 'N', '2016-10-02 16:45:34'),
(116, 29, 1, 'Grande-Bretagne', 'N', '2016-10-02 16:45:34'),
(117, 29, 1, 'Singapour', 'Y', '2016-10-02 16:45:34'),
(118, 29, 1, 'Macédoine', 'N', '2016-10-02 16:45:34'),
(119, 30, 4, 'France', 'N', '2016-10-02 16:56:35'),
(120, 30, 4, 'Royaume-Uni', 'Y', '2016-10-02 16:56:35'),
(121, 30, 4, 'Allemagne', 'N', '2016-10-02 16:56:35'),
(122, 30, 4, 'Italie', 'N', '2016-10-02 16:56:35'),
(123, 30, 4, 'Espagne', 'N', '2016-10-02 16:56:35'),
(124, 31, 4, 'Royaume-Uni', 'N', '2016-10-02 16:59:43'),
(125, 31, 4, 'Allemagne', 'Y', '2016-10-02 16:59:43'),
(126, 31, 4, 'France', 'Y', '2016-10-02 16:59:43'),
(127, 31, 4, 'Autriche', 'N', '2016-10-02 16:59:43'),
(128, 31, 4, 'Espagne', 'N', '2016-10-02 16:59:43'),
(131, 35, 4, 'Indonésie', 'N', '2016-10-02 21:37:44'),
(132, 35, 4, 'Chine', 'Y', '2016-10-02 21:37:44'),
(133, 35, 4, 'Brésil', 'N', '2016-10-02 21:37:44'),
(134, 35, 4, 'Inde', 'Y', '2016-10-02 21:37:44'),
(135, 35, 4, 'Nigéria', 'Y', '2016-10-02 21:37:44'),
(136, 36, 4, 'Les Etats-Unis', 'N', '2016-10-02 21:50:14'),
(137, 36, 4, 'L''Union Européenne', 'Y', '2016-10-02 21:50:14'),
(138, 36, 4, 'La Chine', 'N', '2016-10-02 21:50:14'),
(139, 36, 4, 'Le Japon', 'N', '2016-10-02 21:50:14'),
(140, 24, 1, 'Rome', 'N', '2016-11-01 20:39:11'),
(141, 24, 1, 'Mexico', 'N', '2016-11-01 20:40:09'),
(142, 24, 1, 'Tokyo', 'Y', '2016-11-01 20:40:32'),
(143, 24, 1, 'Seoul', 'N', '2016-11-01 20:41:17'),
(144, 25, 1, 'Sapporo', 'N', '2016-11-01 20:42:05'),
(145, 25, 1, 'Beijing', 'N', '2016-11-01 20:43:18'),
(146, 25, 1, 'Oslo', 'N', '2016-11-01 20:44:29'),
(147, 25, 1, 'Pyeongchang', 'Y', '2016-11-01 20:46:06'),
(148, 22, 4, '1954', 'N', '2016-11-09 19:55:45'),
(149, 22, 4, '1944', 'N', '2016-11-09 19:56:58'),
(150, 22, 4, '1947', 'N', '2016-11-09 19:57:37'),
(151, 22, 4, '1945', 'Y', '2016-11-09 19:58:12'),
(152, 23, 3, 'Johan Cruyff', 'N', '2016-11-09 20:02:09'),
(153, 23, 3, 'Cristiano Ronaldo', 'N', '2016-11-09 20:02:49'),
(154, 23, 3, 'Lionel Messi', 'Y', '2016-11-09 20:03:16'),
(155, 23, 3, 'Michel Platini', 'N', '2016-11-09 20:03:43'),
(156, 23, 3, 'Marco van Basten', 'N', '2016-11-09 20:04:44'),
(157, 34, 2, 'Afghanistan', 'N', '2016-11-09 20:06:56'),
(158, 34, 2, 'Irak', 'Y', '2016-11-09 20:07:28'),
(159, 34, 2, 'Yémen', 'N', '2016-11-09 20:08:10'),
(160, 34, 2, 'Qatar', 'N', '2016-11-09 20:08:50'),
(161, 34, 2, 'Bahrein', 'Y', '2016-11-09 20:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `question_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_id` smallint(5) unsigned NOT NULL,
  `question` text NOT NULL,
  `multiple_answers` char(1) NOT NULL DEFAULT 'N',
  `creation_date` datetime NOT NULL,
  PRIMARY KEY (`question_id`),
  UNIQUE KEY `ind_question` (`question`(150)),
  KEY `fk_q_quiz_id` (`quiz_id`),
  FULLTEXT KEY `ind_search_question` (`question`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `quiz_id`, `question`, `multiple_answers`, `creation_date`) VALUES
(1, 4, 'Quelle est la date marquant le début de la guerre froide?', 'N', '2016-08-15 19:31:18'),
(2, 4, 'Qui est né le 6 février 1919?', 'N', '2016-08-15 19:44:16'),
(3, 4, 'Qui appelle t''on le « Père de l''Europe »?', 'N', '2016-08-15 19:49:24'),
(4, 4, 'Que s''est-il passé le 22 septembre 1980?', 'N', '2016-08-15 20:00:16'),
(5, 4, 'Qui succède à Léonid Brejnev au poste de secrétaire général du PCUS?', 'N', '2016-08-15 21:03:53'),
(6, 2, 'Dans la tradition musulmane, qui est le fils qu’Abraham doit sacrifier à Dieu?', 'N', '2016-08-15 21:14:31'),
(7, 2, 'D''après la tradition musulmane, qui sont les prophètes envoyés par Dieux?', 'N', '2016-08-15 21:23:14'),
(8, 2, 'Quel est le pays qui compte le plus de musulmans?', 'N', '2016-08-24 20:39:38'),
(9, 2, 'Le terme ''Bouddha'' signifie qu''une personne...', 'N', '2016-08-24 20:54:29'),
(10, 2, 'Qui est le fondateur du bouddhisme?', 'N', '2016-08-25 09:40:44'),
(11, 2, 'Quelle est la religion la plus ancienne?', 'N', '2016-08-25 09:46:55'),
(12, 1, 'Quelle devise émane de Pierre de Coubertin?', 'N', '2016-08-27 17:56:15'),
(13, 1, 'Quelle est la seule ville qui a réalisé un bénéfice en organisant les JO?', 'N', '2016-08-27 18:12:23'),
(14, 1, 'Quel est le pays qui a le plus organisé les JO?', 'N', '2016-08-27 18:18:36'),
(15, 3, 'Quelle la moyenne d''âge d''un footballeur pro en Europe?', 'N', '2016-08-27 18:21:06'),
(16, 3, 'Quel est le salaire moyen d''un footballeur en ligue 1 (2014)?', 'N', '2016-08-27 18:27:01'),
(17, 3, 'Quel est le club le plus riche au monde en 2016?', 'N', '2016-08-27 18:30:40'),
(18, 1, 'Combien de sport sont représentés aux JO de Rio (2016)?', 'N', '2016-09-07 22:02:16'),
(19, 1, 'Que signifie &quot;Olympique&quot;?', 'N', '2016-09-07 22:34:22'),
(20, 1, 'Quel sport ne figurait pas aux JO de Rio (2016)?', 'N', '2016-09-07 22:41:06'),
(21, 4, 'Quel est le régime politique de la France?', 'N', '2016-10-01 20:13:30'),
(22, 4, 'En quelle année a été créée l''ONU?', 'N', '2016-10-01 22:30:29'),
(23, 3, 'Quel est le joueur qui a gagné le plus le trophée du ''ballon d''or''?', 'N', '2016-10-01 22:36:47'),
(24, 1, 'Où auront lieu les prochains JO d''été?', 'N', '2016-10-01 23:03:40'),
(25, 1, 'Où auront lieu les prochains JO d''hivers?', 'N', '2016-10-01 23:18:42'),
(26, 4, 'En quelle année a eu lieu la tentative d''assassinat de Ronald Reagan?', 'N', '2016-10-02 10:26:01'),
(27, 1, 'Quelle est la somme perçue par un champion olympique français aux jeux de Rio (été 2016)?', 'N', '2016-10-02 15:59:14'),
(28, 4, 'Quelles sont les 2 langues les pplus parlées en Europe?', 'Y', '2016-10-02 16:13:10'),
(29, 1, 'Quels sont les pays où les femmes ont remporté plus de médailles que les hommes (jeux de 2000 à 2016)?', 'Y', '2016-10-02 16:43:49'),
(30, 4, 'Quel est le 3ème pays le plus peuplé de l''UE en 2015?', 'N', '2016-10-02 16:55:38'),
(31, 4, 'Quels sont les 2 pays les plus peuplés en Europe', 'Y', '2016-10-02 16:58:50'),
(32, 4, 'Quels sont les pays qui ont rejoint l''UE en 2007?', 'Y', '2016-10-02 17:26:56'),
(33, 4, 'Quels sont les 3 pays les plus peuplés au monde?', 'Y', '2016-10-02 17:32:39'),
(34, 2, 'Quels sont les pays mulsumans majoritairement chiites?', 'Y', '2016-10-02 19:41:52'),
(35, 4, 'Quels seront les 3 pays les plus peuplés en 2100?', 'Y', '2016-10-02 21:36:36'),
(36, 4, 'Quelle est la première puissance économique du monde (PIB)?', 'N', '2016-10-02 21:49:31');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `user_id`, `quiz_id`, `submitted`, `creation_date`, `results`) VALUES
(1, 2, 3, 'Y', '2016-11-07 21:59:29', 34),
(2, 4, 3, 'Y', '2016-11-10 21:03:49', 75),
(3, 4, 4, 'Y', '2016-11-10 21:06:39', 62),
(4, 5, 3, 'Y', '2016-11-12 16:15:38', 50);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user`, `password`, `admin`, `creation_date`) VALUES
(1, 'admin', '8ae33564251582b078f974557c693f0fd2f09e2c', 'Y', '2016-08-01 18:32:02'),
(2, 'Gérard', '397b67dc98853537704f5e030167d9a833737f5b', NULL, '2016-11-06 09:43:51'),
(3, 'Marc', 'bc0762e0f9550daef53f5a00b2779714deab340f', NULL, '2016-11-06 10:22:14'),
(4, 'Larry', '20300831a253ec84bca6e01034f5ef3d8a247e85', NULL, '2016-11-06 21:57:06'),
(5, 'Léo', '4bcaf4af54afdcb6e32058a5c870395eb3f3f025', NULL, '2016-11-12 16:15:15');

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
,`answer_id` smallint(5) unsigned
,`answer` text
,`result` char(1)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v_scores_quizs`
--
CREATE TABLE IF NOT EXISTS `v_scores_quizs` (
`quiz` varchar(100)
,`user` varchar(20)
,`results` smallint(6)
);
-- --------------------------------------------------------

--
-- Structure for view `v_quiz_details`
--
DROP TABLE IF EXISTS `v_quiz_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`quizman`@`localhost` SQL SECURITY DEFINER VIEW `v_quiz_details` AS select `a`.`quiz_id` AS `quiz_id`,`a`.`quiz` AS `quiz`,`b`.`question_id` AS `question_id`,`b`.`question` AS `question`,`b`.`multiple_answers` AS `multiple_answers`,`c`.`answer_id` AS `answer_id`,`c`.`answer` AS `answer`,`c`.`result` AS `result` from ((`quizzes` `a` join `questions` `b` on((`a`.`quiz_id` = `b`.`quiz_id`))) join `answers` `c` on((`b`.`question_id` = `c`.`question_id`))) order by `a`.`quiz_id`,`b`.`question_id`,`c`.`answer_id`;

-- --------------------------------------------------------

--
-- Structure for view `v_scores_quizs`
--
DROP TABLE IF EXISTS `v_scores_quizs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`quizman`@`localhost` SQL SECURITY DEFINER VIEW `v_scores_quizs` AS select `q`.`quiz` AS `quiz`,`u`.`user` AS `user`,`r`.`results` AS `results` from ((`results` `r` join `quizzes` `q` on((`r`.`quiz_id` = `q`.`quiz_id`))) join `users` `u` on((`r`.`user_id` = `u`.`user_id`)));

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
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_q_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_r_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_r_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
