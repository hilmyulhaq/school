-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Feb 2025 pada 04.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `id` int(11) NOT NULL,
  `academic_syllabus_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `accountant`
--

CREATE TABLE `accountant` (
  `accountant_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `accountant_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `accountant`
--

INSERT INTO `accountant` (`accountant_id`, `name`, `accountant_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(16, 'Accountant', '09f94645c8', '2019-08-27', 'Male', 'Muslim', 'o+', 'Address Accountant', '+912345667', 'accountant@accountant.com', 'facebook', 'twitter', 'googleplu', 'linkedin', 'PhD', 'Married', 'Terms of Service.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `password` longtext NOT NULL,
  `level` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `phone`, `password`, `level`, `login_status`) VALUES
(1, 'Administrator', 'admin@admin.com', '07133445656', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '0'),
(9, 'Udemy Instructor', 'udemy@udemy.com', '+1564783934', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `dashboard` int(11) NOT NULL,
  `manage_academics` int(11) NOT NULL,
  `manage_employee` int(11) NOT NULL,
  `manage_student` int(11) NOT NULL,
  `manage_attendance` int(11) NOT NULL,
  `download_page` int(11) NOT NULL,
  `manage_parent` int(11) NOT NULL,
  `manage_alumni` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_id`, `dashboard`, `manage_academics`, `manage_employee`, `manage_student`, `manage_attendance`, `download_page`, `manage_parent`, `manage_alumni`) VALUES
(4, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 9, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `alumni_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marital_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `g_year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `club_id` int(11) NOT NULL,
  `interest` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`alumni_id`, `name`, `sex`, `phone`, `email`, `address`, `profession`, `marital_status`, `g_year`, `club_id`, `interest`) VALUES
(4, 'Alumni Learner', 'Male', '09066021052', 'd@d.com', 'Address', 'Engineer', 'married', '2019-09-04', 1, 'Reading');

-- --------------------------------------------------------

--
-- Struktur dari tabel `application`
--

CREATE TABLE `application` (
  `application_id` int(11) NOT NULL,
  `applicant_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `apply_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `application`
--

INSERT INTO `application` (`application_id`, `applicant_name`, `vacancy_id`, `apply_date`, `status`) VALUES
(2, 'Udemy Application', 3, '1567965600', 'interviewed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `name`, `subject_id`, `class_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`) VALUES
(1, 'Assignment for Nursery One', 4, 2, 1, 'DESC', 'invoice.docx', 'pdf', '2018-08-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent, 3 holiday, 4 half day, 5 late',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `session` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`, `session`) VALUES
(39, 1, 45, '2019-12-20', ''),
(40, 1, 45, '2019-12-22', ''),
(41, 1, 45, '2025-02-24', ''),
(42, 0, 45, '2025-02-25', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`author_id`, `name`, `description`) VALUES
(2, 'Esther and Atorise.', 'The book is written by Esther and Atorise');

-- --------------------------------------------------------

--
-- Struktur dari tabel `award`
--

