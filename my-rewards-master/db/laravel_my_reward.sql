-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2019 at 05:54 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_my_rewards`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_types`
--

CREATE TABLE `access_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `way_to_access_the_program` enum('no_login','sso','pre_registration','self_registration') COLLATE utf8mb4_unicode_ci NOT NULL,
  `register_require_approval` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_locked_out_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_password_option` enum('email','sms') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `access_types`
--

INSERT INTO `access_types` (`id`, `program_id`, `way_to_access_the_program`, `register_require_approval`, `email`, `account_locked_out_message`, `reset_password_option`, `created_at`, `updated_at`) VALUES
(1, 1, 'self_registration', 'yes', 'program@adports.ae', '', 'email', '2019-04-10 23:25:57', '2019-04-10 23:25:57'),
(2, 2, 'self_registration', 'yes', 'krystal.kessler@example.com', '', 'email', '2019-04-10 23:26:02', '2019-04-10 23:26:02'),
(3, 3, 'self_registration', 'yes', 'jenkins.leta@example.org', '', 'email', '2019-04-10 23:26:03', '2019-04-10 23:26:03'),
(4, 4, 'self_registration', 'yes', 'ureynolds@example.net', '', 'email', '2019-04-10 23:26:03', '2019-04-10 23:26:03'),
(5, 5, 'self_registration', 'yes', 'jakubowski.lilly@example.com', '', 'email', '2019-04-10 23:26:05', '2019-04-10 23:26:05'),
(6, 6, 'self_registration', 'yes', 'xlangosh@example.com', '', 'email', '2019-04-10 23:26:07', '2019-04-10 23:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `last_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `email_verified_at`, `password`, `contact_number`, `type`, `last_login`, `login_ip`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Craig Emmerich', 'hortense.mills@example.com', '2019-04-10 23:25:50', '$2y$10$bWl/WqQC1HrTyZeUPGtLM.QCvEnakyJ7o0B4O6IaeLoyVZSx.D1/2', NULL, 'user', NULL, NULL, NULL, 'ObodaYIUGD', '2019-04-10 23:25:51', '2019-04-10 23:25:51'),
(2, 'Monserrate Mitchell', 'yschamberger@example.net', '2019-04-10 23:25:51', '$2y$10$SyVoFiWe79uMxJi6sar0IehGDvB6g2lFgr5505ZlRfdUsnm.gFHRq', NULL, 'user', NULL, NULL, NULL, '6NyTowzgV1', '2019-04-10 23:25:51', '2019-04-10 23:25:51'),
(3, 'Tatyana Ruecker', 'fwindler@example.net', '2019-04-10 23:25:52', '$2y$10$dqeKYYFqL61Yw894mgbHsOJNhC.uUoEQp90WmKxZFnOcbr/t8n6kq', NULL, 'user', NULL, NULL, NULL, 'cn88ZXi5Sm', '2019-04-10 23:25:52', '2019-04-10 23:25:52'),
(4, 'Rebecca Morissette', 'tremblay.rogers@example.org', '2019-04-10 23:25:54', '$2y$10$LSE/rjBX.xm98mNsev5wdep68YihIWq7eRcAGSs/N/S21m4ACSUPe', NULL, 'user', NULL, NULL, NULL, 'LP4b5MUIuO', '2019-04-10 23:25:54', '2019-04-10 23:25:54'),
(5, 'Dr. Rowland Feest MD', 'aboyle@example.com', '2019-04-10 23:25:55', '$2y$10$A2vxyt4E/RRyZduqDkH8qOxUIjBxqvseXn342WP9.hVtSEu75R2T.', NULL, 'user', NULL, NULL, NULL, 'IVXZKRs1W0', '2019-04-10 23:25:55', '2019-04-10 23:25:55'),
(6, 'AD Ports Admin', 'client@adports.ae', '2019-04-10 23:25:57', '$2y$10$rJc1RlgfzV3gww5rZ2E4TeDsG6X/V989ysBXpUpa2oXXczydALnXe', '01000000', 'client_admin', NULL, NULL, NULL, NULL, '2019-04-10 23:25:57', '2019-04-10 23:25:57'),
(7, 'Brad Gislason', 'maxime78@example.net', '2019-04-10 23:26:08', '$2y$10$niLkDFCTqMp0FY1E.5fUjuKuDr6fGjhjBuFXshIALu6SwwcVg6FTq', NULL, 'user', NULL, NULL, NULL, 'bNhfzaUJi7', '2019-04-10 23:26:09', '2019-04-10 23:26:09'),
(8, 'Pearl Emmerich', 'hilbert.rolfson@example.net', '2019-04-10 23:26:09', '$2y$10$3EA3NsAqzkKI2QPXNS2Jw.cUk.PfBrdlmUqL1.ZZjk350bxoMMzXK', NULL, 'user', NULL, NULL, NULL, 'dwJfCDXy9U', '2019-04-10 23:26:09', '2019-04-10 23:26:09'),
(9, 'Mohammad Graham I', 'zdaniel@example.org', '2019-04-10 23:26:09', '$2y$10$0uUNSWbgg.0VlE5LI4KR2.VOFsi20Ldt7hjBFVSDkL3dHWreMI7MW', NULL, 'user', NULL, NULL, NULL, 'p8PypWUW7K', '2019-04-10 23:26:09', '2019-04-10 23:26:09'),
(10, 'Lee Kuhlman MD', 'wyman04@example.com', '2019-04-10 23:26:09', '$2y$10$P49nyRzyJQ/k9kjKFalPcuvKVOG4M9bA3lkk.aCRXZqJT34kBcJgW', NULL, 'user', NULL, NULL, NULL, 'WuQcIF0dHu', '2019-04-10 23:26:09', '2019-04-10 23:26:09'),
(11, 'Nayeli Keeling', 'mkertzmann@example.net', '2019-04-10 23:26:09', '$2y$10$eAQqN0nkUKDS4OOxrgWPye8AhHC.Vk53gYHUgsepZAl7uyoV3Fwle', NULL, 'user', NULL, NULL, NULL, 'eFOUWZHwan', '2019-04-10 23:26:09', '2019-04-10 23:26:09'),
(12, 'osama.alsakhal@adports.ae', 'osama.alsakhal@adports.ae', NULL, '$2y$10$SXc2TSGVEyYFhK/xF4EJuunXvWm/eIHSSNIqa4elMyh3gDx4MwYIW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:36', '2019-04-11 00:01:36'),
(13, 'khalid.shalabi@adports.ae', 'khalid.shalabi@adports.ae', NULL, '$2y$10$UYYFu.aH58RuXo9Sg8khzuocmIxJbuJi4njNxWniMHpb2SUFrXrbS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:36', '2019-04-11 00:01:36'),
(14, 'khalid.abbas@adports.ae', 'khalid.abbas@adports.ae', NULL, '$2y$10$7sNzjkxoAGVa0waPUSRzsOZcKcR5gkeoCT9g6ib9lZXaXFyF3tyam', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:36', '2019-04-11 00:01:36'),
(15, 'rashed.alromaithi@adports.ae', 'rashed.alromaithi@adports.ae', NULL, '$2y$10$yWCEGbrV27V9jO/G..HfQepib5ThBOCj9lOhbK3VaHgHkom.HVdF2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(16, 'mohsen.almarry@adports.ae', 'mohsen.almarry@adports.ae', NULL, '$2y$10$Ot61asBHNuj8Z4A.r8B3fu5SGirS18j.UYYRc6gim3itk/eZ1AfOi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(17, 'AbdulJaleel.Sabun@adports.ae', 'AbdulJaleel.Sabun@adports.ae', NULL, '$2y$10$GTONkcqIkUfM/0z2/sIp7OvkKrNeLirvAcj0JGlXaluM2tEedshLa', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(18, 'kuriapilly.majeed@adports.ae', 'kuriapilly.majeed@adports.ae', NULL, '$2y$10$wHFfFwTRFN7tH2crfj8Za.UIZF2lS1gKH390KreaK7mqoD8JeDJgC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(19, 'layla.abbood@adports.ae', 'layla.abbood@adports.ae', NULL, '$2y$10$hLCKRpVUTfyxaHNGxTvAwO6/5DPYpdPr3UT3GalS5JFoQo8iWrLKe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:38', '2019-04-11 00:01:38'),
(20, 'shaimaa.yousuf@adports.ae', 'shaimaa.yousuf@adports.ae', NULL, '$2y$10$w8pkmC4ReaowP7Q.CjBz1.k3DG50rNgfjLELAzc/GjGLoXZ5pjZm6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(21, 'izzath.musny@adports.ae', 'izzath.musny@adports.ae', NULL, '$2y$10$xFFiPToB.laXM4DuGYEj5uAhouIXLAHuP5wnH5XslCsj58AxdU9W.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(22, 'malek.alhammadi@adports.ae', 'malek.alhammadi@adports.ae', NULL, '$2y$10$hea3g4o7ItsBK3nvTK2eZuDPM30NEBY77h9SPvC9VsmE2RDJwfOBe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(23, 'eiman.alkhalaqi@adports.ae', 'eiman.alkhalaqi@adports.ae', NULL, '$2y$10$3r32iFjheRrDUi1VmKMz6urjcXc4N8IzZ7ypsOcwKZPROOfFk1eJC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(24, 'jessima.mustaffa@adports.ae', 'jessima.mustaffa@adports.ae', NULL, '$2y$10$dSDRJVBgfBZ00DjB39Nkm.kAs3bAaCJ6idsP36ZVOHewJqP/m2zzi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(25, 'mohamed.ashar@adports.ae', 'mohamed.ashar@adports.ae', NULL, '$2y$10$6.dNMlL1yEkIw/OHSzFKkO8cKM9c6fQHzefnHQ.zk5SRHd1T4Ur5G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(26, 'abeer.najeeb@adports.ae', 'abeer.najeeb@adports.ae', NULL, '$2y$10$AdqvQA6oNb2uoh9MAEv.GOr473uBpJQF7JuTJcXA5g0jLtOb.ZP.u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(27, 'habeeb.rahiman@adports.ae', 'habeeb.rahiman@adports.ae', NULL, '$2y$10$UwVMAahXOAF1cKqgZ0Sn0ekuDkLbZYhG5aFUeoetrT12uBdNZA.kq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(28, 'mohamed.jamaleddine@adports.ae', 'mohamed.jamaleddine@adports.ae', NULL, '$2y$10$7hSCDnj.jiOO0Zgw9HuQr.frv4aQo16bOYChN0FpDAL0dxa07uJXe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(29, 'hadi.owaida@adports.ae', 'hadi.owaida@adports.ae', NULL, '$2y$10$YCGaM3j1/qvdP5NjqQGZPuqzu2mdXgw8JGbQy8DWYGoR6wb5HQzW2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(30, 'zaid.alali@adports.ae', 'zaid.alali@adports.ae', NULL, '$2y$10$yE2c.TqzS0bgK85NgIQg3eQQG90of/4hPAQBOFcfSfC1seZvLvfBO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(31, 'mohammed.ziad@adports.ae', 'mohammed.ziad@adports.ae', NULL, '$2y$10$orgSEgfi6pP3luIdzALOD.akdNyIbS9co.VdiWeMUsJvcdGG5hOZG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(32, 'adnan.barzeq@adports.ae', 'adnan.barzeq@adports.ae', NULL, '$2y$10$egxGAsxlBjE.TtFrtaqjb.cfKTLp.Pdoguu9t1MQoaDFJibPO9sJ2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(33, 'Mamdouh.Yousef@adports.ae', 'Mamdouh.Yousef@adports.ae', NULL, '$2y$10$kyqFguOcFrt9ms2CjbHfuOyi8F080mNCi0LkoaHelSsV7biGhi7LO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(34, 'may.hamed@adports.ae', 'may.hamed@adports.ae', NULL, '$2y$10$1WlWrM6BsbzQLoL96OCf.upkhPSgXZ6drrHTT6KHVdG8tT31i8I2u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(35, 'salem.al-qubaisi@adports.ae', 'salem.al-qubaisi@adports.ae', NULL, '$2y$10$9oQI7pxc71vH0RlTQvkj.udNyi7GGywUUqeVN2mwLCdWWiWd.1oHe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(36, 'safeera.naushad@adports.ae', 'safeera.naushad@adports.ae', NULL, '$2y$10$nurM8WQJZmtUDfN9od4Nr.59vdNVvsCEF4p8sTJ6ybTbk5ox8tLLC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(37, 'joumana.najjar@adports.ae', 'joumana.najjar@adports.ae', NULL, '$2y$10$V2ljqVhuUkXXunvB/AoogOh0JDTA7WP1nD8n4td9rVsBpG4HvhJcu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(38, 'yousif.alyaaqoubi@adports.ae', 'yousif.alyaaqoubi@adports.ae', NULL, '$2y$10$mt63VbvPVhZhAFsKg1Ch1uyipR79ghQAw1EOu1n4AgoojgkRP.Jrm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(39, 'mohamed.aslam@adports.ae', 'mohamed.aslam@adports.ae', NULL, '$2y$10$nSYFnWxOiFaFJoKDxv8XIOcYjkbUzM8rCy3yniI7V14aQozuPu4Ci', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(40, 'romel.gorgonia@adports.ae', 'romel.gorgonia@adports.ae', NULL, '$2y$10$GUXr33QOJdiivKh13r2liOy6.OaYZSUdqvQiiealcaOuiBWs3uIdq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(41, 'labid.hamad@adports.ae', 'labid.hamad@adports.ae', NULL, '$2y$10$TxrQf9xVvG1tgnzdoWdc6ObmbkPRju.pUJtlRIW9quqCZTOpdL/eG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(42, 'watheb.almasoud@adports.ae', 'watheb.almasoud@adports.ae', NULL, '$2y$10$dTkF8gCn4MWrDutIs1eb8eS7lTQnZV3ca0WAhRpbcTCtoZub2vYOS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(43, 'ludette.fernandez@adports.ae', 'ludette.fernandez@adports.ae', NULL, '$2y$10$3uytdCZA35pF0rBJ7iOVYO5TxIfH3K.3/p9e.3zcKi.r6SXkFLCl.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(44, 'zahid.syed@adports.ae', 'zahid.syed@adports.ae', NULL, '$2y$10$8xqkvjUKbU4Nm7fihrZ3Z.j9XBeJpQj5Hnle7QV9PjeFdf4wJknBq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(45, 'shams.alshamsi@adports.ae', 'shams.alshamsi@adports.ae', NULL, '$2y$10$9cQ/aE1D5dZXkD0d1XWACevkEACdA.M3U3Gch97VDH6bgMVb36PaG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(46, 'aneesa.yousef@adports.ae', 'aneesa.yousef@adports.ae', NULL, '$2y$10$49KiUIfLZVTzz4kvgpL2Ye4pMxzbXP/8xRgUzrNi4TVImfV35hy7m', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:45', '2019-04-11 00:01:45'),
(47, 'waheed.dean@adports.ae', 'waheed.dean@adports.ae', NULL, '$2y$10$mYz4tJLuR0jzuoRVOc/9CO6IPuJ1YFRMTJggnBR3PP15s9q/upaR6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:45', '2019-04-11 00:01:45'),
(48, 'mohamed.puthuveettil@adports.ae', 'mohamed.puthuveettil@adports.ae', NULL, '$2y$10$0NUP.dapzbZt9DxSvyap5uXvbSOg3xz9UxWRMrAH9oUxqYlpVyKC2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(49, 'mohamed.alshamisi@adports.ae', 'mohamed.alshamisi@adports.ae', NULL, '$2y$10$13ju5sHpTzEiZDgB11.faOBN9sQZZjMWnTX22jGmoZj84LAmNZF0W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(50, 'fortune.marerwa@adports.ae', 'fortune.marerwa@adports.ae', NULL, '$2y$10$BuGiiQiNHE5C4uRYEuYoUuhWNfArCiltu4jwN8dcx9OEvk3KcGifK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(51, 'abdullah.alhameli@adports.ae', 'abdullah.alhameli@adports.ae', NULL, '$2y$10$Z8pMxIoj2imC72fa65NQvOixPun043Vmvg3AUQfnYIuf66PZsy5hC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(52, 'jihan.alahmedi@adports.ae', 'jihan.alahmedi@adports.ae', NULL, '$2y$10$iYwB4V299IOO30By0xRzoeEV8XO0bJZ4yBW4VAfGAFI6M8aZLAJSK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(53, 'benjamin.sunga@adports.ae', 'benjamin.sunga@adports.ae', NULL, '$2y$10$g.j250qwgL79PaTBMwk1wOkBMSQJY/hXSsKzPVe1TIEEUwyX6CHje', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(54, 'nestor.gantala@adports.ae', 'nestor.gantala@adports.ae', NULL, '$2y$10$jXsmXlDZFOXjNmSnor8AZOD9qZ/DXtrgolxS/cBGRtsOy1QERM1ay', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(55, 'ashwaq.omar@adports.ae', 'ashwaq.omar@adports.ae', NULL, '$2y$10$Dn0M.Msbo.K.pF142bgMaugCZf7UFj/IVVsTVWrpV4XZLzxWD7tGy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(56, 'mohamed.wahsh@adports.ae', 'mohamed.wahsh@adports.ae', NULL, '$2y$10$0tzhCUBLexSmpKMrUbE6NeRzNrLoe1JpfdqmWj2rBGv1K9TqpoZ4K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(57, 'ali.aldhaheri@adports.ae', 'ali.aldhaheri@adports.ae', NULL, '$2y$10$YwpXJ.EDaikkPeM/9RL4GOg4SrhiXM7It.30ERI.5emY5/PRyYS7u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(58, 'katrina.oteyza@adports.ae', 'katrina.oteyza@adports.ae', NULL, '$2y$10$xvvM8oy1NS11oE.HtqIhwOaerxo7bLMXiIVRoIakZTyf7XxL2FBhW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:48', '2019-04-11 00:01:48'),
(59, 'asmaa.mohieddine@adports.ae', 'asmaa.mohieddine@adports.ae', NULL, '$2y$10$Br1nbpUHi8Gupa5.zAcUAuQwBtpH6GIMb2x3lmWXHsm1XNi7UGC2W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:48', '2019-04-11 00:01:48'),
(60, 'fahad.alkhaja@adports.ae', 'fahad.alkhaja@adports.ae', NULL, '$2y$10$w.xWIQOXImceBVi7ervOYuSCgZHrc5EfGuB.dAgyCJVyB3sjgCnaC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(61, 'hussam.rizeq@adports.ae', 'hussam.rizeq@adports.ae', NULL, '$2y$10$atz9sOqnMpuvPi0BH.7Nq.xtcSrnWHQrlD.thlXCdiLKg9agX5Yu.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(62, 'raj.agarwal@adports.ae', 'raj.agarwal@adports.ae', NULL, '$2y$10$sMwVDRySFt0aWllrNmItjO7XkkmL6SnN34pUZrDykRYnyJ2VtPO52', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(63, 'jeffrey.casianan@adports.ae', 'jeffrey.casianan@adports.ae', NULL, '$2y$10$/nH5tO/.Ao1hxOIA4l0cZuqUfLWBqNUf5Sc5FN4kAEFmZvl/0M7zy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(64, 'mohamed.albloushi@adports.ae', 'mohamed.albloushi@adports.ae', NULL, '$2y$10$EBPuskRxTqdj/VUXsvC1TuMBwxeFFMC4qjFYhkafK55GIWKL4I1Nq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(65, 'hazzaa.aljunaibi@adports.ae', 'hazzaa.aljunaibi@adports.ae', NULL, '$2y$10$dhoj64LwsK1CwWJ2PHDp.OaLZUkmbqAlj9c9pmVJR3LwI4Qfj7vqm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(66, 'mohammed.kaddoura@adports.ae', 'mohammed.kaddoura@adports.ae', NULL, '$2y$10$8PM3Dw5bZBgKicWM.0DQM.ssSTunU8v2UNtir8QhpWqVKZ5nc/YTS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(67, 'maitha.almurar@adports.ae', 'maitha.almurar@adports.ae', NULL, '$2y$10$F446gJnbyU8.S8lbojyS8ufWWObGsRfiHPxspJTywonjqmk3svQta', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(68, 'rida.shehadeh@adports.ae', 'rida.shehadeh@adports.ae', NULL, '$2y$10$I1txhIpSqBGZ85nI9cGF8OAlQOAvO3EmY0Mt5U3E6mYK9JPYHy35O', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(69, 'abeer.hassan@adports.ae', 'abeer.hassan@adports.ae', NULL, '$2y$10$yvHDczTuoO0bwoojJV/cs.x1AV8fm3jLUvrK.FAy6fg3/Ql4cJB1S', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:51', '2019-04-11 00:01:51'),
(70, 'husam.sheikhani@adports.ae', 'husam.sheikhani@adports.ae', NULL, '$2y$10$DpjxGjC47/f8md.4DBpEZexwrfq6W1rernOwhLdlBpSyi5oU9w1SW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:51', '2019-04-11 00:01:51'),
(71, 'obada.abushakra@kizad.ae', 'obada.abushakra@kizad.ae', NULL, '$2y$10$P6PSarYGdf2NZv4KwBAcVuv7cvAZeN1ydV6jUleffafeBrGpgbq.u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(72, 'mubarak.aldhaheri@safeen.ae', 'mubarak.aldhaheri@safeen.ae', NULL, '$2y$10$3IdoGivXEkl2v69fju3bDeDmnG6ZwEGGpLM3SFMH4G3MBwXXNzave', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(73, 'salah.alkhatib@kizad.ae', 'salah.alkhatib@kizad.ae', NULL, '$2y$10$BjvFwmSS87YXCfiHBwBSK.er4WhKbF34nWVtc7f7MJmgZZu41X/oq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(74, 'arif.mustafa@adports.ae', 'arif.mustafa@adports.ae', NULL, '$2y$10$A0etbXK4ABqDfGGw.n5ib.ugZ9pNnEZM/nvvJI5flcF/4gz9JISe.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(75, 'ahmed.elshafie@adports.ae', 'ahmed.elshafie@adports.ae', NULL, '$2y$10$Rce0mHoJrbAvkfOItD7jEOPgDNwAHOQ4Qyd8Bvl23SMO8Go98iRiS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(76, 'muhammad.junaid@adports.ae', 'muhammad.junaid@adports.ae', NULL, '$2y$10$RZhe9qG6pYySK.Zintjbl.5kWNi4WIOPtWwrOYj/y6aLvvlkE/rKe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:53', '2019-04-11 00:01:53'),
(77, 'hamza.badawi@kizad.ae', 'hamza.badawi@kizad.ae', NULL, '$2y$10$hfaYD370oqUsHcAMMOiUpeKVJfLTaAcHTa26eUOLe0J0T0jr2niYi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:53', '2019-04-11 00:01:53'),
(78, 'taiba.alnowais@adports.ae', 'taiba.alnowais@adports.ae', NULL, '$2y$10$qxV1QjkCRz6tsz2ASKjKX.l8Ano0c.2thpGbgm266IwOqb0FpKx8a', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(79, 'abbas.ageed@adports.ae', 'abbas.ageed@adports.ae', NULL, '$2y$10$aFKQEWHkHGSGXY8sFWObRujhGyoHaZ5nYa28ww5WdDCEyPfzE/7l.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(80, 'saeed.alzaabi@adports.ae', 'saeed.alzaabi@adports.ae', NULL, '$2y$10$iCjHSp8J/3zUWhpqnPyDSuz3G2Ojta6mFk0WViwo3d3R1cZSj1uLa', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(81, 'marwan.alahmad@adports.ae', 'marwan.alahmad@adports.ae', NULL, '$2y$10$XUWU4LSXGZmFZVPsOG9wAOMFeTomPITJJ/15cp68kF7Bz6IamqFgi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(82, 'mohammed.shekfi@adports.ae', 'mohammed.shekfi@adports.ae', NULL, '$2y$10$oMMuGmbPDli/Kng59PE0Muut8hWZlhHSAiV/pCq1J3sOvDrF1n0dy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:55', '2019-04-11 00:01:55'),
(83, 'dhanasekar.kandaswam@adports.ae', 'dhanasekar.kandaswam@adports.ae', NULL, '$2y$10$mhfT1NuYBQSvoGnfcK1rGe4tSyt99bQCs11vrbqRoHCyjLW8eF59.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:55', '2019-04-11 00:01:55'),
(84, 'mohammed.altamimi@adports.ae', 'mohammed.altamimi@adports.ae', NULL, '$2y$10$xoayWrlQV0UNZYTWOIxz3.iQPkvf2P1ugzT5v9nK1qvEwGHNVNAOK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(85, 'hussam.mandil@adports.ae', 'hussam.mandil@adports.ae', NULL, '$2y$10$OVnPeakwhNdCkmhDSj1juujIbjzyh2Z0Mh/qpXC3EVuNeiaTxJFLO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(86, 'khalid.alali@adports.ae', 'khalid.alali@adports.ae', NULL, '$2y$10$bCVSPTAysiAKzVXEYIJq..hddOlvLzbbQuUnYw3RUy8mozYtyN5UG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(87, 'kaleel.tajuddin@adports.ae', 'kaleel.tajuddin@adports.ae', NULL, '$2y$10$Ge5ajxsTosbL/S6aqB6/kuOqfUxrD2NbNKEQcYzfpSjSdIx3T.CQe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(88, 'ihab.ayoub@adports.ae', 'ihab.ayoub@adports.ae', NULL, '$2y$10$ko5txQpRU9wUyR6bbnymE.XGqDI37mw7JghWsn3TR/rKiLGetWDbG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(89, 'rajeev.choudhary@adports.ae', 'rajeev.choudhary@adports.ae', NULL, '$2y$10$F8qGtgpXiV9IipFDOr4PkOLCY1Vdib6XN7QhDLiCklF5J8lR0vu/G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(90, 'ayesha.alromaithi@adports.ae', 'ayesha.alromaithi@adports.ae', NULL, '$2y$10$UAS5u13FYyr8qoFfwomcAOoyO7rgiTXlfT0g/PwK5HuAGY0cIfxna', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(91, 'salim.abbas@adports.ae', 'salim.abbas@adports.ae', NULL, '$2y$10$fzOIC5u3PE1pTMryyprd1eHZypkRvrvTsY5.n9KgCTJdegfVsbXfu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:58', '2019-04-11 00:01:58'),
(92, 'Vinay.Kumar@adports.ae', 'Vinay.Kumar@adports.ae', NULL, '$2y$10$ylX1FhMu/rYywakgrVqokOjmbxhRfSm/xl9ibhRuCf9uZEFdAu4zy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:58', '2019-04-11 00:01:58'),
(93, 'Nawaf.Alawady@adports.ae', 'Nawaf.Alawady@adports.ae', NULL, '$2y$10$PcTx6Gb/vAhRayZ3KdSgD.cwiUkZiqIO4PfdElS5p6yKnk4BKId9W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(94, 'mona.elmahal@adports.ae', 'mona.elmahal@adports.ae', NULL, '$2y$10$rkPRYiavg25cDt0O2va0zeP7w/dQHkXgQqHFZLBhYEDI85xz1QlY2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(95, 'Saeed.AlHajeri@adports.ae', 'Saeed.AlHajeri@adports.ae', NULL, '$2y$10$s9B28J9GHGQ1mkxjyeS0yOx9teTKS9XVJ9zeIraS9LW2rg/Z13Cru', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(96, 'sara.alnajjar@adports.ae', 'sara.alnajjar@adports.ae', NULL, '$2y$10$ApLVA8HnLS4IoVKMK6ydd.GCNffWUChl4ZZ1604VeRiBmViDYu7ku', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(97, 'ammar.alhayyani@adports.ae', 'ammar.alhayyani@adports.ae', NULL, '$2y$10$wlIruxkIvoUwDrwrYL73qurhAjsKA9V24FtcdmNCpXdBql/McwPl.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:00', '2019-04-11 00:02:00'),
(98, 'Muhammad.Aman@adports.ae', 'Muhammad.Aman@adports.ae', NULL, '$2y$10$vNtefueMG51wGIyXSnU1fOM7/3/GZviwuJvCZK7I0M46YG00EaP7S', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:00', '2019-04-11 00:02:00'),
(99, 'Lama.AlMubarak@adports.ae', 'Lama.AlMubarak@adports.ae', NULL, '$2y$10$DPuXd/sT.XparPuIpkUkeedTAQXNmKCQFB/O7VjZyq07.e5olYxmC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(100, 'Brian.Sadler@adports.ae', 'Brian.Sadler@adports.ae', NULL, '$2y$10$a6vEkFPx8pSknB.9X0UkbOFRB0.hVhweMWD.4kTEgynmzmX9TAXcu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(101, 'thaer.khalil@adports.ae', 'thaer.khalil@adports.ae', NULL, '$2y$10$BNPh4sPF4ZFlG3K6QjgxTuM3ttkMIq5xvJkplXiDJQJZLPmaCnDhG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(102, 'kaladevi.krishnan@safeen.ae', 'kaladevi.krishnan@safeen.ae', NULL, '$2y$10$TdfB8lBOc3OCICAz5uBaoeAEwHkRzTEM1/t67TEyOaNOGh.WTIl0G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:02', '2019-04-11 00:02:02'),
(103, 'abdulkareem.almasabi@adports.ae', 'abdulkareem.almasabi@adports.ae', NULL, '$2y$10$KClJqrJge4N.IWsYLyzT2e7A6nyXiOqtmZiexEXsq7ce.A1L7FKuS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(104, 'omar.boughdadi@adports.ae', 'omar.boughdadi@adports.ae', NULL, '$2y$10$HC7KAn.2OQ6d9wcuvA9HW.BK0yl8VaVuJQAvkxXLZFeuSUfEQYNti', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(105, 'mohamed.abubuker@adports.ae', 'mohamed.abubuker@adports.ae', NULL, '$2y$10$Q6ymdp9.0ELPtNDO2j7sVuRKBNWNj/0W58FuKT3c1soWiaxc4CADm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(106, 'mohamed.abdelaziz@adports.ae', 'mohamed.abdelaziz@adports.ae', NULL, '$2y$10$rxlDd1kImxWGFmIZM4P3cO4vusP71wSGtXoKMfKdCUtsiBnYJLITW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(107, 'adil.banihammad@adports.ae', 'adil.banihammad@adports.ae', NULL, '$2y$10$n5ugqTdm86k0otpHMghhleU6TvI/nO7q.olcF/BhID0rpcmv//FCe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:04', '2019-04-11 00:02:04'),
(108, 'jameela.aljunaibi@adports.ae', 'jameela.aljunaibi@adports.ae', NULL, '$2y$10$Z3icvO9MjJE5bSaGYPiuzOwF2w.IUUZg.6U9v3E1CZKdoOvdA4qgK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(109, 'hesham.sayed@adports.ae', 'hesham.sayed@adports.ae', NULL, '$2y$10$iaiJ/P83GgUm.wTmZ/cHpuFDTjxBM.WBIqFhp0A3hl.B4yYmIZbCO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(110, 'gerimel.rebalde@adports.ae', 'gerimel.rebalde@adports.ae', NULL, '$2y$10$XFAeY509uKo6IwYcU5uvLuJnjEFxOsEOtU50FpbmrJ6n5HBnbCVSi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(111, 'mohamed.zarouni@adports.ae', 'mohamed.zarouni@adports.ae', NULL, '$2y$10$lJ8y.SmU5rY9BKtI39UY7uVdDmt38WnjIXegQn8OQYgdocFc9SDlm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(112, 'muhammad.khan@adports.ae', 'muhammad.khan@adports.ae', NULL, '$2y$10$9mUlrWqMZAsGMUs41dpgyukiiq/EzbH2GM/q/8443gn9EdtxBfepK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(113, 'ahmad.alsuwaidi@kizad.ae', 'ahmad.alsuwaidi@kizad.ae', NULL, '$2y$10$YVQd5updEZB7KopQ1TZzNemjnS9qFTROB92Zw5iycMbqaUo7dvLMy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:06', '2019-04-11 00:02:06'),
(114, 'muhammad.sikander@adports.ae', 'muhammad.sikander@adports.ae', NULL, '$2y$10$JUAhKpToqqSvNZ9XGCJmr.whVJdlvC9wiyyRJArjvl51xoHoJF4EC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:06', '2019-04-11 00:02:06'),
(115, 'darine.mustapha@safeen.ae', 'darine.mustapha@safeen.ae', NULL, '$2y$10$JNGrsAN/MPSV7bnyxmKSC.btrbaaNuApobDfAWrcbTsUbMZl3EaqS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:08', '2019-04-11 00:02:08'),
(116, 'syed.ahmad@adports.ae', 'syed.ahmad@adports.ae', NULL, '$2y$10$8NTjqm.nuLjbws.OP/UnnuBFP4vFmmbTVVfDAKeo70B8HCt9AfrJW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:09', '2019-04-11 00:02:09'),
(117, 'bryan.statham@adports.ae', 'bryan.statham@adports.ae', NULL, '$2y$10$xx00qf1HQE0SPJ4ocDFnfe8.N1gHS4FA7KmlCFZ.74XUtuiqf7MwO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:11', '2019-04-11 00:02:11'),
(118, 'niaz.binyusuf@adports.ae', 'niaz.binyusuf@adports.ae', NULL, '$2y$10$o24bRYA9OGZFfTxRXxokZO/EncWt.vbCzJYPB5VYlAnCrm5.Ixx3q', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:11', '2019-04-11 00:02:11'),
(119, 'prameel.thoppil@adports.ae', 'prameel.thoppil@adports.ae', NULL, '$2y$10$eBvHMXOY4Ynp8o/twmROb.GGkPbS/We5YuyMQoe9FWOur.GaKEWbi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:12', '2019-04-11 00:02:12'),
(120, 'jaber.alshehhi@adports.ae', 'jaber.alshehhi@adports.ae', NULL, '$2y$10$MN.qgzAin7HxQGR6TdFdnOwQCgVk7YLGavv9glZaZcToc83OtUA/u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:13', '2019-04-11 00:02:13'),
(121, 'stevan.harding@adports.ae', 'stevan.harding@adports.ae', NULL, '$2y$10$3gs08HPniw2H.oOu7GNdb.B2Lud0Rdw95gO3h3LCzIU83jujQNoB6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:14', '2019-04-11 00:02:14'),
(122, 'sahana.hugalavalli@adports.ae', 'sahana.hugalavalli@adports.ae', NULL, '$2y$10$VLg29cN5e.YGwGZeICWNn.45sUGZIrvug31ayOJgnclkVSHE.6DZS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:14', '2019-04-11 00:02:14'),
(123, 'hanan.alhoutari@adports.ae', 'hanan.alhoutari@adports.ae', NULL, '$2y$10$wjm8P9Geo2fkq74EzhzKS.axBRed7N1X5R.Mi03IRTS52ZBhhFUIq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:15', '2019-04-11 00:02:15'),
(124, 'emil.pellicer@adports.ae', 'emil.pellicer@adports.ae', NULL, '$2y$10$xPtRCeb9Dk6tZOtQ/0IXg.teNfalYBbn0WEF6sHEZ6I7ZWKRHnSlC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:16', '2019-04-11 00:02:16'),
(125, 'alan.mckeogh@adports.ae', 'alan.mckeogh@adports.ae', NULL, '$2y$10$qFuKelSlP61AWCemf9MXcOnkUIecF6uXEGueXg3xE12.z7zhXwGRK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:16', '2019-04-11 00:02:16'),
(126, 'maali.altamimi@adports.ae', 'maali.altamimi@adports.ae', NULL, '$2y$10$3KyAcXnMyMYexQ3swfZ/Jutw3d9XgFIn0ykdfNyV5e8kA/NXmvpXy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:17', '2019-04-11 00:02:17'),
(127, 'jason.walters@adports.ae', 'jason.walters@adports.ae', NULL, '$2y$10$SerZUi538E0Cy1JTMI8hreDrKo4S4AShzbUywEUEZXfDtOiCEgw76', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:19', '2019-04-11 00:02:19'),
(128, 'hesham.mabrouk@adports.ae', 'hesham.mabrouk@adports.ae', NULL, '$2y$10$18pQkYQOMldHwOmmzY8PFuJ6dxoQJ48Qc2z8qOnLsv.Xn4E9sgvma', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:22', '2019-04-11 00:02:22'),
(129, 'madyan.ayouch@adports.ae', 'madyan.ayouch@adports.ae', NULL, '$2y$10$TOwLjX61jzVBLDOWpp8hIe3qzwOkW707z0Ms2D5uyIS.brilQWlYW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:23', '2019-04-11 00:02:23'),
(130, 'ibrahim.jadallah@kizad.ae', 'ibrahim.jadallah@kizad.ae', NULL, '$2y$10$43WNiezNJSbLgLy0c5d8a.vn/.WVTnXOpsKhkS.YO51OIDrsoq7s2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:24', '2019-04-11 00:02:24'),
(131, 'mathew.koshy@kizad.ae', 'mathew.koshy@kizad.ae', NULL, '$2y$10$D3.PWC107lDHJMvYubbvc.s9CUG0sDuGk6hb3pygD6Zan3KC6rzrC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:25', '2019-04-11 00:02:25'),
(132, 'ahmed.shazly@adports.ae', 'ahmed.shazly@adports.ae', NULL, '$2y$10$PtnrlQZNlZt/Qp993HVW2uI0tOWrVe3kotvWJ7Y3VvHLHDhMjP3WC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:25', '2019-04-11 00:02:25'),
(133, 'essam.alemadi@adports.ae', 'essam.alemadi@adports.ae', NULL, '$2y$10$7Plp6Sa7fNOVQshl/awYgOLgNlUPY2wFBjMFxiLC8dGpAYsb6739q', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(134, 'ahmad.albloushi@adports.ae', 'ahmad.albloushi@adports.ae', NULL, '$2y$10$MPRRWcPNz06/G7mq4Kh8euX7jPPpFBYqt9Qu5azMTgnAKylfxNtNK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(135, 'joel.bongay@safeen.ae', 'joel.bongay@safeen.ae', NULL, '$2y$10$J4N59XbIqxD/uBlAcUDqw.4IHfHrBaWAp8ahq21Agqvc5rdqefnge', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(136, 'shareef.kutty@adports.ae', 'shareef.kutty@adports.ae', NULL, '$2y$10$hWmJV034jHxItLixvJ27NOTMvZuzZnIqWs./zsEl8xxO0G5tSzyZK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(137, 'khalid.ibrahim@safeen.ae', 'khalid.ibrahim@safeen.ae', NULL, '$2y$10$fIpKFvsDQbUsIwTcDS1gh.t7hLM7rSZY68GyYBKRiPjLsbwc4jUVe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:27', '2019-04-11 00:02:27'),
(138, 'abdulaziz.albalooshi@adports.ae', 'abdulaziz.albalooshi@adports.ae', NULL, '$2y$10$ZCJkPYnvSZfd77Q7aZWp1ejEY3GOFISy8pceqySIAVnsttyUOhyM.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:27', '2019-04-11 00:02:27'),
(139, 'khaled.alshareef@safeen.ae', 'khaled.alshareef@safeen.ae', NULL, '$2y$10$tz9XWkL3DF0RzsrjxSfRQOqkKMpxcP4MBT9HONsIQVzHEBis4Xgxm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:28', '2019-04-11 00:02:28'),
(140, 'elmostafa.amahzoune@safeen.ae', 'elmostafa.amahzoune@safeen.ae', NULL, '$2y$10$aeXTacAcYxasZiXqH.T5tOCsqqr0xQWpq4To0fuJXnsl0PSS3qfO.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:28', '2019-04-11 00:02:28'),
(141, 'wael.abueida@safeen.ae', 'wael.abueida@safeen.ae', NULL, '$2y$10$MzIDUTplKnmie21Qq5JtC.7.4H4tETTQLdBCBQKJD/lIm4.ikYOOq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:29', '2019-04-11 00:02:29'),
(142, 'samer.abuobaid@safeen.ae', 'samer.abuobaid@safeen.ae', NULL, '$2y$10$I6lVV4FKrrVpaSfdOEAPdO6yijIX03kaTiMHToBQP.bazm764WROK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:30', '2019-04-11 00:02:30'),
(143, 'ali.sulaiman@safeen.ae', 'ali.sulaiman@safeen.ae', NULL, '$2y$10$zgT/OD1pz1BXyekZYiXzqOoZ1g39e11u9D0jIQraoIggKFZjlWxjS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:31', '2019-04-11 00:02:31'),
(144, 'jan.grinwis@adports.ae', 'jan.grinwis@adports.ae', NULL, '$2y$10$y3NYke19uaE73B5xyilwXuasGRlt7AEA9Pz73QdLAWP7aIVDUGpG2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:35', '2019-04-11 00:02:35'),
(145, 'mohamed.elmas@adports.ae', 'mohamed.elmas@adports.ae', NULL, '$2y$10$kLt5Py/o18.6PS5X/Xe4Z.s7p7C6o9FstNqPblaM9F7x5RKDV5Wni', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:36', '2019-04-11 00:02:36'),
(146, 'fatema.bawazeer@adports.ae', 'fatema.bawazeer@adports.ae', NULL, '$2y$10$y.QjCjd23DTkHfYi90piJuSdm1e24i69hSo14vibIuhRfsQ9wZrKK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:38', '2019-04-11 00:02:38'),
(147, 'arun.anirudhan@adports.ae', 'arun.anirudhan@adports.ae', NULL, '$2y$10$EQ.fKjT9zkHyX.qx6.DanuZZH21ppwSZIjSAPrPWxsjvebQEAem0.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(148, 'william.acklam@adports.ae', 'william.acklam@adports.ae', NULL, '$2y$10$gh3N50FGQdgB4kx2hLTIpe7HwC5nvlhLyVi2/LTVhJNiUL2fDZNWq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(149, 'thomas.johnson@safeen.ae', 'thomas.johnson@safeen.ae', NULL, '$2y$10$774ydphITFnifqwtJvgFjes77d7cuCEfgSJ/Jh9LN.zRqINDCTCQm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(150, 'salem.rasljanin@adports.ae', 'salem.rasljanin@adports.ae', NULL, '$2y$10$dTyXEMSG0f.LP3W6CAa3dOi9hXXzuBlp4v8EUCkUN8ntNnQ8FVOhG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(151, 'indraksha.poojary@adports.ae', 'indraksha.poojary@adports.ae', NULL, '$2y$10$FigNbJJa/Y3yciDYfflweejaFcoXtAc9kP6Z1uI8mYNFsk0NtPp.u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(152, 'syed.rizvi@kizad.ae', 'syed.rizvi@kizad.ae', NULL, '$2y$10$oUNmiJD1G5o8p2Z8Op4KMeoq28lI6JRIxlJdNXZaCG134VVc8mUWO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(153, 'maisoun.almehairbi@maqta.ae', 'maisoun.almehairbi@maqta.ae', NULL, '$2y$10$/40j5QxcVt3eDGI9bWuQVuh5.DxVg3k/iBZAILO7QLEAlDerw9zcW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(154, 'hesham.aldarrai@kizad.ae', 'hesham.aldarrai@kizad.ae', NULL, '$2y$10$GdyWIe0EI0VC151qFSccrOkhgffOVLD.CBEVorGxXL4dvTfzgrb3u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(155, 'tariq.alsowaidi@kizad.ae', 'tariq.alsowaidi@kizad.ae', NULL, '$2y$10$pAq5AkojcXvBC/bEGAPHk.WqQvrsv0bOjCpNVedy8ie9pJDVqxWk6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(156, 'abdulaziz.alhammadi@safeen.ae', 'abdulaziz.alhammadi@safeen.ae', NULL, '$2y$10$lQZ1sD8vDgzGqP/kjldFNezRPqBd630iXvJZEzZMSTPwtWXge17ny', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(157, 'mariam.alhammadi@adports.ae', 'mariam.alhammadi@adports.ae', NULL, '$2y$10$6E2jQs4cMuIEcS8YOa0ujei7RBjPnWe1NMZ3OyTUQp2s4.UgFORPC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(158, 'mohamad.abughazaleh@kizad.ae', 'mohamad.abughazaleh@kizad.ae', NULL, '$2y$10$MHS/rel7KLKYHwBQ0BNomuPm8BHzS5O.O70fFxBQieyqW0OXYZS/G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(159, 'imranaslam.khan@kizad.ae', 'imranaslam.khan@kizad.ae', NULL, '$2y$10$d..TzqQ76vbCKHt6dynxJuCVJyR5YiBucEDTAs6NKNrwiO4dJrfZO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(160, 'irfan.ikram@safeen.ae', 'irfan.ikram@safeen.ae', NULL, '$2y$10$zhulLdhevyWlm7yLAnciu.iYfIO/cOnmdohHS1rNPJgfg11N/zV7.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(161, 'jevinkumar.tandel@adports.ae', 'jevinkumar.tandel@adports.ae', NULL, '$2y$10$8FO9swurp19v93oveLereuXJt/Kc0luCNuu1kCTWLUke50lpkAigi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(162, 'shaikha.altunaiji@adports.ae', 'shaikha.altunaiji@adports.ae', NULL, '$2y$10$XYt0csw4DQgqAuupqV5IQexCHG8sr6W99w6lyFOda.22jSDYsHDd6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(163, 'mohammad.albalooshi@kizad.ae', 'mohammad.albalooshi@kizad.ae', NULL, '$2y$10$XHFqzNXTwbfU7DxZ5axCeuzQxKWx8nuyYRgPQOf6WFeYEMwkqPD6K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(164, 'basheer.onmanakath@safeen.ae', 'basheer.onmanakath@safeen.ae', NULL, '$2y$10$vQzy5NRSAe1HaMO8wGFrU.Vcbi8INGmAH00SyfHkFyxTFIJP5zlgq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(165, 'rafiuddin.ahmed@kizad.ae', 'rafiuddin.ahmed@kizad.ae', NULL, '$2y$10$mUjajrctJZC5LRaHpaI4BeVD9ABFnloAnnXew3570s8YltFpFNHXy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(166, 'alia.alhammadi@adports.ae', 'alia.alhammadi@adports.ae', NULL, '$2y$10$tkj.3qgPCiCTU8nbuJAXru3OHU99CdehQwiCntRmqLgFBW.c6urxy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(167, 'abdelrahman.almaazmi@adports.ae', 'abdelrahman.almaazmi@adports.ae', NULL, '$2y$10$2oZ7tX.b0o4un1aP/6OZ/.DLkFdcBV0MzKESOKM0qSsudpvzPuc2m', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(168, 'wafaa.alzaabi@adports.ae', 'wafaa.alzaabi@adports.ae', NULL, '$2y$10$hogy8ZE4dXCOcKy/GObQHO6tAOOM7f09MOuA4CDqFBf6gjCgOnXdS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(169, 'william.lawrence@adports.ae', 'william.lawrence@adports.ae', NULL, '$2y$10$V1aLO0u2d8YmZ8DDil/9Ruz1ub9QpYpKwZTZ2ZU4G9WhlStnb4TA2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(170, 'mathew.joy@safeen.ae', 'mathew.joy@safeen.ae', NULL, '$2y$10$U5RnW18ouxXYAnC0CsgfJOxVDvRgZdyGiGsYZ3yIsiEHHcdJhHEyK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(171, 'Girivasan.Nedunsezhi@adports.ae', 'Girivasan.Nedunsezhi@adports.ae', NULL, '$2y$10$KU5L8umI7IWOnq3VFWObNu/06UbVbnqa1iFdNVxnTUfCVHrTlCYXu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(172, 'john.ewing@adports.ae', 'john.ewing@adports.ae', NULL, '$2y$10$Md0rLalnLH4tGVPNghQG1.wAwuwIbHrKp.3pDY5nBkJ6qz7rVyglS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:44', '2019-04-11 00:02:44'),
(173, 'mansoor.almarar@kizad.ae', 'mansoor.almarar@kizad.ae', NULL, '$2y$10$OGgdPpkECJKulP9Jv6Snjei.87a5mSkIz5g2LkpTFYrzoOwK7x6Qm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:45', '2019-04-11 00:02:45'),
(174, 'hamid.mohammed@adports.ae', 'hamid.mohammed@adports.ae', NULL, '$2y$10$CFIK/pag5zoCzBFKP7dn1OZRc4TN9Ak6.ZC6zqDRo9asSPF.DfWhO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:46', '2019-04-11 00:02:46'),
(175, 'adnan.alahmadi@safeen.ae', 'adnan.alahmadi@safeen.ae', NULL, '$2y$10$TJwJWNDmiBu.RZa0sUjuXuVBQwsh7HisVgalEylMyzqvfWHNLsyo2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(176, 'rashid.almarzooqi@adports.ae', 'rashid.almarzooqi@adports.ae', NULL, '$2y$10$nm.YG9Jokm1dZUohbaO0auP8sQA/AwYTkVcGkjg9AgDVab3LiXw2C', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(177, 'saeed.alfalasi@safeen.ae', 'saeed.alfalasi@safeen.ae', NULL, '$2y$10$sEwBtxdhObhKW9/o2MqbluH3Tcn2wxaDwBlzJz4fr7YFtElWhof1e', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(178, 'hamed.abbas@kizad.ae', 'hamed.abbas@kizad.ae', NULL, '$2y$10$4mhAcGhKpwrtnuOJ4gZ.q.2xie.zfIA3lACpNcMPZVUYn2JBD/75K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:48', '2019-04-11 00:02:48'),
(179, 'abdulaziz.alyammahi@kizad.ae', 'abdulaziz.alyammahi@kizad.ae', NULL, '$2y$10$jZWyFMazqpOqfSzVE75HuOsJ9a3i.w7SnkIiwRVkN5dlD9M6vHh6G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(180, 'eiman.alnuaimi@adports.ae', 'eiman.alnuaimi@adports.ae', NULL, '$2y$10$5tSLARDURkSltkQV5cR/5.MFz5p2i2DkVn.MWjRt0IBQg6bOqtsyC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(181, 'mohamed.razeed@adports.ae', 'mohamed.razeed@adports.ae', NULL, '$2y$10$43D3tZWTKE4674I3pth9OeBV4BMQr/lG0eNAwAgB1l20tbKElu70K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(182, 'ahmed.alkhemeiri@adports.ae', 'ahmed.alkhemeiri@adports.ae', NULL, '$2y$10$lL794D65lE.3p8cImVPHWe8Kmux6G/WQ5n/74u9ADqZ8lrTbOOtyG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(183, 'khalid.alteneiji@kizad.ae', 'khalid.alteneiji@kizad.ae', NULL, '$2y$10$kpLRncgd4PswbASVGl34vukWarzLnF4kes/5mDKNj/QTmHoikXhaq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(184, 'hani.dean@kizad.ae', 'hani.dean@kizad.ae', NULL, '$2y$10$0/HaV40gC24c/WEZZeK.8OgrJSqyXaIhsxSlh2.pVII4xTVdzmrcC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(185, 'talal.eid@adports.ae', 'talal.eid@adports.ae', NULL, '$2y$10$sYvpGrUSBtv73RCk0WNdgeuHle4ZyQmTSZwsUDjlt/gkHvQSdxIWi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:51', '2019-04-11 00:02:51'),
(186, 'shaima.shaheen@adports.ae', 'shaima.shaheen@adports.ae', NULL, '$2y$10$/oP1.lWWVgdQWr2WV6mGKO85AiQSyXIps6kAvjLMTU5HVEq3FrevK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:51', '2019-04-11 00:02:51'),
(187, 'pradeep.nair@safeen.ae', 'pradeep.nair@safeen.ae', NULL, '$2y$10$ZNcwOKF1obV3gP0RbAxGzudjVNhmj6js0Kt8w5bitpk8lq.udtg3O', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(188, 'ayesha.almarzooqi@adports.ae', 'ayesha.almarzooqi@adports.ae', NULL, '$2y$10$JrK3n9uVApO3xkqE8fgeXehb/Vk6Nls5UTq7HFndJdvWwNdqIlIne', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(189, 'haifa.khoori@adports.ae', 'haifa.khoori@adports.ae', NULL, '$2y$10$1UXp/bIcfnqH1HOQiH9ESu12v9Gj5AFZ4wvwem3vipWOa3zP/btHm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(190, 'obaid.alzaabi@adports.ae', 'obaid.alzaabi@adports.ae', NULL, '$2y$10$lpcsWBmELqzPR.Oe8HvgaOAsleS0cSZK9bWn5h8NGEfOId.NcRdtq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(191, 'mahra.alshamsi@adports.ae', 'mahra.alshamsi@adports.ae', NULL, '$2y$10$FTIhwphcfkKIshI6LkMlvub0THloN1aLz/DH.2zJp3MfQ45DyRwMO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(192, 'khameis.alkaabi@adports.ae', 'khameis.alkaabi@adports.ae', NULL, '$2y$10$nLZ4aejcf5JIrNdYw/fiOOwn3uAwrUxqP1Qh/l1jSS3RQG..Vl15S', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:53', '2019-04-11 00:02:53'),
(193, 'saeed.abdulrahim@adports.ae', 'saeed.abdulrahim@adports.ae', NULL, '$2y$10$1LCqhadD9qDtp/9bsD5MP.3l7W00mEBT5pl1JYRxbe3FT4cQl8EE2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:53', '2019-04-11 00:02:53'),
(194, 'janat.khan@adports.ae', 'janat.khan@adports.ae', NULL, '$2y$10$rebEOsUo5jbL.KllwelITOq10IY3cGTse8CsbIof.tTQTCrC/CGg6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(195, 'ajantha.wijesingha@adports.ae', 'ajantha.wijesingha@adports.ae', NULL, '$2y$10$lWbbPzjz7sqaQITfOFwOHeWjvX5y61TLG0HIsNwNJOoB3vvSmuVL.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(196, 'mehmet.yildirim@adports.ae', 'mehmet.yildirim@adports.ae', NULL, '$2y$10$a5Sfuy5VnJVf8xuvtYqfDO.xHZ5zUCEM7rZKvy5PdJorgmYuZTR6q', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(197, 'ahmet.yilmaz@adports.ae', 'ahmet.yilmaz@adports.ae', NULL, '$2y$10$Kyh5rfvwXk4FLW1/QxmMO.rN090SYbNR1wIrWY2WLLtuf2NxoomFq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(198, 'ala.hamdoni@adports.ae', 'ala.hamdoni@adports.ae', NULL, '$2y$10$iPc1qvjFl7zusHKbbaSSputI7JVydk6FWU4PirtROlAQMCQGeIJaC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(199, 'zakaryya.abuqraiyan@adports.ae', 'zakaryya.abuqraiyan@adports.ae', NULL, '$2y$10$HbEz/fgsvRgvvduCV/l65eosnGrSMirJyn9RqqWe0qQnMHM.HzFIO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(200, 'abdallah.aburayyash@adports.ae', 'abdallah.aburayyash@adports.ae', NULL, '$2y$10$owFDO1KdaAjQNyffUYvF0OziXJ0bUPbsmzKHF3JYgMqslgisqv0bG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(201, 'haydar.kulug@adports.ae', 'haydar.kulug@adports.ae', NULL, '$2y$10$duK4xNUqEn0Nd4cfLK1vguhsexvPBLYPU5Xwm3QkCoD/ziQovxRD.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(202, 'ahmed.alteneiji@adports.ae', 'ahmed.alteneiji@adports.ae', NULL, '$2y$10$zMPF/Lh2YM39jZSHPaCkCu4QG1AQlh9A4xpD7Mk/gJ5UY3JUciEE2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:56', '2019-04-11 00:02:56'),
(203, 'mohamed.almenhali@adports.ae', 'mohamed.almenhali@adports.ae', NULL, '$2y$10$Ok4fbcB7s.9F0MS4oUVRke2U4CfNC/AcnEX7iiQGzKMkNyfMK85Dq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:56', '2019-04-11 00:02:56'),
(204, 'hamad.almaghrabi@safeen.ae', 'hamad.almaghrabi@safeen.ae', NULL, '$2y$10$Fpu5zA04LRcv5v5ZqCTGmu88uGYYM0infSOHIwI2rQ3cmFnzGhYV2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(205, 'fungai.musakwa@adports.ae', 'fungai.musakwa@adports.ae', NULL, '$2y$10$pznwuUEP/sG8Ju.d2rxMdOc6MCqPrdQEXPPvn6S8sjNhcAtOINVyG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(206, 'eisa.mohamed@adports.ae', 'eisa.mohamed@adports.ae', NULL, '$2y$10$D/xEypk.XDzcX/rj/cBaHOxHV.lGe366a1bLIbTdYWxHZ8hyAbG7e', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(207, 'salman.alkarabi@adports.ae', 'salman.alkarabi@adports.ae', NULL, '$2y$10$/mWCyqbNHP82aJgo9cmWQe2ds.UhrxN3ihsWOEqyHom8BkzKniyGe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(208, 'adnan.sadiq@adports.ae', 'adnan.sadiq@adports.ae', NULL, '$2y$10$0zL3uJe5EvG2X7gC6W4JLOoiCkfCibcL..xrfChTj0AWZZr67Fx1e', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:58', '2019-04-11 00:02:58'),
(209, 'abigail.ragudo@adports.ae', 'abigail.ragudo@adports.ae', NULL, '$2y$10$C6mVN6peZsa7wDPfeXG3zu3HfIYuFJ1FmcouVljST8j81ZnKH47wG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:58', '2019-04-11 00:02:58'),
(210, 'rashed.alsuwaidi@adports.ae', 'rashed.alsuwaidi@adports.ae', NULL, '$2y$10$69vY9vFmoxAR0lKZMliQ.urR9STNfD/uphrWsfpe/HJ.Pj6JOJrVG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(211, 'sheikha.alzaabi@adports.ae', 'sheikha.alzaabi@adports.ae', NULL, '$2y$10$X0qm/svu9bOPrE8oJVDSFOcfHskFna7yNYxM.v5uTU7gXOEUYvU2W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(212, 'wajid.khan@adports.ae', 'wajid.khan@adports.ae', NULL, '$2y$10$MzOc78.mv815A2mLhEXbG..iioRm7fuzY6Gqe7/oA8552GOtg6u72', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(213, 'sameera.alseiari@adports.ae', 'sameera.alseiari@adports.ae', NULL, '$2y$10$KglrRwB2a7sVokNfXuuCnONmObmx8fxSpKHxAV3lIEvubaknFHzme', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(214, 'rami.allan@kizad.ae', 'rami.allan@kizad.ae', NULL, '$2y$10$L/qm9Kk3zEzb.kb8Wzv3OeGM/5qnNeUS3mobBQBUydfETEMCX717q', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:00', '2019-04-11 00:03:00'),
(215, 'maysoon.hijazi@adports.ae', 'maysoon.hijazi@adports.ae', NULL, '$2y$10$48BSiKkfCzW4.cO7x/pdhOMGEBQRinBwdK8xULtBcwjfoo8pOGP4u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:00', '2019-04-11 00:03:00'),
(216, 'mubarak.almazrouei@adports.ae', 'mubarak.almazrouei@adports.ae', NULL, '$2y$10$UvV1RbVpM7jn6G1dLKtA0u/7C9szbVGv8GZaSxz/dmP.Ji6A0a2wu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:00', '2019-04-11 00:03:00'),
(217, 'vikramjeet.singh@adports.ae', 'vikramjeet.singh@adports.ae', NULL, '$2y$10$zQgK/idPS.YXq1dPJAYovOevx3v8/n29M9vqmXR6hI/Gmqk2QsWta', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(218, 'ibrahim.alblooshi@adports.ae', 'ibrahim.alblooshi@adports.ae', NULL, '$2y$10$btzGD8mS2ZGgJx69aTMA7.IKaNbttFoV2VHz9gGS3xEWrnDJgGF9a', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(219, 'hasanuddin.sunduseng@safeen.ae', 'hasanuddin.sunduseng@safeen.ae', NULL, '$2y$10$2pAeu/Wcmyw0NqIQtdmb2e5vvu7Imxh71RwusyzyhMobsXXl114Uq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(220, 'mohamed.turki@adports.ae', 'mohamed.turki@adports.ae', NULL, '$2y$10$XFs8EKA1.KbVevpot.gWV.XaFFoVrqDVLVBnXS2ltDlgovHV9c98W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(221, 'faten.ibrahim@adports.ae', 'faten.ibrahim@adports.ae', NULL, '$2y$10$jnrCWu1ccfY.ukE3yo3TVeUEkWqXeVo9Oh6dTvvOV5Pj4VIg2N6gO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(222, 'suood.almahmeed@adports.ae', 'suood.almahmeed@adports.ae', NULL, '$2y$10$cy5sKnLt4ub/0n8ol9b1auT/DrlMKRN0sX6QYpCMYs7a9PuCH.VVe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(223, 'afra.alsuwaidi@kizad.ae', 'afra.alsuwaidi@kizad.ae', NULL, '$2y$10$hPy3BC8Xpshbi9D.beV2DuS/b4Y61a0zSqynpqucCQXLSLAnoMaNm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(224, 'mussa.alzaabi@adports.ae', 'mussa.alzaabi@adports.ae', NULL, '$2y$10$oeA/ZtoBgzZUSJjny8kCE.mmBZL0VcWE94pUg/3UqJ9tpR7Y..iMy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:03', '2019-04-11 00:03:03'),
(225, 'joeward.zingambe@adports.ae', 'joeward.zingambe@adports.ae', NULL, '$2y$10$5HZ9iLtDwazNywlHXFX4Y.o3Z3zuxHuO3Oks5ih.Ol5U7tWrCE3ui', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:04', '2019-04-11 00:03:04'),
(226, 'sukhwant.ahluwalia@safeen.ae', 'sukhwant.ahluwalia@safeen.ae', NULL, '$2y$10$jle7a/bcNmazavCMnMApS.oxobmVj2rsWk2fHCjWyfatHzga5cgp2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:04', '2019-04-11 00:03:04'),
(227, 'dhiman.chowdhury@safeen.ae', 'dhiman.chowdhury@safeen.ae', NULL, '$2y$10$ISxhnWeclpiqZ/Jy.pgtB.OOFLmkT/.vQGRt2SBAi.mk0petohP.W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:04', '2019-04-11 00:03:04'),
(228, 'abdulqader.murad@adports.ae', 'abdulqader.murad@adports.ae', NULL, '$2y$10$GXRmyTv8twDfF5jayg0vSeaPZ0VVTJgcsYTdQrwGkDGT.OO/yIh/O', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:05', '2019-04-11 00:03:05'),
(229, 'abdulla.albaloushi@adports.ae', 'abdulla.albaloushi@adports.ae', NULL, '$2y$10$KUWjVCCWoprNOKMNp1wmNO1ewPxlhH5g/hHvf8ejZt8uW0M64OZ0q', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:05', '2019-04-11 00:03:05'),
(230, 'malek.alshehhi@safeen.ae', 'malek.alshehhi@safeen.ae', NULL, '$2y$10$TupH/BcuFKy7f7NNiH9Bb.eInR7Q.y0Sov16zUspUa/G3CRwJT.V6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:06', '2019-04-11 00:03:06'),
(231, 'ebrahim.alshehhi@adports.ae', 'ebrahim.alshehhi@adports.ae', NULL, '$2y$10$y50Ymn2cEwCla6RNwcqo2OiQVX35YCNhFUebZDqInf6FKMp0mGU3i', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:06', '2019-04-11 00:03:06');
INSERT INTO `accounts` (`id`, `name`, `email`, `email_verified_at`, `password`, `contact_number`, `type`, `last_login`, `login_ip`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(232, 'sreekumar.sreedharan@safeen.ae', 'sreekumar.sreedharan@safeen.ae', NULL, '$2y$10$qiXu0Le4YXlUhKkpAX9HwOs.Xcc1SsdiRym4L6GeswQCZ5IocVNYe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:07', '2019-04-11 00:03:07'),
(233, 'hedaya.alhammadi@kizad.ae', 'hedaya.alhammadi@kizad.ae', NULL, '$2y$10$V4Ie5lD9vAWAvloishM4L.AxU.EELvOqUBPkiuT5Rv1mfDQlq580u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(234, 'naser.mansour@adports.ae', 'naser.mansour@adports.ae', NULL, '$2y$10$S7eL3LHYDLO1royNDnV.N.JYtK6sqA2qQQSYruBrwfsuN7GH/7ofS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(235, 'suhail.alnaeimi@adports.ae', 'suhail.alnaeimi@adports.ae', NULL, '$2y$10$WAhHrnfLlTcZ2jQ1yPxWkukPdQER4jZs/wj2RC92e34Dvcq/hzUVe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(236, 'noura.alobaidli@adports.ae', 'noura.alobaidli@adports.ae', NULL, '$2y$10$9gsZ0Zc5dgA9T.2pd2BzneUnBXOVTe895E6oOLDYIlDMvmyluWKy6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:10', '2019-04-11 00:03:10'),
(237, 'sanjeev.sharma@adports.ae', 'sanjeev.sharma@adports.ae', NULL, '$2y$10$tM.h4xBhN0uKzg/j6pZOTOWSHjEucDZUjYuIPnH0h0PM8VMe21T8a', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:11', '2019-04-11 00:03:11'),
(238, 'khader.hussain@adports.ae', 'khader.hussain@adports.ae', NULL, '$2y$10$Dv1E0irtUTHIJDFFzIAYsuHuOBozY1HT16iuRsnMJ4sJnsTzZVWni', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:11', '2019-04-11 00:03:11'),
(239, 'mohamed.eidhaalmenha@adports.ae', 'mohamed.eidhaalmenha@adports.ae', NULL, '$2y$10$s5fCNpkG8RREy0.pDmD0H.W3F/CLjo3tEYGbrBV0kosARI1SbDLDa', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(240, 'mohammed.khamis@adports.ae', 'mohammed.khamis@adports.ae', NULL, '$2y$10$lPa/HKU.PpYrEpUW7tPR8OKwAgwixmSo62u03EOXIrX2TSrv4nHNK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(241, 'hanan.almansoori@adports.ae', 'hanan.almansoori@adports.ae', NULL, '$2y$10$pg9biuFM22af5KTa6wgSPOdZHntWKF8klBQCmqm09fBcgpUdokpzG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(242, 'amy.lehoczky@kizad.ae', 'amy.lehoczky@kizad.ae', NULL, '$2y$10$ufuh3WlYU5NjcVUc1j1iWee3OdzFsTkqlPtNpk.8Jw/PQppjg65m.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(243, 'manoj.leelamma@safeen.ae', 'manoj.leelamma@safeen.ae', NULL, '$2y$10$.yjyQmvJbo1Tmo1jpDJLdOEgmG6IIJaUBWBgE9WbLva2YSmn.mSoC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(244, 'salma.almeqbali@adports.ae', 'salma.almeqbali@adports.ae', NULL, '$2y$10$xy4v16bh2gWevEqM03v04u44srRJtUodpqA2fVxssb8vgeA5R3E52', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(245, 'john.lindsay@kizad.ae', 'john.lindsay@kizad.ae', NULL, '$2y$10$gffP/Pxo8FStMqCKXTgWf.0lrKcojUtqBdOkIBXPiO96xS7QkT1yS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(246, 'abdulla.albraiki@kizad.ae', 'abdulla.albraiki@kizad.ae', NULL, '$2y$10$g.eXbrDqYToBXa7xeS1wnuyPoUSkFOjmAbH2f..MzO1I.MHuZfySC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(247, 'naser.albusaeedi@adports.ae', 'naser.albusaeedi@adports.ae', NULL, '$2y$10$dDZD6Y8LOTuBW5pWRFzN0ew5miyZ/YAhfrK.Prn5swTXw.AgL6ZWG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:14', '2019-04-11 00:03:14'),
(248, 'rashed.alsheryani@adports.ae', 'rashed.alsheryani@adports.ae', NULL, '$2y$10$bzFLVHY35ajIdBS/pIJS.uLbXIx1ojjA9C/K0aLB86Z1WTAUHx4jq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(249, 'abdullathief.pathikundil@safeen.ae', 'abdullathief.pathikundil@safeen.ae', NULL, '$2y$10$BzCXo7jF6f6bGb4E8w8QA.0DFSacCST1eYoxm5vVFXlTUJLO0709W', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(250, 'abdulnasar.purayil@safeen.ae', 'abdulnasar.purayil@safeen.ae', NULL, '$2y$10$LBP/dukGhLs1ISNsSZTRWemXG0uRhvHBayjbjmlYSEeMxqlhjUqM.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(251, 'abdulla.ali@safeen.ae', 'abdulla.ali@safeen.ae', NULL, '$2y$10$cKk63my4CSqmk2/avCagg.tisZeZ2UA.oItO.XjDEWiXMjFDip.yC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(252, 'abdulla.kunhi@safeen.ae', 'abdulla.kunhi@safeen.ae', NULL, '$2y$10$3.XWzAHYxIdznrKWARihLuBhVJ/6VHN3bKVlMOtwa8z0WX5KX4USi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(253, 'adam.sally@safeen.ae', 'adam.sally@safeen.ae', NULL, '$2y$10$NZRInypJoJxzn4qEHu49eOJ8kz0oKWE8wjQQXcvdQMVqTBS.9Ko4K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(254, 'akbar.muhammad@safeen.ae', 'akbar.muhammad@safeen.ae', NULL, '$2y$10$rBm33VbYlC6bFgQF3vEhue1GFPmnQH19d3JU9VnxsZqFpIeT9RjQe', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(255, 'akram.alshalabi@safeen.ae', 'akram.alshalabi@safeen.ae', NULL, '$2y$10$4oy5xWj3AevcYrMw1ft.WOq4C.IanNYT0RsewR.4JzNFC70MlmwMS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(256, 'ali.alhammadi@safeen.ae', 'ali.alhammadi@safeen.ae', NULL, '$2y$10$PRlSvfENOoeAapoTAtUQ9eugB/rXTRyOi3N3yCHWoGkvzFq/B0rAG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(257, 'ali.mohamed@safeen.ae', 'ali.mohamed@safeen.ae', NULL, '$2y$10$AZed6f0j5zg5Lxx1UESHzOi9wHalSTScn51fEPzIaSQ7MH.9aEDUW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:17', '2019-04-11 00:03:17'),
(258, 'aman.obaid@safeen.ae', 'aman.obaid@safeen.ae', NULL, '$2y$10$RBGwmrPwbs3hYkT./idGZeIyiHmebdbCWhvnQtk7e/D6qP9jNo5Ta', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:17', '2019-04-11 00:03:17'),
(259, 'badiar.alkaabi@safeen.ae', 'badiar.alkaabi@safeen.ae', NULL, '$2y$10$52A/vIx7XBzdy8fzXgag0uBgVqK2RnyIBb5q4ew4SqUGqmjs6TxCC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(260, 'bakar.mohammed@safeen.ae', 'bakar.mohammed@safeen.ae', NULL, '$2y$10$m6qBQ0Tl1eRA5cGSkqjw2uYQ8EpXKmvrutzklJ2ODzGDCO5TEUpIO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(261, 'fahad.alkaabi@safeen.ae', 'fahad.alkaabi@safeen.ae', NULL, '$2y$10$C9qLd4NwodAicZ5snHFqUeXnQMoaokCXH8kZmItFwBMRtOybyrbai', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(262, 'fahed.mesrb@safeen.ae', 'fahed.mesrb@safeen.ae', NULL, '$2y$10$nbVGy./x5Ukwa2hNA0pvsu2quINNMS7e2hQOc6Y0uV6FhyY8c6CPu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(263, 'hamad.almarshoudi@safeen.ae', 'hamad.almarshoudi@safeen.ae', NULL, '$2y$10$bq62yk7sCsy0r76xLjeSxulZqxYfYj2Iyg.CwBVlzUnoCUOj4jsNC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(264, 'hareb.alhamairi@safeen.ae', 'hareb.alhamairi@safeen.ae', NULL, '$2y$10$g6jrT1xUmsgUL9Zh5nokDuqRatO1ErSvWqmpfrfh69tn6qBADALUW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(265, 'haris.muttathody@safeen.ae', 'haris.muttathody@safeen.ae', NULL, '$2y$10$Bgv1va26KRU5yRx5HcVI0eZsHDAGQuywtq5rUdPSIwDz6OKUdjqWm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(266, 'hassan.shamby@safeen.ae', 'hassan.shamby@safeen.ae', NULL, '$2y$10$sC5ql2OQnZu8NgNVudHgtuk7j16HRnjH6WU4ORvWVPPcL3qKjv6n6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(267, 'hilal.alnaimi@safeen.ae', 'hilal.alnaimi@safeen.ae', NULL, '$2y$10$exAWeu97HwJ9nAMkVQd8zOe7U6jt4C83SgpAORLOo5gUJpEaHOxZu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:20', '2019-04-11 00:03:20'),
(268, 'husain.almarzooqi@safeen.ae', 'husain.almarzooqi@safeen.ae', NULL, '$2y$10$ThT0wXYyX05x1RY4i1/ay.iakh6UH3XdtVfPPeFrfL5LezHqT0ud2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(269, 'ibrahim.shaalan@safeen.ae', 'ibrahim.shaalan@safeen.ae', NULL, '$2y$10$vHk6cJf5moQWrH0hGOYDReFc.ZJIIwDaIOmZTgWCogu2bjzWuPjcW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(270, 'ibrahim.alhosani@safeen.ae', 'ibrahim.alhosani@safeen.ae', NULL, '$2y$10$bwL9SetCm.7utOB9JB1YdeoeFKd.0hoocPAMN6qyM6QPRS9nmmz1e', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(271, 'jadeed.alhameli@safeen.ae', 'jadeed.alhameli@safeen.ae', NULL, '$2y$10$yr/AeRPMJ6Pp5slooV98yeTY1A4vAKHLHmaV2hRoVxzrWdOpIvA32', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(272, 'kamal.alkubati@safeen.ae', 'kamal.alkubati@safeen.ae', NULL, '$2y$10$MnkjNtsAW/IMCI5tIX4c5eovd6SyPwovPvQSTx97/dJCl3V9ZYqGG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(273, 'khalid.alaameri@safeen.ae', 'khalid.alaameri@safeen.ae', NULL, '$2y$10$E7g34uIht1KlNfpdSuf51u/7xgnfpEoOUGOejWW5c.bL6E1gnwa5O', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(274, 'khamis.alromaithi@safeen.ae', 'khamis.alromaithi@safeen.ae', NULL, '$2y$10$UNK6ro7nhjyoqMn58TfjieB9QPaRxwGJAFD.PLXZfZzedzCi7GgOS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(275, 'mbarek.elhafidi@safeen.ae', 'mbarek.elhafidi@safeen.ae', NULL, '$2y$10$0JEsGb1UxCHPBQjVDkWHaObObH/KpGMaKpP7w2Bt4Rdlfiat4sJxy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(276, 'mahmood.alalili@safeen.ae', 'mahmood.alalili@safeen.ae', NULL, '$2y$10$g1SieG6nOPI7lChM8d3LOObkmLjvhL4MKPkspR/9kV5uwaPnrjteG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:23', '2019-04-11 00:03:23'),
(277, 'majdi.saleem@safeen.ae', 'majdi.saleem@safeen.ae', NULL, '$2y$10$Pv/Pz1Q404HSv2CLjWX0N.YGNpmdN4TPtamIAUVF/fHMBW/m5mZUC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:23', '2019-04-11 00:03:23'),
(278, 'mark.laureles@safeen.ae', 'mark.laureles@safeen.ae', NULL, '$2y$10$TnS1B2xl3zU1ToK5POg4E.XatvOTLNxW06DsxkXZEMMW/4X1DmdRq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(279, 'mohamed.poolad@safeen.ae', 'mohamed.poolad@safeen.ae', NULL, '$2y$10$0brBWfBcL0Cy.AYRjWLp5eZx.Zeg/0FO360wX23dQs9y4aeBHRZk6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(280, 'mohammed.ahmed@safeen.ae', 'mohammed.ahmed@safeen.ae', NULL, '$2y$10$O6GN0GUaXjW2fZSpg8UjWewDLDFHfBAAaLlrawnzVfDZio1X5ZO5S', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(281, 'montu.gomes@safeen.ae', 'montu.gomes@safeen.ae', NULL, '$2y$10$jlfliGxDayNc4FGc1/ib3uzyf2CPhFLYqJLUHThxU5xg1hmJvR/26', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(282, 'muhammad.sadiq@safeen.ae', 'muhammad.sadiq@safeen.ae', NULL, '$2y$10$i0NhL8heaoMULpE2Mrma0OzIMGbJNNM/Bdy.vlzIravCF601xe9We', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(283, 'nizar.alsayed@safeen.ae', 'nizar.alsayed@safeen.ae', NULL, '$2y$10$GA6hraldz0uJa8mZ40d/kuu2xvL.KVbOtcrwq5roaUYYThzZ0wo5K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:25', '2019-04-11 00:03:25'),
(284, 'obaid.alhameeri@safeen.ae', 'obaid.alhameeri@safeen.ae', NULL, '$2y$10$NVeajnabpbI1Qh8vrFgywem5yHHP5LR3t5iIkfZQERo/MWJbm0r2G', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:25', '2019-04-11 00:03:25'),
(285, 'oli.bakerwdeen@safeen.ae', 'oli.bakerwdeen@safeen.ae', NULL, '$2y$10$ZVcFcEacactJ1.YpW2JpTe0gEHqjV9eI5QAepBDJJAUIq1neVZA42', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(286, 'ramel.padel@safeen.ae', 'ramel.padel@safeen.ae', NULL, '$2y$10$bI2cx5VyOtMsmkFmp.QRNODJQceLCYthl4X7jNZWZsh5.J3q660JS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(287, 'ramzi.yahya@safeen.ae', 'ramzi.yahya@safeen.ae', NULL, '$2y$10$TCbIM4g7GlJfc/v4KEQII.bixujYW1/oZf9KdIVIi1yo2y.M59jzu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(288, 'reynaldo.montano@safeen.ae', 'reynaldo.montano@safeen.ae', NULL, '$2y$10$kTQ/brupgKq26rpdoTGvFuqBlavduuUD4qwtMIdtm2HnKd7uyPoGq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(289, 'sadar.ghulam@safeen.ae', 'sadar.ghulam@safeen.ae', NULL, '$2y$10$YAd/gadiy/of.9Rhv5yViuyAAaUevHpYRjzJoUkNFsk72GS1t2iBS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(290, 'saeed.emam@safeen.ae', 'saeed.emam@safeen.ae', NULL, '$2y$10$zDd2Pn7iyDFPPurLM3mSYunHIiqjDghr2cTDYA1H1AcPu0.0tH4Ka', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(291, 'safi.albarazi@safeen.ae', 'safi.albarazi@safeen.ae', NULL, '$2y$10$HolL65uQj543q14e9aID5OIWVzwhaaSHxE5QL1UF1z/4xSRTtVNUC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(292, 'sahib.mohammad@safeen.ae', 'sahib.mohammad@safeen.ae', NULL, '$2y$10$8lCjqXLWR852IwFfHbK4.e7bACRFBNMXwxbDN0bm18LS027q7G4Gu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:28', '2019-04-11 00:03:28'),
(293, 'said.sharif@safeen.ae', 'said.sharif@safeen.ae', NULL, '$2y$10$dYudbqxi5hmNftIxYFEk1OCim69g/YDt/NhSHufNJLmAGB3j5Iium', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(294, 'saleh.baabbad@safeen.ae', 'saleh.baabbad@safeen.ae', NULL, '$2y$10$M95PjqUgH7Yx70yJbyGG9eM3hcZb7l617Bb6rGaATJwXhyQPBxh0a', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(295, 'shady.abdousoliman@safeen.ae', 'shady.abdousoliman@safeen.ae', NULL, '$2y$10$9xCe.dv/fQYJi.hJhijH5OfHFBP3Oz5fAXAV0EN/mHjDz/KRJEstu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(296, 'shaukat.ishaque@safeen.ae', 'shaukat.ishaque@safeen.ae', NULL, '$2y$10$H5Cxsed/k4zuj.IhvkpeBOksYnGlWp19qyswmSFCCPRV4zJMZp83K', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(297, 'suleiman.salim@safeen.ae', 'suleiman.salim@safeen.ae', NULL, '$2y$10$kjMPbi/UrZaOHcztSiYkWO8BFbQKw3/83to.N3Zfn5o.VugscfaVi', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(298, 'tarek.charafeddine@safeen.ae', 'tarek.charafeddine@safeen.ae', NULL, '$2y$10$wK7Bwl2Ult4jBmb2HjNsDO6K9pXxIc8qTLUnGzFdRkNr8VurwhuC.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(299, 'ulysses.tadena@safeen.ae', 'ulysses.tadena@safeen.ae', NULL, '$2y$10$7OIPFmA2mLE24pq6gcf7p.rcbrkYH.NJR5mR0nCTkiUci7VzF1vyO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(300, 'vinod.pillai@safeen.ae', 'vinod.pillai@safeen.ae', NULL, '$2y$10$3q4uIvsSUcEdcz3ujSSHq.y6dqPCs4wzS90P9RHbMRGD6hiVCcYky', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(301, 'waheed.abbas@safeen.ae', 'waheed.abbas@safeen.ae', NULL, '$2y$10$j.EFvg92/gaXLHafEFtWiejzPlxxkCpbFDZBKBV3jncMJPyT5laGO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(302, 'waleed.aldob@safeen.ae', 'waleed.aldob@safeen.ae', NULL, '$2y$10$96MGsJuNha23.4X0OP97cO1OZ/.FpYtq6ten3NcMS/DkgoSdSDbei', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(303, 'younis.almarzouqi@safeen.ae', 'younis.almarzouqi@safeen.ae', NULL, '$2y$10$1EKDokQYARlvsQidcN.HGuX7c3MIX9YTq4FLS1fQA2FIy28afz6Aq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(304, 'youssef.ouassifi@safeen.ae', 'youssef.ouassifi@safeen.ae', NULL, '$2y$10$qUsJ2B0MckCW8i09YCG63.a6dB8bTAwfDpiM9u8v5nDzCR5q3GhGK', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(305, 'zaal.almeraikhi@safeen.ae', 'zaal.almeraikhi@safeen.ae', NULL, '$2y$10$uRIz4tM3xd2vuu2i0NPwVuXX5jU3cQyPKh83bD.kTACQbBdmI/.GG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(306, 'lazarojr.arzadon@safeen.ae', 'lazarojr.arzadon@safeen.ae', NULL, '$2y$10$0uvnt9f0fvsU41JHQ7aiD.49Q3EZDPMuAqtLhU60MV.IEFCvn/69C', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(307, 'mohamed.siddic@safeen.ae', 'mohamed.siddic@safeen.ae', NULL, '$2y$10$4q7y64auG6IWRMCHBje6BeXM0TIsQjuGe7oxhgrLdLowjxgS9niO6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(308, 'rashid.almoreikhi@safeen.ae', 'rashid.almoreikhi@safeen.ae', NULL, '$2y$10$ydj0cC.nFRcAA8P7wSO2/eVY2cdxLs4QWhmkdNWdSN/nSwf4UATra', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(309, 'khulood.albadri@adports.ae', 'khulood.albadri@adports.ae', NULL, '$2y$10$oKzKAIv1qGXVlvP1kG1CMeW.dKX7a8s.MfigPR.OKZg6YirjtAR3.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:33', '2019-04-11 00:03:33'),
(310, 'khadhar.mydeen@adports.ae', 'khadhar.mydeen@adports.ae', NULL, '$2y$10$fV5Zib.XGkPvWmBoHR2FjOAUKho0za3GEJZW0V76HefPl07u/Cc8u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:33', '2019-04-11 00:03:33'),
(311, 'arnold.samson@adports.ae', 'arnold.samson@adports.ae', NULL, '$2y$10$P5i2r6axZs7TdNbMO.u81O2ukv9PcTsZf7IvUPI6.OWMtsk1L706u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:33', '2019-04-11 00:03:33'),
(312, 'cheriya.saleem@adports.ae', 'cheriya.saleem@adports.ae', NULL, '$2y$10$1VNOo0JCaF4tGnTt9oGflOfIGGi4TnyTVzNT0r2myodrws3IUpeiy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:34', '2019-04-11 00:03:34'),
(313, 'mosa.alawadi@adports.ae', 'mosa.alawadi@adports.ae', NULL, '$2y$10$cPvrm4p.IEhEuOyP8oA0PuZkqgrBh0HSeRrj/1UA7f4CYkNVD3Zgy', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:34', '2019-04-11 00:03:34'),
(314, 'ian.partridge@adports.ae', 'ian.partridge@adports.ae', NULL, '$2y$10$V.p.2KxUa.5uN.pe62N/zez3g7jhUCtozF5chRqqUYgR69WT9AVUG', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:35', '2019-04-11 00:03:35'),
(315, 'abdalla.hassan@adports.ae', 'abdalla.hassan@adports.ae', NULL, '$2y$10$0OCSFwxzZjII1gIrIKBOuelYWvJu71GIR1rUsY42mS3jCmNvh006u', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:35', '2019-04-11 00:03:35'),
(316, 'bilal.baseel@adports.ae', 'bilal.baseel@adports.ae', NULL, '$2y$10$EdcPGoJShrc2yzlpE27PTOFzs8DFap25pKY1A/SkfKiD03wQGP4hC', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:36', '2019-04-11 00:03:36'),
(317, 'fady.hassan@adports.ae', 'fady.hassan@adports.ae', NULL, '$2y$10$N3kX2/QcO47UGhKxbH.QJezKsVZjmwe0VgvxrPX8SIi6AQn/gHrgW', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:36', '2019-04-11 00:03:36'),
(318, 'yassin.abdi@adports.ae', 'yassin.abdi@adports.ae', NULL, '$2y$10$gPadDBGu.cXAE7CwD0fyreWy6vG88FILRaLEjNXKmZ1ohBpRRVC3i', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:37', '2019-04-11 00:03:37'),
(319, 'ghulam.azam@adports.ae', 'ghulam.azam@adports.ae', NULL, '$2y$10$PPqy7RqdVZEWMvdCK/5J0uI9tkM4UP/NDiO1guYlOAksPV0rvtLAO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:38', '2019-04-11 00:03:38'),
(320, 'mubarak.alshumiri@adports.ae', 'mubarak.alshumiri@adports.ae', NULL, '$2y$10$buHmgurLEOGwY5Tf5u3xPu6F7sa2qI1uZ4DEQbv6RyNMfeIFcrcey', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:39', '2019-04-11 00:03:39'),
(321, 'enock.dadson@safeen.ae', 'enock.dadson@safeen.ae', NULL, '$2y$10$jly.BpA8K4fhtKjQXHb3m.H01HBUVNhVIUM5.ynXtiJvettGqMvlu', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:39', '2019-04-11 00:03:39'),
(322, 'geovanne.apostol@safeen.ae', 'geovanne.apostol@safeen.ae', NULL, '$2y$10$NJ/0BnpCsoJihz7b5Xj2S.PCfmthvlpDKSnGL7zNt3FxvaagsFzsO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:40', '2019-04-11 00:03:40'),
(323, 'gamil.alameri@adports.ae', 'gamil.alameri@adports.ae', NULL, '$2y$10$UVkfeqehJ0qcdHpcYm9FceC9jv8rbeLgv3SHHG.EF12VjyYRnNEcO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:40', '2019-04-11 00:03:40'),
(324, 'abdullah.alyafeai@adports.ae', 'abdullah.alyafeai@adports.ae', NULL, '$2y$10$9aZr/3hY2DWDd7i3E5LIveQ74EXOINafTVFGvzGnS1NYmqekRoDOa', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:41', '2019-04-11 00:03:41'),
(325, 'ibrahim.alkhoori@adports.ae', 'ibrahim.alkhoori@adports.ae', NULL, '$2y$10$eanPFdFbAwgjATjqcZGUjus6iYq4Evm34sH3XSe7tzwl3L11yNCr2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:42', '2019-04-11 00:03:42'),
(326, 'khalid.alqubaisi@adports.ae', 'khalid.alqubaisi@adports.ae', NULL, '$2y$10$ZjzLROhPR1vrIbVURW5AH.xqkABdlwnKswxDh5Vy6MKzjGH0/rHx.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(327, 'aweis.haji@adports.ae', 'aweis.haji@adports.ae', NULL, '$2y$10$PXBo0ohPfb2vF00LEt359OO9YhNrur/gRG9WJuVbeXmdKrAmsI04e', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(328, 'husain.najad@adports.ae', 'husain.najad@adports.ae', NULL, '$2y$10$kas3SLsQY1qRz4aKStDBoOG2lao1VOgbBcZiqsdNjAM/1hs5S/eju', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(329, 'khalid.alzaabi@adports.ae', 'khalid.alzaabi@adports.ae', NULL, '$2y$10$73DAGihEk81zQ.SbZUHaMe1bX.4PodsoWz4OuJjTMFp4rtX2.CFR6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(330, 'gharib.alahbabi@adports.ae', 'gharib.alahbabi@adports.ae', NULL, '$2y$10$JT53rul5c6CrXucgUOfwJ.JnEZKi2qXQ4uwARED6NyRJzBwYFGBza', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(331, 'eliser.fernandez@safeen.ae', 'eliser.fernandez@safeen.ae', NULL, '$2y$10$NMFHmF4uUkNKPhIPYcm8KewhEt20tPyjjGjQ9BQMwZHQATW/7AWo2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(332, 'salemabdulla.alali@adports.ae', 'salemabdulla.alali@adports.ae', NULL, '$2y$10$fJSsssWbDFO/Ax3ibOrd.OcXdAs66vIAuJ9F/nEcVf3jLdhpoyge.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(333, 'ali.alzaabi@adports.ae', 'ali.alzaabi@adports.ae', NULL, '$2y$10$S6B0onPgSooIG7cOB9/Pw.SlG2bqfDfpJz9uixtJuwT6d0oXMcrW6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(334, 'mohamed.albuainain@adports.ae', 'mohamed.albuainain@adports.ae', NULL, '$2y$10$UfPgMzB8IIiJ9Yvixw1Rpeb9WvS8.1i.zgNuO54O/3.MCrYcNIWzq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(335, 'mohsin.saeed@adports.ae', 'mohsin.saeed@adports.ae', NULL, '$2y$10$rNh8YNa64fI4jCXYfV7jreazPcxlcMbe3ld/6BxYiohO4Ej93zb5C', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:45', '2019-04-11 00:03:45'),
(336, 'talib.alkathiri@adports.ae', 'talib.alkathiri@adports.ae', NULL, '$2y$10$Hi7jYUNatxH28Xm1tM/hX.qB62J1VvxtCbSOA3oGGIkA7P9HKjpqO', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(337, 'jamal.alblooshi@adports.ae', 'jamal.alblooshi@adports.ae', NULL, '$2y$10$E.rnm7WKEvCI6KvLH0Xc4uqoL8jbB5lJlrsdncWDnPNmDAcwBOGM6', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(338, 'ahmed.alshebli@adports.ae', 'ahmed.alshebli@adports.ae', NULL, '$2y$10$B.LGxieXtXLYbuEZALdlw.ty4PJhhCy6q9N7hCmJ7snAETUMFG2fq', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(339, 'fatima.alhammadi@adports.ae', 'fatima.alhammadi@adports.ae', NULL, '$2y$10$L5sHATHugVH5ntjV6XPvZOK6/ssxf9r77yhBLQHMwCSaDz4X3rkFm', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(340, 'asma.alnuaimi@adports.ae', 'asma.alnuaimi@adports.ae', NULL, '$2y$10$jEKz0I6p7wngM0ALwL/lDON7BSJJeYD6DmPGgbor36qu1IjTzoP1C', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(341, 'amna.alrashdi@adports.ae', 'amna.alrashdi@adports.ae', NULL, '$2y$10$upVduuNuLB7UN.4JjPkm7.vSNTkkSpBsEz/vIVhas/H/oEBLSwGay', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(342, 'abdulhaq.alafeefi@adports.ae', 'abdulhaq.alafeefi@adports.ae', NULL, '$2y$10$bFNUkuvqvW6lnLeC0ct7n.rkQjlGdCu8LmpVoHhRBNhRnKikoPN7y', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(343, 'musallam.alrashdi@kizad.ae', 'musallam.alrashdi@kizad.ae', NULL, '$2y$10$maPnVilnuV4yV8HMlLIWA.vdNlbyj1Db/W7WOXS1avzsmhwWKhhq2', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(344, 'mohammed.alobeidli@adports.ae', 'mohammed.alobeidli@adports.ae', NULL, '$2y$10$z/DbVQc3uq4c9x2648cV3eyc/EgWyqr0lz88Oji4o1bWRnUxyLqVS', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(345, 'adeeb.alkatheeri@adports.ae', 'adeeb.alkatheeri@adports.ae', NULL, '$2y$10$UZAkWjhk7Lvmf3KpWaZWKu8e7JY9zRvbUP5scuvLSlw9.R77KZdU.', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:48', '2019-04-11 00:03:48'),
(346, 'Saeed.alremeithi@adports.ae', 'Saeed.alremeithi@adports.ae', NULL, '$2y$10$OIltbuDmb8q7ChC8d1pe8u6ycnJzVFzNxQT3VxYrYRMqS35wkrb6i', '', 'user', NULL, NULL, NULL, NULL, '2019-04-11 00:03:49', '2019-04-11 00:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `agencies`
--

CREATE TABLE `agencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agencies`
--

INSERT INTO `agencies` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Laury Crist', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(2, 'Alford Bailey', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(3, 'Brigitte Steuber', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(4, 'Bert Wisozk', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(5, 'Emma Hartmann', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(6, 'Kelton Bode', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(7, 'Myrna Heaney', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(8, 'Prof. Cory Schmitt', NULL, '2019-04-10 23:25:47', '2019-04-10 23:25:47'),
(9, 'Thea Paucek', NULL, '2019-04-10 23:25:48', '2019-04-10 23:25:48'),
(10, 'Claud Waters', NULL, '2019-04-10 23:25:48', '2019-04-10 23:25:48'),
(11, 'Verlie Flatley I', NULL, '2019-04-10 23:25:50', '2019-04-10 23:25:50'),
(12, 'Jacklyn Prosacco V', NULL, '2019-04-10 23:25:51', '2019-04-10 23:25:51'),
(13, 'Ciara Fay', NULL, '2019-04-10 23:25:51', '2019-04-10 23:25:51'),
(14, 'Robert Jakubowski', NULL, '2019-04-10 23:25:52', '2019-04-10 23:25:52'),
(15, 'Helga Stroman', NULL, '2019-04-10 23:25:54', '2019-04-10 23:25:54'),
(16, 'ADPorts', NULL, '2019-04-10 23:25:56', '2019-04-10 23:25:56'),
(17, 'Garfield Christiansen PhD', NULL, '2019-04-10 23:25:58', '2019-04-10 23:25:58'),
(18, 'Desiree Stokes', NULL, '2019-04-10 23:25:58', '2019-04-10 23:25:58'),
(19, 'Dominic Reilly', NULL, '2019-04-10 23:25:58', '2019-04-10 23:25:58'),
(20, 'Tom McDermott', NULL, '2019-04-10 23:25:59', '2019-04-10 23:25:59'),
(21, 'Dr. Priscilla Davis', NULL, '2019-04-10 23:25:59', '2019-04-10 23:25:59'),
(22, 'Amos Renner', NULL, '2019-04-10 23:26:00', '2019-04-10 23:26:00'),
(23, 'Prof. Forrest Hagenes', NULL, '2019-04-10 23:26:00', '2019-04-10 23:26:00'),
(24, 'Javon Walsh DDS', NULL, '2019-04-10 23:26:00', '2019-04-10 23:26:00'),
(25, 'Marianne Mills', NULL, '2019-04-10 23:26:01', '2019-04-10 23:26:01'),
(26, 'Reyes Kshlerin', NULL, '2019-04-10 23:26:01', '2019-04-10 23:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `agencies_admins`
--

CREATE TABLE `agencies_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `agency_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards_levels`
--

CREATE TABLE `awards_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomination_type_id` int(10) UNSIGNED NOT NULL,
  `points` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards_levels`
--

INSERT INTO `awards_levels` (`id`, `name`, `description`, `nomination_type_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 'dddd', 'ddd', 1, 500, '2019-04-11 00:10:06', '2019-04-11 00:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `catalogues`
--

CREATE TABLE `catalogues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogues`
--

INSERT INTO `catalogues` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mrs. Heath Kreiger', '2019-04-10 23:25:56', '2019-04-10 23:25:56', NULL),
(2, 'Elza O\'Hara', '2019-04-10 23:25:56', '2019-04-10 23:25:56', NULL),
(3, 'Xander Marvin', '2019-04-10 23:25:56', '2019-04-10 23:25:56', NULL),
(4, 'Annalise Brekke', '2019-04-10 23:25:56', '2019-04-10 23:25:56', NULL),
(5, 'Jamie Mitchell', '2019-04-10 23:25:56', '2019-04-10 23:25:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `agency_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accent_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `agency_id`, `name`, `contact_name`, `contact_email`, `logo`, `accent_color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'Bill Waters Sr.', 'Mr. Drake Murazik I', 'rice.cortez@example.org', NULL, NULL, '2019-04-10 23:25:48', '2019-04-10 23:25:48', NULL),
(2, 7, 'Donavon Dicki PhD', 'Miss Nya Walter', 'ritchie.roel@example.com', NULL, NULL, '2019-04-10 23:25:48', '2019-04-10 23:25:48', NULL),
(3, 8, 'Maybelle Kuhic', 'Wilburn Schimmel', 'bud29@example.com', NULL, NULL, '2019-04-10 23:25:49', '2019-04-10 23:25:49', NULL),
(4, 9, 'Marlin Gusikowski Sr.', 'Miss Pascale Mertz MD', 'boris.mraz@example.org', NULL, NULL, '2019-04-10 23:25:49', '2019-04-10 23:25:49', NULL),
(5, 10, 'Dr. Oma Connelly', 'Dr. Lee Marquardt', 'lee.hagenes@example.net', NULL, NULL, '2019-04-10 23:25:49', '2019-04-10 23:25:49', NULL),
(6, 11, 'Ashleigh Hills', 'Hanna Stamm', 'tremaine73@example.net', NULL, NULL, '2019-04-10 23:25:50', '2019-04-10 23:25:50', NULL),
(7, 12, 'Stuart Kessler', 'Dr. Greg Rolfson DDS', 'desmond28@example.com', NULL, NULL, '2019-04-10 23:25:51', '2019-04-10 23:25:51', NULL),
(8, 13, 'Sarah Cummings', 'Margaret Ward', 'kunze.emmie@example.net', NULL, NULL, '2019-04-10 23:25:51', '2019-04-10 23:25:51', NULL),
(9, 14, 'Everett Lindgren', 'Nathan Lehner', 'marcos45@example.org', NULL, NULL, '2019-04-10 23:25:53', '2019-04-10 23:25:53', NULL),
(10, 15, 'Jany Buckridge DDS', 'Dr. Keaton Lakin', 'brandt34@example.net', NULL, NULL, '2019-04-10 23:25:54', '2019-04-10 23:25:54', NULL),
(11, 16, 'AD Ports', 'AD Ports', 'client@adports.ae', 'logo', NULL, '2019-04-10 23:25:57', '2019-04-10 23:25:57', NULL),
(12, 18, 'Rosendo Hermann', 'Magdalena Nikolaus DVM', 'bernita22@example.org', NULL, NULL, '2019-04-10 23:25:58', '2019-04-10 23:25:58', NULL),
(13, 20, 'Coleman Runte', 'Furman Abernathy', 'dane66@example.net', NULL, NULL, '2019-04-10 23:25:59', '2019-04-10 23:25:59', NULL),
(14, 22, 'Dax Macejkovic', 'Dr. Jaleel Maggio', 'yschuster@example.com', NULL, NULL, '2019-04-10 23:26:00', '2019-04-10 23:26:00', NULL),
(15, 24, 'Hallie O\'Keefe', 'Salma Price', 'homenick.brant@example.org', NULL, NULL, '2019-04-10 23:26:00', '2019-04-10 23:26:00', NULL),
(16, 26, 'Jude Dibbert', 'Celestino Heidenreich III', 'lily76@example.net', NULL, NULL, '2019-04-10 23:26:01', '2019-04-10 23:26:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients_admins`
--

CREATE TABLE `clients_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients_admins`
--

INSERT INTO `clients_admins` (`id`, `client_id`, `account_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, '2019-04-10 23:25:55', '2019-04-10 23:25:55'),
(2, 7, 2, NULL, '2019-04-10 23:25:55', '2019-04-10 23:25:55'),
(3, 8, 3, NULL, '2019-04-10 23:25:55', '2019-04-10 23:25:55'),
(4, 9, 4, NULL, '2019-04-10 23:25:55', '2019-04-10 23:25:55'),
(5, 10, 5, NULL, '2019-04-10 23:25:56', '2019-04-10 23:25:56'),
(6, 11, 6, NULL, '2019-04-10 23:25:57', '2019-04-10 23:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `client_catalogues`
--

CREATE TABLE `client_catalogues` (
  `catalogue_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`) VALUES
(1, 'United Arab Emirates Dirham'),
(2, 'Afghan Afghani'),
(3, 'Albanian Lek'),
(4, 'Armenian Dram'),
(5, 'Netherlands Antillean Guilder'),
(6, 'Angolan Kwanza'),
(7, 'Argentine Peso'),
(8, 'Australian Dollar'),
(9, 'Aruban Florin'),
(10, 'Azerbaijani Manat'),
(11, 'Bosnia-Herzegovina Convertible Mark'),
(12, 'Barbadian Dollar'),
(13, 'Bangladeshi Taka'),
(14, 'Bulgarian Lev'),
(15, 'Bahraini Dinar'),
(16, 'Burundian Franc'),
(17, 'Bermudan Dollar'),
(18, 'Brunei Dollar'),
(19, 'Bolivian Boliviano'),
(20, 'Brazilian Real'),
(21, 'Bahamian Dollar'),
(22, 'Bitcoin'),
(23, 'Bhutanese Ngultrum'),
(24, 'Botswanan Pula'),
(25, 'Belarusian Ruble'),
(26, 'Belize Dollar'),
(27, 'Canadian Dollar'),
(28, 'Congolese Franc'),
(29, 'Swiss Franc'),
(30, 'Chilean Unit of Account (UF)'),
(31, 'Chilean Peso'),
(32, 'Chinese Yuan (Offshore)'),
(33, 'Chinese Yuan'),
(34, 'Colombian Peso'),
(35, 'Costa Rican Colón'),
(36, 'Cuban Convertible Peso'),
(37, 'Cuban Peso'),
(38, 'Cape Verdean Escudo'),
(39, 'Czech Republic Koruna'),
(40, 'Djiboutian Franc'),
(41, 'Danish Krone'),
(42, 'Dominican Peso'),
(43, 'Algerian Dinar'),
(44, 'Egyptian Pound'),
(45, 'Eritrean Nakfa'),
(46, 'Ethiopian Birr'),
(47, 'Euro'),
(48, 'Fijian Dollar'),
(49, 'Falkland Islands Pound'),
(50, 'British Pound Sterling'),
(51, 'Georgian Lari'),
(52, 'Guernsey Pound'),
(53, 'Ghanaian Cedi'),
(54, 'Gibraltar Pound'),
(55, 'Gambian Dalasi'),
(56, 'Guinean Franc'),
(57, 'Guatemalan Quetzal'),
(58, 'Guyanaese Dollar'),
(59, 'Hong Kong Dollar'),
(60, 'Honduran Lempira'),
(61, 'Croatian Kuna'),
(62, 'Haitian Gourde'),
(63, 'Hungarian Forint'),
(64, 'Indonesian Rupiah'),
(65, 'Israeli New Sheqel'),
(66, 'Manx pound'),
(67, 'Indian Rupee'),
(68, 'Iraqi Dinar'),
(69, 'Iranian Rial'),
(70, 'Icelandic Króna'),
(71, 'Jersey Pound'),
(72, 'Jamaican Dollar'),
(73, 'Jordanian Dinar'),
(74, 'Japanese Yen'),
(75, 'Kenyan Shilling'),
(76, 'Kyrgystani Som'),
(77, 'Cambodian Riel'),
(78, 'Comorian Franc'),
(79, 'North Korean Won'),
(80, 'South Korean Won'),
(81, 'Kuwaiti Dinar'),
(82, 'Cayman Islands Dollar'),
(83, 'Kazakhstani Tenge'),
(84, 'Laotian Kip'),
(85, 'Lebanese Pound'),
(86, 'Sri Lankan Rupee'),
(87, 'Liberian Dollar'),
(88, 'Lesotho Loti'),
(89, 'Libyan Dinar'),
(90, 'Moroccan Dirham'),
(91, 'Moldovan Leu'),
(92, 'Malagasy Ariary'),
(93, 'Macedonian Denar'),
(94, 'Myanma Kyat'),
(95, 'Mongolian Tugrik'),
(96, 'Macanese Pataca'),
(97, 'Mauritanian Ouguiya (pre-2018)'),
(98, 'Mauritanian Ouguiya'),
(99, 'Mauritian Rupee'),
(100, 'Maldivian Rufiyaa'),
(101, 'Malawian Kwacha'),
(102, 'Mexican Peso'),
(103, 'Malaysian Ringgit'),
(104, 'Mozambican Metical'),
(105, 'Namibian Dollar'),
(106, 'Nigerian Naira'),
(107, 'Nicaraguan Córdoba'),
(108, 'Norwegian Krone'),
(109, 'Nepalese Rupee'),
(110, 'New Zealand Dollar'),
(111, 'Omani Rial'),
(112, 'Panamanian Balboa'),
(113, 'Peruvian Nuevo Sol'),
(114, 'Papua New Guinean Kina'),
(115, 'Philippine Peso'),
(116, 'Pakistani Rupee'),
(117, 'Polish Zloty'),
(118, 'Paraguayan Guarani'),
(119, 'Qatari Rial'),
(120, 'Romanian Leu'),
(121, 'Serbian Dinar'),
(122, 'Russian Ruble'),
(123, 'Rwandan Franc'),
(124, 'Saudi Riyal'),
(125, 'Solomon Islands Dollar'),
(126, 'Seychellois Rupee'),
(127, 'Sudanese Pound'),
(128, 'Swedish Krona'),
(129, 'Singapore Dollar'),
(130, 'Saint Helena Pound'),
(131, 'Sierra Leonean Leone'),
(132, 'Somali Shilling'),
(133, 'Surinamese Dollar'),
(134, 'South Sudanese Pound'),
(135, 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'São Tomé and Príncipe Dobra'),
(137, 'Salvadoran Colón'),
(138, 'Syrian Pound'),
(139, 'Swazi Lilangeni'),
(140, 'Thai Baht'),
(141, 'Tajikistani Somoni'),
(142, 'Turkmenistani Manat'),
(143, 'Tunisian Dinar'),
(144, 'Tongan Pa\'anga'),
(145, 'Turkish Lira'),
(146, 'Trinidad and Tobago Dollar'),
(147, 'New Taiwan Dollar'),
(148, 'Tanzanian Shilling'),
(149, 'Ukrainian Hryvnia'),
(150, 'Ugandan Shilling'),
(151, 'United States Dollar'),
(152, 'Uruguayan Peso'),
(153, 'Uzbekistan Som'),
(154, 'Venezuelan Bolívar Fuerte (Old)'),
(155, 'Venezuelan Bolívar Soberano'),
(156, 'Vietnamese Dong'),
(157, 'Vanuatu Vatu'),
(158, 'Samoan Tala'),
(159, 'CFA Franc BEAC'),
(160, 'Silver Ounce'),
(161, 'Gold Ounce'),
(162, 'East Caribbean Dollar'),
(163, 'Special Drawing Rights'),
(164, 'CFA Franc BCEAO'),
(165, 'Palladium Ounce'),
(166, 'CFP Franc'),
(167, 'Platinum Ounce'),
(168, 'Yemeni Rial'),
(169, 'South African Rand'),
(170, 'Zambian Kwacha'),
(171, 'Zimbabwean Dollar'),
(172, 'GTQ'),
(173, 'MGA'),
(174, 'MKD'),
(175, 'IQD'),
(176, 'MXN');

-- --------------------------------------------------------

--
-- Table structure for table `g_d_p_rs`
--

CREATE TABLE `g_d_p_rs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_accounts_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_02_05_220930_create_agencies_table', 1),
(9, '2019_02_05_233832_create_catalogues_table', 1),
(10, '2019_02_05_234456_create_clients_table', 1),
(11, '2019_02_06_000630_create_clients_admins_table', 1),
(12, '2019_02_06_001610_create_client_catalogues_table', 1),
(13, '2019_02_10_174303_create_programs_table', 1),
(14, '2019_02_13_224318_create_permission_tables', 1),
(15, '2019_02_17_203709_create_tokens_table', 1),
(16, '2019_02_28_100340_create_currencies_table', 1),
(17, '2019_03_05_044924_create_programs_domains_table', 1),
(18, '2019_03_05_122329_create_programs_points_table', 1),
(19, '2019_03_05_122329_create_users_points_table', 1),
(20, '2019_03_07_164134_create_product_catalogs_table', 1),
(21, '2019_03_08_210612_create_programs_points_budgets_table', 1),
(22, '2019_03_08_210612_create_programs_points_expiries_table', 1),
(23, '2019_03_08_223828_create_access_types_table', 1),
(24, '2019_03_08_230839_create_user_data_custom_fields_table', 1),
(25, '2019_03_09_013804_create_registration_forms_table', 1),
(26, '2019_03_09_015904_create_g_d_p_rs_table', 1),
(27, '2019_03_09_115204_create_product_categories_table', 1),
(28, '2019_03_09_122117_create_products_accounts_seen_table', 1),
(29, '2019_03_09_122117_create_products_table', 1),
(30, '2019_03_09_132844_create_sub_products_table', 1),
(31, '2019_03_10_132200_create_product_orders_table', 1),
(32, '2019_03_11_133021_create_value_sets_table', 1),
(33, '2019_03_12_173437_create_nomination_types_table', 1),
(34, '2019_03_12_182938_create_program_users_table', 1),
(35, '2019_03_13_161308_create_nominations_table', 1),
(36, '2019_03_14_082219_create_nomination_declines_table', 1),
(37, '2019_03_15_182011_create_user_nomination_table', 1),
(38, '2019_03_15_182011_create_user_rewards_table', 1),
(39, '2019_03_17_000630_create_agencies_admins_table', 1),
(40, '2019_03_23_124304_create_awards_levels_table', 1),
(41, '2019_03_25_151727_create_set_approvals_table', 1),
(42, '2019_03_26_213138_create_program_users_account', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(4, 'Modules\\Account\\Models\\Account', 12),
(5, 'Modules\\Account\\Models\\Account', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Modules\\Account\\Models\\Account', 12);

-- --------------------------------------------------------

--
-- Table structure for table `nominations`
--

CREATE TABLE `nominations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_set` int(10) UNSIGNED NOT NULL,
  `multiple_recipient` int(10) UNSIGNED NOT NULL,
  `approval_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reporting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nominations`
--

INSERT INTO `nominations` (`id`, `name`, `status`, `value_set`, `multiple_recipient`, `approval_level`, `reporting`, `created_at`, `updated_at`) VALUES
(1, 'Employee of the month', 'active', 1, 1, 'approval_level_1', 'global_dashboard', '2019-04-10 23:43:02', '2019-04-10 23:43:02'),
(2, 'Employee of the month 345', 'active', 1, 1, 'approval_level_2', 'global_dashboard', '2019-04-10 23:43:23', '2019-04-10 23:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `nomination_declines`
--

CREATE TABLE `nomination_declines` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomination_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nomination_types`
--

CREATE TABLE `nomination_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT '1',
  `value_set` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nomination_types`
--

INSERT INTO `nomination_types` (`id`, `name`, `description`, `logo`, `featured`, `value_set`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Being the best Brand Ambassador', 'Being the best Brand Ambassador', 'logo', 1, 1, NULL, NULL, NULL),
(2, 'Being the best Brand Ambassadorddd', 'Being the best Brand Ambassador', 'logo', 1, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `value`, `table_name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'enable_login', 'Enable login', 'General', 'Enable log in', 'api', '2019-04-10 23:26:10', '2019-04-10 23:26:10'),
(2, 'local_overview_reporting', 'Local Overview Reporting', 'General', 'Access to engagement dashboard reports for all user groups below them in the structure', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(3, 'global_overview_reporting', 'Global Overview Reporting', 'General', 'Access to engagement dashboard for all user groups', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(4, 'line_manager_approval', 'Line Manager approval', 'Recognitions module', 'First level approval rights. Any action requiring line manager approval will find the first appropriate line manager in the group structure.', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(5, 'department_manager_approval', 'Department Manager approval', 'Recognitions module', 'Second level approval rights. Any action requiring department head approval will find the first appropriate department head in the group structure.', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(6, 'local_recognition_reporting', 'Local recognition reporting', 'Recognitions module', 'Access to dashboard reports for all user groups below then in the structure.', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(7, 'global_recognition_reporting', 'Global recognition reporting', 'Recognitions module', 'Access to dashboard reports for all user groups', 'api', '2019-04-10 23:26:11', '2019-04-10 23:26:11'),
(8, 'order_rewards', 'Order Rewards', 'Rewards module', 'User can order rewards if they have sufficient points available', 'api', '2019-04-10 23:26:12', '2019-04-10 23:26:12'),
(9, 'local_rewards_reporting', 'Local Rewards Reporting', 'Rewards module', 'Access to dashboard reports for all user groups below them in the structure', 'api', '2019-04-10 23:26:12', '2019-04-10 23:26:12'),
(10, 'global_rewards_reporting', 'Global Rewards Reporting', 'Rewards module', 'Access to dashboard reports for all user groups', 'api', '2019-04-10 23:26:12', '2019-04-10 23:26:12'),
(11, 'approve_claims', 'Approve claims', 'Performance module', 'Allows the user access to the admin area to review and approve programme claims', 'api', '2019-04-10 23:26:12', '2019-04-10 23:26:12'),
(12, 'local_performance_reporting', 'Local Performance Reporting', 'Performance module', 'Access to dashboard reports for all user groups below in the structure', 'api', '2019-04-10 23:26:13', '2019-04-10 23:26:13'),
(13, 'global_performance_reporting', 'Global Performance Reporting', 'Performance module', 'Access to dashboard reports for all user groups', 'api', '2019-04-10 23:26:13', '2019-04-10 23:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `catalog_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `value`, `image`, `seen`, `quantity`, `base_price`, `likes`, `model_number`, `min_age`, `sku`, `category_id`, `catalog_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'quidem', '3', 'https://lorempixel.com/640/480/?69934', 0, '100', NULL, NULL, NULL, NULL, NULL, 4, 5, NULL, '2019-04-10 23:26:16', '2019-04-10 23:26:16'),
(2, 'eveniet', '7', 'https://lorempixel.com/640/480/?80259', 0, '100', NULL, NULL, NULL, NULL, NULL, 5, 7, NULL, '2019-04-10 23:26:17', '2019-04-10 23:26:17'),
(3, 'qui', '8', 'https://lorempixel.com/640/480/?33970', 0, '100', NULL, NULL, NULL, NULL, NULL, 6, 9, NULL, '2019-04-10 23:26:18', '2019-04-10 23:26:18'),
(4, 'Mamaroo 4.0 Plush', '2670', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAM2000807.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAM2000807', 7, 10, NULL, '2019-04-11 00:06:03', '2019-04-11 00:06:03'),
(5, 'Rosa Nobile Eau de Parfum 100ml', '1042.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ADPRNEDP100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'ADPRNEDP100', 8, 10, NULL, '2019-04-11 00:06:03', '2019-04-11 00:06:03'),
(6, 'Aftron Deep Fryer (2.5L, 1800W, White)', '300', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1174627.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1174627', 9, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(7, 'Alessi La Cupola Espresso Coffee Maker, 3 cups', '370.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-A9095-3B.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-A9095-3B', 10, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(8, 'Alessi Honey Pot', '693', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-TW01.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-TW01', 11, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(9, 'Alessi La Cupola Espresso Coffee Maker, 6 cups', '450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-A9095-6B.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-A9095-6B', 10, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(10, 'Alessi Big Love Fushia Ice Cream Bowl with Spoon, 250 ml', '307.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-MMI01S-F.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-MMI01S-F', 11, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(11, 'Alessi Big Love Ice Cream Bowl with Spoon, 250 ml', '307.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-AMMI01S-I.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-AMMI01S-I', 11, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(12, 'Alessi Big Love Blue Ice Cream Bowl with Spoon, 250 ml', '307.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAE-MMI01S-AZ.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAE-MMI01S-AZ', 11, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(13, 'Alfi Gusto Velvet Burgundy Flask', '510', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3521-247-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3521-247-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(14, 'Alfi Gusto Chrome Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3528-201-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3528-201-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(15, 'Alfi Gusto Royal Blue Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3529-255-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3529-255-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(16, 'Alfi Gusto Apple Green Arabic Flask', '513', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3528-278-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3528-278-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(17, 'Alfi Gusto Royal Blue Flask', '510', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3521-255-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3521-255-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(18, 'Alfi Gusto Hot Chocolate Arabic Flask', '513', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3528-274-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3528-274-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(19, 'Alfi Gusto Apple Green Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3529-278-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3529-278-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(20, 'Alfi Gusto Ice Silver Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3528-888-100GIS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3528-888-100GIS', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(21, 'Alfi Senso Chrome Plated Arabic Flask, 1L', '559.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3548-000-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3548-000-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(22, 'Alfi Gusto Space Grey Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3529-218-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3529-218-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(23, 'Alfi Gusto Polar White Gold Arabic Flask', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAI-3529-219-100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAI-3529-219-100', 12, 10, NULL, '2019-04-11 00:06:04', '2019-04-11 00:06:04'),
(24, 'iPhone 8 RED 64GB 4G LTE', '4573.17', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIP864RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIP864RD', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(25, 'iPhone XR Black 64GB 4G LTE', '4863.87', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR64BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR64BK', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(26, 'iPhone 6s Plus Gold 32GB 4G LTE', '2216.97', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIP6PL32GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIP6PL32GD', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(27, 'iPhone XR Without FaceTime Coral 128GB 4G LTE', '5185.17', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128CL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128CL', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(28, 'iPhone XR 128GB Dual Sim - White', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128WH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128WH', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(29, 'iPhone XR 128GB Dual Sim - Black', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128BK', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(30, 'Iphone XS Max 64GB Dual Sim Gold', '6992.1', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD64GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD64GD', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(31, 'Iphone XS Max 64GB Dual Sim Grey', '6961.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD64GY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD64GY', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(32, 'Iphone XS Max 64GB Dual Sim Silver', '6961.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD64SL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD64SL', 13, 10, NULL, '2019-04-11 00:06:05', '2019-04-11 00:06:05'),
(33, 'Iphone XS Max 256GB Dual Sim Gold', '7879.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD256GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD256GD', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(34, 'Iphone XS Max 256GB Dual Sim Grey', '7879.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD256GY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD256GY', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(35, 'Iphone XS Max 256GB Dual Sim Silver', '7879.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD256SL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD256SL', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(36, 'Iphone XS Max 512GB Dual Sim Gold', '8996.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD512GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD512GD', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(37, 'Iphone XS Max 512GB Dual Sim Grey', '8996.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD512GY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD512GY', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(38, 'Iphone XS Max 512GB Dual Sim Silver', '8996.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXSMD512SL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXSMD512SL', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(39, 'iPhone 7 128GB - Red', '3404.25', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIP7128RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIP7128RD', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(40, 'iPhone 7 Plus 32GB - Jet Black', '3587.85', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIP7PL32JBK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIP7PL32JBK', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(41, 'iPhone 7 Plus 128GB - Red', '4421.7', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIP7PL128RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIP7PL128RD', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(42, 'iPhone XR 128GB Single Sim -Red', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128RD', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(43, 'iPhone XR 128GB Single Sim - Coral', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128CL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128CL', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(44, 'iPhone XR 128GB Single Sim - Yellow', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128YL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128YL', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(45, 'iPhone XR 128GB Single Sim - Blue', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128BL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128BL', 13, 10, NULL, '2019-04-11 00:06:06', '2019-04-11 00:06:06'),
(46, 'iPhone XR 128GB Single Sim - White', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128WH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128WH', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(47, 'iPhone XR 128GB Single Sim - Black', '4896', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXR128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXR128BK', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(48, 'iPhone XR 128GB Dual Sim -Red', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128RD', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(49, 'iPhone XR 128GB Dual Sim - Coral', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128CL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128CL', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(50, 'iPhone XR 128GB Dual Sim - Yellow', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128YL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128YL', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(51, 'iPhone XR 128GB Dual Sim - Blue', '5133.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APIPXRD128BL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APIPXRD128BL', 13, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(52, 'Watch Series 4 40mm GPS MU6J2 Grey/Pure Black\n\n', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUGB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUGB', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(53, 'Watch Series 4 40mm GPS MU7F2 Silver/White', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUSW.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUSW', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(54, 'Watch Series 4 40mm GPS MU6H2 Silver/Pure Black', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUSB', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(55, 'Watch Series 4 40mm GPS MU642 White Sport Band', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUWSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUWSB', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(56, 'Watch Series 4 40mm GPS MU652  Silver Sport Loop', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUSPL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUSPL', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(57, 'Watch Series 4 40mm GPS MU662 Black Sport', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUBSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUBSB', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(58, 'Watch Series 4 40mm GPS MU672 Black Sport Loop', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUBSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUBSL', 14, 10, NULL, '2019-04-11 00:06:07', '2019-04-11 00:06:07'),
(59, 'Watch Series 4 40mm GPS MU682 Pink Sand Sport Band', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUPSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUPSB', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(60, 'Watch Series 4 40mm GPS MU692 Pink Sand Sport Loop', '2662.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MUPSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MUPSL', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(61, 'Watch Series 4 44mm GPS MU6D2 Black Sport Band', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUBSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUBSB', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(62, 'Watch Series 4 44mm GPS MU6E2 Black Sport Loop', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUBSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUBSL', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(63, 'Watch Series 4 44mm GPS MU6A2 White Sport', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUWSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUWSB', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(64, 'Watch Series 4 44mm GPS MU6G2  Gold Pink Sand Loop', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUGPL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUGPL', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(65, 'Watch Series 4 44mm GPS MU6CA Seashell Sport Loop', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUSSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUSSL', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(66, 'Watch Series 4 44mm GPS MU6K2 P Latinum Nike', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUNP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUNP', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(67, 'Watch Series 4 44mm GPS MU6L2 Antracite Black Nike', '2715.75', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MUNAB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MUNAB', 14, 10, NULL, '2019-04-11 00:06:08', '2019-04-11 00:06:08'),
(68, 'Watch Series 4 40mm GPS + Celluar MTVQ2  Gold Milanese', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTGM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTGM', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(69, 'Watch Series 4 40mm GPS + Celluar MTVM2  Black Milanese', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTBM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTBM', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(70, 'Watch Series 4 40mm GPS + Celluar MTVD2  Grey Black Sport', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTBGBS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTBGBS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(71, 'Watch Series 4 40mm GPS + Celluar MTVA2 Silver White Sport', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTSWS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTSWS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(72, 'Watch Series 4 40mm GPS + Celluar MTVF2 Black Sport Loop', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTBSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTBSL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(73, 'Watch Series 4 40mm GPS + Celluar MTXF2 White Nike Loop', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTNWL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTNWL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(74, 'Watch Series 4 40mm GPS + Celluar MTXH2 Black Nike Loop', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTNBL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTNBL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(75, 'Watch Series 4 40mm GPS + Celluar MTVC2 Seashell Sport Loop', '2815.2', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW440MTNSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW440MTNSL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(76, 'Watch Series 4 44mm GPS + Celluar MTVW2 Pink Sand Sport Band', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/AP444MTPS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'AP444MTPS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(77, 'Watch Series 4 44mm GPS + Celluar MTVU2 Black Sport', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/AP444MTBS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'AP444MTBS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(78, 'Watch Series 4 44mm GPS + Celluar MTXK2 Nike Platinum Sport', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/AP444MTNPS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'AP444MTNPS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(79, 'Watch Series 4 44mm GPS + Celluar MTXM2 Black Nike Sport', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MTNBS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MTNBS', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(80, 'Watch Series 4 44mm GPS + Celluar MTVV2 Black Sport Loop\n\n', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MTBSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MTBSL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(81, 'Watch Series 4 44mm GPS + Celluar MTVT2 Seashell Sport Loop', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MTSSL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MTSSL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(82, 'Watch Series 4 44mm GPS + Celluar MTXJ2 White Nike Loop', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MTNWL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MTNWL', 14, 10, NULL, '2019-04-11 00:06:09', '2019-04-11 00:06:09'),
(83, 'Watch Series 4 44mm GPS + Celluar MTVX2 Gold Pink Sand Loop', '3182.4', 'http://mylist.gyftbox.in/giftcard_image/merchandise/APW444MTGPL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'APW444MTGPL', 14, 10, NULL, '2019-04-11 00:06:10', '2019-04-11 00:06:10'),
(84, 'Armani Exchange Men\'s Street Gold? Watch AX1456', '1320', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAR532AC50QYR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAR532AC50QYR', 15, 10, NULL, '2019-04-11 00:06:10', '2019-04-11 00:06:10'),
(85, 'ASA Coppa Yellow Round Mug', '72', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-19100-346.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-19100-346', 12, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(86, 'ASA Coppa Orange Mug', '79.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-19100-807.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-19100-807', 12, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(87, 'ASA ? table Tea Cup and Saucer', '79.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-1912-013.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-1912-013', 16, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(88, 'ASA ? table Espresso Cup and Saucer', '63', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-1930-013.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-1930-013', 16, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(89, 'ASA Coppa Red Mug', '79.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-19100-069.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-19100-069', 12, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(90, 'ASA 250?C Rectangular Serving Plate or Lid, 39.5 cm x 26 cm', '205.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52145-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52145-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(91, 'ASA  250?C Round Appetiser Plate or Lid, 8.5 cm', '24', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52101-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52101-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(92, 'ASA 250?C Round Souffl? Dish, 10.5 cm', '48', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52002-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52002-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(93, 'ASA 250?C Round Appetiser Plate or Lid, 20 cm', '94.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52112-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52112-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(94, 'ASA 250?C Round Souffl? Dish, 12 cm', '63', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52010-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52010-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(95, 'ASA  250?C Rectangular Serving Plate or Lid, 34 cm x 22 cm', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52143-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52143-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(96, 'ASA 250?C  Round Souffl? Dish 8.5 cm', '40.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-52001-017.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-52001-017', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(97, 'ASA ? table Salad Bowl, 30 cm', '300', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-1919-013.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-1919-013', 11, 10, NULL, '2019-04-11 00:06:11', '2019-04-11 00:06:11'),
(98, 'ASA Grande Rectangular Serving Plate', '345', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAS-4731-147.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAS-4731-147', 11, 10, NULL, '2019-04-11 00:06:12', '2019-04-11 00:06:12'),
(99, 'BaByliss BAB-C1100SDE Hair Curlor (Purple)', '628.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M63783.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M63783', 17, 10, NULL, '2019-04-11 00:06:12', '2019-04-11 00:06:12'),
(100, 'BaByliss MS21SDE Hair Styler (Silver)', '283.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M963784.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M963784', 17, 10, NULL, '2019-04-11 00:06:12', '2019-04-11 00:06:12'),
(101, 'BaByliss AS115SDE Airstyler Paddle Air Brush', '313.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1221143.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1221143', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(102, 'Babyliss G971 PSDE IPL Hair Removal System', '1417.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220229.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220229', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(103, 'Babyliss Le Pro Intense Hair Dryer and Styler (Red)', '532.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M963758.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M963758', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(104, 'BaByliss 2736SDE Rotating Airbrush (1000W)', '472.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M963782.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M963782', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(105, 'BaByliss E856SDE Beard Trimmer', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1221151.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1221151', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(106, 'BaByLiss Super Beard Trimmer (Black)', '427.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M963791.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M963791', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(107, 'BaByliss ST387E I-PRO 235 Hair Straightener (2300 W, Black)', '367.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1221150.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1221150', 17, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(108, 'Bamix Classic Hand Blender, Anthracite', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-125-203.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-125-203', 18, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(109, 'Bamix M180 DeLuxe Hand Blender, Black', '720', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-101-286.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-101-286', 18, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(110, 'Bamix SliceSy Food Grater, Chopper and Slicer', '733.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-150-060.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-150-060', 11, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(111, 'Bamix M200 Swissline Hand Blender, Mint', '1237.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-100-904.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-100-904', 18, 10, NULL, '2019-04-11 00:06:13', '2019-04-11 00:06:13'),
(112, 'Bamix M180 DeLuxe Hand Blender, White', '720', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-101-284.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-101-284', 18, 10, NULL, '2019-04-11 00:06:14', '2019-04-11 00:06:14'),
(113, 'Bamix Jamie Oliver Classic Hand Blender, Anthracite', '1012.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-102-916.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-102-916', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(114, 'Bamix˜ SwissLine Hand Blender', '1237.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-100-167.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-100-167', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(115, 'Bamix M200 Swissline Hand Blender, Silver', '1237.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-100-185.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-100-185', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(116, 'Bamix Classic Hand Blender, Red', '906', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-125-201.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-125-201', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(117, 'Bamix M200 Swissline Hand Blender, Baby Pink', '1237.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-100-939.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-100-939', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(118, 'Bamix Superbox Hand Blender', '2008.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-105-119.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-105-119', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(119, 'Bamix M180 DeLuxe Hand Blender, Red', '720', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-101-285.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-101-285', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(120, 'Bamix˜ Gastro 200 Hand Blender', '1641.15', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-103-061.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-103-061', 18, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(121, 'Bamix Meat and Vegetable Blade', '55.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBX-460-006.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBX-460-006', 11, 10, NULL, '2019-04-11 00:06:16', '2019-04-11 00:06:16'),
(122, ' Trolley Silver Cooler Bag', '552', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWA-T-143.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWA-T-143', 11, 10, NULL, '2019-04-11 00:06:17', '2019-04-11 00:06:17'),
(123, 'Babycook Food Processor', '1252.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBE912501.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBE912501', 7, 10, NULL, '2019-04-11 00:06:17', '2019-04-11 00:06:17'),
(124, 'Eyeshadow - Neapolitan EyesCream Palette', '300', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BEAEYENEP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BEAEYENEP', 19, 10, NULL, '2019-04-11 00:06:18', '2019-04-11 00:06:18'),
(125, 'Hoola Bronzing & Contouring Brush', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFHBNCB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFHBNCB', 19, 10, NULL, '2019-04-11 00:06:18', '2019-04-11 00:06:18'),
(126, 'Hoola Quickie Contour Stick', '219', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFHQCS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFHQCS', 19, 10, NULL, '2019-04-11 00:06:18', '2019-04-11 00:06:18'),
(127, 'CORALista', '234', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFCORAL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFCORAL', 19, 10, NULL, '2019-04-11 00:06:18', '2019-04-11 00:06:18'),
(128, 'Sugarbomb', '234', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFSUGBO.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFSUGBO', 19, 10, NULL, '2019-04-11 00:06:18', '2019-04-11 00:06:18'),
(129, 'Maybe Baby Eau De Toilette', '292.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFMBETD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFMBETD', 8, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(130, 'Liquid Cheeks Tint Benetint', '234', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFLCTB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFLCTB', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(131, 'They\'re Real Liner Mini', '94.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFTRLM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFTRLM', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(132, 'Boi-ing Brighten Concealer', '172.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFBOIBC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFBOIBC', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(133, 'Boi-ing Erase Concealer Kit', '204', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFBOIECK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFBOIECK', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(134, 'Boi-ing Industrial Strength Concealer', '172.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFBOIISC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFBOIISC', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(135, 'the POREfessional: pore minimising makeup', '250.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFPORMM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFPORMM', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(136, 'Porefessional Value Size', '421.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFPORVS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFPORVS', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(137, 'Magical Brow Stars Shade 03', '465', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFMBS03.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFMBS03', 19, 10, NULL, '2019-04-11 00:06:19', '2019-04-11 00:06:19'),
(138, 'Brow Contour Pro', '265.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFBCONP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFBCONP', 19, 10, NULL, '2019-04-11 00:06:20', '2019-04-11 00:06:20'),
(139, 'Goof Proof Eyebrow Pencil Travel Size Mini', '102', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BNFGPEPTM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BNFGPEPTM', 19, 10, NULL, '2019-04-11 00:06:20', '2019-04-11 00:06:20'),
(140, 'Bodum Bistro Double Wall Mug 2-Piece Set', '202.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-10606-10-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-10606-10-GROUP', 12, 10, NULL, '2019-04-11 00:06:20', '2019-04-11 00:06:20'),
(141, 'Bodum Stainless Steel Vacuum Travel Mug, Cork', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-11068-109S.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-11068-109S', 12, 10, NULL, '2019-04-11 00:06:20', '2019-04-11 00:06:20'),
(142, 'Bodum˜ Bistro Warmer', '219', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-10447-16.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-10447-16', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(143, 'Bodum Pavina Double Wall Glass 2-Piece Set', '135', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-4560-10-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-4560-10-GROUP', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(144, 'Bodum Assam Glass with Steel Handle 2-Piece Set', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-4552/16-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-4552/16-GROUP', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(145, 'Bodum Stainless Steel Vacuum Travel Mug, Black', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-11068-01.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-11068-01', 12, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(146, 'Bodum Assam Double Wall Glass 2-Piece Set', '127.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-4555-10-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-4555-10-GROUP', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(147, 'Bodum Canteen Double Wall Mug 2-Piece Set', '172.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-10326-10-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-10326-10-GROUP', 12, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(148, 'Bodum Stainless Steel Vacuum Travel Mug, White', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-11068-913.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-11068-913', 12, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(149, 'Bodum Double Wall Vacuum Travel Mug, Black', '103.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-11103-01.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-11103-01', 12, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(150, 'Bodum Chambord Coffee Glass 2-Piece Set', '253.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-4912-18.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-4912-18', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(151, 'Bodum˜ Chambord Warmer', '223.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBD-1902-16.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBD-1902-16', 11, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(152, 'Bose 761529-0020 SoundSport Wireless Headphones (Aqua)', '943.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211770.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211770', 20, 10, NULL, '2019-04-11 00:06:21', '2019-04-11 00:06:21'),
(153, 'Bose 761529-0010 SoundSport Wireless Headphones (Black)', '943.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211769.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211769', 20, 10, NULL, '2019-04-11 00:06:22', '2019-04-11 00:06:22'),
(154, 'Bose SoundLink Revolve+ Bluetooth Speaker (Black)', '1888.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211763.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211763', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(155, 'Bose SoundLink Revolve Bluetooth Speaker (Black)', '1258.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211761.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211761', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(156, 'Bose 738102 SoundTouch 30 Series III Wireless Music System White', '3298.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211741.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211741', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(157, 'Bose QuietComfort 25 Acoustic Noise Cancelling Headphones ? Samsung & Android Devices (White)', '1888.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211815.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211815', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(158, 'Bose SoundLink Color Bluetooth Speaker (White)', '471', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1211791.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1211791', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(159, 'Bose QuietComfort 35 Wireless Headphones II (Black)', '2283', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M233359.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M233359', 20, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(160, 'Braun Airstyler 7 with Iontec + Comb (700W, Black)', '388.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216485.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216485', 17, 10, NULL, '2019-04-11 00:06:23', '2019-04-11 00:06:23'),
(161, 'Braun Satin Hair Straightener 3 (140 W, Black)', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216494.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216494', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(162, 'Braun Satin Iontec Hair 7 Curler (35 W, Black)\n', '457.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216486.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216486', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(163, 'Braun CU710 Satin Hair 7 Iontec Curler (43W, Black and Red)', '517.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216515.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216515', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(164, 'Braun HD585 Hair Dryer 5 (7 W, White)', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216490.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216490', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(165, 'Braun HD350 Satin Hair 3 Style&Go Travel Hair Dryer (1600W, Black)', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216516.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216516', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(166, 'Braun Satin Iontec Hair Straightener 7 (170 W, Black)', '472.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216497.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216497', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(167, 'Braun Satin Hair 5 Multistyler (170 W, Black)', '408', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216496\n.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216496\n', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(168, 'Braun 5040s Series 5 Wet & Dry Electric Foil Shaver (7 W)', '520.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216499.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216499', 17, 10, NULL, '2019-04-11 00:06:24', '2019-04-11 00:06:24'),
(169, 'Braun BT 3040 Beard Trimmer (6 W, Black)', '283.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1329892.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1329892', 21, 10, NULL, '2019-04-11 00:06:25', '2019-04-11 00:06:25'),
(170, 'Braun Satin Hair Straightener 5 (170 W, Black)', '343.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216495.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216495', 17, 10, NULL, '2019-04-11 00:06:25', '2019-04-11 00:06:25'),
(171, 'Braun ST780 Satin Hair 7 SensoCare Styler (Black)', '898.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216498.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216498', 17, 10, NULL, '2019-04-11 00:06:25', '2019-04-11 00:06:25'),
(172, 'GOLDEA THE ROMAN NIGHT ABSOLUTE EDP 75ML', '787.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BVLGABEDP75.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BVLGABEDP75', 8, 10, NULL, '2019-04-11 00:06:25', '2019-04-11 00:06:25'),
(173, 'GOLDEA ROMAN NIGHT 75ML', '787.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/BVLGRNEDP75.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'BVLGRNEDP75', 19, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(174, 'CH Privee Eau de Parfum', '540', 'http://mylist.gyftbox.in/giftcard_image/merchandise/CHPRIEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'CHPRIEDP', 8, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(175, ' Men\'s Black Leather BESIDE SERIES Watch', '1318.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCA511AC83UEA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCA511AC83UEA', 15, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(176, ' Men\'s Brown Leather BESIDE SERIES Watch', '1318.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCA511AC82UEB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCA511AC82UEB', 15, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(177, 'Chilewich Pressed Drift Silver Placemat', '63', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCH-100384-001.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCH-100384-001', 11, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(178, 'Beyond Perfecting Foundation and Concealer', '254.61', 'http://mylist.gyftbox.in/giftcard_image/merchandise/CNQBPFAC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'CNQBPFAC', 19, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(179, 'COACH FLORAL EDP 90 ML', '547.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/CCHFLEDP90.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'CCHFLEDP90', 8, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(180, 'COACH WOMEN EDP 90ML', '547.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/CCHWOEDP90.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'CCHWOEDP90', 8, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(181, 'Corkcicle Insulated Tumbler, Copper', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCW-2116EC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCW-2116EC', 11, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(182, 'Corkcicle Canteen Vacuum Flask, Turquoise', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCW-2016GT-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCW-2016GT-GROUP', 12, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(183, 'Corkcicle Canteen Vacuum Flask, Rose Quartz', '213', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCW-2016GRQ-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCW-2016GRQ-GROUP', 12, 10, NULL, '2019-04-11 00:06:26', '2019-04-11 00:06:26'),
(184, 'Drop Shape Cool Mist Humidifier CR/EE-5301W', '469.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCREE-5301W.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCREE-5301W', 7, 10, NULL, '2019-04-11 00:06:27', '2019-04-11 00:06:27'),
(185, 'Cuisinart Filter Coffee Maker', '1024.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCA-DCC2650E.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCA-DCC2650E', 10, 10, NULL, '2019-04-11 00:06:27', '2019-04-11 00:06:27'),
(186, 'Chestnut-Brown Small Bamboo Ark Bag', '825', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M212232167.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M212232167', 22, 10, NULL, '2019-04-11 00:06:27', '2019-04-11 00:06:27'),
(187, 'Aton 5 Pepper Car Seat', '1372.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCX518000206.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCX518000206', 7, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(188, 'Yema Tie Baby Carrier', '1605', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCX518000049.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCX518000049', 7, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(189, 'Maira Tie Baby Carrier - Black', '885', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ MCX518000108.jpg', 0, 'available', NULL, NULL, NULL, NULL, ' MCX518000108', 7, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(190, 'Maira Tie Baby Carrier - Blue', '885', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MCX518000112\n\n.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MCX518000112\n\n', 7, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(191, 'Opulent Shaik Classic No. 33 for Women 40ml', '1402.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DSHOSCW40.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DSHOSCW40', 19, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(192, 'DZ4297 Overflow Watch', '1423.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDI035AC23IOU.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDI035AC23IOU', 15, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(193, 'Backstage Pros Dior Addict Lip Glow', '249', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DIBPDALG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DIBPDALG', 19, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(194, 'Dior Addict Lip Maximizer', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DIADLIPM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DIADLIPM', 19, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(195, 'Huile De Rose Prestige', '1905', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DIHDRPRE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DIHDRPRE', 19, 10, NULL, '2019-04-11 00:06:28', '2019-04-11 00:06:28'),
(196, 'Stanhope Watch', '870', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDK790AC33DWG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDK790AC33DWG', 23, 10, NULL, '2019-04-11 00:06:29', '2019-04-11 00:06:29'),
(197, 'The Only One 2 Eau de Parfum', '657', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DNGTOO2EDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DNGTOO2EDP', 8, 10, NULL, '2019-04-11 00:06:30', '2019-04-11 00:06:30'),
(198, 'Dualit Domus Kettle, 1.5L Black', '862.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-72310.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-72310', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(199, 'Dualit Domus Kettle, 1.5L Porcelain', '862.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-72311.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-72311', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(200, 'Dualit Domus 2 Slice Toaster, Black', '825', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-26600.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-26600', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(201, 'Dualit Domus 2 Slice Toaster, Porcelain', '825', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-26601.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-26601', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(202, 'Dualit Classic 4 Slice Toaster, Polished', '1851', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-47240.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-47240', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(203, 'Dualit Classic 2 Slice Toaster, Polished', '1378.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-27180.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-27180', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(204, 'Dualit Classic 2 Slice Toaster, Copper', '1378.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDU-27400.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDU-27400', 24, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(205, 'Dunoon Nevis Coffee Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-N-E-COF.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-N-E-COF', 11, 10, NULL, '2019-04-11 00:06:31', '2019-04-11 00:06:31'),
(206, 'Dunoon Lomond Dubai Dark Blue Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-DUB-DBLUE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-DUB-DBLUE', 12, 10, NULL, '2019-04-11 00:06:32', '2019-04-11 00:06:32');
INSERT INTO `products` (`id`, `name`, `value`, `image`, `seen`, `quantity`, `base_price`, `likes`, `model_number`, `min_age`, `sku`, `category_id`, `catalog_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(207, 'Dunoon Lomond Dubai Shakila White Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHA-WHI.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHA-WHI', 12, 10, NULL, '2019-04-11 00:06:32', '2019-04-11 00:06:32'),
(208, 'Dunoon Wessex Arabia Camel Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-ARAB-CAMEL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-ARAB-CAMEL', 12, 10, NULL, '2019-04-11 00:06:32', '2019-04-11 00:06:32'),
(209, 'Dunoon Wessex Minerva Horse Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-MIN-HRS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-MIN-HRS', 12, 10, NULL, '2019-04-11 00:06:32', '2019-04-11 00:06:32'),
(210, 'Dunoon Lomond Mantua Purple Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-MAN-PE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-MAN-PE', 12, 10, NULL, '2019-04-11 00:06:32', '2019-04-11 00:06:32'),
(211, 'Dunoon Lomond Mug Sheikh Red', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHE-RED.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHE-RED', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(212, 'Dunoon Cairngorm Mug Drizzle Blue', '166.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-CA-DRI-BLUE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-CA-DRI-BLUE', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(213, 'Dunoon Wessex Minerva Butterfly Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-MIN-BTY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-MIN-BTY', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(214, 'Dunoon Lomond Dubai Shakila Turquoise Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHA-TUR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHA-TUR', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(215, 'Dunoon Richmond Mantua Light Blue Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-R-E-MANT-LBLUE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-R-E-MANT-LBLUE', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(216, 'Dunoon Lomond Dubai Shakila Blue Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHA-BLU.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHA-BLU', 12, 10, NULL, '2019-04-11 00:06:33', '2019-04-11 00:06:33'),
(217, 'Dunoon Lomond Mug Sheikh Pale Blue', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHE-BLU.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHE-BLU', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(218, 'Dunoon Lomond Mantua Pink Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-MAN-PK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-MAN-PK', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(219, 'Dunoon Lomond Mantua Lime Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-MAN-LE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-MAN-LE', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(220, 'Dunoon Lomond Mantua Black Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-MAN-BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-MAN-BK', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(221, 'Dunoon Wessex Minerva Dolphin Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-MIN-DOL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-MIN-DOL', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(222, 'Dunoon Wessex Minerva Hummingbird Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-MIN-HBD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-MIN-HBD', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(223, 'Dunoon Cairngorm Mug Blobs Blue', '166.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-CA-E-BLO-BLUE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-CA-E-BLO-BLUE', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(224, 'Dunoon Iona Mug Best Ever Mum', '189', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-IO-E-BES-MUM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-IO-E-BES-MUM', 12, 10, NULL, '2019-04-11 00:06:34', '2019-04-11 00:06:34'),
(225, 'Dunoon Richmond Mantua Red Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-R-E-MANT-RED.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-R-E-MANT-RED', 12, 10, NULL, '2019-04-11 00:06:35', '2019-04-11 00:06:35'),
(226, 'Dunoon Lomond Mug Sheikh Green', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-SHE-GRN.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-SHE-GRN', 12, 10, NULL, '2019-04-11 00:06:35', '2019-04-11 00:06:35'),
(227, 'Dunoon Lomond Mantua Red Mug', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-LO-E-MAN-RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-LO-E-MAN-RD', 12, 10, NULL, '2019-04-11 00:06:35', '2019-04-11 00:06:35'),
(228, 'Dunoon Nevis Head Baker Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-N-E-HS-BAKE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-N-E-HS-BAKE', 12, 10, NULL, '2019-04-11 00:06:35', '2019-04-11 00:06:35'),
(229, 'Dunoon Nevis Mug Ebony', '139.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-N-E-EBONY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-N-E-EBONY', 12, 10, NULL, '2019-04-11 00:06:35', '2019-04-11 00:06:35'),
(230, 'Dunoon Richmond Mantua Dark Blue Mug', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-R-E-MANT-DBLE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-R-E-MANT-DBLE', 12, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(231, 'Dunoon Wessex Arabia Elephant Mug', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDN-WE-E-ARAB-ELEP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDN-WE-E-ARAB-ELEP', 12, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(232, 'ADVANCED CERAMIDE CAPSULES DAILY YOUTH RESTORING SERUM 90 CAPSULES', '832.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ELIA9CC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'ELIA9CC', 19, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(233, 'CERAMIDE LIFT AND FIRM DAY CREAM', '630', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ELICDLC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'ELICDLC', 19, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(234, 'Emile Henry Stewpot', '810', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-344540.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-344540', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(235, 'Emile Henry Oven Dish, Red', '255', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-349652.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-349652', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(236, 'Emile Henry Ramekin Set', '61.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-344009.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-344009', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(237, 'Emile Henry Crown Bread Baker, Ivory', '442.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-505505.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-505505', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(238, 'Emile Henry Fish Steamer', '465', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-348443.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-348443', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(239, 'Emile Henry Chicken Roaster', '567', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-348442.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-348442', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(240, 'Emile Henry Tart Rectangular Dish, Cream', '172.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-026034.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-026034', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(241, 'Emile Henry Oven Dish, Cream', '255', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-029652.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-029652', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(242, 'Emile Henry Pie Dish, Cream', '195', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-026131.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-026131', 11, 10, NULL, '2019-04-11 00:06:36', '2019-04-11 00:06:36'),
(243, 'Emile Henry Tart Round Dish, Cream', '210', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-026024-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-026024-GROUP', 11, 10, NULL, '2019-04-11 00:06:37', '2019-04-11 00:06:37'),
(244, 'Emile Henry Pizza Stone, Charcoal', '346.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEH-797612-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEH-797612-GROUP', 11, 10, NULL, '2019-04-11 00:06:37', '2019-04-11 00:06:37'),
(245, 'AR11068 Dress Watch', '1483.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEM989AC63GHG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEM989AC63GHG', 15, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(246, 'AR2411 Watch', '1440', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MEM989AC12DAT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MEM989AC12DAT', 15, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(247, 'JELLY BEAM ILLUMINATOR HIGHLIGHTER', '330', 'http://mylist.gyftbox.in/giftcard_image/merchandise/FARJIBH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'FARJIBH', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(248, 'ES4322 Jacqueline Watch', '870', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MFO413AC62TUF.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MFO413AC62TUF', 23, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(249, 'FS5439 The Minimalist Watch', '765', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MFO413AC47LBS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MFO413AC47LBS', 15, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(250, 'Because It\'s You Eau de Parfum', '532.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GGABIYEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GGABIYEDP', 8, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(251, 'Contour Brush Pink', '217.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOCBBP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOCBBP', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(252, 'Slant Contour Brush Gold', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOSBCG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOSBCG', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(253, 'Concealer Brush Brush Gold', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOCBBG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOCBBG', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(254, 'Highlighter Brush Gold', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOHBBG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOHBBG', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(255, 'Blender Blush Brush Gold', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOBBBG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOBBBG', 19, 10, NULL, '2019-04-11 00:06:38', '2019-04-11 00:06:38'),
(256, 'Slant Contour Brush Pink', '217.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOSBCP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOSBCP', 19, 10, NULL, '2019-04-11 00:06:39', '2019-04-11 00:06:39'),
(257, 'Concealer Brush Pink', '172.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOCBRP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOCBRP', 19, 10, NULL, '2019-04-11 00:06:39', '2019-04-11 00:06:39'),
(258, 'Highlighter Fan Brush Pink', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GLOHBFP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GLOHBFP', 19, 10, NULL, '2019-04-11 00:06:39', '2019-04-11 00:06:39'),
(259, 'Regenerating Night Cream 60mL', '742.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GWARNCRE60.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GWARNCRE60', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(260, 'Hydra-Repair Day Cream 65mL', '330', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GWAHRDC65.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GWAHRDC65', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(261, 'Tinted Hydra-Repair Day Cream 45mL', '307.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GWATHRDC45.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GWATHRDC45', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(262, 'Detox Serum Antioxidant +3 Complex, 30mL', '435', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GWADTXC30.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GWADTXC30', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(263, 'Balancing Toner 200mL', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GWABT200.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GWABT200', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(264, 'Gucci Bloom Hair Mist 30ml', '307.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/GUCBHM30.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'GUCBHM30', 19, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(265, 'Blue Velvet Small GG Marmont Shoulder Bag', '10200', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M212259406.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M212259406', 22, 10, NULL, '2019-04-11 00:06:40', '2019-04-11 00:06:40'),
(266, 'Black Mini GG Marmont Matelass? Camera Bag', '5850', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M211837753.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M211837753', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(267, 'Black Soho Leather Disco Bag', '6150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M211537244.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M211537244', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(268, 'Red Soho Leather Disco Bag', '6150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M211537218.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M211537218', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(269, 'Green Dionysus Textured Leather Shoulder Bag', '13575', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M210963074.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M210963074', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(270, 'Red Dionysus Leather Shoulder Bag', '13575', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M211837756.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M211837756', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(271, 'Black Small GG Marmont Velvet Shoulder Bag', '10200', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M212259411.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M212259411', 22, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(272, 'Soho Watch', '1455', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MGU094AC48IYD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MGU094AC48IYD', 23, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(273, 'Hario Tea Warmer', '166.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MHO-TWN-S-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MHO-TWN-S-GROUP', 11, 10, NULL, '2019-04-11 00:06:41', '2019-04-11 00:06:41'),
(274, 'Hario Heatproof Oolong Mug', '78', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MHO-HUT-8T.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MHO-HUT-8T', 12, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(275, 'Novica Wall Clock Brown', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NOVWCBR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NOVWCBR', 25, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(276, 'Lani\'s LED 6-Photo Frame', '193.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LANLEDPF.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LANLEDPF', 25, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(277, 'Fiome Embossed Pillar Vase - 11x11x30.5 cms', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/FIOEPVASE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'FIOEPVASE', 11, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(278, 'NeunDecor Cut Out Detail Vase', '223.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEUDDCUT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEUDDCUT', 11, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(279, 'Laval Decorative Vase', '523.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LAVDVASE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LAVDVASE', 11, 10, NULL, '2019-04-11 00:06:42', '2019-04-11 00:06:42'),
(280, 'Hallen Wall Clock', '193.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HALWCLK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HALWCLK', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(281, 'Round The World Wall Clock', '193.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/RNDTWWC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'RNDTWWC', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(282, 'Decorative Triangle-Shaped Wall Clock', '223.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/DNDTWWC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'DNDTWWC', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(283, 'Steve\'s Amazing Star Wall Clock', '298.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SNDAWWC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SNDAWWC', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(284, 'Tikkurila Wall Clock - 62x6.5x62 cms', '373.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/TWACLCK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'TWACLCK', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(285, 'Aylesford Round Wall Clock', '223.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/AFRNDWCLK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'AFRNDWCLK', 25, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(286, '8X Dual SIM Black 128GB 4G LTE', '1421.37', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HN8XD128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HN8XD128BK', 26, 10, NULL, '2019-04-11 00:06:43', '2019-04-11 00:06:43'),
(287, '8X Dual SIM Red 128 GB 4G LTE', '1433.61', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HN8XD128RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HN8XD128RD', 26, 10, NULL, '2019-04-11 00:06:44', '2019-04-11 00:06:44'),
(288, '8X Dual SIM Blue 128GB 4G LTE', '1453.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HN8XD128BL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HN8XD128BL', 26, 10, NULL, '2019-04-11 00:06:44', '2019-04-11 00:06:44'),
(289, 'Mate 10 Lite Dual SIM Graphite Black 64GB 4G', '1528.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM10LD64GBK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM10LD64GBK', 26, 10, NULL, '2019-04-11 00:06:45', '2019-04-11 00:06:45'),
(290, 'Nova 3 Dual SIM Airy Blue 128GB 4G LTE', '3448.62', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWN3D128ABL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWN3D128ABL', 26, 10, NULL, '2019-04-11 00:06:45', '2019-04-11 00:06:45'),
(291, 'Mate 20 Pro Dual SIM Twilight 128GB 4G LTE', '5047.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM20PD128TW.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM20PD128TW', 26, 10, NULL, '2019-04-11 00:06:45', '2019-04-11 00:06:45'),
(292, 'Mate 20 Dual SIM Black 128GB 4G LTE', '3976.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM20D128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM20D128BK', 26, 10, NULL, '2019-04-11 00:06:45', '2019-04-11 00:06:45'),
(293, 'Mate 10 Lite Dual SIM Blue 64GB 4G LTE', '1681.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM10L64BL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM10L64BL', 26, 10, NULL, '2019-04-11 00:06:45', '2019-04-11 00:06:45'),
(294, 'Mate 20 Pro Dual SIM Black 128GB 4G LTE', '5047.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM20PD128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM20PD128BK', 26, 10, NULL, '2019-04-11 00:06:46', '2019-04-11 00:06:46'),
(295, 'P20 Pro Dual SIM Black 128GB 4G LTE', '3511.35', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HW920D128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HW920D128BK', 26, 10, NULL, '2019-04-11 00:06:46', '2019-04-11 00:06:46'),
(296, 'Mate 20 Dual SIM Twilight 128GB 4G LTE', '3976.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM20D128TW.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM20D128TW', 26, 10, NULL, '2019-04-11 00:06:46', '2019-04-11 00:06:46'),
(297, 'Mate 20 Pro Dual SIM Emerald Green 128GB 4G LTE', '5047.47', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HWM20PD128EGR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HWM20PD128EGR', 26, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(298, 'Hugo Boss BOSS Bottled Collector\'s Edition 100 ml', '559.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/HUBBCOL100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'HUBBCOL100', 19, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(299, '1513486 Governor Watch', '1117.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MHU783AC45KSC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MHU783AC45KSC', 15, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(300, '1513554 Governor Watch', '1372.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ MHU783AC00SVN.jpg', 0, 'available', NULL, NULL, NULL, NULL, ' MHU783AC00SVN', 15, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(301, 'IVV Multicolour Assorted Ice Cream Bowls', '772.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MIV-5097-1.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MIV-5097-1', 11, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(302, 'JM Posner Cupcake Maker', '567', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MJP-JMPCM001.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MJP-JMPCM001', 16, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(303, 'John Boos Maple Barbeque Board, 46 cm x 31 cm', '567', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MJB-BBQBD-6.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MJB-BBQBD-6', 11, 10, NULL, '2019-04-11 00:06:47', '2019-04-11 00:06:47'),
(304, 'Eye Brow Pencil', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/K7LEYEBP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'K7LEYEBP', 19, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(305, 'Lipsilk Matte', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/K7LLIPMT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'K7LLIPMT', 19, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(306, 'KC50066001 Dress Sport Watch', '862.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKE081AC10SVD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKE081AC10SVD', 15, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(307, 'KitchenAid Artisan Medallion Silver Kettle, 1.5L', '1338', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KEK1522BMS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KEK1522BMS', 24, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(308, 'KitchenAid Artisan Glass Tea Kettle', '1258.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KEK1322BSS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KEK1322BSS', 24, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(309, 'KitchenAid Artisan Almond Cream Kettle, 1.5L', '1338', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KEK1522BAC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KEK1522BAC', 24, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(310, 'KitchenAid Artisan Candy Apple Kettle, 1.5L', '1338', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KEK1522BCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KEK1522BCA', 24, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(311, 'KitchenAid Artisan Onyx Black Kettle, 1.5L', '1338', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KEK1522BOB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KEK1522BOB', 24, 10, NULL, '2019-04-11 00:06:48', '2019-04-11 00:06:48'),
(312, 'KitchenAid White Ice Cream Maker', '1102.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-KICA0WH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-KICA0WH', 11, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(313, 'KitchenAid Artisan Stand Mixer, Ice Blue', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBIC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBIC', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(314, 'KitchenAid Stainless Steel Bowl, 4.28 L', '628.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5K5THSBP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5K5THSBP', 11, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(315, 'KitchenAid Omnifood Accessory Kit', '1339.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5FPPC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5FPPC', 11, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(316, 'KitchenAid Artisan Stand Mixer, Copper', '5998.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBCP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBCP', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(317, 'KitchenAid Artisan Stand Mixer, Green Apple', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBGA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBGA', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(318, 'KitchenAid Artisan Stand Mixer, Silky Pink', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBSP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBSP', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(319, 'KitchenAid Flex Edge Beater', '283.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KFE5T.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KFE5T', 11, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(320, 'KitchenAid Artisan Stand Mixer, Boysenberry', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBBY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBBY', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(321, 'KitchenAid Artisan Stand Mixer, White', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBWH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBWH', 18, 10, NULL, '2019-04-11 00:06:49', '2019-04-11 00:06:49'),
(322, 'KitchenAid Artisan Stand Mixer, Dried Rose', '4798.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBDR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBDR', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(323, 'KitchenAid Ravioli Maker', '1339.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-KRAV.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-KRAV', 11, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(324, 'KitchenAid Glass Mixing Bowl for Artisan Stand Mixer 4.8L', '748.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5K5GB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5K5GB', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(325, 'KitchenAid Food Grinder', '661.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-FGA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-FGA', 11, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(326, 'KitchenAid Artisan Stand Mixer, Pistacchio', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBPT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBPT', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(327, 'KitchenAid Artisan Stand Mixer, Crimson Red', '4798.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBCM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBCM', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(328, 'KitchenAid Artisan Stand Mixer, Apple Cider', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBAP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBAP', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(329, 'KitchenAid Artisan Stand Mixer, Tangerine', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBTG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBTG', 18, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(330, 'KitchenAid Food Tray', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5FT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5FT', 11, 10, NULL, '2019-04-11 00:06:50', '2019-04-11 00:06:50'),
(331, 'KitchenAid Sausage Stuffer Kit', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-SSA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-SSA', 11, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(332, 'KitchenAid Fruit and Vegetable Strainer', '661.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-FVSP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-FVSP', 11, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(333, 'KitchenAid Limited Edition Heritage Artisan Stand Mixer, Misty Blue', '5998.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM180RCBMB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM180RCBMB', 18, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(334, 'KitchenAid Artisan Stand Mixer, Majestic Yellow', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBMY.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBMY', 18, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(335, 'KitchenAid Citrus Juicer', '300', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5JE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5JE', 11, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(336, 'KitchenAid Artisan Stand Mixer, Raspberry Ice', '4498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM175PSBRI.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM175PSBRI', 18, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(337, 'KitchenAid Artisan Stand Mixer, Medallion Silver', '4798.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBMS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBMS', 18, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(338, 'KitchenAid Artisan Stand Mixer, Azzure Blue', '4798.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBAZ.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBAZ', 18, 10, NULL, '2019-04-11 00:06:51', '2019-04-11 00:06:51'),
(339, 'KitchenAid Artisan Stand Mixer, Candy Apple', '4798.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM185PSBCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM185PSBCA', 18, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(340, 'KitchenAid Candy Apple Stand Mixer, 6.9L', '7243.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSM7580XBCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSM7580XBCA', 18, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(341, 'KitchenAid Artisan 4 Slice Toaster, Medallion Silver', '3142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KMT4205BMS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KMT4205BMS', 24, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(342, 'KitchenAid Artisan 2 Slice Toaster, Candy Apple', '2355', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KMT2204BCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KMT2204BCA', 24, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(343, 'KitchenAid Artisan 4 Slice Toaster, Candy Apple', '3142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KMT4205BCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KMT4205BCA', 24, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(344, 'KitchenAid Artisan 2 Slice Toaster, Onyx Black', '2355', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KMT2204BOB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KMT2204BOB', 24, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(345, 'KitchenAid Artisan 2 Slice Toaster, Medallion Silver', '2355', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KMT2204BMS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KMT2204BMS', 24, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(346, 'KitchenAid Coffee Maker with One-Touch Brewing', '1101', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KCM1204BOB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KCM1204BOB', 11, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(347, 'KitchenAid Artisan Siphon Coffee Maker', '1447.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KCM0812BOB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KCM0812BOB', 10, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(348, 'KitchenAid Hand Mixer', '937.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KHM9212BER.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KHM9212BER', 18, 10, NULL, '2019-04-11 00:06:52', '2019-04-11 00:06:52'),
(349, 'KitchenAid Artisan Cordless Hand Blender', '2355', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KHB3581BCA.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KHB3581BCA', 18, 10, NULL, '2019-04-11 00:06:53', '2019-04-11 00:06:53'),
(350, 'KitchenAid Hand Blender', '1180.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KHB2571BER.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KHB2571BER', 18, 10, NULL, '2019-04-11 00:06:53', '2019-04-11 00:06:53'),
(351, 'KitchenCraft MasterClass Food Warmer', '189', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKC-MCC3FWARM.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKC-MCC3FWARM', 11, 10, NULL, '2019-04-11 00:06:53', '2019-04-11 00:06:53'),
(352, 'Kuvings EVO820 Whole Slow Juicer, Matt Black', '2925', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS1226CBC2-BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS1226CBC2-BK', 9, 10, NULL, '2019-04-11 00:06:53', '2019-04-11 00:06:53'),
(353, 'Kuvings C7000 Whole Slow Juicer, Silver', '2625', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS723CBC2-SR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS723CBC2-SR', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(354, 'Kuvings JMCS Juicing Screw for NS621?model', '450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSPA-04KVW.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSPA-04KVW', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(355, 'Kuvings Citrus Juice Attachment', '198', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-3150003A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-3150003A', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(356, 'Kuvings B6000 Whole Slow Juicer, Silver', '2475', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS621CBS2-SR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS621CBS2-SR', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(357, 'Kuvings EVO820 Whole Slow Juicer, Matt Gold', '2925', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS1226CBC2-GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS1226CBC2-GD', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(358, 'Kuvings B6000 Whole Slow Juicer, Red', '2475', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS621CBS2-RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS621CBS2-RD', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(359, 'Kuvings Ice Cream Strainer for Kuvings Whole Slow Juicer', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-3150005A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-3150005A', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(360, 'Kuvings EVO820 Whole Slow Juicer, Matt Red', '2925', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS1226CBC2-RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS1226CBC2-RD', 9, 10, NULL, '2019-04-11 00:06:54', '2019-04-11 00:06:54'),
(361, 'Kuvings C7000 Whole Slow Juicer, Gold', '2625', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS723CBC2-GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS723CBC2-GD', 9, 10, NULL, '2019-04-11 00:06:55', '2019-04-11 00:06:55'),
(362, 'Kuvings B6000 Whole Slow Juicer, Gold', '2475', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS621CBS2-GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS621CBS2-GD', 9, 10, NULL, '2019-04-11 00:06:55', '2019-04-11 00:06:55'),
(363, 'Kuvings C7000 Whole Slow Juicer, Red', '2625', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-NS723CBC2-RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-NS723CBC2-RD', 9, 10, NULL, '2019-04-11 00:06:55', '2019-04-11 00:06:55'),
(364, 'Kuvings Yogurt and Cheese Maker, Red', '787.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-KGC-712CB-RD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-KGC-712CB-RD', 9, 10, NULL, '2019-04-11 00:06:55', '2019-04-11 00:06:55'),
(365, 'Kuvings Yogurt and Cheese Maker, Silver', '787.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKV-KGC-712CB-SR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKV-KGC-712CB-SR', 9, 10, NULL, '2019-04-11 00:06:55', '2019-04-11 00:06:55'),
(366, 'L\'Homme Lacoste Intense Eau de Toilette', '450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LACLHOIEDT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LACLHOIEDT', 27, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(367, 'Monsieur Brow', '142.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LANMOBR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LANMOBR', 19, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(368, 'Genifique Creme Nuit P', '787.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LANGCNP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LANGCNP', 19, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(369, 'Le Creuset Palm Green Round Casserole', '1770', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21177-2042624.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21177-2042624', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(370, 'Le Creuset Deep Teal Round Casserole', '1770', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21177-2464224.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21177-2464224', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(371, 'Le Creuset Cotton White Round Casserole', '1770', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21177-2443144.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21177-2443144', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(372, 'Le Creuset Cherry Red Round Casserole', '1770', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21177-2406024-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21177-2406024-GROUP', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(373, 'Le Creuset Chiffon Pink Shallow Casserole, 26cm', '2047.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21180-2640144.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21180-2640144', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(374, 'Le Creuset Sun Yellow Round Casserole', '1770', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLC-21177-2440324-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLC-21177-2440324-GROUP', 11, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(375, 'Hi-Lite Palette - Angels', '267', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCHILPALAN.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCHILPALAN', 19, 10, NULL, '2019-04-11 00:06:56', '2019-04-11 00:06:56'),
(376, 'Eyeshadow Palette Venus II', '232.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCEYPAV2.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCEYPAV2', 19, 10, NULL, '2019-04-11 00:06:57', '2019-04-11 00:06:57'),
(377, 'Hi-Lite Palette - Opals', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCHILPALOP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCHILPALOP', 19, 10, NULL, '2019-04-11 00:06:57', '2019-04-11 00:06:57'),
(378, 'Eyeshadow Palette Venus III', '280.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCEYPAV3.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCEYPAV3', 19, 10, NULL, '2019-04-11 00:06:57', '2019-04-11 00:06:57'),
(379, 'Eyeshadow Palette Venus XL', '412.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCEYPALVXL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCEYPALVXL', 19, 10, NULL, '2019-04-11 00:06:57', '2019-04-11 00:06:57'),
(380, 'Hi-Lite Palette - Blossoms', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCHIPALBL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCHIPALBL', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(381, 'NEROLI & ORCHIDEE EDT', '487.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LCTNENOREDT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LCTNENOREDT', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(382, 'LOW SOLO ELLA EDP 100 ml', '870', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LOWSEEDP100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LOWSEEDP100', 8, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(383, 'Volume Million Lashes Fatale Mascara Black', '82.95', 'http://mylist.gyftbox.in/giftcard_image/merchandise/LOPVMLFMB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'LOPVMLFMB', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(384, 'LSA International Serve Honey Pot & Oak Dipper', '363', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MLA-G1052-12-301.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MLA-G1052-12-301', 11, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(385, 'Magimix Blender, Chrome', '1573.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MMX-11619-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MMX-11619-UK', 18, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(386, 'Magimix Blender, Black', '1573.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MMX-11610-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MMX-11610-UK', 18, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(387, 'Magimix Mini Chopper', '607.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MMX-18115-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MMX-18115-UK', 11, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(388, 'Star Lit Eye Shadow Palette', '382.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFESLESP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFESLESP', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(389, 'Ultra HD Pressed Powder', '285', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFEUHPP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFEUHPP', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(390, 'Pro Sculpting Palette', '292.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFEPSP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFEPSP', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(391, 'MATTE VELVET SKIN COMPACT', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFEMVSC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFEMVSC', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(392, 'MATTE VELVET SKIN FOUNDATION', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFEMVSF.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFEMVSF', 19, 10, NULL, '2019-04-11 00:06:58', '2019-04-11 00:06:58'),
(393, 'Blender Brush Large 242', '225', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MUFBBL242.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MUFBBL242', 19, 10, NULL, '2019-04-11 00:06:59', '2019-04-11 00:06:59'),
(394, 'Blender Brush Medium 218', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKBMB2.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKBMB2', 19, 10, NULL, '2019-04-11 00:06:59', '2019-04-11 00:06:59'),
(395, 'Precision Blush Brush - 150', '285', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKP-B1.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKP-B1', 19, 10, NULL, '2019-04-11 00:06:59', '2019-04-11 00:06:59'),
(396, 'Shader Brush - Large - 230', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKS-B230.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKS-B230', 19, 10, NULL, '2019-04-11 00:06:59', '2019-04-11 00:06:59'),
(397, 'Precision Blender Brush Large - 236', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKP-B2.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKP-B2', 19, 10, NULL, '2019-04-11 00:06:59', '2019-04-11 00:06:59'),
(398, 'Shader Brush - Medium - 226', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKS-B226.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKS-B226', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(399, '126 Powder Brush', '375', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK1PPB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK1PPB', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(400, 'Foundation Brush - Medium - 106', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKF-B1.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKF-B1', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(401, 'Precision Shader Brush - Medium - 228', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKP-S2.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKP-S2', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(402, '176 Concealer Brush', '240', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK1CCB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK1CCB', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(403, '128 Precision Powder Brush', '360', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK1PDB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK1PDB', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(404, '300 Lip Brush', '165', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK3LLB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK3LLB', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(405, '274 Angl Eyebrow Lash Brush', '187.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK2LAB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK2LAB', 19, 10, NULL, '2019-04-11 00:07:00', '2019-04-11 00:07:00'),
(406, 'Round Shader Brush - Medium - 240', '217.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKR-S2.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKR-S2', 19, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(407, 'Foundation Brush - Large - 108', '262.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKF-B108.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKF-B108', 19, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(408, '172 Precision Corrector Brush', '165', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAK1CPB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAK1CPB', 19, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(409, 'Double-ended Sculpting Brush', '300', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MAKDSSB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MAKDSSB', 19, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(410, 'Mauviel M\'minis 150s Round Cocotte with Lid, 9 cm', '552', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MML-613009.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MML-613009', 11, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(411, 'Mauviel M\'minis 150s Frying Pan, 12 cm', '363', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MML-611312.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MML-611312', 11, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(412, 'Mauviel M\'pure Roasting Pan, 45 cm x 35 cm', '1290', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MML-985045.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MML-985045', 11, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(413, 'Mauviel M\'h?ritage Copper Roasting Pan, 35 cm x 25 cm', '2458.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MML-601735.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MML-601735', 11, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(414, 'AxisFix Plus Car Chair', '4252.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDL8025898110.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDL8025898110', 7, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(415, 'AxisFix Plus Car Chair - Grey', '4252.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDL8025896110.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDL8025896110', 7, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01');
INSERT INTO `products` (`id`, `name`, `value`, `image`, `seen`, `quantity`, `base_price`, `likes`, `model_number`, `min_age`, `sku`, `category_id`, `catalog_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(416, 'AxissFix Plus Car Seat - Black', '4252.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MDL8025330110.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MDL8025330110', 7, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(417, 'Sofie Jetset Watch', '1815', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MMI534AC31IBO.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MMI534AC31IBO', 23, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(418, 'Montblanc Dark Grey/Black Canvas Meisterstuck Bifold Wallet', '1735.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MBCGRMBWLT.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MBCGRMBWLT', 19, 10, NULL, '2019-04-11 00:07:01', '2019-04-11 00:07:01'),
(419, 'Moser EasyStyle Pro Cordless Hair Clipper (10 W, Black)', '652.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1331959.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1331959', 19, 10, NULL, '2019-04-11 00:07:02', '2019-04-11 00:07:02'),
(420, 'Moser 1902-0410 Pro Cordless Hair Clipper (5 W, Black)', '607.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1331958.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1331958', 19, 10, NULL, '2019-04-11 00:07:02', '2019-04-11 00:07:02'),
(421, 'Moulinex AM480027 Mega Deep Fryer (2100 W, 2 kg, White)', '658.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1217838.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1217838', 11, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(422, 'ORIENT MUSC HAIR MIST 30ML', '367.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NCROMHM30.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NCROMHM30', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(423, 'Perfect Night\'s Sleep Bath Foam', '283.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOPNSBF.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOPNSBF', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(424, 'Energy Burst Body & Hand Wash', '178.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOEBNHW.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOEBNHW', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(425, 'Feel Refreshed Scented Candle', '351', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOFRSCAN.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOFRSCAN', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(426, 'Energy Burst Bath & Shower Drops', '345', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOEBBNSD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOEBBNSD', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(427, 'Tranquillity Scented Candle', '351', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOTSCAN.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOTSCAN', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(428, 'Real Luxury Scented Candle', '351', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEORLSC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEORLSC', 19, 10, NULL, '2019-04-11 00:07:03', '2019-04-11 00:07:03'),
(429, 'Real Luxury Body Oil', '375', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEORLBOIL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEORLBOIL', 19, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(430, 'Great Day Body & Hand Lotion', '178.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOGDBNHL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOGDBNHL', 19, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(431, 'Nourish, Breathe & Calm Hand Balm', '157.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEONBNCHB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEONBNCHB', 19, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(432, 'Happiness Scented Candle', '351', 'http://mylist.gyftbox.in/giftcard_image/merchandise/NEOHSCAN.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'NEOHSCAN', 19, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(433, 'Noritake Carnivale Light Blue Espresso Cup & Saucer', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-253-C002A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-253-C002A', 16, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(434, 'Noritake Carnivale Espresso Cup & Saucer, Lavender', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-248-C002A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-248-C002A', 16, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(435, 'Noritake Carnivale Pink Espresso Cup & Saucer', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-249-C002A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-249-C002A', 16, 10, NULL, '2019-04-11 00:07:04', '2019-04-11 00:07:04'),
(436, 'Noritake Carnivale Yellow Arabic Coffee Cup Set', '520.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-250-Q006AB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-250-Q006AB', 11, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(437, 'Noritake Carnivale Apple Green Espresso Cup & Saucer', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-252-C002A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-252-C002A', 16, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(438, 'Noritake Carnivale Light Blue Mug', '135', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-253-Q001A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-253-Q001A', 12, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(439, 'Noritake Carnivale Apple Green Tea Cup & Saucer', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-252-T002B.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-252-T002B', 16, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(440, 'Noritake Carnivale Yellow Mug', '135', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-250-Q001A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-250-Q001A', 12, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(441, 'Noritake Carnivale Light Blue Tea Cup & Saucer', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-253-T002B.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-253-T002B', 16, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(442, 'Noritake Carnivale Yellow Espresso Cup & Saucer', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-250-C002A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-250-C002A', 16, 10, NULL, '2019-04-11 00:07:05', '2019-04-11 00:07:05'),
(443, 'Noritake Carnivale Pink Mug', '135', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-249-Q001A.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-249-Q001A', 12, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(444, 'Noritake Carnivale Pink Arabic Coffee Cup Set', '520.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-249-Q006AB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-249-Q006AB', 11, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(445, 'Noritake Odessa Gold Arabic Cup, Set of 6', '913.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-4874-97391C.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-4874-97391C', 16, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(446, 'Noritake Carnivale Light Blue Arabic Coffee Cup Set', '520.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-M-253-Q006AB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-M-253-Q006AB', 11, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(447, 'Noritake Princess Bouquet 29 Piece Tea Set, Platinum', '1984.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-1661-T029N.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-1661-T029N', 11, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(448, 'Noritake Coty White 24-Piece Dinner Set', '1087.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-1470L-PO24PH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-1470L-PO24PH', 16, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(449, 'Noritake Princess Bouquet 67 Piece Dinner Set,Gold', '5977.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-1660-Z067TAB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-1660-Z067TAB', 16, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(450, 'Noritake Princess Bouquet 67 Piece Dinner Set, Platinum', '5977.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MNT-1661-Z067TAB.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MNT-1661-Z067TAB', 16, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(451, 'Oral B D12513 Vitality Precision Rechargeable Power Toothbrush', '202.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1216589.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1216589', 19, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(452, 'Oral B D 12.513 K ? 80300512 Frozen Kids? Battery Toothbrush', '247.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1329899.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1329899', 19, 10, NULL, '2019-04-11 00:07:06', '2019-04-11 00:07:06'),
(453, 'Panasonic Automatic Bread Maker', '2046', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPN-SD-ZB2512KTZ.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPN-SD-ZB2512KTZ', 11, 10, NULL, '2019-04-11 00:07:07', '2019-04-11 00:07:07'),
(454, 'Panasonic Hair Dryer (2000W, Golden)', '313.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M212597.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M212597', 17, 10, NULL, '2019-04-11 00:07:07', '2019-04-11 00:07:07'),
(455, 'Panasonic EHNE64 Hair Dryer + FREE Hair Styler EHKA42 worth Dhs 99', '202.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1330757.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1330757', 17, 10, NULL, '2019-04-11 00:07:07', '2019-04-11 00:07:07'),
(456, 'Panasonic ES4033 Shaver (Blue)', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1212944.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1212944', 21, 10, NULL, '2019-04-11 00:07:07', '2019-04-11 00:07:07'),
(457, 'Philips ProCare Auto Curler (22 W, Black)', '808.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220265.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220265', 17, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(458, 'Philips Hair Straightener (46 W, Black Pearl)', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220262.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220262', 17, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(459, 'Philips BHS677/00 StraightCare Sublime Ends Straightener (52 W, Black)', '361.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220260.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220260', 17, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(460, 'Philips DryCare Hairdryer (2300 W, Beige)', '763.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220236.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220236', 17, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(461, 'Philips VividEnds Straightener (53 W, Black)', '373.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1220261.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1220261', 17, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(462, 'Portmeirion Botanic Garden 4-Piece Mug Set', '346.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPO-BG8581-XG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPO-BG8581-XG', 12, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(463, 'Portmeirion Botanic Garden Teaspoon', '205.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPO-BG1101.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPO-BG1101', 11, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(464, 'Portmeirion Botanic Garden Salad Bowl, 23 cm', '409.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPO-BG45100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPO-BG45100', 11, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(465, 'Portmeirion Sara Miller Chelsea Pastry Forks 4-Piece Set', '213', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPO-SMC1102-XG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPO-SMC1102-XG', 11, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(466, 'Portmeirion Sara Miller Chelsea Tea Spoons 4-Piece Set', '213', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MPO-SMC1101-XG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MPO-SMC1101-XG', 11, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(467, 'La Femme Prada Intense Eau de Parfum', '675', 'http://mylist.gyftbox.in/giftcard_image/merchandise/PRLFIEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'PRLFIEDP', 8, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(468, 'Rahua Voluminous shampoo', '352.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/RAHVOLSH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'RAHVOLSH', 19, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(469, 'Rahua Voluminous Conditioner', '375', 'http://mylist.gyftbox.in/giftcard_image/merchandise/RAHVOLCD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'RAHVOLCD', 19, 10, NULL, '2019-04-11 00:07:08', '2019-04-11 00:07:08'),
(470, 'Revlon Perfectionist Paddle Dryer (Black, 2000W)', '393', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208918.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208918', 17, 10, NULL, '2019-04-11 00:07:09', '2019-04-11 00:07:09'),
(471, 'Revlon Digital Ceramic Straightner (12W)', '198', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208919.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208919', 17, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(472, 'Revlon Hair Dryer (2000W, Black and blue)', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208925.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208925', 17, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(473, 'Revlon Hair Inonic Brush (1200W,Black and blue)', '267', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208924.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208924', 17, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(474, 'Royal Albert Miranda Kerr Dessert Plate Set, 4 Pieces', '1008', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWD-40001825.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWD-40001825', 11, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(475, 'Royal Albert Polka Rose Mug', '268.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWD-40002393.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWD-40002393', 12, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(476, 'SIGNORINA MISTERIOSA Eau de Parfum', '540', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SVFSIMIEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SVFSIMIEDP', 8, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(477, 'Living Portafortuna Party Spoons Set 6pc', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MST-52550-51.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MST-52550-51', 11, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(478, 'Frame Cutlery Set 24pcs.', '583.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MST-52559-81.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MST-52559-81', 16, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(479, 'Taste Cutlery Set 24pcs.', '552', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MST-52553-81.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MST-52553-81', 16, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(480, 'Galaxy A7 (2018) Dual SIM Blue 128GB 4G LTE', '1517.76', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA7D128B.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA7D128B', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(481, 'Galaxy S9 Dual SIM Lilac Purple 64GB 4G LTE', '3404.25', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLS9D64PR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLS9D64PR', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(482, 'Galaxy A9 (2018) Dual SIM Bubblegum Pink 128GB 4G LTE', '3287.97', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA9D128BPK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA9D128BPK', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(483, 'Samsung Galaxy Note9 Dual SIM Lavender Purple 512GB 4G LTE', '5911.92', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLN9512PR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLN9512PR', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(484, 'Galaxy A9 (2018) Dual SIM Lemonade Blue 128GB 4G LTE', '3287.97', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA9D128LBL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA9D128LBL', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(485, 'Samsung Galaxy Note9 Dual SIM Midnight Black 512GB 4G LTE', '5911.92', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLN9D512MBK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLN9D512MBK', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(486, 'Galaxy A7 (2018) Dual SIM Black 128GB 4G LTE', '1727.37', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA7D128BK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA7D128BK', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(487, 'Galaxy A7 (2018) Dual SIM Gold 128GB 4G LTE', '1727.37', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA7D128GD.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA7D128GD', 26, 10, NULL, '2019-04-11 00:07:10', '2019-04-11 00:07:10'),
(488, 'Galaxy A9 (2018) Dual SIM Caviar Black 128GB 4G LTE', '3287.97', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SMGLA9D128CBK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SMGLA9D128CBK', 26, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(489, 'SCANPAN Classic Saut? Pan', '552', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-24101203-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-24101203-GROUP', 11, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(490, 'SCANPAN CTX Frying Pan', '592.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-65002800-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-65002800-GROUP', 11, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(491, 'SCANPAN Classic Glass Lid', '166.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-28001212-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-28001212-GROUP', 11, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(492, 'SCANPAN Classic Frying Pan', '393', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-28001203-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-28001203-GROUP', 11, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(493, 'SCANPAN Classic Roasting Pan', '843', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-40321200-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-40321200-GROUP', 11, 10, NULL, '2019-04-11 00:07:11', '2019-04-11 00:07:11'),
(494, 'SCANPAN Classic Roasting Pan,  39 cm x 27 cm', '709.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-35321200.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-35321200', 11, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(495, 'SCANPAN CTX Casserole', '1024.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSW-65252600.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSW-65252600', 11, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(496, 'Ultimune Power Infusing Concentrate', '915', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIUPICON.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIUPICON', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(497, 'SOFT CUSHY POLISHER', '220.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHISOCPOL.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHISOCPOL', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(498, 'QUICK GENTLE CLEANSER', '220.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIQUGCLE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIQUGCLE', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(499, 'Smart Filtering Smoother', '196.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHISFSMOO.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHISFSMOO', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(500, 'CLEAR MEGA-HYDRATING CREAM', '289.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHICMHCRE.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHICMHCRE', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(501, 'Essential Energy DAY CREAM SPF20', '510', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIEEDCS20.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIEEDCS20', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(502, 'FRESH JELLY LOTION', '220.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIFRJELO.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIFRJELO', 19, 10, NULL, '2019-04-11 00:07:12', '2019-04-11 00:07:12'),
(503, 'Quick Matte Moisturizer Oil-Free', '289.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIQMMOFR.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIQMMOFR', 19, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(504, 'Essential Energy MOISTURIZING GEL-CREAM', '525', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIEEMGLC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIEEMGLC', 19, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(505, 'Essential Energy MOISTURIZING CREAM', '525', 'http://mylist.gyftbox.in/giftcard_image/merchandise/SHIEEMC.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'SHIEEMC', 19, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(506, 'SIGG Hot & Cold Double Walled Glass Bottle Red, 400ml', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSIG-8555-90.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSIG-8555-90', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(507, 'SIGG Hot & Cold Double Walled Glass Bottle Aqua, 400ml', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSIG-8555-70.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSIG-8555-70', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(508, 'SIGG Hot & Cold Double Walled Glass Bottle Midnight, 400ml', '238.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSIG-8648-60.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSIG-8648-60', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(509, 'Staub Black Matte Oval Cocotte, 31 cm', '1882.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-31-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-31-25', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(510, 'Staub Black Matte Round Cocotte, 24 cm', '1489.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-24-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-24-25', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(511, 'Staub Cherry Red Round Cocotte, 20 cm', '673.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-20-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-20-06', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(512, 'Staub Dark Blue Round Cocotte, 24 cm', '1489.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-24-91.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-24-91', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(513, 'Staub Cherry Red Oval Cocotte, 31 cm', '1882.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-31-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-31-06', 11, 10, NULL, '2019-04-11 00:07:13', '2019-04-11 00:07:13'),
(514, 'Staub Shallow Casserole, 26cm Black', '1458', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-111-26-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-111-26-25', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(515, 'Staub Cherry Red Round Mini Cocotte, 10 cm', '433.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-10-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-10-06', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(516, 'Staub Cherry Red Round Cocotte, 24 cm', '1489.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-24-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-24-06', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(517, 'Staub Heart Cocotte, 12cm Cherry Red', '448.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-1100-12-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-1100-12-06', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(518, 'Staub Cherry Red Round Cocotte, 26 cm', '1567.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-26-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-26-06', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(519, 'Staub Dark Blue Oval Cocotte, 31 cm', '1882.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-31-91.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-31-91', 11, 10, NULL, '2019-04-11 00:07:14', '2019-04-11 00:07:14'),
(520, 'Staub Dark Blue Round Mini Cocotte, 10 cm', '433.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-10-91.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-10-91', 11, 10, NULL, '2019-04-11 00:07:15', '2019-04-11 00:07:15'),
(521, 'Staub Black Matte Round Cocotte, 30 cm', '2127', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-30-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-30-25', 11, 10, NULL, '2019-04-11 00:07:15', '2019-04-11 00:07:15'),
(522, 'Staub Dark Blue Round Cocotte, 28 cm', '1851', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-28-91.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-28-91', 11, 10, NULL, '2019-04-11 00:07:15', '2019-04-11 00:07:15'),
(523, 'Staub Black Matte Round Mini Cocotte, 10 cm', '433.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-110-10-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-110-10-25', 11, 10, NULL, '2019-04-11 00:07:15', '2019-04-11 00:07:15'),
(524, 'Staub Frying Pan, Cherry 28 (cm)', '598.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-122-28-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-122-28-06', 11, 10, NULL, '2019-04-11 00:07:15', '2019-04-11 00:07:15'),
(525, 'Staub Frying Pan, Black 24 (cm)', '448.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-122-24-23.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-122-24-23', 11, 10, NULL, '2019-04-11 00:07:16', '2019-04-11 00:07:16'),
(526, 'Staub Black Matte Vertical Roaster, 24 cm', '780', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-120-00-23.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-120-00-23', 11, 10, NULL, '2019-04-11 00:07:16', '2019-04-11 00:07:16'),
(527, 'Staub Vertical Roaster, 24 cm Grey', '780', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-120-00-18.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-120-00-18', 11, 10, NULL, '2019-04-11 00:07:16', '2019-04-11 00:07:16'),
(528, 'Staub Braiser, Black', '1458', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-126-128-25.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-126-128-25', 11, 10, NULL, '2019-04-11 00:07:16', '2019-04-11 00:07:16'),
(529, 'Staub Braiser, Cherry', '1458', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSB-126-128-06.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSB-126-128-06', 11, 10, NULL, '2019-04-11 00:07:17', '2019-04-11 00:07:17'),
(530, 'Swissmar Electric Raclette Grill', '786', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MSMR-KF77088AG.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MSMR-KF77088AG', 11, 10, NULL, '2019-04-11 00:07:17', '2019-04-11 00:07:17'),
(531, 'AURA EDP 90ML', '810', 'http://mylist.gyftbox.in/giftcard_image/merchandise/TYMAUEDP90.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'TYMAUEDP90', 8, 10, NULL, '2019-04-11 00:07:18', '2019-04-11 00:07:18'),
(532, 'Angel Muse Eau de Parfum Refillable 100 ml', '826.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/TYMAEDP100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'TYMAEDP100', 8, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(533, 'Tiffany Intense Eau de Parfum', '756', 'http://mylist.gyftbox.in/giftcard_image/merchandise/TNCINTEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'TNCINTEDP', 8, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(534, 'Digital Monitor With Movement Sensor Pad', '1042.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MTO441002.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MTO441002', 7, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(535, '1710360 Liam Watch', '1327.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/ MTO279AC04SVJ.jpg', 0, 'available', NULL, NULL, NULL, NULL, ' MTO279AC04SVJ', 15, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(536, 'Toni&Guy Professional AC Dryer Diffuser (2000W, Black)', '472.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208930.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208930', 17, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(537, 'Toni&Guy Salon Professional Hair Straightener (38W, Black)', '472.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/M1208929.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'M1208929', 17, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(538, 'LOVE RELENTLESSLY EDP 100ML', '742.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/TBLREDP100.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'TBLREDP100', 8, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(539, 'Vitamix 5200 Classic Blender, Red', '4080', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-010296-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-010296-UK', 18, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(540, 'Vitamix S30 Personal Blender, Red', '3450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-058372.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-058372', 18, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(541, 'KitchenAid Artisan White Blender', '1573.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MKD-5KSB5553BWH.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MKD-5KSB5553BWH', 18, 10, NULL, '2019-04-11 00:07:19', '2019-04-11 00:07:19'),
(542, 'Vitamix 5200 Classic Blender, Black', '4080', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-010295-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-010295-UK', 18, 10, NULL, '2019-04-11 00:07:20', '2019-04-11 00:07:20'),
(543, 'Vitamix 5200 Classic Blender, White', '4080', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-010294-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-010294-UK', 18, 10, NULL, '2019-04-11 00:07:20', '2019-04-11 00:07:20'),
(544, 'Vitamix Pro 750 Heritage Blender', '6285', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-060385-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-060385-UK', 18, 10, NULL, '2019-04-11 00:07:20', '2019-04-11 00:07:20'),
(545, 'Vitamix S30 Personal Blender, Green', '3450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-058366.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-058366', 18, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(546, 'Vitamix S30 Personal Blender, Black', '3450', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-057544.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-057544', 18, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(547, 'Vitamix S30 Personal Blender, Brushed Stainless Steel', '4080', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-058373.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-058373', 18, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(548, 'Vitamix Pro 750 Heritage Blender, Copper', '6694.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MVX-062594-UK.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MVX-062594-UK', 18, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(549, 'WMF Fusiontec High Casserole, Dark Brass', '1042.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1447-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1447-5290', 11, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(550, 'WMF Kult Tea Glass, 300 ml', '150', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3592-6030.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3592-6030', 11, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(551, 'WMF TeaTime Teapot and Warmer', '859.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3630-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3630-6040', 11, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(552, 'WMF Nuova Espresso Paddles Set', '87', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-12-9176-6046.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-12-9176-6046', 11, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(553, 'WMF Wings Honey / Jam Spoon, 18 cm', '87', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-12-9777-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-12-9777-6040', 11, 10, NULL, '2019-04-11 00:07:21', '2019-04-11 00:07:21'),
(554, 'WMF Barista Creamer, 130 ml', '174', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3354-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3354-6040', 11, 10, NULL, '2019-04-11 00:07:22', '2019-04-11 00:07:22'),
(555, 'WMF Latte Macchiato Glass', '139.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-8668-6030.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-8668-6030', 11, 10, NULL, '2019-04-11 00:07:22', '2019-04-11 00:07:22'),
(556, 'WMF TeaTime Tea Cup & Saucer', '213', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3631-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3631-6040', 16, 10, NULL, '2019-04-11 00:07:22', '2019-04-11 00:07:22'),
(557, 'WMF SmarTea Tea Set with Warmer, 1L', '891', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3109-6030.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3109-6030', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(558, 'WMF Impulse Coffee Flask', '828', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-9067-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-9067-6040', 12, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(559, 'WMF Barista Cappuccino Cup & Saucer', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-8622-9440.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-8622-9440', 16, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(560, 'WMF Honey or Syrup Dispenser, 240 ml', '276', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-3664-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-3664-6040', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(561, 'WMF Nuova Coffee Spoon Set', '126', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-12-9174-6046.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-12-9174-6046', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(562, 'WMF Coffee Time Coffee Cups Set', '103.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-09-3249-2000.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-09-3249-2000', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(563, 'WMF Impulse Tea Flask, Grey', '504', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-9068-7270.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-9068-7270', 12, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(564, 'WMF Ice Tea Glass 2-Piece Set', '189', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-09-3638-2000.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-09-3638-2000', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(565, 'WMF Nuova Teaspoon Set', '94.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-12-9165-6046.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-12-9165-6046', 11, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(566, 'WMF Impulse Tea Flask', '828', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-9066-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-9066-6040', 12, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(567, 'WMF Barista Espresso Cup and Saucer with Spoon, 60 ml', '103.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-06-8620-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-06-8620-6040', 16, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(568, 'WMF Fusiontec 4-Piece Cookware Set, Dark Brass', '2992.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1487-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1487-5290', 16, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(569, 'WMF Gourmet Plus 4 Piece Cookware Set', '3072', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-2004-6030.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-2004-6030', 16, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(570, 'WMF Function Four 4 Piece Cookware Set', '3859.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-6004-6380.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-6004-6380', 16, 10, NULL, '2019-04-11 00:07:23', '2019-04-11 00:07:23'),
(571, 'WMF Trend 4 Piece Cookware Set', '2245.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-6804-6380.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-6804-6380', 16, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(572, 'WMF Provence Plus 5 Piece Cookware Set', '1498.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-2105-6380.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-2105-6380', 16, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(573, 'WMF Bueno Induction 4 Piece Cookware Set', '2025', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-8900-4290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-8900-4290', 16, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(574, 'WMF Profi Frying Pan, 24 cm', '583.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-9464-9991.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-9464-9991', 11, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(575, 'WMF Profi Resist Frying Pan', '859.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-17-5628-6411-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-17-5628-6411-GROUP', 11, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(576, 'WMF Profi Frying Pan, 28 cm', '661.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-9468-9991.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-9468-9991', 11, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(577, 'WMF Perfect Plus Pressure Cooker with Insert, 6.5L', '1528.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-9313-6040.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-9313-6040', 11, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(578, 'WMF Perfect Pressure Cooker', '1395', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-9264-9990.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-9264-9990', 11, 10, NULL, '2019-04-11 00:07:24', '2019-04-11 00:07:24'),
(579, 'WMF Roasting Pan', '513', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-07-9223-9990.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-07-9223-9990', 11, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(580, 'WMF Palermo, 66 Piece Cutlery Set', '1953', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-11-7700-6041.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-11-7700-6041', 16, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(581, 'WMF Florenz, 66 Piece Cutlery Set', '1875', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-11-8900-9991.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-11-8900-9991', 16, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(582, 'WMF Ambiente Cromargan Protect˜ Cutlery, 30-piece Set', '2205', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-12-2891-6340.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-12-2891-6340', 16, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(583, 'WMF Fusiontec Low Casserole, Dark Brass', '847.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1467-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1467-5290', 11, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(584, 'WMF Fusiontec Low Casserole, Rose Quartz', '847.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1469-5290-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1469-5290-GROUP', 11, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(585, 'WMF Fusiontec High Casserole, Rose Quartz', '1042.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1449-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1449-5290', 11, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(586, 'Brush Crush - Brush Set', '210', 'http://mylist.gyftbox.in/giftcard_image/merchandise/WOWBBCS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'WOWBBCS', 19, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(587, 'Black Opium The Shock 90ml', '870', 'http://mylist.gyftbox.in/giftcard_image/merchandise/YSLBOTS90.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'YSLBOTS90', 8, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(588, 'Babydoll Kiss & Blush Duo Stick', '232.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/YSLBKNBDS.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'YSLBKNBDS', 19, 10, NULL, '2019-04-11 00:07:25', '2019-04-11 00:07:25'),
(589, 'MON PARIS EAU DE PARFUM', '750', 'http://mylist.gyftbox.in/giftcard_image/merchandise/YSLMPEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'YSLMPEDP', 8, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(590, 'Mon Paris Couture Eau De Parfum', '870', 'http://mylist.gyftbox.in/giftcard_image/merchandise/YSLMPCEDP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'YSLMPCEDP', 8, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(591, 'Zwilling J.A. Henckels Twin˜ Classic Stew Pot, 28 cm', '1024.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40912-280.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40912-280', 11, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(592, 'Zwilling J.A. Henckels Twin˜ Classic Stew Pot, 24 cm', '780', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40912-240.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40912-240', 11, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(593, 'Zwilling J.A. Henckels Sorrento Double Wall Glass 2-Piece Set', '118.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-39500-075-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-39500-075-GROUP', 11, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(594, 'Zwilling J.A. Henckels Vitality 5-Piece Cookware Set', '2173.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-66460-000.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-66460-000', 11, 10, NULL, '2019-04-11 00:07:26', '2019-04-11 00:07:26'),
(595, 'Zwilling J.A. Henckels Joy 5 Piece Cookware Set', '1348.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-64040-002.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-64040-002', 11, 10, NULL, '2019-04-11 00:07:27', '2019-04-11 00:07:27'),
(596, 'Zwilling J.A. Henckels Motion 5 Piece Cookware Set', '2398.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-66200-005.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-66200-005', 11, 10, NULL, '2019-04-11 00:07:27', '2019-04-11 00:07:27'),
(597, 'Zwilling J.A. Henckels Twin˜ Classic 5 Piece Cookware Set', '2355', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40901-001.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40901-001', 11, 10, NULL, '2019-04-11 00:07:27', '2019-04-11 00:07:27'),
(598, 'WMF Fusiontec 2-Piece Cookware Set, Rose Quartz', '1342.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1499-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1499-5290', 16, 10, NULL, '2019-04-11 00:07:27', '2019-04-11 00:07:27'),
(599, 'Zwilling J.A. Henckels Twin Nova 6-Piece Cookware Set', '1797', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40110-014.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40110-014', 11, 10, NULL, '2019-04-11 00:07:27', '2019-04-11 00:07:27'),
(600, 'WMF Fusiontec 2-Piece Cookware Set, Dark Brass', '1342.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MWM-05-1497-5290.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MWM-05-1497-5290', 16, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(601, 'Zwilling J.A. Henckels Madura Nonstick Wok', '517.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-66281-306.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-66281-306', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(602, 'Zwilling J.A. Henckels Twin˜ Choice Thermolon Frying Pan, 28 cm', '891', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40959-281.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40959-281', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(603, 'Zwilling J.A. Henckels Twin˜ Choice Thermolon Frying Pan, 24 cm', '780', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40959-241.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40959-241', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(604, 'Zwilling Marquina Plus Frying Pan', '346.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-66319-286-GROUP.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-66319-286-GROUP', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(605, 'Zwilling J.A. Henckels Twin˜ Choice Frying Pan, 28 cm', '709.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40958-280.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40958-280', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28'),
(606, 'Zwilling J.A. Henckels Twin˜ Choice Frying Pan, 24 cm', '622.5', 'http://mylist.gyftbox.in/giftcard_image/merchandise/MZG-40958-240.jpg', 0, 'available', NULL, NULL, NULL, NULL, 'MZG-40958-240', 11, 10, NULL, '2019-04-11 00:07:28', '2019-04-11 00:07:28');

-- --------------------------------------------------------

--
-- Table structure for table `products_accounts_seen`
--

CREATE TABLE `products_accounts_seen` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_catalogs`
--

CREATE TABLE `product_catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_catalogs`
--

INSERT INTO `product_catalogs` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Prof. Bertha Bernier', '2019-04-10 23:26:15', '2019-04-10 23:26:15', NULL),
(2, 'Mose Jacobs', '2019-04-10 23:26:15', '2019-04-10 23:26:15', NULL),
(3, 'Prof. Lia Fadel', '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(4, 'Desiree Kuhn', '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(5, 'Daniela Brekke', '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(6, 'Sammy Baumbach', '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(7, 'Allene Mertz', '2019-04-10 23:26:17', '2019-04-10 23:26:17', NULL),
(8, 'Prof. Karl Will', '2019-04-10 23:26:17', '2019-04-10 23:26:17', NULL),
(9, 'Prof. Eliane Weissnat', '2019-04-10 23:26:18', '2019-04-10 23:26:18', NULL),
(10, 'Middle East Rewards', '2019-04-11 00:06:03', '2019-04-11 00:06:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `catalog` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent`, `catalog`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'labore', 0, 1, '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(2, 'a', 0, 2, '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(3, 'similique', 0, 3, '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(4, 'aut', 0, 4, '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(5, 'exercitationem', 0, 6, '2019-04-10 23:26:16', '2019-04-10 23:26:16', NULL),
(6, 'aperiam', 0, 8, '2019-04-10 23:26:17', '2019-04-10 23:26:17', NULL),
(7, 'Baby & Child', NULL, 10, '2019-04-11 00:06:03', '2019-04-11 00:06:03', NULL),
(8, 'Her Fragrance', NULL, 10, '2019-04-11 00:06:03', '2019-04-11 00:06:03', NULL),
(9, 'Food Preparation & Cooking', NULL, 10, '2019-04-11 00:06:03', '2019-04-11 00:06:03', NULL),
(10, 'Coffee & Juice Makers', NULL, 10, '2019-04-11 00:06:04', '2019-04-11 00:06:04', NULL),
(11, 'Kitchenware & Utensils', NULL, 10, '2019-04-11 00:06:04', '2019-04-11 00:06:04', NULL),
(12, 'Tupperware', NULL, 10, '2019-04-11 00:06:04', '2019-04-11 00:06:04', NULL),
(13, 'iPhone', NULL, 10, '2019-04-11 00:06:05', '2019-04-11 00:06:05', NULL),
(14, 'Apple Watch', NULL, 10, '2019-04-11 00:06:07', '2019-04-11 00:06:07', NULL),
(15, 'Mens Watches', NULL, 10, '2019-04-11 00:06:10', '2019-04-11 00:06:10', NULL),
(16, 'Cutlery & Dinner Sets', NULL, 10, '2019-04-11 00:06:11', '2019-04-11 00:06:11', NULL),
(17, 'Hair Styling', NULL, 10, '2019-04-11 00:06:12', '2019-04-11 00:06:12', NULL),
(18, 'Blenders & Mixers', NULL, 10, '2019-04-11 00:06:13', '2019-04-11 00:06:13', NULL),
(19, 'Beauty', NULL, 10, '2019-04-11 00:06:17', '2019-04-11 00:06:17', NULL),
(20, 'Bose', NULL, 10, '2019-04-11 00:06:21', '2019-04-11 00:06:21', NULL),
(21, 'Personal Care', NULL, 10, '2019-04-11 00:06:24', '2019-04-11 00:06:24', NULL),
(22, 'Personal Accessories', NULL, 10, '2019-04-11 00:06:27', '2019-04-11 00:06:27', NULL),
(23, 'Womens Watches', NULL, 10, '2019-04-11 00:06:28', '2019-04-11 00:06:28', NULL),
(24, 'Kettles & Toasters', NULL, 10, '2019-04-11 00:06:30', '2019-04-11 00:06:30', NULL),
(25, 'For the Home', NULL, 10, '2019-04-11 00:06:42', '2019-04-11 00:06:42', NULL),
(26, 'Mobile Phones', NULL, 10, '2019-04-11 00:06:43', '2019-04-11 00:06:43', NULL),
(27, 'His Fragrance', NULL, 10, '2019-04-11 00:06:56', '2019-04-11 00:06:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `product_id` int(10) UNSIGNED NOT NULL,
  `sub_product` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_from_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_from_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_tag_manager` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modules` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staging_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('staging','live','closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `reference`, `agency_id`, `client_id`, `currency_id`, `theme`, `sent_from_email`, `contact_from_email`, `google_analytics_id`, `google_tag_manager`, `modules`, `user_start_date`, `user_end_date`, `staging_password`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AD Ports', 'AD_PORTS', 16, 11, '1', 'LightYellow', 'program@adports.ae', 'program@adports.ae', NULL, NULL, 'a:2:{i:0;s:10:\"Nomination\";i:1;s:7:\"Rewards\";}', '2019-04-11 01:25:57', '2020-04-11 01:25:57', '$2y$10$h3gOwuDKriiGjnz09jXlh.Yivz0X11UTV4rSbfa8E2JFYzMXXSaza', 'live', NULL, '2019-04-10 23:25:57', '2019-04-10 23:25:57'),
(2, 'Dr. Berta Stiedemann', 'Aut nostrum aut numquam cupiditate ducimus.', 17, 12, '172', 'LightCyan', 'johathan.halvorson@example.com', 'krystal.kessler@example.com', '', '', '', '1996-12-05 10:33:02', '2012-05-26 05:39:27', '$2y$10$FRQD/60Ni35kf5NWBw8FgufzChpeeu3Z.c8ehGmEWSlcs7ZgoJDy2', 'staging', NULL, '2019-04-10 23:26:01', '2019-04-10 23:26:01'),
(3, 'Elza Boehm', 'Temporibus culpa aut quasi et ducimus nemo.', 19, 13, '173', 'DarkSeaGreen', 'kyra.ryan@example.org', 'jenkins.leta@example.org', '', '', '', '2002-09-15 08:07:54', '1988-07-15 05:39:29', '$2y$10$6VbB/LmpIfXtdFqSdURaJu9a5cUrJ9rLqkLj8/0mqG6giCep81jOy', 'staging', NULL, '2019-04-10 23:26:03', '2019-04-10 23:26:03'),
(4, 'Prof. Cooper Cummerata', 'Voluptatibus rerum et veniam corrupti aliquam voluptatem.', 21, 14, '174', 'Orange', 'kbrekke@example.net', 'ureynolds@example.net', '', '', '', '2017-05-31 10:36:32', '2019-04-02 04:59:26', '$2y$10$qEMTTsTSE2HoMf83kXhzaeS46KOMsyNPgUbIq.2Ir3ZJecvOurN3m', 'staging', NULL, '2019-04-10 23:26:03', '2019-04-10 23:26:03'),
(5, 'Prof. Myrtis Simonis', 'Voluptatum et est sed occaecati dicta iusto.', 23, 15, '175', 'GhostWhite', 'halle26@example.net', 'jakubowski.lilly@example.com', '', '', '', '1987-08-06 18:26:43', '2005-07-08 12:27:50', '$2y$10$2vAqqK63osKJDYeiRm7wle.FiIj8ngNjm0s8KWcaj2ImiZ12cFSfK', 'staging', NULL, '2019-04-10 23:26:05', '2019-04-10 23:26:05'),
(6, 'Mireille Moore', 'Vitae qui et excepturi ea.', 25, 16, '176', 'MediumBlue', 'pouros.theodora@example.com', 'xlangosh@example.com', '', '', '', '2001-03-15 01:38:39', '1998-02-17 02:28:23', '$2y$10$B9GuKjwIVTsF8tg4ysrVGudAqdvnXJ5TGnnSaM/0cP6kekkwfyhD6', 'staging', NULL, '2019-04-10 23:26:06', '2019-04-10 23:26:06');

-- --------------------------------------------------------

--
-- Table structure for table `programs_domains`
--

CREATE TABLE `programs_domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs_points`
--

CREATE TABLE `programs_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `transaction_type_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs_points_budgets`
--

CREATE TABLE `programs_points_budgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `return_to_budget` tinyint(1) NOT NULL DEFAULT '0',
  `points_drain_notification` int(11) NOT NULL DEFAULT '0',
  `notifiable_agency_admins` json DEFAULT NULL,
  `notifiable_client_admins` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs_points_expiries`
--

CREATE TABLE `programs_points_expiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `expiration_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_expiry_points` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_users`
--

CREATE TABLE `program_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `communication_preference` enum('email','sms') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_users`
--

INSERT INTO `program_users` (`id`, `program_id`, `account_id`, `title`, `first_name`, `last_name`, `email`, `username`, `company`, `job_title`, `address_1`, `address_2`, `town`, `postcode`, `country`, `telephone`, `mobile`, `date_of_birth`, `communication_preference`, `language`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '', 'Mohamad Ousama Al Sakhal', '', 'osama.alsakhal@adports.ae', 'osama.alsakhal@adports.ae', 'AD Ports', 'Draftsman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:36', '2019-04-11 00:01:36'),
(2, 1, 13, '', 'Khalid Shalabi', '', 'khalid.shalabi@adports.ae', 'khalid.shalabi@adports.ae', 'AD Ports', 'Inspector PORTS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:36', '2019-04-11 00:01:36'),
(3, 1, 14, '', 'Khaled Abbas Al Asfour', '', 'khalid.abbas@adports.ae', 'khalid.abbas@adports.ae', 'AD Ports', 'Project Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(4, 1, 15, '', 'Rashed Mohamed Ali Al Romaithi', '', 'rashed.alromaithi@adports.ae', 'rashed.alromaithi@adports.ae', 'AD Ports', 'Head of Customer Service-Khalifa Port', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(5, 1, 16, '', 'Mohsin Ali Al Marri', '', 'mohsen.almarry@adports.ae', 'mohsen.almarry@adports.ae', 'AD Ports', 'Leasing  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(6, 1, 17, '', 'Abd Elgalil Saboon', '', 'AbdulJaleel.Sabun@adports.ae', 'AbdulJaleel.Sabun@adports.ae', 'AD Ports', 'Leasing Coordinator PORTS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:37', '2019-04-11 00:01:37'),
(7, 1, 18, '', 'Kuriapilly M Abdul Majeed', '', 'kuriapilly.majeed@adports.ae', 'kuriapilly.majeed@adports.ae', 'AD Ports', 'Driver - CS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:38', '2019-04-11 00:01:38'),
(8, 1, 19, '', 'Layla Mohamed Abbood', '', 'layla.abbood@adports.ae', 'layla.abbood@adports.ae', 'AD Ports', 'Leasing Coordinator PORTS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:38', '2019-04-11 00:01:38'),
(9, 1, 20, '', 'Shaima Yousif Al Ali', '', 'shaimaa.yousuf@adports.ae', 'shaimaa.yousuf@adports.ae', 'AD Ports', 'Senior Community Engagement Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(10, 1, 21, '', 'Izzath Mohamed Naeem', '', 'izzath.musny@adports.ae', 'izzath.musny@adports.ae', 'AD Ports', 'FM Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(11, 1, 22, '', 'Malek Husain Al Hammadi', '', 'malek.alhammadi@adports.ae', 'malek.alhammadi@adports.ae', 'AD Ports', 'Public Relations Officer -CS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(12, 1, 23, '', 'Eiman Salah Salem Al Khalaqi', '', 'eiman.alkhalaqi@adports.ae', 'eiman.alkhalaqi@adports.ae', 'AD Ports', 'VP - Innovation & Growth', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(13, 1, 24, '', 'Jessima Mohamed Mustaffa', '', 'jessima.mustaffa@adports.ae', 'jessima.mustaffa@adports.ae', 'AD Ports', 'Business Analyst - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:39', '2019-04-11 00:01:39'),
(14, 1, 25, '', 'Mohamed Ashar', '', 'mohamed.ashar@adports.ae', 'mohamed.ashar@adports.ae', 'AD Ports', 'Driver - CS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(15, 1, 26, '', 'Abeer Najib Mohamed', '', 'abeer.najeeb@adports.ae', 'abeer.najeeb@adports.ae', 'AD Ports', 'Employee  Relations Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(16, 1, 27, '', 'Habeebu Rahiman Chappayil', '', 'habeeb.rahiman@adports.ae', 'habeeb.rahiman@adports.ae', 'AD Ports', 'Asset Management Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:40', '2019-04-11 00:01:40'),
(17, 1, 28, '', 'Mohamed Bassem Jamal Eddine', '', 'mohamed.jamaleddine@adports.ae', 'mohamed.jamaleddine@adports.ae', 'AD Ports', 'Head of Enterprise Systems', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:41', '2019-04-11 00:01:41'),
(18, 1, 29, '', 'Hadi Ouaida', '', 'hadi.owaida@adports.ae', 'hadi.owaida@adports.ae', 'AD Ports', 'Vice President - Strategy & Excellence', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(19, 1, 30, '', 'Zaid Al Ali', '', 'zaid.alali@adports.ae', 'zaid.alali@adports.ae', 'AD Ports', 'Manager - Infrastructure & Service Delivery', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(20, 1, 31, '', 'Mohammed Ziad', '', 'mohammed.ziad@adports.ae', 'mohammed.ziad@adports.ae', 'AD Ports', 'Sr.Insurance Officer - Legal', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(21, 1, 32, '', 'Adnan Abdul Rahman Awad Barzeq', '', 'adnan.barzeq@adports.ae', 'adnan.barzeq@adports.ae', 'AD Ports', 'HR Business  Partner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(22, 1, 33, '', 'Mamdouh Yousef', '', 'Mamdouh.Yousef@adports.ae', 'Mamdouh.Yousef@adports.ae', 'AD Ports', 'Facility Management - Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:42', '2019-04-11 00:01:42'),
(23, 1, 34, '', 'May Hamed', '', 'may.hamed@adports.ae', 'may.hamed@adports.ae', 'AD Ports', 'Manager - Resourcing & Talent  Management', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(24, 1, 35, '', 'Salem Mohamed Al Qubaisi', '', 'salem.al-qubaisi@adports.ae', 'salem.al-qubaisi@adports.ae', 'AD Ports', 'Enterprise Systems Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(25, 1, 36, '', 'Safeera Naushad', '', 'safeera.naushad@adports.ae', 'safeera.naushad@adports.ae', 'AD Ports', 'FM Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(26, 1, 37, '', 'Joumana Najjar', '', 'joumana.najjar@adports.ae', 'joumana.najjar@adports.ae', 'AD Ports', 'Sr. IT Administrator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(27, 1, 38, '', 'Yousef Al Yaaqoubi', '', 'yousif.alyaaqoubi@adports.ae', 'yousif.alyaaqoubi@adports.ae', 'AD Ports', 'External Relations Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(28, 1, 39, '', 'Mohamed Aslam Puthenchira', '', 'mohamed.aslam@adports.ae', 'mohamed.aslam@adports.ae', 'AD Ports', 'Head of Development Team', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:43', '2019-04-11 00:01:43'),
(29, 1, 40, '', 'Romel Gorgonia', '', 'romel.gorgonia@adports.ae', 'romel.gorgonia@adports.ae', 'AD Ports', 'Civil Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(30, 1, 41, '', 'Labid Hamad', '', 'labid.hamad@adports.ae', 'labid.hamad@adports.ae', 'AD Ports', 'Sr.Business Analyst - S&E', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(31, 1, 42, '', 'Al Sayed Al Masoud', '', 'watheb.almasoud@adports.ae', 'watheb.almasoud@adports.ae', 'AD Ports', 'External Relations Executive -KIZAD', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(32, 1, 43, '', 'Ludette Fernandez', '', 'ludette.fernandez@adports.ae', 'ludette.fernandez@adports.ae', 'AD Ports', 'Project  Engineer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(33, 1, 44, '', 'Zahid Bin Hamed Syed', '', 'zahid.syed@adports.ae', 'zahid.syed@adports.ae', 'AD Ports', 'Information  Security Officer / IT Architect', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(34, 1, 45, '', 'Shams Abdulla Al Shamsi', '', 'shams.alshamsi@adports.ae', 'shams.alshamsi@adports.ae', 'AD Ports', 'Sr. Training & Development Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:44', '2019-04-11 00:01:44'),
(35, 1, 46, '', 'Aneesa Yousuf', '', 'aneesa.yousef@adports.ae', 'aneesa.yousef@adports.ae', 'AD Ports', 'Senior GIS/ CAD Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:45', '2019-04-11 00:01:45'),
(36, 1, 47, '', 'Waheed Dean', '', 'waheed.dean@adports.ae', 'waheed.dean@adports.ae', 'AD Ports', 'Filing -Clerk', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(37, 1, 48, '', 'Mohamed Puthuveettil', '', 'mohamed.puthuveettil@adports.ae', 'mohamed.puthuveettil@adports.ae', 'AD Ports', 'Driver - CS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(38, 1, 49, '', 'Mohamed Juma Al Shamisi', '', 'mohamed.alshamisi@adports.ae', 'mohamed.alshamisi@adports.ae', 'AD Ports', 'Chief Executive Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(39, 1, 50, '', 'Fortune Marerwa', '', 'fortune.marerwa@adports.ae', 'fortune.marerwa@adports.ae', 'AD Ports', 'Talent  Acquisition Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(40, 1, 51, '', 'Abdulla Humaid Rashid Al Hameli', '', 'abdullah.alhameli@adports.ae', 'abdullah.alhameli@adports.ae', 'AD Ports', 'EVP-Corporate Support', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(41, 1, 52, '', 'Jihan Mohammad Saleh Al Ahmadi', '', 'jihan.alahmedi@adports.ae', 'jihan.alahmedi@adports.ae', 'AD Ports', 'Business Support Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:46', '2019-04-11 00:01:46'),
(42, 1, 53, '', 'Benjamin Sunga', '', 'benjamin.sunga@adports.ae', 'benjamin.sunga@adports.ae', 'AD Ports', 'Document� Controller', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(43, 1, 54, '', 'Nestor Gante Gantala', '', 'nestor.gantala@adports.ae', 'nestor.gantala@adports.ae', 'AD Ports', 'KP HSE Superintendent', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(44, 1, 55, '', 'Ashwaq Omar Bafaqaas', '', 'ashwaq.omar@adports.ae', 'ashwaq.omar@adports.ae', 'AD Ports', 'Head of General�Services', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(45, 1, 56, '', 'Mohamed Wahsh', '', 'mohamed.wahsh@adports.ae', 'mohamed.wahsh@adports.ae', 'AD Ports', 'Sr. Manager - Fixed Assets & Inventory Control', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(46, 1, 57, '', 'Ali Saif Al Dhaheri', '', 'ali.aldhaheri@adports.ae', 'ali.aldhaheri@adports.ae', 'AD Ports', 'Sr. Accountant- Collection', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:47', '2019-04-11 00:01:47'),
(47, 1, 58, '', 'Katrina Mercado', '', 'katrina.oteyza@adports.ae', 'katrina.oteyza@adports.ae', 'AD Ports', 'Sr. Financial Analyst- Budgeting & Planning', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:48', '2019-04-11 00:01:48'),
(48, 1, 59, '', 'Asmaa Mohieddine', '', 'asmaa.mohieddine@adports.ae', 'asmaa.mohieddine@adports.ae', 'AD Ports', 'Sr.Admin.  Assistant', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:48', '2019-04-11 00:01:48'),
(49, 1, 60, '', 'Fahad Husain Mohamed Al Khajeh', '', 'fahad.alkhaja@adports.ae', 'fahad.alkhaja@adports.ae', 'AD Ports', 'Executive Project Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(50, 1, 61, '', 'Husam Rizeq', '', 'hussam.rizeq@adports.ae', 'hussam.rizeq@adports.ae', 'AD Ports', 'Business Support Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(51, 1, 62, '', 'Raj Agarwal', '', 'raj.agarwal@adports.ae', 'raj.agarwal@adports.ae', 'AD Ports', 'Sr. Contracts  Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(52, 1, 63, '', 'Jeffrey Casianan', '', 'jeffrey.casianan@adports.ae', 'jeffrey.casianan@adports.ae', 'AD Ports', 'HSE Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(53, 1, 64, '', 'Mohamed Abdulla Al Bloushi', '', 'mohamed.albloushi@adports.ae', 'mohamed.albloushi@adports.ae', 'AD Ports', 'Sr. HR Business Partner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:49', '2019-04-11 00:01:49'),
(54, 1, 65, '', 'Hazzaa Mohamed Al Junaibi', '', 'hazzaa.aljunaibi@adports.ae', 'hazzaa.aljunaibi@adports.ae', 'AD Ports', 'Security Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(55, 1, 66, '', 'Mohamad Fayez Kaddoura', '', 'mohammed.kaddoura@adports.ae', 'mohammed.kaddoura@adports.ae', 'AD Ports', 'Support Services Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(56, 1, 67, '', 'Maitha Ahmed Mesaed Al Murar', '', 'maitha.almurar@adports.ae', 'maitha.almurar@adports.ae', 'AD Ports', 'Vice President - Human Capital & Emiratisation', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:50', '2019-04-11 00:01:50'),
(57, 1, 68, '', 'Rida Salah Eddine Chehadi', '', 'rida.shehadeh@adports.ae', 'rida.shehadeh@adports.ae', 'AD Ports', 'Events Coordinator - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:51', '2019-04-11 00:01:51'),
(58, 1, 69, '', 'Abeer Hassan Mahmoud Abdelhadi', '', 'abeer.hassan@adports.ae', 'abeer.hassan@adports.ae', 'AD Ports', 'Performance  Management Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:51', '2019-04-11 00:01:51'),
(59, 1, 70, '', 'Hosam Ferzat Ahmed Sheikhani', '', 'husam.sheikhani@adports.ae', 'husam.sheikhani@adports.ae', 'AD Ports', 'Sales Account Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:51', '2019-04-11 00:01:51'),
(60, 1, 71, '', 'Obada Abu Shakra', '', 'obada.abushakra@kizad.ae', 'obada.abushakra@kizad.ae', 'AD Ports', 'VP - IZ Business Support', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(61, 1, 72, '', 'Mubarak Saeed Ahmed Al Dhaheri', '', 'mubarak.aldhaheri@safeen.ae', 'mubarak.aldhaheri@safeen.ae', 'AD Ports', 'Support Services Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(62, 1, 73, '', 'Salah Al Khatib', '', 'salah.alkhatib@kizad.ae', 'salah.alkhatib@kizad.ae', 'AD Ports', 'Business Development Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(63, 1, 74, '', 'Arif Hassan Mustafa', '', 'arif.mustafa@adports.ae', 'arif.mustafa@adports.ae', 'AD Ports', 'Sr. Cash Management Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(64, 1, 75, '', 'Ahmed El Shafie', '', 'ahmed.elshafie@adports.ae', 'ahmed.elshafie@adports.ae', 'AD Ports', 'Business Analyst', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:52', '2019-04-11 00:01:52'),
(65, 1, 76, '', 'Muhammad Junaid Iqbal', '', 'muhammad.junaid@adports.ae', 'muhammad.junaid@adports.ae', 'AD Ports', 'Sr. Manager- Corporate Finance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:53', '2019-04-11 00:01:53'),
(66, 1, 77, '', 'Hamza Osman Ahmed Badawi', '', 'hamza.badawi@kizad.ae', 'hamza.badawi@kizad.ae', 'AD Ports', 'Sr. Manager � Urban Planning', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:53', '2019-04-11 00:01:53'),
(67, 1, 78, '', 'Taiba Ali Al Nowais', '', 'taiba.alnowais@adports.ae', 'taiba.alnowais@adports.ae', 'AD Ports', 'Accountant - Fixed Assets & Inventory Control', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(68, 1, 79, '', 'Abbass Abdalla Ageed', '', 'abbas.ageed@adports.ae', 'abbas.ageed@adports.ae', 'AD Ports', 'Legal Advisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(69, 1, 80, '', 'Saeed Hilal Al Zaabi', '', 'saeed.alzaabi@adports.ae', 'saeed.alzaabi@adports.ae', 'AD Ports', 'Business  Systems Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:54', '2019-04-11 00:01:54'),
(70, 1, 81, '', 'Marwan Al Ahmad', '', 'marwan.alahmad@adports.ae', 'marwan.alahmad@adports.ae', 'AD Ports', 'Applications  Development Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:55', '2019-04-11 00:01:55'),
(71, 1, 82, '', 'Mohammed Manar Al Shukfa', '', 'mohammed.shekfi@adports.ae', 'mohammed.shekfi@adports.ae', 'AD Ports', 'Head of IT Services', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:55', '2019-04-11 00:01:55'),
(72, 1, 83, '', 'Dhanasekar Kandaswamy Kandaswamy', '', 'dhanasekar.kandaswam@adports.ae', 'dhanasekar.kandaswam@adports.ae', 'AD Ports', 'Lead Engineer (Electrical)', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(73, 1, 84, '', 'Mohamed Eidha Al Tamimi', '', 'mohammed.altamimi@adports.ae', 'mohammed.altamimi@adports.ae', 'AD Ports', 'VP - Ports Business Support', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(74, 1, 85, '', 'Hussam Abdel Moniem Mandil', '', 'hussam.mandil@adports.ae', 'hussam.mandil@adports.ae', 'AD Ports', 'Sr. Business Support Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(75, 1, 86, '', 'Khalid Jassim Al Ali', '', 'khalid.alali@adports.ae', 'khalid.alali@adports.ae', 'AD Ports', 'Sr. Manager - HSE & Corporate Compliance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:56', '2019-04-11 00:01:56'),
(76, 1, 87, '', 'Kaleel Tajuddin', '', 'kaleel.tajuddin@adports.ae', 'kaleel.tajuddin@adports.ae', 'AD Ports', 'Sr. Specialist - Systems Operations Center', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(77, 1, 88, '', 'Ihab Mohamad Ayoub', '', 'ihab.ayoub@adports.ae', 'ihab.ayoub@adports.ae', 'AD Ports', 'Sr.Support Engineer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(78, 1, 89, '', 'Rajeev Choudhary', '', 'rajeev.choudhary@adports.ae', 'rajeev.choudhary@adports.ae', 'AD Ports', 'Executive Admin Assistant', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(79, 1, 90, '', 'Ayesha Abdulla Al Romaithi', '', 'ayesha.alromaithi@adports.ae', 'ayesha.alromaithi@adports.ae', 'AD Ports', 'Head of Employees  Relations', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:57', '2019-04-11 00:01:57'),
(80, 1, 91, '', 'Salim Abbas', '', 'salim.abbas@adports.ae', 'salim.abbas@adports.ae', 'AD Ports', 'Sr.Oracle Database Administrator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:58', '2019-04-11 00:01:58'),
(81, 1, 92, '', 'Vinay Kumar', '', 'Vinay.Kumar@adports.ae', 'Vinay.Kumar@adports.ae', 'AD Ports', 'Contracts  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(82, 1, 93, '', 'Nawaf Farouk Mohamed Alawadhi', '', 'Nawaf.Alawady@adports.ae', 'Nawaf.Alawady@adports.ae', 'AD Ports', 'Sr. Specialist - Service Desk Operations', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(83, 1, 94, '', 'Mona El Mahal', '', 'mona.elmahal@adports.ae', 'mona.elmahal@adports.ae', 'AD Ports', 'Admin Assistant CEO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(84, 1, 95, '', 'Saeed Hamad Al Hajeri', '', 'Saeed.AlHajeri@adports.ae', 'Saeed.AlHajeri@adports.ae', 'AD Ports', 'Asset Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(85, 1, 96, '', 'Sara Bani Al Najjar', '', 'sara.alnajjar@adports.ae', 'sara.alnajjar@adports.ae', 'AD Ports', 'Vice President- Information Technology', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:01:59', '2019-04-11 00:01:59'),
(86, 1, 97, '', 'Ammar Al Hayyani', '', 'ammar.alhayyani@adports.ae', 'ammar.alhayyani@adports.ae', 'AD Ports', 'Sr. Telecommunications Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:00', '2019-04-11 00:02:00'),
(87, 1, 98, '', 'Muhammad Aman', '', 'Muhammad.Aman@adports.ae', 'Muhammad.Aman@adports.ae', 'AD Ports', 'Sr. Application Administrator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(88, 1, 99, '', 'Lama Ibrahim Al Mubarak', '', 'Lama.AlMubarak@adports.ae', 'Lama.AlMubarak@adports.ae', 'AD Ports', 'Sr.Purchasing Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(89, 1, 100, '', 'Brian Sadler', '', 'Brian.Sadler@adports.ae', 'Brian.Sadler@adports.ae', 'AD Ports', 'Special Projects Manager-PM', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:01', '2019-04-11 00:02:01'),
(90, 1, 101, '', 'Thaer Khalil', '', 'thaer.khalil@adports.ae', 'thaer.khalil@adports.ae', 'AD Ports', 'Head of HSE', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:02', '2019-04-11 00:02:02'),
(91, 1, 102, '', 'Kaladevi Eravelil Nair', '', 'kaladevi.krishnan@safeen.ae', 'kaladevi.krishnan@safeen.ae', 'AD Ports', 'Support Services Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(92, 1, 103, '', 'Abdul Kareem Mubarak Al Masabi', '', 'abdulkareem.almasabi@adports.ae', 'abdulkareem.almasabi@adports.ae', 'AD Ports', 'Executive Vice President - Ports', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(93, 1, 104, '', 'Omar Boughdadi', '', 'omar.boughdadi@adports.ae', 'omar.boughdadi@adports.ae', 'AD Ports', 'Document Controller PORTS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(94, 1, 105, '', 'Mohamed Ali Karim Mydeen Abubuker Karim', '', 'mohamed.abubuker@adports.ae', 'mohamed.abubuker@adports.ae', 'AD Ports', 'Sr. Facility Mgt. Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:03', '2019-04-11 00:02:03'),
(95, 1, 106, '', 'Mohamed Abdul Aziz Mohamed', '', 'mohamed.abdelaziz@adports.ae', 'mohamed.abdelaziz@adports.ae', 'AD Ports', 'Manager - Fixed Assets & Inventory Control', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:04', '2019-04-11 00:02:04'),
(96, 1, 107, '', 'Adil Ahmed Mohamed Al Hammadi', '', 'adil.banihammad@adports.ae', 'adil.banihammad@adports.ae', 'AD Ports', 'Chief Harbour Master', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:04', '2019-04-11 00:02:04'),
(97, 1, 108, '', 'Jameela Hamad Al Junaibi', '', 'jameela.aljunaibi@adports.ae', 'jameela.aljunaibi@adports.ae', 'AD Ports', 'VP- Corporate Communications & Branding', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(98, 1, 109, '', 'Hesham Sayed', '', 'hesham.sayed@adports.ae', 'hesham.sayed@adports.ae', 'AD Ports', 'Contracts  Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(99, 1, 110, '', 'Gerimel Rebalde', '', 'gerimel.rebalde@adports.ae', 'gerimel.rebalde@adports.ae', 'AD Ports', 'Cruise Business Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(100, 1, 111, '', 'Mohamed Abdel Rahim Al Zarouni', '', 'mohamed.zarouni@adports.ae', 'mohamed.zarouni@adports.ae', 'AD Ports', 'Special  Projects Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(101, 1, 112, '', 'Muhammad Idrees Khan', '', 'muhammad.khan@adports.ae', 'muhammad.khan@adports.ae', 'AD Ports', 'Head- Corporate Finance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:05', '2019-04-11 00:02:05'),
(102, 1, 113, '', 'Ahmad Abdulla Al Suwaidi', '', 'ahmad.alsuwaidi@kizad.ae', 'ahmad.alsuwaidi@kizad.ae', 'AD Ports', 'Sr.Project Engineer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:06', '2019-04-11 00:02:06'),
(103, 1, 114, '', 'Muhammad Sikander', '', 'muhammad.sikander@adports.ae', 'muhammad.sikander@adports.ae', 'AD Ports', 'Sr. Cash Management Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:06', '2019-04-11 00:02:06'),
(104, 1, 115, '', 'Darine Malih Mustapha', '', 'darine.mustapha@safeen.ae', 'darine.mustapha@safeen.ae', 'AD Ports', 'Executive Admin Assistant - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:09', '2019-04-11 00:02:09'),
(105, 1, 116, '', 'Syed Khalid Ahmad', '', 'syed.ahmad@adports.ae', 'syed.ahmad@adports.ae', 'AD Ports', 'Finance Development Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:10', '2019-04-11 00:02:10'),
(106, 1, 117, '', 'Bryan James Statham', '', 'bryan.statham@adports.ae', 'bryan.statham@adports.ae', 'AD Ports', 'Contracts  Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:11', '2019-04-11 00:02:11'),
(107, 1, 118, '', 'Niaz BIn Yusuf', '', 'niaz.binyusuf@adports.ae', 'niaz.binyusuf@adports.ae', 'AD Ports', 'Manager- Corporate Finance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:11', '2019-04-11 00:02:11'),
(108, 1, 119, '', 'Prameel James Thoppil', '', 'prameel.thoppil@adports.ae', 'prameel.thoppil@adports.ae', 'AD Ports', 'Head - GL, Credit Control & RA', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:12', '2019-04-11 00:02:12'),
(109, 1, 120, '', 'Jaber Saif Mohammed Al Shehhi', '', 'jaber.alshehhi@adports.ae', 'jaber.alshehhi@adports.ae', 'AD Ports', 'Harbour Master - Musaffah & WR ports', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:13', '2019-04-11 00:02:13'),
(110, 1, 121, '', 'Stevan John Harding', '', 'stevan.harding@adports.ae', 'stevan.harding@adports.ae', 'AD Ports', 'Head of Regulations and Compliance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:14', '2019-04-11 00:02:14'),
(111, 1, 122, '', 'Hugalavalli Shrinivasa Sahana', '', 'sahana.hugalavalli@adports.ae', 'sahana.hugalavalli@adports.ae', 'AD Ports', 'Business Control Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:15', '2019-04-11 00:02:15'),
(112, 1, 123, '', 'Hanan Al Houtari', '', 'hanan.alhoutari@adports.ae', 'hanan.alhoutari@adports.ae', 'AD Ports', 'Suggestion Scheme Officer - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:15', '2019-04-11 00:02:15'),
(113, 1, 124, '', 'Emil Pellicer', '', 'emil.pellicer@adports.ae', 'emil.pellicer@adports.ae', 'AD Ports', 'General Counsel', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:16', '2019-04-11 00:02:16'),
(114, 1, 125, '', 'Alan McKeogh', '', 'alan.mckeogh@adports.ae', 'alan.mckeogh@adports.ae', 'AD Ports', 'Contracts  Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:17', '2019-04-11 00:02:17'),
(115, 1, 126, '', 'Maali Abdalla Ali Al Tamimi', '', 'maali.altamimi@adports.ae', 'maali.altamimi@adports.ae', 'AD Ports', 'Contracts Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:18', '2019-04-11 00:02:18'),
(116, 1, 127, '', 'Jason Walters', '', 'jason.walters@adports.ae', 'jason.walters@adports.ae', 'AD Ports', 'Legal Advisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:20', '2019-04-11 00:02:20'),
(117, 1, 128, '', 'Hesham Abdel Latif Hassan Mabrouk', '', 'hesham.mabrouk@adports.ae', 'hesham.mabrouk@adports.ae', 'AD Ports', 'Internal Audit Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:23', '2019-04-11 00:02:23'),
(118, 1, 129, '', 'Madyan Ibrahim Ayouch', '', 'madyan.ayouch@adports.ae', 'madyan.ayouch@adports.ae', 'AD Ports', 'Events Specialist - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:24', '2019-04-11 00:02:24'),
(119, 1, 130, '', 'Ibrahim Naji Jadallah', '', 'ibrahim.jadallah@kizad.ae', 'ibrahim.jadallah@kizad.ae', 'AD Ports', 'Business Development Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:25', '2019-04-11 00:02:25'),
(120, 1, 131, '', 'Mathew Koshy', '', 'mathew.koshy@kizad.ae', 'mathew.koshy@kizad.ae', 'AD Ports', 'Business Process & Quality Assurance Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:25', '2019-04-11 00:02:25'),
(121, 1, 132, '', 'Ahmed Ismail Mohamed Shazly', '', 'ahmed.shazly@adports.ae', 'ahmed.shazly@adports.ae', 'AD Ports', 'Marine  Superintendent', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:25', '2019-04-11 00:02:25'),
(122, 1, 133, '', 'Essam Abdulla Alemadi', '', 'essam.alemadi@adports.ae', 'essam.alemadi@adports.ae', 'AD Ports', 'Protocol  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(123, 1, 134, '', 'Ahmed Slayem Al Baloushi', '', 'ahmad.albloushi@adports.ae', 'ahmad.albloushi@adports.ae', 'AD Ports', 'Head of IT Special Projects', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(124, 1, 135, '', 'Joel Bongay', '', 'joel.bongay@safeen.ae', 'joel.bongay@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(125, 1, 136, '', 'Shareef Thalikassery Mohammed Kutty', '', 'shareef.kutty@adports.ae', 'shareef.kutty@adports.ae', 'AD Ports', 'Driver - CS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:26', '2019-04-11 00:02:26'),
(126, 1, 137, '', 'Khalid Fouad Khalil Ibrahim', '', 'khalid.ibrahim@safeen.ae', 'khalid.ibrahim@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:27', '2019-04-11 00:02:27'),
(127, 1, 138, '', 'AbdulAziz Mubarak AlBalooshi', '', 'abdulaziz.albalooshi@adports.ae', 'abdulaziz.albalooshi@adports.ae', 'AD Ports', 'Sr. Manager- Asset Management', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:27', '2019-04-11 00:02:27'),
(128, 1, 139, '', 'Khaled Mohamed Al Shareef Al Hashmi', '', 'khaled.alshareef@safeen.ae', 'khaled.alshareef@safeen.ae', 'AD Ports', 'Shared Services Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:28', '2019-04-11 00:02:28'),
(129, 1, 140, '', 'El Mostafa Amahzoune', '', 'elmostafa.amahzoune@safeen.ae', 'elmostafa.amahzoune@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:28', '2019-04-11 00:02:28'),
(130, 1, 141, '', 'Wael AbuEida', '', 'wael.abueida@safeen.ae', 'wael.abueida@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:30', '2019-04-11 00:02:30'),
(131, 1, 142, '', 'Samer Ramdan AbuObaid', '', 'samer.abuobaid@safeen.ae', 'samer.abuobaid@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:30', '2019-04-11 00:02:30'),
(132, 1, 143, '', 'Ali Suliman Ali Suliman', '', 'ali.sulaiman@safeen.ae', 'ali.sulaiman@safeen.ae', 'AD Ports', 'VTS  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:32', '2019-04-11 00:02:32'),
(133, 1, 144, '', 'Jan Hubregt Grinwis', '', 'jan.grinwis@adports.ae', 'jan.grinwis@adports.ae', 'AD Ports', 'Terminal Equipment Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:36', '2019-04-11 00:02:36'),
(134, 1, 145, '', 'Mohamed Abdelaziz Almas', '', 'mohamed.elmas@adports.ae', 'mohamed.elmas@adports.ae', 'AD Ports', 'Business Intelligence Project  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:37', '2019-04-11 00:02:37'),
(135, 1, 146, '', 'Fatema Abdul Qader Bawazeer', '', 'fatema.bawazeer@adports.ae', 'fatema.bawazeer@adports.ae', 'AD Ports', 'Project Manager  - Ports', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(136, 1, 147, '', 'Arun Anirudhan Anirudhan', '', 'arun.anirudhan@adports.ae', 'arun.anirudhan@adports.ae', 'AD Ports', 'Events Specialist - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(137, 1, 148, '', 'William Acklam', '', 'william.acklam@adports.ae', 'william.acklam@adports.ae', 'AD Ports', 'Construction  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(138, 1, 149, '', 'Thomas Geeverghees Johnson', '', 'thomas.johnson@safeen.ae', 'thomas.johnson@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(139, 1, 150, '', 'Salem Rasljanin', '', 'salem.rasljanin@adports.ae', 'salem.rasljanin@adports.ae', 'AD Ports', 'Licensing Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(140, 1, 151, '', 'Indraksha Monappa Poojary', '', 'indraksha.poojary@adports.ae', 'indraksha.poojary@adports.ae', 'AD Ports', 'Facility Management - Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:39', '2019-04-11 00:02:39'),
(141, 1, 152, '', 'Syed Ahsan Rizvi', '', 'syed.rizvi@kizad.ae', 'syed.rizvi@kizad.ae', 'AD Ports', 'Senior Document Controller', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(142, 1, 153, '', 'Maisoun Mohamed Al Mehairbi', '', 'maisoun.almehairbi@maqta.ae', 'maisoun.almehairbi@maqta.ae', 'AD Ports', 'Maqta Gateway - Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(143, 1, 154, '', 'Hesham Mohammed Hassan Al Darrai', '', 'hesham.aldarrai@kizad.ae', 'hesham.aldarrai@kizad.ae', 'AD Ports', 'Leasing Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(144, 1, 155, '', 'Tariq Mohamed Abdulla Al Sowaidi', '', 'tariq.alsowaidi@kizad.ae', 'tariq.alsowaidi@kizad.ae', 'AD Ports', 'Business Development Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(145, 1, 156, '', 'Abdul Aziz Abdulla Mohamed Al Hammadi', '', 'abdulaziz.alhammadi@safeen.ae', 'abdulaziz.alhammadi@safeen.ae', 'AD Ports', 'Sr. Manager � Navigation Services', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(146, 1, 157, '', 'Mariam Ali Hasan Al Hammadi', '', 'mariam.alhammadi@adports.ae', 'mariam.alhammadi@adports.ae', 'AD Ports', 'Business Development Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(147, 1, 158, '', 'Mohamad Ismail Mustafa Abu Ghazaleh', '', 'mohamad.abughazaleh@kizad.ae', 'mohamad.abughazaleh@kizad.ae', 'AD Ports', 'IT Interface Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:40', '2019-04-11 00:02:40'),
(148, 1, 159, '', 'Imran Aslam Khan', '', 'imranaslam.khan@kizad.ae', 'imranaslam.khan@kizad.ae', 'AD Ports', 'Business Control Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(149, 1, 160, '', 'Irfan Butt Muhammad Ikram', '', 'irfan.ikram@safeen.ae', 'irfan.ikram@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(150, 1, 161, '', 'Jevinkumar Devjibhai Tandel', '', 'jevinkumar.tandel@adports.ae', 'jevinkumar.tandel@adports.ae', 'AD Ports', 'Head of Network Services & Security', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(151, 1, 162, '', 'Shaikha Ali Al Tunaiji', '', 'shaikha.altunaiji@adports.ae', 'shaikha.altunaiji@adports.ae', 'AD Ports', 'Admin Assistant PORTS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(152, 1, 163, '', 'Mohammad Ali Moosa Al Balooshi', '', 'mohammad.albalooshi@kizad.ae', 'mohammad.albalooshi@kizad.ae', 'AD Ports', 'Sr. Manager-Free Zone Authority', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(153, 1, 164, '', 'Basheer Onmanakath', '', 'basheer.onmanakath@safeen.ae', 'basheer.onmanakath@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:41', '2019-04-11 00:02:41'),
(154, 1, 165, '', 'Rafiuddin Ahmed Ahmed', '', 'rafiuddin.ahmed@kizad.ae', 'rafiuddin.ahmed@kizad.ae', 'AD Ports', 'Sr. Urban Planner Transport', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(155, 1, 166, '', 'Alia Yaqoob Ali Al Hammadi', '', 'alia.alhammadi@adports.ae', 'alia.alhammadi@adports.ae', 'AD Ports', 'Customer Services Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(156, 1, 167, '', 'AbdelRahman Zainal Mirza Al Maazmi', '', 'abdelrahman.almaazmi@adports.ae', 'abdelrahman.almaazmi@adports.ae', 'AD Ports', 'Security  Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:42', '2019-04-11 00:02:42'),
(157, 1, 168, '', 'Wafaa Obaid Sultan Al Zaabi', '', 'wafaa.alzaabi@adports.ae', 'wafaa.alzaabi@adports.ae', 'AD Ports', 'Security Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(158, 1, 169, '', 'William James Lawrence', '', 'william.lawrence@adports.ae', 'william.lawrence@adports.ae', 'AD Ports', 'Senior Project Manager - PM', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(159, 1, 170, '', 'Mathew Joy', '', 'mathew.joy@safeen.ae', 'mathew.joy@safeen.ae', 'AD Ports', 'Sr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:43', '2019-04-11 00:02:43'),
(160, 1, 171, '', 'Girivasan Nedunsezhiyan', '', 'Girivasan.Nedunsezhi@adports.ae', 'Girivasan.Nedunsezhi@adports.ae', 'AD Ports', 'Sr. ERP Support Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:44', '2019-04-11 00:02:44'),
(161, 1, 172, '', 'John Randolph Ewing', '', 'john.ewing@adports.ae', 'john.ewing@adports.ae', 'AD Ports', 'Marketing and Logistics Solution  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:44', '2019-04-11 00:02:44'),
(162, 1, 173, '', 'Mansoor Mohamed Mejren Al Marar', '', 'mansoor.almarar@kizad.ae', 'mansoor.almarar@kizad.ae', 'AD Ports', 'Business Development Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:46', '2019-04-11 00:02:46'),
(163, 1, 174, '', 'Hamid Ahmed Mohammed', '', 'hamid.mohammed@adports.ae', 'hamid.mohammed@adports.ae', 'AD Ports', 'Network Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:46', '2019-04-11 00:02:46'),
(164, 1, 175, '', 'Adnan Ibrahim Al Ahmadi', '', 'adnan.alahmadi@safeen.ae', 'adnan.alahmadi@safeen.ae', 'AD Ports', 'Jr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(165, 1, 176, '', 'Rashid Mohamed Al Marzooqi', '', 'rashid.almarzooqi@adports.ae', 'rashid.almarzooqi@adports.ae', 'AD Ports', 'Relationship Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(166, 1, 177, '', 'Saeed Mohamed Al Falasi', '', 'saeed.alfalasi@safeen.ae', 'saeed.alfalasi@safeen.ae', 'AD Ports', 'Sr.Manager - Port Services', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:47', '2019-04-11 00:02:47'),
(167, 1, 178, '', 'Hamed Abdulla Abbas', '', 'hamed.abbas@kizad.ae', 'hamed.abbas@kizad.ae', 'AD Ports', 'Senior Executive - Business Development', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(168, 1, 179, '', 'Abdul Aziz Rashed Al Yammahi', '', 'abdulaziz.alyammahi@kizad.ae', 'abdulaziz.alyammahi@kizad.ae', 'AD Ports', 'Sr. Registration & Licensing Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(169, 1, 180, '', 'Eiman Ahmed Al Nuaimi', '', 'eiman.alnuaimi@adports.ae', 'eiman.alnuaimi@adports.ae', 'AD Ports', 'Sr. Accountatnt Revenue', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(170, 1, 181, '', 'Mohamed Razeed', '', 'mohamed.razeed@adports.ae', 'mohamed.razeed@adports.ae', 'AD Ports', 'Facility Management - Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:49', '2019-04-11 00:02:49'),
(171, 1, 182, '', 'Ahmed Khamis Al Khemeiri', '', 'ahmed.alkhemeiri@adports.ae', 'ahmed.alkhemeiri@adports.ae', 'AD Ports', 'Talent  Acquisition Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(172, 1, 183, '', 'Khalid Taleb Al Teneiji', '', 'khalid.alteneiji@kizad.ae', 'khalid.alteneiji@kizad.ae', 'AD Ports', 'Leasing Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(173, 1, 184, '', 'Hani Waheed Dean', '', 'hani.dean@kizad.ae', 'hani.dean@kizad.ae', 'AD Ports', 'Document Controller Customer Service', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:50', '2019-04-11 00:02:50'),
(174, 1, 185, '', 'Talal Mohamed Eid', '', 'talal.eid@adports.ae', 'talal.eid@adports.ae', 'AD Ports', 'Sr.HR Business Partner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:51', '2019-04-11 00:02:51'),
(175, 1, 186, '', 'Shaima Ismail Al Beshr', '', 'shaima.shaheen@adports.ae', 'shaima.shaheen@adports.ae', 'AD Ports', 'Legal Advisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:51', '2019-04-11 00:02:51'),
(176, 1, 187, '', 'Pradeep Kumar Nair', '', 'pradeep.nair@safeen.ae', 'pradeep.nair@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(177, 1, 188, '', 'Ayesha Ebrahim Al Marzooqi', '', 'ayesha.almarzooqi@adports.ae', 'ayesha.almarzooqi@adports.ae', 'AD Ports', 'Internal Auditor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(178, 1, 189, '', 'Haifa Abdul Wahab Al Khoori', '', 'haifa.khoori@adports.ae', 'haifa.khoori@adports.ae', 'AD Ports', 'Communication Specialist - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(179, 1, 190, '', 'Obaid Mohammed obaid Al Zaabi', '', 'obaid.alzaabi@adports.ae', 'obaid.alzaabi@adports.ae', 'AD Ports', 'Sr. HR Business Partner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(180, 1, 191, '', 'Mahra Abdulla Al Shamsi', '', 'mahra.alshamsi@adports.ae', 'mahra.alshamsi@adports.ae', 'AD Ports', 'HSEQ Officer.', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:52', '2019-04-11 00:02:52'),
(181, 1, 192, '', 'Khameis Abdulla Al Kaabi', '', 'khameis.alkaabi@adports.ae', 'khameis.alkaabi@adports.ae', 'AD Ports', 'Fire Services Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:53', '2019-04-11 00:02:53'),
(182, 1, 193, '', 'Saeed Abdul Rahim', '', 'saeed.abdulrahim@adports.ae', 'saeed.abdulrahim@adports.ae', 'AD Ports', 'Fire Safety Inspector', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:53', '2019-04-11 00:02:53'),
(183, 1, 194, '', 'Janat khan Gul bad shah Khan', '', 'janat.khan@adports.ae', 'janat.khan@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(184, 1, 195, '', 'Ajantha Wijesingha', '', 'ajantha.wijesingha@adports.ae', 'ajantha.wijesingha@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(185, 1, 196, '', 'Mehmet Yildirim', '', 'mehmet.yildirim@adports.ae', 'mehmet.yildirim@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(186, 1, 197, '', 'Ahmet Yilmaz', '', 'ahmet.yilmaz@adports.ae', 'ahmet.yilmaz@adports.ae', 'AD Ports', 'Station Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:54', '2019-04-11 00:02:54'),
(187, 1, 198, '', 'Ala Muhsen Hamdoni', '', 'ala.hamdoni@adports.ae', 'ala.hamdoni@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(188, 1, 199, '', 'Zakaryya Hasan Abu Qraiyan', '', 'zakaryya.abuqraiyan@adports.ae', 'zakaryya.abuqraiyan@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(189, 1, 200, '', 'Abdallah Ahmad Abu Rayyash', '', 'abdallah.aburayyash@adports.ae', 'abdallah.aburayyash@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(190, 1, 201, '', 'Haydar Kulug', '', 'haydar.kulug@adports.ae', 'haydar.kulug@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:55', '2019-04-11 00:02:55'),
(191, 1, 202, '', 'Ahmed Abdulla Saif Al Teneiji', '', 'ahmed.alteneiji@adports.ae', 'ahmed.alteneiji@adports.ae', 'AD Ports', 'Customer Service Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:56', '2019-04-11 00:02:56'),
(192, 1, 203, '', 'Mohamed Hasan Awadh Al Menhali', '', 'mohamed.almenhali@adports.ae', 'mohamed.almenhali@adports.ae', 'AD Ports', 'Customer Services Representative - Reception Desk', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(193, 1, 204, '', 'Hamad Ebrahim Mohamed Al Maghrabi', '', 'hamad.almaghrabi@safeen.ae', 'hamad.almaghrabi@safeen.ae', 'AD Ports', 'MS Operations General Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(194, 1, 205, '', 'Fungai Musakwa', '', 'fungai.musakwa@adports.ae', 'fungai.musakwa@adports.ae', 'AD Ports', 'Lead Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(195, 1, 206, '', 'Eisa Abdulla Ahmed Mohamed', '', 'eisa.mohamed@adports.ae', 'eisa.mohamed@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(196, 1, 207, '', 'Salman Saleh Mohamed Al Karbi', '', 'salman.alkarabi@adports.ae', 'salman.alkarabi@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:57', '2019-04-11 00:02:57'),
(197, 1, 208, '', 'Adnan Sadiq', '', 'adnan.sadiq@adports.ae', 'adnan.sadiq@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:58', '2019-04-11 00:02:58'),
(198, 1, 209, '', 'Abigail Ragudo', '', 'abigail.ragudo@adports.ae', 'abigail.ragudo@adports.ae', 'AD Ports', 'Contracts Executive', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(199, 1, 210, '', 'Rashed Mohammad Al Suwaidi', '', 'rashed.alsuwaidi@adports.ae', 'rashed.alsuwaidi@adports.ae', 'AD Ports', 'Accountant - AP', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:59', '2019-04-11 00:02:59');
INSERT INTO `program_users` (`id`, `program_id`, `account_id`, `title`, `first_name`, `last_name`, `email`, `username`, `company`, `job_title`, `address_1`, `address_2`, `town`, `postcode`, `country`, `telephone`, `mobile`, `date_of_birth`, `communication_preference`, `language`, `created_at`, `updated_at`) VALUES
(200, 1, 211, '', 'Shaikha Rahma Al Zaabi', '', 'sheikha.alzaabi@adports.ae', 'sheikha.alzaabi@adports.ae', 'AD Ports', 'Events Specialist - S&C', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(201, 1, 212, '', 'Wajid Saeedullah Jan Khan', '', 'wajid.khan@adports.ae', 'wajid.khan@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(202, 1, 213, '', 'Sameera Sulaiman Al Seiari', '', 'sameera.alseiari@adports.ae', 'sameera.alseiari@adports.ae', 'AD Ports', 'General  Service Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:02:59', '2019-04-11 00:02:59'),
(203, 1, 214, '', 'Rami Yousef Allan', '', 'rami.allan@kizad.ae', 'rami.allan@kizad.ae', 'AD Ports', 'Business Analyst-IZ', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:00', '2019-04-11 00:03:00'),
(204, 1, 215, '', 'Maysoon Hamdi Taha Hijazi', '', 'maysoon.hijazi@adports.ae', 'maysoon.hijazi@adports.ae', 'AD Ports', 'Process Analyst - Ports', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:00', '2019-04-11 00:03:00'),
(205, 1, 216, '', 'Mubarak Mohamed Al Mazrouei', '', 'mubarak.almazrouei@adports.ae', 'mubarak.almazrouei@adports.ae', 'AD Ports', 'Port Manager -  Al Dhafra Region', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(206, 1, 217, '', 'Vikramjeet Singh', '', 'vikramjeet.singh@adports.ae', 'vikramjeet.singh@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(207, 1, 218, '', 'Ibrahim Mohamed Al Blooshi', '', 'ibrahim.alblooshi@adports.ae', 'ibrahim.alblooshi@adports.ae', 'AD Ports', 'Security Systems Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:01', '2019-04-11 00:03:01'),
(208, 1, 219, '', 'Hasanuddin Sunduseng', '', 'hasanuddin.sunduseng@safeen.ae', 'hasanuddin.sunduseng@safeen.ae', 'AD Ports', 'Tug Master - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(209, 1, 220, '', 'Mohammad Ahmed Turki', '', 'mohamed.turki@adports.ae', 'mohamed.turki@adports.ae', 'AD Ports', 'KP Head of Security/PFSO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(210, 1, 221, '', 'Faten Saber Ibrahim', '', 'faten.ibrahim@adports.ae', 'faten.ibrahim@adports.ae', 'AD Ports', 'Office Manager - CEO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(211, 1, 222, '', 'Suood Jasim Ibrahim Al Mahmeed', '', 'suood.almahmeed@adports.ae', 'suood.almahmeed@adports.ae', 'AD Ports', 'Assistant Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(212, 1, 223, '', 'Afra Obaid Al Suwaidi', '', 'afra.alsuwaidi@kizad.ae', 'afra.alsuwaidi@kizad.ae', 'AD Ports', 'Sr. Admin Assistant IZ', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:02', '2019-04-11 00:03:02'),
(213, 1, 224, '', 'Mussa Mubarak Al Zaabi', '', 'mussa.alzaabi@adports.ae', 'mussa.alzaabi@adports.ae', 'AD Ports', 'Senior Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:03', '2019-04-11 00:03:03'),
(214, 1, 225, '', 'Joeward Zingambe', '', 'joeward.zingambe@adports.ae', 'joeward.zingambe@adports.ae', 'AD Ports', 'Lead Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:04', '2019-04-11 00:03:04'),
(215, 1, 226, '', 'Sukhwant Singh Ahluwalia', '', 'sukhwant.ahluwalia@safeen.ae', 'sukhwant.ahluwalia@safeen.ae', 'AD Ports', 'Sr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:04', '2019-04-11 00:03:04'),
(216, 1, 227, '', 'Dhiman Chowdhury', '', 'dhiman.chowdhury@safeen.ae', 'dhiman.chowdhury@safeen.ae', 'AD Ports', 'Commercial  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:05', '2019-04-11 00:03:05'),
(217, 1, 228, '', 'AbdulQader Murad', '', 'abdulqader.murad@adports.ae', 'abdulqader.murad@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:05', '2019-04-11 00:03:05'),
(218, 1, 229, '', 'Abdulla Turki Al Baloushi', '', 'abdulla.albaloushi@adports.ae', 'abdulla.albaloushi@adports.ae', 'AD Ports', 'Ports Security Supervisor (Patrol) - Ports', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:06', '2019-04-11 00:03:06'),
(219, 1, 230, '', 'Malek Mohammed Al Shehhi', '', 'malek.alshehhi@safeen.ae', 'malek.alshehhi@safeen.ae', 'AD Ports', 'Jr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:06', '2019-04-11 00:03:06'),
(220, 1, 231, '', 'Ebrahim Saif Al Shehhi', '', 'ebrahim.alshehhi@adports.ae', 'ebrahim.alshehhi@adports.ae', 'AD Ports', 'Security Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:07', '2019-04-11 00:03:07'),
(221, 1, 232, '', 'Sreekumar Puthan Sreedharan', '', 'sreekumar.sreedharan@safeen.ae', 'sreekumar.sreedharan@safeen.ae', 'AD Ports', 'Mechanic-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:08', '2019-04-11 00:03:08'),
(222, 1, 233, '', 'Hedaya Abdulla Al Hammadi', '', 'hedaya.alhammadi@kizad.ae', 'hedaya.alhammadi@kizad.ae', 'AD Ports', 'Urban Planner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(223, 1, 234, '', 'Naser Moh\'d Mansour', '', 'naser.mansour@adports.ae', 'naser.mansour@adports.ae', 'AD Ports', 'OHS Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(224, 1, 235, '', 'Suhail Khamis Al Naeimi', '', 'suhail.alnaeimi@adports.ae', 'suhail.alnaeimi@adports.ae', 'AD Ports', 'Fire Fighter', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:09', '2019-04-11 00:03:09'),
(225, 1, 236, '', 'Noura Fadhel Al Obeidli', '', 'noura.alobaidli@adports.ae', 'noura.alobaidli@adports.ae', 'AD Ports', 'Ports Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:10', '2019-04-11 00:03:10'),
(226, 1, 237, '', 'Sanjeev Sharma', '', 'sanjeev.sharma@adports.ae', 'sanjeev.sharma@adports.ae', 'AD Ports', 'Environment Specialist � KP', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:11', '2019-04-11 00:03:11'),
(227, 1, 238, '', 'Jakir Hussain Khader Mohideen Mohammed Dawood Khader', '', 'khader.hussain@adports.ae', 'khader.hussain@adports.ae', 'AD Ports', 'Planner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(228, 1, 239, '', 'Mohamed Eidha Tannaf Al Menhali', '', 'mohamed.eidhaalmenha@adports.ae', 'mohamed.eidhaalmenha@adports.ae', 'AD Ports', 'Vice President - Corporate Procurement', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(229, 1, 240, '', 'Mohammed Abdullah Khamis', '', 'mohammed.khamis@adports.ae', 'mohammed.khamis@adports.ae', 'AD Ports', 'HM Coordinator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:12', '2019-04-11 00:03:12'),
(230, 1, 241, '', 'Hanan Yousef Al Mansoori', '', 'hanan.almansoori@adports.ae', 'hanan.almansoori@adports.ae', 'AD Ports', 'General  Service Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(231, 1, 242, '', 'Amy Clare Lehoczky', '', 'amy.lehoczky@kizad.ae', 'amy.lehoczky@kizad.ae', 'AD Ports', 'Estidama Specialist', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(232, 1, 243, '', 'Manoj Leelamma', '', 'manoj.leelamma@safeen.ae', 'manoj.leelamma@safeen.ae', 'AD Ports', 'AtoN  Technician', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(233, 1, 244, '', 'Salma Musabbeh Al Meqbali', '', 'salma.almeqbali@adports.ae', 'salma.almeqbali@adports.ae', 'AD Ports', 'Resourcing Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(234, 1, 245, '', 'John Victor Lindsay', '', 'john.lindsay@kizad.ae', 'john.lindsay@kizad.ae', 'AD Ports', 'Senior Urban Planner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:13', '2019-04-11 00:03:13'),
(235, 1, 246, '', 'Abdulla Salem Al Braiki', '', 'abdulla.albraiki@kizad.ae', 'abdulla.albraiki@kizad.ae', 'AD Ports', 'Business Center Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:14', '2019-04-11 00:03:14'),
(236, 1, 247, '', 'Naser Rashed Al Busaeedi', '', 'naser.albusaeedi@adports.ae', 'naser.albusaeedi@adports.ae', 'AD Ports', 'KP-Terminal Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:14', '2019-04-11 00:03:14'),
(237, 1, 248, '', 'Rashed Al Amir Al Sheryani', '', 'rashed.alsheryani@adports.ae', 'rashed.alsheryani@adports.ae', 'AD Ports', 'Constructability Engineer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(238, 1, 249, '', 'Abdul Lathief Mohamed Pathikundil', '', 'abdullathief.pathikundil@safeen.ae', 'abdullathief.pathikundil@safeen.ae', 'AD Ports', 'Store  Keeper', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(239, 1, 250, '', 'Abdul Nasar Kalathile Purayil', '', 'abdulnasar.purayil@safeen.ae', 'abdulnasar.purayil@safeen.ae', 'AD Ports', 'Technician-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(240, 1, 251, '', 'Abdulla Abu Bakir Ali', '', 'abdulla.ali@safeen.ae', 'abdulla.ali@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:15', '2019-04-11 00:03:15'),
(241, 1, 252, '', 'Abdulla Mohammed Kunhi', '', 'abdulla.kunhi@safeen.ae', 'abdulla.kunhi@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(242, 1, 253, '', 'Adam Sally', '', 'adam.sally@safeen.ae', 'adam.sally@safeen.ae', 'AD Ports', 'Technician-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(243, 1, 254, '', 'Akbar Ali Muhammad', '', 'akbar.muhammad@safeen.ae', 'akbar.muhammad@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(244, 1, 255, '', 'Akram Mohd. Al Shalabi', '', 'akram.alshalabi@safeen.ae', 'akram.alshalabi@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(245, 1, 256, '', 'Ali Abdulla Al Hammadi', '', 'ali.alhammadi@safeen.ae', 'ali.alhammadi@safeen.ae', 'AD Ports', 'Jetty Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:16', '2019-04-11 00:03:16'),
(246, 1, 257, '', 'Ali Dawood Mohamed', '', 'ali.mohamed@safeen.ae', 'ali.mohamed@safeen.ae', 'AD Ports', 'Sr.Manager - Marine Services', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:17', '2019-04-11 00:03:17'),
(247, 1, 258, '', 'Aman Salem Obaid', '', 'aman.obaid@safeen.ae', 'aman.obaid@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(248, 1, 259, '', 'Badar Mohammed saif Al Kaabi', '', 'badiar.alkaabi@safeen.ae', 'badiar.alkaabi@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(249, 1, 260, '', 'Bakar Hassan Mohammed', '', 'bakar.mohammed@safeen.ae', 'bakar.mohammed@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(250, 1, 261, '', 'Fahad Salem saif Al Kaabi', '', 'fahad.alkaabi@safeen.ae', 'fahad.alkaabi@safeen.ae', 'AD Ports', 'Tug Master - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:18', '2019-04-11 00:03:18'),
(251, 1, 262, '', 'Fahed Rached Mesrb', '', 'fahed.mesrb@safeen.ae', 'fahed.mesrb@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(252, 1, 263, '', 'Hamad Saeed Almarshoudi', '', 'hamad.almarshoudi@safeen.ae', 'hamad.almarshoudi@safeen.ae', 'AD Ports', 'Jr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(253, 1, 264, '', 'Hareb Mohamed Al Hamairi', '', 'hareb.alhamairi@safeen.ae', 'hareb.alhamairi@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(254, 1, 265, '', 'Haris Mamu Muttathody', '', 'haris.muttathody@safeen.ae', 'haris.muttathody@safeen.ae', 'AD Ports', '3 Ton Pick up Driver', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:19', '2019-04-11 00:03:19'),
(255, 1, 266, '', 'Hassan Hussain Shamby', '', 'hassan.shamby@safeen.ae', 'hassan.shamby@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:20', '2019-04-11 00:03:20'),
(256, 1, 267, '', 'Hilal Musabah Al Naimi', '', 'hilal.alnaimi@safeen.ae', 'hilal.alnaimi@safeen.ae', 'AD Ports', 'Tug Master - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:20', '2019-04-11 00:03:20'),
(257, 1, 268, '', 'Husain Abdulla Al Marzooqi', '', 'husain.almarzooqi@safeen.ae', 'husain.almarzooqi@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(258, 1, 269, '', 'Ibrahim Ahmed Shaalan', '', 'ibrahim.shaalan@safeen.ae', 'ibrahim.shaalan@safeen.ae', 'AD Ports', 'Sr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(259, 1, 270, '', 'Ibrahim Eisa mohammed Alhosani', '', 'ibrahim.alhosani@safeen.ae', 'ibrahim.alhosani@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(260, 1, 271, '', 'Jadeed Saeed Al Hameli', '', 'jadeed.alhameli@safeen.ae', 'jadeed.alhameli@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:21', '2019-04-11 00:03:21'),
(261, 1, 272, '', 'Kamal Abdullah Abdo Al Kubati', '', 'kamal.alkubati@safeen.ae', 'kamal.alkubati@safeen.ae', 'AD Ports', 'VTS  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(262, 1, 273, '', 'Khalid Naser Al Aameri', '', 'khalid.alaameri@safeen.ae', 'khalid.alaameri@safeen.ae', 'AD Ports', 'Tug Master - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(263, 1, 274, '', 'Khamis Salem Alromaithi', '', 'khamis.alromaithi@safeen.ae', 'khamis.alromaithi@safeen.ae', 'AD Ports', 'Tug Services  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(264, 1, 275, '', 'M\' Barek El Hafidi', '', 'mbarek.elhafidi@safeen.ae', 'mbarek.elhafidi@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:22', '2019-04-11 00:03:22'),
(265, 1, 276, '', 'Mahmood Khalfan Alalili', '', 'mahmood.alalili@safeen.ae', 'mahmood.alalili@safeen.ae', 'AD Ports', 'Pilot - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:23', '2019-04-11 00:03:23'),
(266, 1, 277, '', 'Majdi Abd El Aziz', '', 'majdi.saleem@safeen.ae', 'majdi.saleem@safeen.ae', 'AD Ports', 'HSEQ  Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:23', '2019-04-11 00:03:23'),
(267, 1, 278, '', 'Mark Anthony Laureles', '', 'mark.laureles@safeen.ae', 'mark.laureles@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(268, 1, 279, '', 'Mohamed Shameer Poolad', '', 'mohamed.poolad@safeen.ae', 'mohamed.poolad@safeen.ae', 'AD Ports', 'Job  Planner', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(269, 1, 280, '', 'Mohammed Fareed Ahmed', '', 'mohammed.ahmed@safeen.ae', 'mohammed.ahmed@safeen.ae', 'AD Ports', 'Tug Master - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(270, 1, 281, '', 'Montu Gomes', '', 'montu.gomes@safeen.ae', 'montu.gomes@safeen.ae', 'AD Ports', 'Electrician-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:24', '2019-04-11 00:03:24'),
(271, 1, 282, '', 'Muhammad Arif Muhd Sadiq', '', 'muhammad.sadiq@safeen.ae', 'muhammad.sadiq@safeen.ae', 'AD Ports', 'OSR  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:25', '2019-04-11 00:03:25'),
(272, 1, 283, '', 'Nizar Mahmoud Al Sayed', '', 'nizar.alsayed@safeen.ae', 'nizar.alsayed@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:25', '2019-04-11 00:03:25'),
(273, 1, 284, '', 'Obaid Jaed Al Hameeri', '', 'obaid.alhameeri@safeen.ae', 'obaid.alhameeri@safeen.ae', 'AD Ports', 'Sr.Manager - Fleet Maintenance', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(274, 1, 285, '', 'Oli Mohd. Baker Wdeen', '', 'oli.bakerwdeen@safeen.ae', 'oli.bakerwdeen@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(275, 1, 286, '', 'Ramel Abrogar Padel', '', 'ramel.padel@safeen.ae', 'ramel.padel@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(276, 1, 287, '', 'Ramzi A.Malek Yahya', '', 'ramzi.yahya@safeen.ae', 'ramzi.yahya@safeen.ae', 'AD Ports', 'OSR  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:26', '2019-04-11 00:03:26'),
(277, 1, 288, '', 'Reynaldo Trujillo Montano', '', 'reynaldo.montano@safeen.ae', 'reynaldo.montano@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(278, 1, 289, '', 'Sadar Hussain Ghulam', '', 'sadar.ghulam@safeen.ae', 'sadar.ghulam@safeen.ae', 'AD Ports', 'Jetty Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(279, 1, 290, '', 'Saeed Mahmood Emam', '', 'saeed.emam@safeen.ae', 'saeed.emam@safeen.ae', 'AD Ports', 'Sr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:27', '2019-04-11 00:03:27'),
(280, 1, 291, '', 'Safi Abdul Aziz Al Barazi', '', 'safi.albarazi@safeen.ae', 'safi.albarazi@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:28', '2019-04-11 00:03:28'),
(281, 1, 292, '', 'Sahib Janan Mohammad', '', 'sahib.mohammad@safeen.ae', 'sahib.mohammad@safeen.ae', 'AD Ports', 'Jr.VTS Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:28', '2019-04-11 00:03:28'),
(282, 1, 293, '', 'Said Ali Sharif', '', 'said.sharif@safeen.ae', 'said.sharif@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(283, 1, 294, '', 'Saleh Mohamed Ba Abbad', '', 'saleh.baabbad@safeen.ae', 'saleh.baabbad@safeen.ae', 'AD Ports', 'OSR Manager', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(284, 1, 295, '', 'Shady Hamdy Abdou Soliman', '', 'shady.abdousoliman@safeen.ae', 'shady.abdousoliman@safeen.ae', 'AD Ports', 'VTS  Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(285, 1, 296, '', 'Shaukatali Ishaque Fakir Mohammed Dabir', '', 'shaukat.ishaque@safeen.ae', 'shaukat.ishaque@safeen.ae', 'AD Ports', 'Maintenance Supervisor - MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(286, 1, 297, '', 'Suleiman Abdalla Salim', '', 'suleiman.salim@safeen.ae', 'suleiman.salim@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:29', '2019-04-11 00:03:29'),
(287, 1, 298, '', 'Tarek Chouep Charaf Eddin', '', 'tarek.charafeddine@safeen.ae', 'tarek.charafeddine@safeen.ae', 'AD Ports', 'Sr.Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(288, 1, 299, '', 'Ulysses Cafe Tadena', '', 'ulysses.tadena@safeen.ae', 'ulysses.tadena@safeen.ae', 'AD Ports', 'Rigger', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(289, 1, 300, '', 'Vinod Ramachandran Pillai', '', 'vinod.pillai@safeen.ae', 'vinod.pillai@safeen.ae', 'AD Ports', 'Mechanic-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:30', '2019-04-11 00:03:30'),
(290, 1, 301, '', 'Waheed Mahmoud Abbuas', '', 'waheed.abbas@safeen.ae', 'waheed.abbas@safeen.ae', 'AD Ports', 'VTS  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(291, 1, 302, '', 'Waleed Saleh Al Dob', '', 'waleed.aldob@safeen.ae', 'waleed.aldob@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(292, 1, 303, '', 'Younis Mohamed Al Marzouqi', '', 'younis.almarzouqi@safeen.ae', 'younis.almarzouqi@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:31', '2019-04-11 00:03:31'),
(293, 1, 304, '', 'Youssef Ouassifi', '', 'youssef.ouassifi@safeen.ae', 'youssef.ouassifi@safeen.ae', 'AD Ports', 'Skipper-MS', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(294, 1, 305, '', 'Zaal Jumaa Al Meraikhi', '', 'zaal.almeraikhi@safeen.ae', 'zaal.almeraikhi@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(295, 1, 306, '', 'Lazaro Jr Ballnbin Arzadon', '', 'lazarojr.arzadon@safeen.ae', 'lazarojr.arzadon@safeen.ae', 'AD Ports', 'Able Seaman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(296, 1, 307, '', 'Mohamed Abid Siddic', '', 'mohamed.siddic@safeen.ae', 'mohamed.siddic@safeen.ae', 'AD Ports', 'Motorman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(297, 1, 308, '', 'Rashid Saeed Almoreikhi', '', 'rashid.almoreikhi@safeen.ae', 'rashid.almoreikhi@safeen.ae', 'AD Ports', 'Towage Pilot', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:32', '2019-04-11 00:03:32'),
(298, 1, 309, '', 'Khulood Saleh Al Badri', '', 'khulood.albadri@adports.ae', 'khulood.albadri@adports.ae', 'AD Ports', 'HSE Management System Specialist - CEO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:33', '2019-04-11 00:03:33'),
(299, 1, 310, '', 'Khadhar Batcha shaik mydeen Mydeen', '', 'khadhar.mydeen@adports.ae', 'khadhar.mydeen@adports.ae', 'AD Ports', 'Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:33', '2019-04-11 00:03:33'),
(300, 1, 311, '', 'Arnold Samson', '', 'arnold.samson@adports.ae', 'arnold.samson@adports.ae', 'AD Ports', 'CFS Checker', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:34', '2019-04-11 00:03:34'),
(301, 1, 312, '', 'Cheriya Saleem', '', 'cheriya.saleem@adports.ae', 'cheriya.saleem@adports.ae', 'AD Ports', 'Assistant Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:34', '2019-04-11 00:03:34'),
(302, 1, 313, '', 'Mosa Bushra Al Alawi', '', 'mosa.alawadi@adports.ae', 'mosa.alawadi@adports.ae', 'AD Ports', 'CFS Superintendent', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:34', '2019-04-11 00:03:34'),
(303, 1, 314, '', 'Ian Rupert Partridge', '', 'ian.partridge@adports.ae', 'ian.partridge@adports.ae', 'AD Ports', 'Vice President - Programme Management', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:35', '2019-04-11 00:03:35'),
(304, 1, 315, '', 'Abdalla Mohamed Karsi', '', 'abdalla.hassan@adports.ae', 'abdalla.hassan@adports.ae', 'AD Ports', 'Assistant Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:35', '2019-04-11 00:03:35'),
(305, 1, 316, '', 'Bilal Baseel Moidunni', '', 'bilal.baseel@adports.ae', 'bilal.baseel@adports.ae', 'AD Ports', 'Assistant Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:36', '2019-04-11 00:03:36'),
(306, 1, 317, '', 'Fady Mohamed Hasan', '', 'fady.hassan@adports.ae', 'fady.hassan@adports.ae', 'AD Ports', 'CFS Checker', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:36', '2019-04-11 00:03:36'),
(307, 1, 318, '', 'Yassin Omar Abdi', '', 'yassin.abdi@adports.ae', 'yassin.abdi@adports.ae', 'AD Ports', 'MS Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:37', '2019-04-11 00:03:37'),
(308, 1, 319, '', 'Ghulam Azam Muhamed Shah', '', 'ghulam.azam@adports.ae', 'ghulam.azam@adports.ae', 'AD Ports', 'MS Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:38', '2019-04-11 00:03:38'),
(309, 1, 320, '', 'Mubarak Abdulhameed Al Shumiri', '', 'mubarak.alshumiri@adports.ae', 'mubarak.alshumiri@adports.ae', 'AD Ports', 'Multi Skilled Operator', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:39', '2019-04-11 00:03:39'),
(310, 1, 321, '', 'Enock Franklin Jojo Dadson', '', 'enock.dadson@safeen.ae', 'enock.dadson@safeen.ae', 'AD Ports', 'Motorman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:39', '2019-04-11 00:03:39'),
(311, 1, 322, '', 'Geovanne Jr Capotero Apostol', '', 'geovanne.apostol@safeen.ae', 'geovanne.apostol@safeen.ae', 'AD Ports', 'Motorman', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:40', '2019-04-11 00:03:40'),
(312, 1, 323, '', 'Gameel Ali Al Ameri', '', 'gamil.alameri@adports.ae', 'gamil.alameri@adports.ae', 'AD Ports', 'Clerk', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:41', '2019-04-11 00:03:41'),
(313, 1, 324, '', 'Abdullah Nasser Al Yafeai', '', 'abdullah.alyafeai@adports.ae', 'abdullah.alyafeai@adports.ae', 'AD Ports', 'Clerk', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:42', '2019-04-11 00:03:42'),
(314, 1, 325, '', 'Ibrahim Hasan Al Khoori', '', 'ibrahim.alkhoori@adports.ae', 'ibrahim.alkhoori@adports.ae', 'AD Ports', 'Operation Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(315, 1, 326, '', 'Khalid Mohamed Al Qubaisi', '', 'khalid.alqubaisi@adports.ae', 'khalid.alqubaisi@adports.ae', 'AD Ports', 'Operation Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(316, 1, 327, '', 'Aweis Ahmed Haji', '', 'aweis.haji@adports.ae', 'aweis.haji@adports.ae', 'AD Ports', 'Clerk', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(317, 1, 328, '', 'Husain Saleh Najad', '', 'husain.najad@adports.ae', 'husain.najad@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(318, 1, 329, '', 'Khalid Saeed Alzaabi', '', 'khalid.alzaabi@adports.ae', 'khalid.alzaabi@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:43', '2019-04-11 00:03:43'),
(319, 1, 330, '', 'Gharib Mahdi Al Ahbabi', '', 'gharib.alahbabi@adports.ae', 'gharib.alahbabi@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(320, 1, 331, '', 'Eliser Eliser Fernandez Sr. Fernandez', '', 'eliser.fernandez@safeen.ae', 'eliser.fernandez@safeen.ae', 'AD Ports', 'AtoN  Supervisor', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(321, 1, 332, '', 'Salem Abdulla Ali Al Ali', '', 'salemabdulla.alali@adports.ae', 'salemabdulla.alali@adports.ae', 'AD Ports', 'Operations Superintendent', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(322, 1, 333, '', 'Ali Obaid Al Zaabi', '', 'ali.alzaabi@adports.ae', 'ali.alzaabi@adports.ae', 'AD Ports', 'Operations Superintendent', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:44', '2019-04-11 00:03:44'),
(323, 1, 334, '', 'Mohamed Nabel Ahmed Al Buainain', '', 'mohamed.albuainain@adports.ae', 'mohamed.albuainain@adports.ae', 'AD Ports', 'ZP Head of Security/PFSO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:45', '2019-04-11 00:03:45'),
(324, 1, 335, '', 'Mohsin Rashed Saeed', '', 'mohsin.saeed@adports.ae', 'mohsin.saeed@adports.ae', 'AD Ports', 'Sr. Port Pass Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(325, 1, 336, '', 'Talib Saeed Al Kathiri', '', 'talib.alkathiri@adports.ae', 'talib.alkathiri@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(326, 1, 337, '', 'Jamal Yousef Al Blooshi', '', 'jamal.alblooshi@adports.ae', 'jamal.alblooshi@adports.ae', 'AD Ports', 'Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(327, 1, 338, '', 'Ahmed Salem Al Shebli', '', 'ahmed.alshebli@adports.ae', 'ahmed.alshebli@adports.ae', 'AD Ports', 'Senior Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(328, 1, 339, '', 'Fatima Ali Al Hammadi', '', 'fatima.alhammadi@adports.ae', 'fatima.alhammadi@adports.ae', 'AD Ports', 'Security Management System Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:46', '2019-04-11 00:03:46'),
(329, 1, 340, '', 'Asma Mohamed Al Nuaimi', '', 'asma.alnuaimi@adports.ae', 'asma.alnuaimi@adports.ae', 'AD Ports', 'Customer Service Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(330, 1, 341, '', 'Amna Rashed Al Rashdi', '', 'amna.alrashdi@adports.ae', 'amna.alrashdi@adports.ae', 'AD Ports', 'Sr. Port Pass Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(331, 1, 342, '', 'Abdul Haq Ahmed Saleh Al Afeefi', '', 'abdulhaq.alafeefi@adports.ae', 'abdulhaq.alafeefi@adports.ae', 'AD Ports', 'Security Supervisor/DPFSO', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(332, 1, 343, '', 'Musallam Saeed Al Rashedi', '', 'musallam.alrashdi@kizad.ae', 'musallam.alrashdi@kizad.ae', 'AD Ports', 'Sr. Manager - Technical Interface & Facility Managment', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:47', '2019-04-11 00:03:47'),
(333, 1, 344, '', 'Mohammed Bader Al Obeidli', '', 'mohammed.alobeidli@adports.ae', 'mohammed.alobeidli@adports.ae', 'AD Ports', 'Customer Service  Representative', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:48', '2019-04-11 00:03:48'),
(334, 1, 345, '', 'Adeeb Ahmed Al Katheeri', '', 'adeeb.alkatheeri@adports.ae', 'adeeb.alkatheeri@adports.ae', 'AD Ports', 'Port Facility Security Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:48', '2019-04-11 00:03:48'),
(335, 1, 346, '', 'Saeed Ahmed Al Remeithi', '', 'Saeed.alremeithi@adports.ae', 'Saeed.alremeithi@adports.ae', 'AD Ports', 'Sr. Port Pass Officer', '', '', '', '', 'UAE', '', '', '1987-01-01', 'email', 'en', '2019-04-11 00:03:49', '2019-04-11 00:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `program_users_account`
--

CREATE TABLE `program_users_account` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_users_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_forms`
--

CREATE TABLE `registration_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `form` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_forms`
--

INSERT INTO `registration_forms` (`id`, `program_id`, `form`, `created_at`, `updated_at`) VALUES
(1, 1, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:25:57', '2019-04-10 23:25:57'),
(2, 2, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:26:02', '2019-04-10 23:26:02'),
(3, 3, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:26:03', '2019-04-10 23:26:03'),
(4, 4, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:26:04', '2019-04-10 23:26:04'),
(5, 5, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:26:06', '2019-04-10 23:26:06'),
(6, 6, 'a:17:{s:10:\"first_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"last_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"password\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"email\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:5:\"email\";}s:8:\"username\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:5:\"title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:12:\"company_name\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"job_title\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"address_1\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:9:\"address_2\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:8:\"postcode\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"text\";}s:7:\"country\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"select\";}s:9:\"telephone\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:6:\"mobile\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:6:\"number\";}s:13:\"date_of_birth\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";s:1:\"0\";s:10:\"validation\";a:0:{}s:4:\"type\";s:4:\"date\";}s:24:\"communication_preference\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}s:8:\"language\";a:6:{s:9:\"is_hidden\";s:1:\"1\";s:12:\"is_mandatory\";s:1:\"0\";s:13:\"is_identifier\";s:1:\"0\";s:14:\"list_of_values\";a:0:{}s:10:\"validation\";a:0:{}s:4:\"type\";s:12:\"radio_button\";}}', '2019-04-10 23:26:07', '2019-04-10 23:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_default` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `program_id`, `parent_id`, `is_default`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'AD Ports', 1, 0, 'no', 'api', '2019-04-10 23:26:07', '2019-04-10 23:26:07'),
(2, 'Dr. Berta Stiedemann', 2, 0, 'no', 'api', '2019-04-10 23:26:07', '2019-04-10 23:26:07'),
(3, 'Elza Boehm', 3, 0, 'no', 'api', '2019-04-10 23:26:08', '2019-04-10 23:26:08'),
(4, 'Prof. Cooper Cummerata', 4, 0, 'no', 'api', '2019-04-10 23:26:08', '2019-04-10 23:26:08'),
(5, 'Prof. Myrtis Simonis', 5, 0, 'no', 'api', '2019-04-10 23:26:08', '2019-04-10 23:26:08'),
(6, 'Mireille Moore', 6, 0, 'no', 'api', '2019-04-10 23:26:08', '2019-04-10 23:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(8, 1),
(1, 2),
(8, 2),
(1, 3),
(8, 3),
(1, 4),
(8, 4),
(1, 5),
(8, 5),
(1, 6),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `set_approvals`
--

CREATE TABLE `set_approvals` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_1_approval_type` enum('permission','users_groups') COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_1_permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_1_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_1_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_2_approval_type` enum('permission','users_groups') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_2_permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_2_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_2_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomination_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_approvals`
--

INSERT INTO `set_approvals` (`id`, `level_1_approval_type`, `level_1_permission`, `level_1_user`, `level_1_group`, `level_2_approval_type`, `level_2_permission`, `level_2_user`, `level_2_group`, `nomination_id`, `created_at`, `updated_at`) VALUES
(1, 'users_groups', '1', '1', '1', 'permission', '1', '1', NULL, 1, '2019-04-11 00:26:40', '2019-04-11 00:26:40'),
(2, 'permission', '1', '1', '1', 'users_groups', '1', '1', '1', 2, '2019-04-11 00:26:40', '2019-04-11 00:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `sub_products`
--

CREATE TABLE `sub_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_products`
--

INSERT INTO `sub_products` (`id`, `name`, `value`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'et', '1', 1, NULL, '2019-04-10 23:26:18', '2019-04-10 23:26:18'),
(2, 'quas', '8', 2, NULL, '2019-04-10 23:26:18', '2019-04-10 23:26:18'),
(3, 'necessitatibus', '4', 3, NULL, '2019-04-10 23:26:18', '2019-04-10 23:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `account_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 for password resets && 1 for activation links',
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_points`
--

CREATE TABLE `users_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `transaction_type_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_data_custom_fields`
--

CREATE TABLE `user_data_custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `is_hidden` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_identifier` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_mandatory` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_custom` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `values` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_nominations`
--

CREATE TABLE `user_nominations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `nomination_id` int(10) UNSIGNED NOT NULL,
  `value` int(10) UNSIGNED NOT NULL,
  `points` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level_1_approval` int(11) DEFAULT NULL,
  `level_2_approval` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_nominations`
--

INSERT INTO `user_nominations` (`id`, `user`, `account_id`, `nomination_id`, `value`, `points`, `reason`, `attachments`, `level_1_approval`, `level_2_approval`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 1, 1, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:08:57', '2019-04-11 00:08:57'),
(2, 1, 12, 1, 1, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:13:50', '2019-04-11 00:13:50'),
(3, 1, 12, 1, 1, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:21:18', '2019-04-11 00:21:18'),
(4, 1, 12, 1, 1, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:23:16', '2019-04-11 00:23:16'),
(5, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:25:32', '2019-04-11 00:25:32'),
(6, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:25:53', '2019-04-11 00:25:53'),
(7, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:26:18', '2019-04-11 00:26:18'),
(8, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:32:36', '2019-04-11 00:32:36'),
(9, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:33:28', '2019-04-11 00:33:28'),
(10, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:34:12', '2019-04-11 00:34:12'),
(11, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:35:07', '2019-04-11 00:35:07'),
(12, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:36:19', '2019-04-11 00:36:19'),
(13, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:36:33', '2019-04-11 00:36:33'),
(14, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:36:56', '2019-04-11 00:36:56'),
(15, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:46:54', '2019-04-11 00:46:54'),
(16, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:47:49', '2019-04-11 00:47:49'),
(17, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:48:35', '2019-04-11 00:48:35'),
(18, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:49:04', '2019-04-11 00:49:04'),
(19, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:50:43', '2019-04-11 00:50:43'),
(20, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:51:27', '2019-04-11 00:51:27'),
(21, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:51:57', '2019-04-11 00:51:57'),
(22, 1, 12, 1, 10, 1500, 'New reason', NULL, NULL, NULL, '2019-04-11 00:52:24', '2019-04-11 00:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_rewards`
--

CREATE TABLE `user_rewards` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_set` int(10) UNSIGNED NOT NULL,
  `multiple_recipient` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `value_sets`
--

CREATE TABLE `value_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `value_sets`
--

INSERT INTO `value_sets` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nomination', 'Test', '2019-04-10 23:42:38', '2019-04-10 23:42:38', NULL),
(3, 'Nomination 1', NULL, '2019-04-11 00:11:09', '2019-04-11 00:11:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_types`
--
ALTER TABLE `access_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_types_email_unique` (`email`),
  ADD KEY `access_types_program_id_foreign` (`program_id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agencies_admins`
--
ALTER TABLE `agencies_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agencies_admins_agency_id_foreign` (`agency_id`),
  ADD KEY `agencies_admins_account_id_foreign` (`account_id`);

--
-- Indexes for table `awards_levels`
--
ALTER TABLE `awards_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `awards_levels_name_unique` (`name`),
  ADD KEY `awards_levels_nomination_type_id_foreign` (`nomination_type_id`);

--
-- Indexes for table `catalogues`
--
ALTER TABLE `catalogues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_name_unique` (`name`),
  ADD UNIQUE KEY `clients_contact_email_unique` (`contact_email`),
  ADD KEY `clients_agency_id_foreign` (`agency_id`);

--
-- Indexes for table `clients_admins`
--
ALTER TABLE `clients_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_admins_client_id_foreign` (`client_id`),
  ADD KEY `clients_admins_account_id_foreign` (`account_id`);

--
-- Indexes for table `client_catalogues`
--
ALTER TABLE `client_catalogues`
  ADD KEY `client_catalogues_catalogue_id_foreign` (`catalogue_id`),
  ADD KEY `client_catalogues_client_id_foreign` (`client_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_d_p_rs`
--
ALTER TABLE `g_d_p_rs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nominations`
--
ALTER TABLE `nominations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nominations_name_unique` (`name`);

--
-- Indexes for table `nomination_declines`
--
ALTER TABLE `nomination_declines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomination_declines_description_unique` (`description`),
  ADD KEY `nomination_declines_nomination_id_foreign` (`nomination_id`);

--
-- Indexes for table `nomination_types`
--
ALTER TABLE `nomination_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomination_types_name_unique` (`name`),
  ADD KEY `nomination_types_value_set_foreign` (`value_set`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_catalog_id_foreign` (`catalog_id`);

--
-- Indexes for table `products_accounts_seen`
--
ALTER TABLE `products_accounts_seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_catalogs`
--
ALTER TABLE `product_catalogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_catalogs_name_unique` (`name`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_catalog_foreign` (`catalog`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_orders_product_id_foreign` (`product_id`),
  ADD KEY `product_orders_account_id_foreign` (`account_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_client_id_foreign` (`client_id`),
  ADD KEY `programs_agency_id_foreign` (`agency_id`);

--
-- Indexes for table `programs_domains`
--
ALTER TABLE `programs_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_domains_program_id_foreign` (`program_id`);

--
-- Indexes for table `programs_points`
--
ALTER TABLE `programs_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_points_created_by_id_foreign` (`created_by_id`),
  ADD KEY `programs_points_program_id_foreign` (`program_id`);

--
-- Indexes for table `programs_points_budgets`
--
ALTER TABLE `programs_points_budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_points_budgets_program_id_foreign` (`program_id`);

--
-- Indexes for table `programs_points_expiries`
--
ALTER TABLE `programs_points_expiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programs_points_expiries_program_id_foreign` (`program_id`);

--
-- Indexes for table `program_users`
--
ALTER TABLE `program_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `program_users_email_unique` (`email`),
  ADD KEY `program_users_program_id_foreign` (`program_id`),
  ADD KEY `program_users_account_id_foreign` (`account_id`);

--
-- Indexes for table `program_users_account`
--
ALTER TABLE `program_users_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_users_account_program_users_id_foreign` (`program_users_id`),
  ADD KEY `program_users_account_account_id_foreign` (`account_id`);

--
-- Indexes for table `registration_forms`
--
ALTER TABLE `registration_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_forms_program_id_foreign` (`program_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `set_approvals`
--
ALTER TABLE `set_approvals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `set_approvals_nomination_id_unique` (`nomination_id`);

--
-- Indexes for table `sub_products`
--
ALTER TABLE `sub_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD KEY `tokens_account_id_foreign` (`account_id`),
  ADD KEY `tokens_type_index` (`type`);

--
-- Indexes for table `users_points`
--
ALTER TABLE `users_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_points_created_by_id_foreign` (`created_by_id`),
  ADD KEY `users_points_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_data_custom_fields`
--
ALTER TABLE `user_data_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_data_custom_fields_program_id_foreign` (`program_id`);

--
-- Indexes for table `user_nominations`
--
ALTER TABLE `user_nominations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_nominations_account_id_foreign` (`account_id`),
  ADD KEY `user_nominations_nomination_id_foreign` (`nomination_id`);

--
-- Indexes for table `user_rewards`
--
ALTER TABLE `user_rewards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_rewards_name_unique` (`name`);

--
-- Indexes for table `value_sets`
--
ALTER TABLE `value_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `value_sets_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_types`
--
ALTER TABLE `access_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT for table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `agencies_admins`
--
ALTER TABLE `agencies_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `awards_levels`
--
ALTER TABLE `awards_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalogues`
--
ALTER TABLE `catalogues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `clients_admins`
--
ALTER TABLE `clients_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `g_d_p_rs`
--
ALTER TABLE `g_d_p_rs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nominations`
--
ALTER TABLE `nominations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nomination_declines`
--
ALTER TABLE `nomination_declines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nomination_types`
--
ALTER TABLE `nomination_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;
--
-- AUTO_INCREMENT for table `products_accounts_seen`
--
ALTER TABLE `products_accounts_seen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_catalogs`
--
ALTER TABLE `product_catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `programs_domains`
--
ALTER TABLE `programs_domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programs_points`
--
ALTER TABLE `programs_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programs_points_budgets`
--
ALTER TABLE `programs_points_budgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `programs_points_expiries`
--
ALTER TABLE `programs_points_expiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `program_users`
--
ALTER TABLE `program_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `program_users_account`
--
ALTER TABLE `program_users_account`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `registration_forms`
--
ALTER TABLE `registration_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `set_approvals`
--
ALTER TABLE `set_approvals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_products`
--
ALTER TABLE `sub_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_points`
--
ALTER TABLE `users_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_data_custom_fields`
--
ALTER TABLE `user_data_custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_nominations`
--
ALTER TABLE `user_nominations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_rewards`
--
ALTER TABLE `user_rewards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `value_sets`
--
ALTER TABLE `value_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_types`
--
ALTER TABLE `access_types`
  ADD CONSTRAINT `access_types_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agencies_admins`
--
ALTER TABLE `agencies_admins`
  ADD CONSTRAINT `agencies_admins_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agencies_admins_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards_levels`
--
ALTER TABLE `awards_levels`
  ADD CONSTRAINT `awards_levels_nomination_type_id_foreign` FOREIGN KEY (`nomination_type_id`) REFERENCES `nomination_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients_admins`
--
ALTER TABLE `clients_admins`
  ADD CONSTRAINT `clients_admins_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clients_admins_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `client_catalogues`
--
ALTER TABLE `client_catalogues`
  ADD CONSTRAINT `client_catalogues_catalogue_id_foreign` FOREIGN KEY (`catalogue_id`) REFERENCES `catalogues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `client_catalogues_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nomination_declines`
--
ALTER TABLE `nomination_declines`
  ADD CONSTRAINT `nomination_declines_nomination_id_foreign` FOREIGN KEY (`nomination_id`) REFERENCES `nominations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nomination_types`
--
ALTER TABLE `nomination_types`
  ADD CONSTRAINT `nomination_types_value_set_foreign` FOREIGN KEY (`value_set`) REFERENCES `value_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_catalog_id_foreign` FOREIGN KEY (`catalog_id`) REFERENCES `product_catalogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_catalog_foreign` FOREIGN KEY (`catalog`) REFERENCES `product_catalogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD CONSTRAINT `product_orders_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs`
--
ALTER TABLE `programs`
  ADD CONSTRAINT `programs_agency_id_foreign` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `programs_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs_domains`
--
ALTER TABLE `programs_domains`
  ADD CONSTRAINT `programs_domains_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs_points`
--
ALTER TABLE `programs_points`
  ADD CONSTRAINT `programs_points_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `programs_points_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs_points_budgets`
--
ALTER TABLE `programs_points_budgets`
  ADD CONSTRAINT `programs_points_budgets_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `programs_points_expiries`
--
ALTER TABLE `programs_points_expiries`
  ADD CONSTRAINT `programs_points_expiries_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_users`
--
ALTER TABLE `program_users`
  ADD CONSTRAINT `program_users_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_users_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_users_account`
--
ALTER TABLE `program_users_account`
  ADD CONSTRAINT `program_users_account_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_users_account_program_users_id_foreign` FOREIGN KEY (`program_users_id`) REFERENCES `program_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registration_forms`
--
ALTER TABLE `registration_forms`
  ADD CONSTRAINT `registration_forms_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `set_approvals`
--
ALTER TABLE `set_approvals`
  ADD CONSTRAINT `set_approvals_nomination_id_foreign` FOREIGN KEY (`nomination_id`) REFERENCES `nominations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_products`
--
ALTER TABLE `sub_products`
  ADD CONSTRAINT `sub_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_points`
--
ALTER TABLE `users_points`
  ADD CONSTRAINT `users_points_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `accounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_points_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `program_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_data_custom_fields`
--
ALTER TABLE `user_data_custom_fields`
  ADD CONSTRAINT `user_data_custom_fields_program_id_foreign` FOREIGN KEY (`program_id`) REFERENCES `programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_nominations`
--
ALTER TABLE `user_nominations`
  ADD CONSTRAINT `user_nominations_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_nominations_nomination_id_foreign` FOREIGN KEY (`nomination_id`) REFERENCES `nominations` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
