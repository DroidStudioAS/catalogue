-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 18, 2024 at 07:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogue`
--
CREATE DATABASE IF NOT EXISTS `catalogue` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `catalogue`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BMW', '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(2, 'Audi', '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(3, 'Mercedes', '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(4, 'Alfa Romeo', '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(5, 'Lada', '2024-04-18 05:42:38', '2024-04-18 05:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Janessa Johnson', 'murphy.darby@bednar.org', 'Impedit quo nostrum laboriosam dolorum fugiat dignissimos vero.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(2, 1, 'Lorena Schroeder', 'armando.bruen@dickens.info', 'Provident recusandae quas fuga. Aut dolore quaerat excepturi aut.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(3, 1, 'Erica Mueller', 'cremin.annabell@wiegand.org', 'Enim harum ad rerum repudiandae sit ullam fugit ratione.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(4, 1, 'Dr. Eleazar Harber', 'wilford00@kling.com', 'Voluptas maxime et dolor in nihil facere ut. Molestiae quaerat reprehenderit molestiae maiores totam.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(5, 1, 'Lucius Shanahan', 'bartoletti.sedrick@gaylord.com', 'Autem voluptatem nulla error ipsum magni facilis. Earum sit atque dolore id.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(6, 1, 'Darwin Olson', 'greenholt.beryl@hintz.com', 'Voluptatem molestiae cupiditate quae repellendus.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(7, 1, 'Marlen Cormier', 'georgiana75@gmail.com', 'In vero dolores omnis autem id optio accusamus dignissimos.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(8, 1, 'Alexis Buckridge', 'nwilliamson@gmail.com', 'Commodi repellendus ut quas sed.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(9, 1, 'Mr. Kian Kuhlman DVM', 'cydney.luettgen@yahoo.com', 'Aperiam doloremque beatae sint sapiente deserunt dolor. Fugiat qui id ut et quia sunt blanditiis.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(10, 1, 'Verdie Lowe V', 'vhowe@gmail.com', 'Omnis non minus sit ab quae voluptatem dolorum. Esse quis vitae asperiores.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(11, 1, 'Gina Effertz', 'fschimmel@hotmail.com', 'Voluptatem natus id sed suscipit. Dolore natus qui sapiente et.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(12, 1, 'Isobel Macejkovic Sr.', 'amparo84@deckow.com', 'Voluptas quia mollitia repudiandae vero laboriosam consequatur in.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(13, 1, 'Emelie Feest', 'edward.langosh@morissette.com', 'Adipisci eius ab sit voluptas. Culpa iste repellat ut vel.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(14, 1, 'Dr. Kyla Bartell', 'odietrich@kautzer.net', 'Rerum quae ullam quas omnis repellendus incidunt. Facere quibusdam sunt delectus perferendis et neque labore.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(15, 1, 'Dasia Denesik', 'ronny.kirlin@goodwin.com', 'Ut nihil voluptatem totam.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(16, 2, 'Kristofer Streich', 'sawayn.dorian@gmail.com', 'Dignissimos eius quis deleniti suscipit. Nostrum ut et sit incidunt praesentium ut cum exercitationem.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(17, 2, 'Nathanael Hamill IV', 'breitenberg.brandyn@yahoo.com', 'Aliquam et non vero.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(18, 2, 'Niko Miller III', 'eheidenreich@yahoo.com', 'Recusandae facere et sed accusantium.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(19, 2, 'Marietta Bailey', 'glabadie@harvey.com', 'Earum est itaque dignissimos numquam.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(20, 2, 'Prof. Jayce Leannon', 'herman.thelma@gmail.com', 'Repellendus dolore quia minus qui est consequatur. Odit velit unde ad voluptates aliquid.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(21, 2, 'Dr. Colin Wiegand Sr.', 'fjerde@bradtke.org', 'Nulla est beatae est omnis.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(22, 2, 'Kiana Runolfsdottir', 'meghan.boehm@yahoo.com', 'Non voluptas est saepe. Voluptas corrupti ut ut.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(23, 2, 'Prof. Fleta Zulauf', 'gheaney@hotmail.com', 'Neque molestias ad maxime in.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(24, 2, 'Dr. Angelica Powlowski', 'tressa32@koelpin.biz', 'Id deserunt temporibus qui doloremque voluptatem. Quas modi nostrum autem maiores ratione vitae.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(25, 2, 'Stephon Heidenreich', 'lisette11@hessel.biz', 'Asperiores dolorum quos ea numquam sit. Quod debitis quis corrupti.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(26, 2, 'Justus Kassulke', 'hbecker@hotmail.com', 'Voluptatem itaque odio voluptates consequuntur.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(27, 2, 'Caterina Will', 'emily11@vandervort.com', 'Autem occaecati non officia qui provident et aspernatur. Enim qui libero animi saepe cupiditate et quidem.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(28, 2, 'Fay Schultz', 'scarlett.schaden@gmail.com', 'Id consequatur autem et.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(29, 2, 'Casandra Fay', 'jermain.davis@gmail.com', 'Tempora porro eos voluptates iure ducimus dignissimos et.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(30, 2, 'Chance Effertz', 'gia23@becker.net', 'Molestiae veniam est dolor.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(31, 3, 'Mr. Orlando Harris II', 'kfay@flatley.com', 'Aut corrupti non corrupti minus vero accusamus ut possimus.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(32, 3, 'Daisha Bosco', 'halvorson.wyman@hotmail.com', 'Error ea molestiae amet hic nulla eius necessitatibus aliquam. Culpa doloremque cupiditate quod necessitatibus deserunt non.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(33, 3, 'Hailee Stiedemann', 'rosalyn.hermann@yahoo.com', 'Delectus quas quaerat itaque in. Ex et exercitationem ex molestiae magni adipisci.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(34, 3, 'Mr. Dudley Gibson', 'charber@roob.org', 'Sed nesciunt consectetur iste nesciunt assumenda nisi eum.', 'pending', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(35, 3, 'Mr. Dejuan Shanahan IV', 'mhomenick@dach.com', 'Cum itaque deleniti recusandae corporis minima iste facere. Dolorem corporis ut velit autem veritatis.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(36, 3, 'Mr. Guido Considine PhD', 'kozey.dora@yahoo.com', 'Nemo doloribus neque nam. Ut reiciendis ut rem eum.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(37, 3, 'Freddie Beier DDS', 'uritchie@weimann.com', 'Iure dolores quis voluptatem itaque quia.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(38, 3, 'Rhett Hamill', 'bartoletti.opal@hotmail.com', 'Omnis nemo repudiandae sapiente distinctio qui. Temporibus aut fugiat et sed perspiciatis.', 'approved', '2024-04-18 05:42:52', '2024-04-18 05:42:52'),
(39, 3, 'Precious Kreiger', 'wthompson@okon.com', 'Sunt laborum ut soluta dolorum quam. Ratione nisi cum beatae architecto magni est sequi necessitatibus.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(40, 3, 'Miss Vida Runte', 'carol02@padberg.com', 'Omnis quas est quis. Temporibus sunt ipsam quo porro fugit.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(41, 3, 'Aurore O\'Reilly', 'denis26@feil.com', 'Corrupti necessitatibus aliquam aliquam tenetur quibusdam vel. Mollitia laboriosam sed temporibus saepe.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(42, 3, 'Prof. Murl Schulist Jr.', 'clarissa.bruen@abernathy.com', 'At sequi aut deleniti suscipit. Fugit et ipsum voluptate eum minima earum et.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(43, 3, 'Prof. Ferne Gutkowski V', 'schiller.aisha@corkery.biz', 'Nobis quo impedit sequi vel. Eos quis omnis a explicabo id.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(44, 3, 'Casper Johnston', 'ava.schimmel@hotmail.com', 'Saepe et commodi enim.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(45, 3, 'Domenica Hills', 'streich.orlando@upton.com', 'Eaque molestiae at occaecati doloribus cum possimus tenetur.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(46, 4, 'Randy Marvin II', 'maximilian40@klocko.com', 'Nihil molestiae velit et at voluptas minus. Voluptas magnam sit recusandae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(47, 4, 'Samir Leannon', 'bins.gregoria@witting.com', 'Explicabo ratione dolor consequatur sapiente tenetur temporibus deleniti.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(48, 4, 'Terry Thiel IV', 'brook.zemlak@gmail.com', 'Ut ipsum dolorem et eum aspernatur.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(49, 4, 'Dr. Joseph Walker IV', 'graham83@greenholt.info', 'Aliquam quo eius vel sit itaque repellendus nihil.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(50, 4, 'Jennings Heaney', 'schmidt.joyce@hotmail.com', 'Iusto esse sed voluptatem ipsam pariatur quia. Placeat expedita est minus maxime omnis sed.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(51, 4, 'Anabelle Nicolas', 'ywolff@gmail.com', 'Voluptate cum dolorum quaerat id nihil corrupti. Et rem esse esse.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(52, 4, 'Jedidiah Kuhlman V', 'roob.michele@thiel.com', 'Quisquam vel nisi dolores. Doloremque est aut totam blanditiis quisquam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(53, 4, 'Mr. Jerrod Conn', 'kreiger.brycen@aufderhar.com', 'Vitae corporis et dolorem enim. Libero nemo est nemo qui veniam assumenda.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(54, 4, 'Mr. Marcel Flatley III', 'winifred73@renner.biz', 'Repellat rerum nulla enim at quasi voluptas corporis. Eos recusandae sed suscipit magni repellat nobis.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(55, 4, 'Bridgette Dietrich', 'sanford.colten@morissette.com', 'Qui nulla accusantium ducimus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(56, 4, 'Jany Corwin', 'else58@dach.net', 'Iure sed sit ex facilis consequatur quos. Corrupti error dolorem animi est.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(57, 4, 'Miss Elisha Hartmann PhD', 'rozella.mueller@gmail.com', 'Ex voluptatem non molestiae.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(58, 4, 'Jean Bahringer', 'eduardo.wunsch@mitchell.com', 'Unde nam veniam quibusdam officiis magni temporibus suscipit.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(59, 4, 'Mrs. Marisol Streich III', 'sanford.terry@fahey.net', 'Reprehenderit magnam perspiciatis id voluptatem.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(60, 4, 'Jamil Quigley', 'runolfsdottir.reggie@gmail.com', 'Qui quis exercitationem voluptas porro iste.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(61, 5, 'Barrett Macejkovic', 'danial80@hotmail.com', 'Laboriosam quaerat sit est ad eos optio suscipit nulla. Porro unde unde qui deleniti aut iste voluptates aut.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(62, 5, 'Andres Cormier', 'euna.mohr@hartmann.com', 'Quibusdam enim dolorum non autem cum quos laudantium. Minima unde qui quam sequi facere est.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(63, 5, 'Miss Madalyn Wunsch DVM', 'alysa44@stark.com', 'Nisi consequuntur omnis placeat architecto voluptatum quos. Quisquam provident enim aspernatur porro sunt.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(64, 5, 'Jarret King V', 'kwhite@hoppe.org', 'Consectetur nihil quasi porro deserunt dolores at. Labore quod nisi at voluptas.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(65, 5, 'Leone Dicki', 'reinhold.dubuque@haag.com', 'Nobis commodi et omnis ipsam quaerat accusantium.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(66, 5, 'Henderson Lang', 'rahsaan45@rohan.info', 'Rem minus quia neque quo quia dolorem.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(67, 5, 'Ahmed Runte IV', 'corine76@gmail.com', 'Et velit at voluptas. In dolore ducimus cumque porro aut.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(68, 5, 'Dakota Braun', 'hoppe.fern@hotmail.com', 'Provident placeat porro dolor blanditiis et esse.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(69, 5, 'Miss Alisa Hartmann II', 'norwood21@schowalter.com', 'Ut quo dolore rerum. Ratione aut optio sed animi dolor quisquam dolorem quibusdam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(70, 5, 'Ivy O\'Conner', 'ariel30@gmail.com', 'Quas quidem necessitatibus atque non in id. Vel nobis ea ducimus sed officia voluptas debitis rerum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(71, 5, 'Greyson Senger IV', 'ddubuque@daugherty.biz', 'Aut ut sequi temporibus aut eos.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(72, 5, 'Dr. Gus Kling IV', 'delmer76@yahoo.com', 'Animi reiciendis sed et earum temporibus cupiditate qui. Accusamus id omnis iusto recusandae repudiandae modi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(73, 5, 'Mrs. Caroline Wehner', 'kbuckridge@stiedemann.com', 'Veritatis et placeat nam delectus. Aliquid repellat dolorem quos eaque ab hic.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(74, 5, 'Glennie Marquardt PhD', 'murazik.hassie@williamson.net', 'Aliquam ducimus dolor assumenda. Exercitationem consequatur et consequuntur non sit reiciendis quibusdam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(75, 5, 'Miss Anika Bashirian Sr.', 'mclaughlin.garth@mayer.com', 'Alias accusamus adipisci tempore tempora quia. Similique neque ut beatae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(76, 6, 'Dr. Lulu Monahan III', 'kamille57@collier.com', 'Esse reprehenderit vero quis temporibus dolores.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(77, 6, 'Neha Thompson', 'weissnat.daisy@walsh.info', 'Aut fugiat earum quis deleniti non.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(78, 6, 'Gregory Borer I', 'gutkowski.jamey@rosenbaum.info', 'Harum maxime impedit error architecto id ipsa est.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(79, 6, 'Prof. Sonya Boyer', 'isabella.breitenberg@nitzsche.com', 'Vitae quia rerum asperiores voluptatem consectetur quam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(80, 6, 'Prof. Ernesto Barrows', 'beahan.lamont@gmail.com', 'Tenetur non tempora in sit.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(81, 6, 'Oren Borer PhD', 'mack.osinski@hotmail.com', 'Omnis quia deserunt amet sapiente.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(82, 6, 'Ezequiel Hoeger PhD', 'myrl.littel@bayer.org', 'Delectus et quo inventore unde. Vitae maxime iusto vitae eligendi dolorum ullam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(83, 6, 'Michaela Zieme', 'samanta.padberg@hotmail.com', 'Ea rem sed cum ea quia atque.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(84, 6, 'Erich Streich', 'mayert.emmanuelle@yahoo.com', 'Corporis explicabo recusandae ullam ut cupiditate est. Ut debitis tempora numquam impedit.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(85, 6, 'Ramiro Kutch', 'paucek.jackson@gmail.com', 'Consequatur ea cumque culpa molestiae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(86, 6, 'Jacey Quitzon', 'cordelia39@hotmail.com', 'In dolores debitis animi maiores et rerum. Atque beatae tenetur corporis.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(87, 6, 'Mable Moore', 'ocie22@boyle.com', 'Eum enim voluptas minus aut. Nisi consequatur a animi voluptas.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(88, 6, 'Julian Pagac', 'davon37@feest.net', 'Quia beatae aperiam molestiae magnam quae laudantium tempora. Dolor debitis harum est recusandae.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(89, 6, 'Lina Bednar Sr.', 'carley51@sipes.net', 'Enim ipsam non aliquam voluptatem doloremque.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(90, 6, 'Mr. Darrick Tromp IV', 'ava74@legros.net', 'Mollitia dolores asperiores maiores. Non quia odit consectetur voluptatem consequatur consequatur.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(91, 7, 'Laurie Schneider', 'mmckenzie@hotmail.com', 'Doloribus laudantium sed eos illum nulla dolor accusamus.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(92, 7, 'Mr. Florencio Wilderman', 'angelina27@gmail.com', 'Voluptatem odit laudantium quisquam eos. Voluptas accusantium vel possimus molestiae laboriosam eius.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(93, 7, 'Jerel Yundt', 'edd66@hotmail.com', 'Deserunt alias ut et quia est aut. Libero vel consequatur enim id.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(94, 7, 'Antonina Paucek', 'ignatius16@yahoo.com', 'Delectus ab voluptates ab repellat et.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(95, 7, 'Prof. Chaim Lakin', 'lockman.giuseppe@jaskolski.biz', 'Sit autem culpa laborum facere ipsum aut.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(96, 7, 'Phoebe Herman', 'lee.denesik@yahoo.com', 'Explicabo molestiae suscipit accusamus culpa quod expedita iure.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(97, 7, 'Norbert Brown', 'cordell.satterfield@beatty.com', 'Sapiente provident ut quam odio ut quia eveniet. Voluptas doloribus ipsam soluta dolor laboriosam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(98, 7, 'Dr. Gideon Kirlin', 'corkery.cristian@gmail.com', 'Et ex qui accusamus. Aliquid quaerat nobis voluptates fugit tempore.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(99, 7, 'Louie Paucek', 'franco05@hotmail.com', 'Enim dolores non nobis rerum dolorem ut non harum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(100, 7, 'Dr. Lafayette Kohler', 'pearl.wiegand@gottlieb.com', 'Et et necessitatibus ut dolorem non vitae mollitia alias. Officiis aut sint facilis eos aut commodi ut consequatur.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(101, 7, 'Adeline Hill', 'vrunte@sauer.org', 'Ducimus molestiae est fugiat nam sit molestias aut aspernatur. Aspernatur omnis quo ipsum quaerat dicta.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(102, 7, 'Letha Roberts', 'danny80@pagac.com', 'Rerum sequi aperiam dolor excepturi illo beatae. Facilis in tenetur quia voluptatem.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(103, 7, 'Leola Price', 'shyann.kertzmann@schmidt.com', 'Eum nulla molestias voluptatibus nihil eum eum iure.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(104, 7, 'Shannon Eichmann', 'maggio.gretchen@gmail.com', 'Neque reprehenderit error voluptas. Facilis voluptate optio et distinctio fugit.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(105, 7, 'Miss Lupe Rempel', 'shanon.cummings@prosacco.com', 'Et numquam itaque asperiores. Nemo at repellat quaerat et labore eveniet quo.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(106, 8, 'Nicolette Willms', 'parisian.josiane@hotmail.com', 'Quo minima esse autem aut sapiente et laudantium. Repudiandae eligendi natus facere rem id dolores quas accusantium.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(107, 8, 'Paris Torp', 'kade.ernser@breitenberg.com', 'Totam explicabo quisquam eum recusandae perspiciatis in ut.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(108, 8, 'Miss Idell Schoen', 'wendy74@russel.com', 'Et est aspernatur ut sit. Laudantium esse odio sunt excepturi repudiandae neque architecto.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(109, 8, 'Simeon Buckridge', 'jast.jarvis@schroeder.org', 'Et ut unde dolorem dolorum id culpa rerum.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(110, 8, 'Dr. Isabel Crooks PhD', 'triston.green@hotmail.com', 'Ut omnis id deleniti totam illum natus. Magni repellendus doloremque fugiat perferendis voluptas non.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(111, 8, 'Delphine Kuhic', 'borer.julius@cronin.com', 'Laboriosam aperiam vel ab impedit ut atque nihil. Nemo neque in consectetur aliquid excepturi corrupti a dolore.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(112, 8, 'Jabari Littel', 'mason.bernier@weissnat.biz', 'Maxime porro qui voluptas dolorem pariatur.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(113, 8, 'Prof. Gus Champlin', 'rfahey@gmail.com', 'Consequatur aut neque magnam et. Odit architecto aliquam corrupti.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(114, 8, 'Dr. Stevie Donnelly Sr.', 'hills.arlo@gmail.com', 'Perferendis rerum quaerat quidem perspiciatis mollitia ut.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(115, 8, 'Mozelle Hettinger', 'dena13@funk.biz', 'Voluptatem maxime delectus sapiente consequuntur sequi et.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(116, 8, 'Piper Murazik III', 'filomena15@powlowski.com', 'Sunt a omnis reprehenderit qui velit. Modi sunt animi iusto quaerat eaque eum numquam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(117, 8, 'Nathaniel Dicki', 'nswaniawski@hotmail.com', 'Molestiae amet quis provident et iste quisquam. Distinctio aut et non placeat magnam autem pariatur.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(118, 8, 'Bonnie Torphy', 'jveum@yahoo.com', 'Nemo sunt id vel quisquam sint laboriosam eum quisquam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(119, 8, 'Taylor Walsh DDS', 'elmo86@yahoo.com', 'Ut minima voluptas in ipsam placeat iure voluptatem. Aperiam sint facere voluptatem debitis nisi doloremque nisi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(120, 8, 'America Baumbach', 'gkilback@reinger.com', 'Voluptatum aut dolorem deserunt et officia praesentium.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(121, 9, 'Mr. Johnpaul Vandervort Jr.', 'johnpaul76@hotmail.com', 'Quia aut consequatur veritatis.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(122, 9, 'Harmony Schiller', 'alysha52@cummings.com', 'Numquam ut aut et aperiam ut.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(123, 9, 'Kara Mann', 'wilbert36@gmail.com', 'Enim sit dolor ipsum ipsa ut fugit corporis sit.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(124, 9, 'Ms. Pinkie Kling MD', 'rachelle.okuneva@hotmail.com', 'Illo et ut facilis occaecati earum ratione repudiandae. Accusantium velit molestias minima quia quo eaque eaque non.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(125, 9, 'Dr. Bret Boyer', 'melany11@cole.info', 'Hic asperiores vitae est suscipit nobis vel quia quae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(126, 9, 'Prof. Bobbie Howell', 'summer48@koss.com', 'Vitae ut vero vel tempora veritatis qui.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(127, 9, 'Emerson O\'Connell', 'jenifer.dare@jacobs.com', 'Eum reprehenderit nobis sed nemo maiores.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(128, 9, 'Vada Streich', 'crawford.runolfsson@hodkiewicz.info', 'Et dolorem aut qui. Eius enim et repudiandae aut possimus minus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(129, 9, 'Mr. Zackery Mann', 'fkunde@oconner.com', 'Maiores maxime non aut sapiente itaque aspernatur modi.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(130, 9, 'Mr. Maurice DuBuque', 'johnston.nicola@collier.info', 'Aut laborum excepturi sint quod nulla voluptates et unde.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(131, 9, 'Miss Chelsie Nienow III', 'jody.beahan@kertzmann.biz', 'Consectetur rerum harum doloribus.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(132, 9, 'Prof. Laverne Schiller DVM', 'terry.stanton@yahoo.com', 'Repudiandae iusto est et excepturi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(133, 9, 'Prof. Jacey Harvey III', 'bgreenholt@hotmail.com', 'Qui iste nesciunt quo explicabo. Nesciunt nobis natus atque quod autem.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(134, 9, 'Maryse Powlowski I', 'norwood22@smitham.net', 'Natus nihil eum autem. Quia repellat perferendis dolores.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(135, 9, 'Rosalyn Labadie', 'kiehn.rickie@yahoo.com', 'Non repellat provident consequuntur voluptates autem quibusdam esse quis.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(136, 10, 'Mr. Emmanuel Kessler', 'ohara.carlos@gmail.com', 'Eum quo ea optio libero. Rerum porro temporibus explicabo enim nulla minus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(137, 10, 'Prof. Letha Kilback', 'newton28@walter.com', 'Perferendis dolorem alias modi incidunt eum et aut consequuntur. Sed incidunt non perferendis asperiores ipsam aliquam eveniet.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(138, 10, 'Mr. Sherwood Schimmel II', 'coralie.gleichner@gmail.com', 'Assumenda consequatur omnis excepturi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(139, 10, 'Cindy Klocko', 'monserrate58@gmail.com', 'Qui eius eum cupiditate fuga.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(140, 10, 'Telly Cummerata', 'yoreilly@vonrueden.biz', 'Voluptas dolores quia doloremque culpa cumque laboriosam fugiat consequuntur. Est velit voluptas nesciunt dolores.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(141, 10, 'Prof. Lilliana Krajcik III', 'winnifred.murphy@ziemann.com', 'Accusamus et ut nobis blanditiis qui dignissimos fugit harum. Quos voluptatem mollitia debitis non qui.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(142, 10, 'Dalton Gottlieb', 'crystel.schultz@gmail.com', 'Sint non sed ut voluptatem optio.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(143, 10, 'Dr. Filiberto Beatty', 'walsh.nat@yahoo.com', 'Ut fugiat eum beatae itaque dolorum dolores corporis. Quas omnis porro nihil minus vel.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(144, 10, 'Donny Wintheiser', 'yroberts@yahoo.com', 'Consectetur ut aperiam possimus quibusdam. Molestiae eveniet error eum rerum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(145, 10, 'Ricardo Steuber', 'xrutherford@yahoo.com', 'Earum quidem ut in eaque vitae ut.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(146, 10, 'Demetrius Robel MD', 'gnienow@yahoo.com', 'Vel ipsa in repellendus. Similique reprehenderit et facilis et qui.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(147, 10, 'Jaylan Lueilwitz', 'althea66@damore.info', 'Dolorum omnis in omnis cumque et exercitationem.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(148, 10, 'Dedric Leffler', 'icummings@gmail.com', 'Voluptatem explicabo sint consequuntur qui atque odit itaque magnam. Ipsum est nulla accusantium dolorem fuga id doloremque.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(149, 10, 'Michele Metz', 'conroy.ulises@yahoo.com', 'Asperiores occaecati possimus pariatur voluptate illum vel et ea.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(150, 10, 'Tracy Blanda', 'mthompson@dietrich.com', 'Culpa expedita vel tempora impedit assumenda porro quia eos.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(151, 11, 'Name Gleichner DVM', 'carroll13@hotmail.com', 'Sapiente officia voluptatem vel et quis recusandae ipsum commodi. Veniam fuga beatae qui voluptatem ratione ducimus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(152, 11, 'Otha Kassulke', 'stoltenberg.orlo@yahoo.com', 'Velit ut consequatur excepturi quos est dolores. Voluptatum magni consequatur est culpa quaerat eligendi.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(153, 11, 'Prof. Brenden Pfeffer Sr.', 'streich.shana@gmail.com', 'Voluptatem dolorem dicta asperiores assumenda. Assumenda dolorem corrupti sit officia dicta corporis ipsam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(154, 11, 'Mr. Myles Ryan', 'lenore98@gmail.com', 'Eaque repudiandae culpa quia.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(155, 11, 'Mr. Titus Sporer V', 'isabella.jacobson@mante.com', 'Corporis at ut ex ut mollitia provident omnis. Modi consequuntur nisi asperiores quibusdam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(156, 11, 'Isaac Kunze MD', 'emelia24@hotmail.com', 'Animi nihil architecto iusto sint repudiandae laboriosam. Reprehenderit voluptates minima aliquam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(157, 11, 'Green Mosciski', 'maverick17@barrows.biz', 'Sit quis molestiae ad quae nihil magni. Ab quia et quasi sequi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(158, 11, 'Wiley Reinger', 'paxton.larkin@hotmail.com', 'Sit quas dolore eum amet pariatur quia. Dicta eum eius ut.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(159, 11, 'Demetris Reilly', 'danyka35@hotmail.com', 'Ut optio excepturi provident quas expedita molestiae reprehenderit. Magni quod culpa voluptas doloribus est itaque.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(160, 11, 'Nikolas Funk Sr.', 'weimann.gillian@yahoo.com', 'Sequi quod maxime harum tenetur.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(161, 11, 'Prof. Camren Osinski IV', 'wmcclure@yahoo.com', 'Laboriosam quia libero optio aut eum. Doloribus reprehenderit ullam est ut cum doloribus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(162, 11, 'Prof. Janet Effertz PhD', 'bstoltenberg@gmail.com', 'Repellat quo quaerat sint amet. Eligendi error voluptatem qui similique reiciendis assumenda est.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(163, 11, 'Mrs. Annetta Wiza', 'emil.kihn@predovic.com', 'Qui ab beatae iste suscipit facere perferendis quia.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(164, 11, 'Cecil Terry', 'corkery.blair@monahan.com', 'Sed velit eius sed incidunt consectetur est. Recusandae exercitationem dolor magni exercitationem quisquam nihil dolor.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(165, 11, 'Ms. Angie Russel II', 'malachi.kuvalis@herzog.com', 'Explicabo eum totam consequatur autem quis quod recusandae velit. Fuga in doloribus dolor temporibus earum.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(166, 12, 'Marina Cole', 'bdickinson@yahoo.com', 'Ratione est non consequatur. Aut non ut et ex consequuntur ipsum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(167, 12, 'Ezra Pfannerstill', 'ronny34@davis.com', 'Ut in doloribus nam sit sit quaerat. Unde et aut et quam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(168, 12, 'Jackie Metz', 'hackett.stuart@runte.biz', 'Consequatur consequatur exercitationem veniam voluptas sit ratione. Earum earum doloremque ut nesciunt consectetur.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(169, 12, 'Anabel Kunze', 'qfritsch@hane.org', 'Quo aut et molestiae tempora debitis.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(170, 12, 'Jessyca Dickinson I', 'chelsea97@white.com', 'Soluta enim dicta iusto quas consequatur. Aut rem illo fugit voluptas quos dolor.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(171, 12, 'Salvador Cummings', 'altenwerth.alford@hotmail.com', 'Necessitatibus dolore a id dolores. Iusto laboriosam quasi architecto nihil ut ea soluta.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(172, 12, 'Royce Runte', 'pveum@olson.com', 'Quam placeat ut repudiandae temporibus. Dolorum aut similique quaerat cum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(173, 12, 'Hulda Kunde', 'georgette.daniel@yahoo.com', 'Consequatur ut illum quod ut exercitationem perspiciatis. Deserunt harum error sint nam doloribus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(174, 12, 'Xavier Purdy', 'ethan92@yahoo.com', 'Labore illo animi laudantium aliquam enim. Qui omnis assumenda error maxime rerum veniam dolores.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(175, 12, 'Mr. Alessandro Kautzer DDS', 'lklein@yahoo.com', 'Odio nihil neque quod quae laborum iste.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(176, 12, 'Rachelle Dare', 'antonina48@gmail.com', 'Voluptas corrupti deleniti est et aperiam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(177, 12, 'Mr. Webster Prosacco', 'lupe34@hermann.biz', 'Sit dolores dignissimos eos suscipit nisi.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(178, 12, 'Celia Gibson', 'zetta00@schmidt.biz', 'Non eum non veniam consequatur consequatur amet.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(179, 12, 'Dominique Toy III', 'herzog.lindsay@veum.com', 'Est natus commodi eius porro.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(180, 12, 'Dayne Ankunding', 'stamm.jaunita@yahoo.com', 'Sit veniam ex pariatur vel. Id qui explicabo temporibus nihil unde est illo.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(181, 13, 'Jacklyn Walter', 'moore.alana@hotmail.com', 'Cum libero inventore sunt doloribus necessitatibus totam.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(182, 13, 'Bennie Bradtke', 'mhirthe@kerluke.net', 'Eos cum aut debitis possimus.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(183, 13, 'Rogers Kling', 'dickinson.dangelo@boyer.com', 'Non in ad repudiandae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(184, 13, 'Prof. Antonietta Carter MD', 'gdicki@price.org', 'Error vero saepe sit repellendus harum porro. Placeat et iusto quis numquam officiis fuga optio nam.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(185, 13, 'Alicia Trantow', 'mdaugherty@gmail.com', 'Dignissimos fugit ad perferendis et in soluta.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(186, 13, 'Sylvester Von', 'hill.nicola@marquardt.com', 'Temporibus suscipit est aperiam sit. Aut inventore et mollitia maiores.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(187, 13, 'Miss Elfrieda Harris MD', 'michael53@yahoo.com', 'Rerum rerum et placeat hic eveniet quisquam fuga. Aspernatur quam ea totam incidunt.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(188, 13, 'Coby Hyatt', 'jalen.ullrich@hotmail.com', 'Autem accusamus architecto dolores illum praesentium.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(189, 13, 'Miss Kara Orn PhD', 'terence24@balistreri.com', 'Necessitatibus et excepturi blanditiis repellendus modi.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(190, 13, 'Fritz McCullough', 'mmcglynn@yahoo.com', 'Labore voluptates sunt quam qui minima dolorum beatae. Inventore autem nihil voluptatem expedita maiores impedit aspernatur.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(191, 13, 'Mellie Hand', 'cynthia24@gmail.com', 'Tempore quaerat natus enim velit inventore sint fugit.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(192, 13, 'Adriana Kiehn', 'goldner.luis@kovacek.net', 'Aut repellat ab voluptas. Eos ratione impedit porro eum asperiores et.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(193, 13, 'Dr. Fritz Sporer', 'sidney04@bayer.com', 'Sunt quod dicta omnis ea et tempore aut.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(194, 13, 'Aliza Raynor', 'conrad.roberts@grimes.org', 'Assumenda cupiditate ex voluptatem. Quia eaque culpa et totam aliquid esse.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(195, 13, 'Elton Mills III', 'jwilkinson@yahoo.com', 'Perferendis accusantium ex ea rerum voluptas saepe ut. Consequatur impedit quo voluptates non.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(196, 14, 'Dr. Aimee Monahan Jr.', 'henry.parker@crona.com', 'Temporibus minus excepturi voluptatem sint voluptatum sint molestias.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(197, 14, 'Karlie Schowalter III', 'mbruen@hotmail.com', 'Veniam quibusdam totam nisi dolorem ullam in. Dolore assumenda est ut nisi laboriosam nostrum.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(198, 14, 'Elnora Schumm PhD', 'nader.jess@gmail.com', 'Odit molestiae quasi eaque. Provident velit modi illum ullam architecto.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(199, 14, 'Dr. Fritz Sauer V', 'rath.lucious@davis.com', 'Dicta veniam eligendi ab officiis molestiae.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(200, 14, 'Harmon Reynolds', 'rashawn.mcglynn@gmail.com', 'Adipisci quo rem facere suscipit quia unde non. Voluptatem veritatis magni nihil nihil.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(201, 14, 'Amiya Wuckert', 'evalyn.emmerich@hotmail.com', 'Ut officiis quae consequatur facilis.', 'approved', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(202, 14, 'Delaney Klein DVM', 'kaela.howell@cronin.com', 'Doloribus et rerum molestiae sequi at accusantium. Tenetur voluptatem non odio ab delectus.', 'pending', '2024-04-18 05:42:53', '2024-04-18 05:42:53'),
(203, 14, 'Maxime Lubowitz', 'jaqueline28@hotmail.com', 'Possimus et recusandae tempore.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(204, 14, 'Kira Kautzer PhD', 'xhomenick@hotmail.com', 'Omnis beatae aut provident eveniet.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(205, 14, 'Mr. Maxine Howell IV', 'elbert.mcglynn@mills.com', 'Animi consequatur ipsa et est.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(206, 14, 'Lesley Klocko', 'tnikolaus@gmail.com', 'Perferendis quo reprehenderit officia optio. Doloribus odio qui ut enim quibusdam ut.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(207, 14, 'Richie VonRueden', 'nova.murray@reilly.com', 'Minus animi totam cumque.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(208, 14, 'Dr. Berniece Runte', 'ischumm@gmail.com', 'Sit unde repudiandae velit.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(209, 14, 'Miss Jade Okuneva Jr.', 'marcelino.bogisich@gmail.com', 'Corrupti architecto aliquam iure sit animi laudantium. Exercitationem debitis beatae vel aut omnis autem.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(210, 14, 'Mr. Lonnie Beatty V', 'danial54@erdman.info', 'Quia nisi porro provident atque tenetur quisquam.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(211, 15, 'Mrs. Gracie Schroeder MD', 'marks.karlee@hotmail.com', 'Numquam fuga omnis ullam non sit numquam. Saepe ea enim dignissimos omnis non neque unde.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(212, 15, 'Prof. Sammie Turcotte', 'tyree07@gmail.com', 'Culpa sequi non reprehenderit laudantium ea amet.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(213, 15, 'Fletcher Grady', 'erdman.amira@gmail.com', 'Rerum quo ea voluptate id consequatur odit consequatur aut.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(214, 15, 'Dr. Edwardo Yost PhD', 'merritt.kuvalis@yahoo.com', 'Et quas rerum id.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(215, 15, 'Rachelle Heathcote Sr.', 'bbecker@gmail.com', 'Et dolor molestiae ratione beatae. Ut atque rem nam error incidunt.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(216, 15, 'Ms. Mariah Klocko', 'hahn.nick@yahoo.com', 'Quasi sint reprehenderit aut aut. Dolor ut iusto cumque enim numquam veniam consequatur.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(217, 15, 'Nelda Hoeger', 'mayra37@marvin.info', 'Rerum consequatur ratione quasi eos vero enim blanditiis. Aliquam expedita eaque earum quae quaerat sint.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(218, 15, 'Josie Lueilwitz', 'terrence17@haley.com', 'Veniam distinctio maiores qui sint at ex.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(219, 15, 'Elbert Cole', 'mariah.bechtelar@gmail.com', 'Ut aut explicabo est laboriosam quae et ut. Sed explicabo tenetur modi ratione recusandae repellat officia.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(220, 15, 'Madilyn Gorczany', 'jacklyn94@yahoo.com', 'Similique ea consequatur qui veniam omnis architecto. Omnis alias omnis error veniam unde.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(221, 15, 'Alexandrine Botsford', 'windler.theodora@gmail.com', 'Odio delectus facilis assumenda aut velit autem. Id totam laudantium inventore.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(222, 15, 'Mr. Ramiro Macejkovic DDS', 'zrempel@reynolds.info', 'Eos nesciunt similique sed non ex.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(223, 15, 'Alanis Durgan', 'barbara57@halvorson.com', 'Odit consequatur qui eligendi excepturi maiores.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(224, 15, 'Heidi Walsh', 'pboyle@padberg.biz', 'Quidem illo aut quia aspernatur ut vel.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(225, 15, 'Cathrine Simonis', 'treutel.delores@medhurst.org', 'Voluptate vero animi fuga dolores. Quia et quasi suscipit exercitationem facere.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(226, 16, 'Angus Ernser', 'amy44@hotmail.com', 'Voluptates eius et voluptate fuga perspiciatis eius molestiae.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(227, 16, 'Pattie Kshlerin', 'bflatley@hamill.com', 'Facilis accusantium nihil sequi impedit sed voluptas. Explicabo odio qui ducimus qui explicabo est iusto et.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(228, 16, 'Dr. Alanna Bosco', 'marks.asia@ruecker.com', 'Ut fugiat ut ducimus quas illum sed et. Ea quo tempora sed.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(229, 16, 'Erna Kling II', 'schulist.arlene@hotmail.com', 'Fuga animi aut tempore ducimus alias. Quae aut nemo dolorem cumque est.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(230, 16, 'Luigi Satterfield', 'trinity.treutel@gmail.com', 'Nulla velit sit sunt iusto nihil delectus nihil. Incidunt minus incidunt voluptatem aperiam.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(231, 16, 'Courtney Gerhold IV', 'lynch.maureen@johnson.com', 'Dolorum laborum fugiat quis recusandae laboriosam adipisci. Aperiam omnis sit aliquid aspernatur natus reprehenderit fugit rerum.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(232, 16, 'Skyla Leannon', 'ebeahan@gmail.com', 'Velit dolor odit id porro consequatur. Consequatur iure vero ducimus harum omnis.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(233, 16, 'Prof. Dejah O\'Keefe', 'qbarrows@hotmail.com', 'Autem ratione optio assumenda nulla sit blanditiis rem veniam.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(234, 16, 'Katarina Funk', 'chaim71@heaney.com', 'Mollitia molestias aspernatur accusantium molestias corrupti rem. Et vitae qui est assumenda voluptate.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(235, 16, 'Edd Crist IV', 'russell.hamill@yahoo.com', 'Sit sit voluptatem porro voluptatem perferendis officiis. Eum eligendi autem neque molestiae alias nisi.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(236, 16, 'Noel Krajcik', 'tkohler@yahoo.com', 'Praesentium unde ut voluptatem aut nostrum molestiae.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(237, 16, 'Prof. Jadyn Prosacco', 'ardith85@hotmail.com', 'Facere rerum occaecati illum dolorem excepturi suscipit.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(238, 16, 'Akeem Pouros', 'hahn.camryn@yahoo.com', 'Ipsum id et et blanditiis et quibusdam nulla. Eius et repellat debitis.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(239, 16, 'Ardella Grimes', 'cormier.kayden@hotmail.com', 'Et et voluptatum commodi.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(240, 16, 'Sylvia Treutel', 'breitenberg.aurelia@russel.com', 'Dolores et cumque voluptatibus culpa dolorum illum itaque. Blanditiis nam at temporibus.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(241, 17, 'Alf Mueller', 'robbie75@yahoo.com', 'Est praesentium aut minus. Quia totam veniam enim eius adipisci iusto quidem.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(242, 17, 'Germaine Ebert', 'gpowlowski@hotmail.com', 'Dolore et consequatur odit rem. Accusantium quia natus assumenda corporis.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(243, 17, 'Lela Zulauf', 'pkozey@gmail.com', 'Maiores architecto exercitationem ea dolorem magni sed alias.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(244, 17, 'Jenifer Wilderman', 'kaela92@hane.info', 'Sint aperiam quis ad quis voluptate.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(245, 17, 'Emil Wunsch I', 'savanna12@gmail.com', 'Id totam voluptatem sed et omnis quibusdam officiis.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(246, 17, 'Eulah Barrows', 'elton29@yahoo.com', 'Sapiente sed voluptatem cupiditate facere nulla sit et.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(247, 17, 'Elmira Volkman', 'viva24@gmail.com', 'Ab ratione sed expedita nobis illo voluptates perspiciatis.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(248, 17, 'Dr. Harold Rice', 'berge.dandre@hotmail.com', 'Expedita sunt exercitationem ea fugit magnam.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(249, 17, 'Avis Labadie', 'mwest@hotmail.com', 'Recusandae odit similique est corporis dolorem et possimus rerum. Ut odit est ducimus culpa provident odit quaerat excepturi.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(250, 17, 'Angela Farrell', 'ggrady@wehner.com', 'Vero ut provident quia debitis omnis aut harum. Explicabo qui vel omnis qui corrupti.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(251, 17, 'Anika Feest', 'domenick.bednar@hotmail.com', 'Qui minima voluptatum saepe. Assumenda facere qui laboriosam incidunt eius adipisci.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(252, 17, 'Justen Shanahan', 'gsteuber@mayer.info', 'Ea qui alias eos dolores. Ut minus iusto voluptates.', 'approved', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(253, 17, 'Prof. Eileen Gibson', 'arturo12@vonrueden.net', 'Quibusdam quasi consectetur et qui a in repellendus eaque.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(254, 17, 'Dr. Cindy Harris', 'jannie97@yahoo.com', 'Dolor delectus labore dicta et dolorem. Quae repellat eum at non aspernatur fugit.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54'),
(255, 17, 'Prof. Macey Wilderman IV', 'grimes.maia@hotmail.com', 'Voluptatibus consequatur reiciendis odit et quo minima reiciendis. Eveniet aut quo omnis enim et repellat.', 'pending', '2024-04-18 05:42:54', '2024-04-18 05:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_04_15_123116_create_brands_table', 1),
(5, '2024_04_15_134107_create_products_table', 1),
(6, '2024_04_15_143429_add_price_to_product_migration', 1),
(7, '2024_04_15_144920_create_comments_table', 1),
(8, '2024_04_16_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `brand_id` bigint UNSIGNED NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'main.jpeg',
  `description` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_brand_id_foreign` (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `image_path`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'M3', 'main.jpeg', 'Powerful sports sedan with precise handling.', 60000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(2, 1, 'X5', 'main.jpeg', 'Luxurious SUV with advanced technology.', 75000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(3, 1, 'Z4', 'main.jpeg', 'Sleek convertible designed for performance.', 55000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(4, 1, 'i8', 'main.jpeg', 'Futuristic hybrid supercar with striking design.', 150000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(5, 2, 'A4', 'main.jpeg', 'Elegant sedan offering comfort and sophistication.', 45000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(6, 2, 'Q7', 'main.jpeg', 'Spacious SUV with cutting-edge features.', 85000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(7, 2, 'TT', 'main.jpeg', 'Iconic coupe known for its sporty performance.', 60000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(8, 2, 'RS5', 'main.jpeg', 'High-performance coupe with dynamic styling.', 95000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(9, 3, 'C-Class', 'main.jpeg', 'Refined sedan delivering luxury and performance.', 50000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(10, 3, 'E-Class', 'main.jpeg', 'Executive sedan with unparalleled comfort.', 65000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(11, 3, 'GLC', 'main.jpeg', 'Versatile SUV blending style and practicality.', 60000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(12, 3, 'S-Class', 'main.jpeg', 'Flagship luxury sedan setting new standards.', 90000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(13, 4, 'Giulia', 'main.jpeg', 'Sporty sedan with Italian flair and performance.', 55000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(14, 4, 'Stelvio', 'main.jpeg', 'Dynamic SUV combining style and agility.', 70000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(15, 5, 'Niva', 'main.jpeg', 'Robust off-road vehicle built for adventure.', 25000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(16, 5, 'Granta', 'main.jpeg', 'Compact sedan offering practicality and value.', 15000, '2024-04-18 05:42:38', '2024-04-18 05:42:38'),
(17, 5, 'Vesta', 'main.jpeg', 'Modern sedan with sleek design and comfort.', 20000, '2024-04-18 05:42:38', '2024-04-18 05:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Kiana Dickinson', 'admin@mail.com', NULL, '$2y$10$ottpkQVwruJRn17Ja2hdX.0p41i2R3aJCDNQcGKtzSUdvzGOFyuBm', 'admin', NULL, '2024-04-18 05:42:38', '2024-04-18 05:42:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