CREATE TABLE `award` (
  `award_id` int(11) NOT NULL,
  `award_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gift` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `award`
--

INSERT INTO `award` (`award_id`, `award_code`, `name`, `gift`, `amount`, `date`, `user_id`) VALUES
(2, '4675HD', 'Most Dedicated', 'Award', '1000', '2019-09-19', 'hrm-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `account_holder_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `account_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `branch` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`bank_id`, `account_holder_name`, `account_number`, `bank_name`, `branch`) VALUES
(2, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA'),
(3, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA'),
(4, 'Udemy Instructor', '1234567', 'Payoneer or paypal', 'USA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `book_category_id` int(11) NOT NULL,
  `isbn` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `edition` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) NOT NULL,
  `quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`book_id`, `name`, `description`, `author_id`, `publisher_id`, `book_category_id`, `isbn`, `edition`, `subject_id`, `quantity`, `timestamp`, `class_id`, `status`, `price`) VALUES
(1, 'Advance Java.', 'This is the newly released book by Sheg', 2, 1, 2, 'DS34FD', '1st', 0, '1', 1576951200, 2, '1', '200'),
(2, 'Python', 'Python', 2, 1, 2, 'DS34FD', '1st', 4, '2', 1574186400, 2, '2', '500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name`, `description`) VALUES
(2, 'Non fictional.', 'This is another non-fictional book');

-- --------------------------------------------------------

--
-- Struktur dari tabel `circular`
--

CREATE TABLE `circular` (
  `circular_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `circular`
--

INSERT INTO `circular` (`circular_id`, `title`, `reference`, `content`, `date`) VALUES
(2, 'Meeting for all the members of the school', 'DF46SFGH', 'This is for all the teaching staff. Ensure you are all present.', '2018-08-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0o55lsviqm8i8evg7i1164p53mkp4vup', '127.0.0.1', 1576400835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430303833353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('5k29uj9otbufutr4sl6sm1sgqajns7q3', '127.0.0.1', 1576401225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313232353b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('6qlbqi95gm56km49cioacibnpl1d6qap', '127.0.0.1', 1575989622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393632323b),
('7k1ho15mjeg7u9lbsua6a6f0fl3okgf5', '127.0.0.1', 1575989675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393637353b),
('8esqiumpgo03rthcimbnehv3b2e9bc2p', '127.0.0.1', 1575989062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393036323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('ea738lb5ik6v0kmm7dm2pbud27k02glr', '127.0.0.1', 1576397281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339373238313b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('fofehi7eaeqj2bk5eit5ekp41gd147hi', '127.0.0.1', 1576397948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339373934383b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('jjgc5umr0p2np4aneuua2t7tm89v1voj', '127.0.0.1', 1576239186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363233393138363b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('l1e17mk7cdg71do9qouos1q5249fetn7', '127.0.0.1', 1576239187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363233393138373b),
('l46es3qrhtcgi7kcc8daopocsam1knfg', '127.0.0.1', 1576401563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313536333b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('m9sj7su5id61c0rfj53c718pqrbt4hq6', '127.0.0.1', 1576396972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363339363937323b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b666c6173685f6d6573736167657c733a31383a225375636365737366756c6c79204c6f67696e223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('ndto2l4cv384prfveod69n5duullmo4o', '127.0.0.1', 1576401722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537363430313732323b),
('pk4m8lpu6igmqgieqnm547i4q2h99gud', '127.0.0.1', 1575988659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938383635393b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b),
('qhcrmmb8gppl38vmtu8jd806a7l0oksa', '127.0.0.1', 1575989414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313537353938393431343b6c6f67696e5f747970657c733a353a2261646d696e223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2238223b6c6f67696e5f757365725f69647c733a313a2238223b6e616d657c733a31333a2241646d696e6973747261746f72223b);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(2, 'Nursery One', 'Nursery 1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `section_id`, `subject_id`, `time_start`, `time_end`, `time_start_min`, `time_end_min`, `day`, `year`) VALUES
(5, 2, 3, 4, '3', '17', '20', '20', 'monday', '2019-2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `club_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `desc`, `date`) VALUES
(1, 'Jet club', 'This is for those who love science.', '2019-08-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `department`
--

INSERT INTO `department` (`department_id`, `name`, `department_code`) VALUES
(2, 'Bursar', 'aed7c689d676c7c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `designation`
--

INSERT INTO `designation` (`designation_id`, `name`, `department_id`) VALUES
(5, 'Tutorial', 2),
(4, 'Udemy', 2),
(6, 'Student', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `hostel_category_id` int(11) NOT NULL,
  `capacity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `hostel_room_id`, `hostel_category_id`, `capacity`, `address`, `description`) VALUES
(2, 'Wiz Hostel', 2, 3, '200', 'Address for hostel location', 'Address for hostel location');

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom_to_meet` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `enquiry_category`
--

CREATE TABLE `enquiry_category` (
  `enquiry_category_id` int(11) NOT NULL,
  `category` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `purpose` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `enquiry_category`
--

INSERT INTO `enquiry_category` (`enquiry_category_id`, `category`, `purpose`, `whom`) VALUES
(3, 'This is for ID 3 information.', 'Payment', 'Tutorial'),
(4, 'This is Udemy Information', 'School fees information', 'Just edited now');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `comment`, `timestamp`) VALUES
(1, 'First Term Examination', 'First Term', '2019-10-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `exam_question`
--

CREATE TABLE `exam_question` (
  `exam_question_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `expense_category`
--

INSERT INTO `expense_category` (`expense_category_id`, `name`) VALUES
(5, 'Reading Books.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hostel`
--

CREATE TABLE `hostel` (
  `hostel_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `hostel_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `hostel`
--

INSERT INTO `hostel` (`hostel_id`, `name`, `hostel_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(15, 'Hostel Udemy', '78e39debb4', '2019-08-27', 'Male', 'Muslim', 'o+', 'This is the new address for the new hostel manager.', '+912345667', 'hostel@hostel.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'Welcome to Optimum Linkup.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hostel_category`
--

CREATE TABLE `hostel_category` (
  `hostel_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hostel_category`
--

INSERT INTO `hostel_category` (`hostel_category_id`, `name`, `description`) VALUES
(2, 'Female', 'This is for female only.'),
(3, 'Male', 'This is for male only. Female are not allowed.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hostel_room`
--

CREATE TABLE `hostel_room` (
  `hostel_room_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `room_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost_bed` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hostel_room`
--

INSERT INTO `hostel_room` (`hostel_room_id`, `name`, `room_type`, `num_bed`, `cost_bed`, `description`) VALUES
(2, 'Room One', 'Single', '2', '5000', 'This is for the big guys among us.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `house`
--

CREATE TABLE `house` (
  `house_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `house`
--

INSERT INTO `house` (`house_id`, `name`, `description`) VALUES
(1, 'Purple House', 'This is for students in purple house');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrm`
--

CREATE TABLE `hrm` (
  `hrm_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `hrm_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `hrm`
--

INSERT INTO `hrm` (`hrm_id`, `name`, `hrm_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(15, 'Human Udemy', '414bbf2d2a', '2019-08-27', 'Male', 'Christianity', 'B+', 'This is the newly added human resources manager address', '+912345667', 'hrm@hrm.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'index.html', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `creation_timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext NOT NULL,
  `english` longtext DEFAULT NULL,
  `arabic` longtext DEFAULT NULL,
  `french` longtext DEFAULT NULL,
  `korea` longtext DEFAULT NULL,
  `Indonesia` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `arabic`, `french`, `korea`, `Indonesia`) VALUES
(1, 'Manage Language', 'Manage Language', 'إدارة اللغة', NULL, NULL, NULL),
(2, 'active language', 'Active Language', 'اللغة النشطة', NULL, NULL, NULL),
(40557, 'add', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `leave`
--

CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL,
  `leave_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `librarian`
--

CREATE TABLE `librarian` (
  `librarian_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `librarian_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `librarian`
--

INSERT INTO `librarian` (`librarian_id`, `name`, `librarian_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `login_status`) VALUES
(13, 'Udemy Librarian', '42ed75d802', '2019-08-26', 'Male', 'Muslim', 'O-', 'Address', '+912345667', 'librarian@librarian.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'invoice.docx', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_score1` int(11) NOT NULL,
  `class_score2` int(11) NOT NULL,
  `class_score3` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `exam_id`, `class_id`, `class_score1`, `class_score2`, `class_score3`, `exam_score`, `comment`) VALUES
(1, 45, 5, 1, 2, 10, 9, 8, 70, 'Good performance.'),
(2, 45, 4, 1, 2, 10, 7, 9, 69, 'Excellent performance.'),
(3, 0, 5, 1, 2, 0, 0, 0, 0, ''),
(4, 0, 4, 1, 2, 0, 0, 0, 0, ''),
(5, 45, 0, 1, 2, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `material`
--

INSERT INTO `material` (`material_id`, `name`, `class_id`, `subject_id`, `teacher_id`, `description`, `file_name`, `file_type`, `timestamp`) VALUES
(1, 'Study material for Nursery One', 2, 5, 1, 'This is for class only.', 'profile.png', 'docx', '2018-08-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `noticeboard`
--

CREATE TABLE `noticeboard` (
  `noticeboard_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `noticeboard`
--

INSERT INTO `noticeboard` (`noticeboard_id`, `title`, `location`, `timestamp`, `description`) VALUES
(3, 'Second meeting coming up soon', 'Udemy Forum', 1575136800, 'The meeting is coming up soon. Ensure you are fully prepared.'),
(4, 'Parent Teacher Association Meeting.', 'Ontario Location', 1575050400, 'This is the new updated information as regards the meeting.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `login_status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `parent`
--

INSERT INTO `parent` (`parent_id`, `name`, `email`, `password`, `phone`, `address`, `profession`, `login_status`) VALUES
(4, 'Mr. Parent', 'parent@parent.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '+912345667', 'Udemy Address', 'Learners', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `student_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `method` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll`
--

CREATE TABLE `payroll` (
  `payroll_id` int(11) NOT NULL,
  `payroll_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `allowances` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `deductions` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `payroll`
--

INSERT INTO `payroll` (`payroll_id`, `payroll_code`, `user_id`, `allowances`, `deductions`, `date`, `status`) VALUES
(4, 'c94d9d7', '1', '[{\"type\":\"A\",\"amount\":\"1000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"200\"},{\"type\":\"B\",\"amount\":\"700\"}]', '10,2019', '0'),
(3, 'a8c4ae9', '1', '[{\"type\":\"Food\",\"amount\":\"5000\"},{\"type\":\"House\",\"amount\":\"2000\"}]', '[{\"type\":\"Tax1\",\"amount\":\"1000\"},{\"type\":\"Tax2\",\"amount\":\"500\"}]', '9,2019', '1'),
(5, '75c1f3d', '1', '[{\"type\":\"A\",\"amount\":\"2000\"},{\"type\":\"B\",\"amount\":\"1000\"}]', '[{\"type\":\"A\",\"amount\":\"500\"},{\"type\":\"B\",\"amount\":\"500\"}]', '12,2019', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `description`) VALUES
(1, 'Amazon.', 'The book is published by Amazon');

-- --------------------------------------------------------

--
-- Struktur dari tabel `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `section`
--

INSERT INTO `section` (`section_id`, `name`, `nick_name`, `class_id`, `teacher_id`) VALUES
(3, 'First Term', 'Term 1', 2, 1),
(4, 'Second Term', '2nd', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Pondok Pesantren Nurul Hikmah'),
(2, 'system_title', 'Pondok Pesantren Nurul Hikmah'),
(3, 'address', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.'),
(4, 'phone', '+1564783934'),
(6, 'currency', 'usd'),
(7, 'system_email', 'optimumproblemsolver@gmail.com'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right'),
(16, 'skin_colour', 'purple'),
(21, 'session', '2019-2020'),
(22, 'footer', 'Pondok Pesantren Nurul Hikmah'),
(116, 'paypal_email', 'optimumproblemsolver@gmail.com'),
(119, 'stripe_setting', '[{\"stripe_active\":\"1\",\"testmode\":\"off\",\"secret_key\":\"test secret key\",\"public_key\":\"test public key\",\"secret_live_key\":\"live secret key\",\"public_live_key\":\"live public key\"}]'),
(122, 'paypal_setting', '[{\"paypal_active\":\"1\",\"paypal_mode\":\"sandbox\",\"sandbox_client_id\":\"client id sandbox\",\"production_client_id\":\"client - production\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sms_settings`
--

CREATE TABLE `sms_settings` (
  `sms_setting_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sms_settings`
--

INSERT INTO `sms_settings` (`sms_setting_id`, `type`, `info`) VALUES
(12, 'msg91_sender_id', 'sender id'),
(11, 'msg91_authentication_key', 'msg91 auth key'),
(10, 'clickatell_apikey', 'clickattel api'),
(9, 'clickatell_password', 'clickattel paasword'),
(8, 'clickatell_username', 'clickattel username'),
(13, 'msg91_route', 'route'),
(14, 'msg91_country_code', 'country code'),
(15, 'active_sms_gateway', 'msg91');

-- --------------------------------------------------------

--
-- Struktur dari tabel `social_category`
--

CREATE TABLE `social_category` (
  `social_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `colour` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `social_category`
--

INSERT INTO `social_category` (`social_category_id`, `name`, `colour`, `icon`, `description`) VALUES
(2, 'Romance', 'danger', 'fa-male', 'This is for romance chat room'),
(3, 'Event', 'primary', 'fa-book', 'This is for event chat room');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `age` longtext NOT NULL,
  `place_birth` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `m_tongue` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `city` longtext NOT NULL,
  `state` longtext NOT NULL,
  `nationality` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `ps_attended` longtext NOT NULL,
  `ps_address` longtext NOT NULL,
  `ps_purpose` longtext NOT NULL,
  `class_study` longtext NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `am_date` longtext NOT NULL,
  `tran_cert` longtext NOT NULL,
  `dob_cert` longtext NOT NULL,
  `mark_join` longtext NOT NULL,
  `physical_h` longtext NOT NULL,
  `password` longtext NOT NULL,
  `father_name` longtext NOT NULL,
  `mother_name` longtext NOT NULL,
  `class_id` longtext NOT NULL,
  `section_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `roll` longtext NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `student_category_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `card_number` longtext NOT NULL,
  `issue_date` longtext NOT NULL,
  `expire_date` longtext NOT NULL,
  `dormitory_room_number` longtext NOT NULL,
  `more_entries` longtext NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `age`, `place_birth`, `sex`, `m_tongue`, `religion`, `blood_group`, `address`, `city`, `state`, `nationality`, `phone`, `email`, `ps_attended`, `ps_address`, `ps_purpose`, `class_study`, `date_of_leaving`, `am_date`, `tran_cert`, `dob_cert`, `mark_join`, `physical_h`, `password`, `father_name`, `mother_name`, `class_id`, `section_id`, `parent_id`, `roll`, `transport_id`, `dormitory_id`, `house_id`, `student_category_id`, `club_id`, `session`, `card_number`, `issue_date`, `expire_date`, `dormitory_room_number`, `more_entries`, `login_status`) VALUES
(45, 'Udemy Student II', '09/30/2003', '16', 'Lagos', 'female', 'Mother Tongue', 'Muslim', 'B+', 'Address', 'City', 'Lagos', 'Canadian', '+912345667', 'student@student.com', 'Previous school attended', 'Previous school address', 'Purpose Of Leaving', 'Class In Which Was Studying', '2011-08-10', '2011-08-19', 'Yes', 'Yes', 'Yes', 'No', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '', '', '2', 3, 4, '5bf8161', 0, 2, 1, 2, 1, '2019-2020', '', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_category`
--

CREATE TABLE `student_category` (
  `student_category_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `student_category`
--

INSERT INTO `student_category` (`student_category_id`, `name`, `description`) VALUES
(2, 'Boarding Student', 'This is for the boarding student.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_permits`
--

CREATE TABLE `student_permits` (
  `id` int(11) NOT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `permit_type` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `student_permits`
--

INSERT INTO `student_permits` (`id`, `student_id`, `permit_type`, `reason`, `start_date`, `end_date`, `status`, `created_at`) VALUES
(1, '45', 'Internship Permit', 'Internship Permit', '2025-02-24', '2025-03-25', 'Pending', '2025-02-24 06:48:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(5, 'Economics', 2, 1),
(4, 'Mathematics', 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `role` longtext NOT NULL,
  `teacher_number` longtext NOT NULL,
  `birthday` longtext NOT NULL,
  `sex` longtext NOT NULL,
  `religion` longtext NOT NULL,
  `blood_group` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `email` longtext NOT NULL,
  `facebook` longtext NOT NULL,
  `twitter` longtext NOT NULL,
  `googleplus` longtext NOT NULL,
  `linkedin` longtext NOT NULL,
  `qualification` longtext NOT NULL,
  `marital_status` longtext NOT NULL,
  `file_name` longtext NOT NULL,
  `password` longtext NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_joining` longtext NOT NULL,
  `joining_salary` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_leaving` longtext NOT NULL,
  `bank_id` int(11) NOT NULL,
  `login_status` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `role`, `teacher_number`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `facebook`, `twitter`, `googleplus`, `linkedin`, `qualification`, `marital_status`, `file_name`, `password`, `department_id`, `designation_id`, `date_of_joining`, `joining_salary`, `status`, `date_of_leaving`, `bank_id`, `login_status`) VALUES
(1, 'Udemy Teacher', '1', 'f82e5cc', '2018-08-19', 'male', 'Christianity', 'B+', '546787, Kertz shopping complext, Silicon Valley, United State of America, New York city.', '+912345667', 'teacher@teacher.com', 'facebook', 'twitter', 'googleplus', 'linkedin', 'PhD', 'Married', 'profile.png', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 4, '2019-09-15', '5000', 1, '2019-09-18', 3, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transport_route_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_fare` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transport_route`
--

CREATE TABLE `transport_route` (
  `transport_route_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transport_route`
--

INSERT INTO `transport_route` (`transport_route_id`, `name`, `description`) VALUES
(2, 'Toronto to Usa', 'This is vehicle is going from Canada to Usa'),
(3, 'Lagos to Canada', 'This is going to Canada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vacancy`
--

CREATE TABLE `vacancy` (
  `vacancy_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vacancies` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `vacancy`
--

INSERT INTO `vacancy` (`vacancy_id`, `name`, `number_of_vacancies`, `last_date`) VALUES
(3, 'Position for class teachers', '4', '2019-12-21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_number` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_model` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vehicle_quantity` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year_made` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_license` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `driver_contact` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `vehicle_number`, `vehicle_model`, `vehicle_quantity`, `year_made`, `driver_name`, `driver_license`, `driver_contact`, `description`, `status`) VALUES
(2, 'Toyota', '423', 'Camry', '2', '2019', 'Udemy Sheg', 'License', 'Contact address here', 'description here', 'available');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wifi_accounts`
--

CREATE TABLE `wifi_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wifi_accounts`
--

INSERT INTO `wifi_accounts` (`id`, `username`, `password`, `profile`, `created_at`) VALUES
(1, 'users1', '123456', 'student', '2025-02-23 11:51:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`accountant_id`);

--
-- Indeks untuk tabel `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`alumni_id`);

--
-- Indeks untuk tabel `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`application_id`);

--
-- Indeks untuk tabel `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indeks untuk tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indeks untuk tabel `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indeks untuk tabel `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`circular_id`);

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indeks untuk tabel `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indeks untuk tabel `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- Indeks untuk tabel `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indeks untuk tabel `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indeks untuk tabel `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indeks untuk tabel `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indeks untuk tabel `enquiry_category`
--
ALTER TABLE `enquiry_category`
  ADD PRIMARY KEY (`enquiry_category_id`);

--
-- Indeks untuk tabel `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indeks untuk tabel `exam_question`
--
ALTER TABLE `exam_question`
  ADD PRIMARY KEY (`exam_question_id`);

--
-- Indeks untuk tabel `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indeks untuk tabel `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`hostel_id`);

--
-- Indeks untuk tabel `hostel_category`
--
ALTER TABLE `hostel_category`
  ADD PRIMARY KEY (`hostel_category_id`);

--
-- Indeks untuk tabel `hostel_room`
--
ALTER TABLE `hostel_room`
  ADD PRIMARY KEY (`hostel_room_id`);

--
-- Indeks untuk tabel `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`house_id`);

--
-- Indeks untuk tabel `hrm`
--
ALTER TABLE `hrm`
  ADD PRIMARY KEY (`hrm_id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indeks untuk tabel `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indeks untuk tabel `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`leave_id`);

--
-- Indeks untuk tabel `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`librarian_id`);

--
-- Indeks untuk tabel `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indeks untuk tabel `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`);

--
-- Indeks untuk tabel `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`noticeboard_id`);

--
-- Indeks untuk tabel `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indeks untuk tabel `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indeks untuk tabel `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indeks untuk tabel `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`sms_setting_id`);

--
-- Indeks untuk tabel `social_category`
--
ALTER TABLE `social_category`
  ADD PRIMARY KEY (`social_category_id`);

--
-- Indeks untuk tabel `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indeks untuk tabel `student_category`
--
ALTER TABLE `student_category`
  ADD PRIMARY KEY (`student_category_id`);

--
-- Indeks untuk tabel `student_permits`
--
ALTER TABLE `student_permits`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indeks untuk tabel `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indeks untuk tabel `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- Indeks untuk tabel `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`transport_route_id`);

--
-- Indeks untuk tabel `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`vacancy_id`);

--
-- Indeks untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indeks untuk tabel `wifi_accounts`
--
ALTER TABLE `wifi_accounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `accountant`
--
ALTER TABLE `accountant`
  MODIFY `accountant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `activity`
--
ALTER TABLE `activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `alumni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `application`
--
ALTER TABLE `application`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `circular`
--
ALTER TABLE `circular`
  MODIFY `circular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `enquiry_category`
--
ALTER TABLE `enquiry_category`
  MODIFY `enquiry_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `exam_question`
--
ALTER TABLE `exam_question`
  MODIFY `exam_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `hostel`
--
ALTER TABLE `hostel`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `hostel_category`
--
ALTER TABLE `hostel_category`
  MODIFY `hostel_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hostel_room`
--
ALTER TABLE `hostel_room`
  MODIFY `hostel_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `house`
--
ALTER TABLE `house`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `hrm`
--
ALTER TABLE `hrm`
  MODIFY `hrm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40558;

--
-- AUTO_INCREMENT untuk tabel `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `leave`
--
ALTER TABLE `leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `librarian`
--
ALTER TABLE `librarian`
  MODIFY `librarian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `material`
--
ALTER TABLE `material`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `noticeboard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `payroll`
--
ALTER TABLE `payroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `sms_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `social_category`
--
ALTER TABLE `social_category`
  MODIFY `social_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `student_category`
--
ALTER TABLE `student_category`
  MODIFY `student_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `student_permits`
--
ALTER TABLE `student_permits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `transport_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `vacancy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `wifi_accounts`
--
ALTER TABLE `wifi_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
