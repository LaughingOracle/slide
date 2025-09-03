-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2025 at 01:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slideshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_23_042830_posters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posters`
--

CREATE TABLE `posters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tv` varchar(255) NOT NULL,
  `legacyId` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posters`
--

INSERT INTO `posters` (`id`, `name`, `title`, `tv`, `legacyId`, `created_at`, `updated_at`) VALUES
(3, 'Tifanni Excelinda', 'Open but Blocked: Pupillary Capture Induced Secondary Glaucoma with Open Angles on AS-OCT', '1', 'IGS-EP-GP-1', '2025-09-02 21:11:39', '2025-09-02 21:11:39'),
(4, 'Iffa Nadifa Riza Hardjasasmita', 'Patient Profiles and Treatment Outcomes of Traumatic Glaucoma at Indonesia\'s National Referral Eye Hospital', '1', 'IGS-EP-GP-2', '2025-09-02 21:17:40', '2025-09-02 21:17:40'),
(5, 'Nirmala', 'Secondary Glaucoma in Sturge-Weber Syndrome: A Rare Case from Flores Island, Indonesia', '1', 'IGS-EP-GP-3', '2025-09-02 21:19:04', '2025-09-02 21:19:04'),
(6, 'Raihanny Andrea Zahra', 'Transition of Angle Closure to Aqueous Misdirection: Management of Maligant Glaucoma with Laser and Surgical Intervention', '1', 'IGS-EP-GP-4', '2025-09-02 21:21:31', '2025-09-02 21:21:31'),
(7, 'Rivaldo Steven Heriyanto', 'Gonioscopy-Assisted Transluminal Trabeculotomy in The Treatment of Various Types of Glaucoma: A Meta-Analysis', '1', 'IGS-EP-GP-5', '2025-09-02 21:24:34', '2025-09-02 21:24:34'),
(8, 'Wulan Meilani', 'Phacomorphic Glaucoma: A Case Report', '1', 'IGS-EP-GP-6', '2025-09-02 21:25:54', '2025-09-02 21:25:54'),
(9, 'Tri Ramasari', 'INTEGRATED SURGICAL STRATEGY FOR ACUTE PACG WITH LENS-INDUCED COMPONENT : CASE REPORT', '1', 'IGS-EP-GP-7', '2025-09-02 21:31:02', '2025-09-02 21:31:02'),
(10, 'Tiara Azriena Dzulkarnain', 'Effective IOP Management and Vision Preservation in Secondary Glaucoma Associated with Carotid-Cavernous Fistula: A Case Report', '1', 'IGS-EP-GP-8', '2025-09-02 21:32:50', '2025-09-02 21:32:50'),
(11, 'Cendani Chandradewi', 'End Stage Primary Angle Closure Glaucoma in a 40-Year-Old Male: A Case Report', '1', 'IGS-EP-GP-9', '2025-09-02 21:34:33', '2025-09-02 21:34:33'),
(12, 'Noviani Rosa Sinensishi', 'Undiagnosed Glaucoma Presenting as Sever headache in Rural Emergency Departments', '1', 'IGS-EP-GP-10', '2025-09-02 21:36:34', '2025-09-02 21:36:34'),
(13, 'Bella Patricia', 'Glaucoma Drainage Device (GDD) Implantation in Iridorneal Endothelial (ICE) Syndrome', '1', 'IGS-EP-GP-11', '2025-09-02 21:38:06', '2025-09-02 21:38:06'),
(14, 'Rafi Amanda Rezkia Amradani', 'Angle Closure Glaucoma and Zonulopathy : a Vicious Circle of Blindness - Case Report', '1', 'IGS-EP-GP-12', '2025-09-02 21:40:02', '2025-09-02 21:40:02'),
(15, 'Ridha Mustika Zaif', 'Secondary Angle-Closure Glaucoma due to Blunt Ocular Trauma: A Case Report', '1', 'IGS-EP-GP-13', '2025-09-02 21:41:40', '2025-09-02 21:41:40'),
(16, 'Anggia Dwi Stephanie tandipayuk', 'Spontaneous Globe Rupture Due to Glaucoma in Resource-Limited Setting : A Case Report', '1', 'IGS-EP-GP-14', '2025-09-02 21:43:14', '2025-09-02 21:43:14'),
(17, 'R R Danti Ayu Irawati', 'Intraocular Pressure Induced Intramellar Keratitis After SMILE Surgery', '1', 'IGS-EP-O-1', '2025-09-02 21:45:07', '2025-09-02 21:45:07'),
(18, 'Nafitri Aulia', 'Managing Pseudoexfoliation Syndrome with Cataract and Glaucoma', '1', 'IGS-EP-O-2', '2025-09-02 21:46:35', '2025-09-02 21:46:35'),
(19, 'Aquirina Caesari Putri', 'PROMPT MANAGEMENT OF POSTOPERATIVE HYPHEMA FOLLOWING GLAUCOMA DRAINAGE DEVICE IMPLANTATION IN NEOVASCULAR GLAUCOMA : A CASE SERIES', '1', 'IGS-EP-O-3', '2025-09-02 21:49:32', '2025-09-02 21:49:32'),
(20, 'Elvira', 'Is This Acute Angle Closure Glaucoma or Secondary Glaucoma in Association with Nonspecific Orbital Inflamation? A Case Report', '1', 'IGS-EP-O-4', '2025-09-02 21:51:10', '2025-09-02 21:51:10'),
(21, 'Arcci Pradessatama', 'Overcoming the Block: Effective Resolution of Fibrinous Pupillary Block Glaucoma Post-Phacoemulsification', '1', 'IGS-EP-O-5', '2025-09-02 21:54:12', '2025-09-02 21:54:12'),
(22, 'Muhammad Insanul Kamil Rery', 'Outcome of Trabeculectomy in Siblings with Juvenile Open-Angle Glaucoma, Is It Necessaru to Do Bleb Needling?: A Case Report', '1', 'IGS-EP-R-1', '2025-09-02 21:57:07', '2025-09-02 21:57:07'),
(23, 'Ardelia Emily Wulur', 'Recurrent Posner-Schlossman Syndrome Linked to Latent Viral Infections: A Case Report and Management Strategies', '1', 'IGS-EP-R-2', '2025-09-02 21:58:46', '2025-09-02 21:58:46'),
(24, 'Philip Teng', 'Postoperative Hyphema in NVG Treated with GDI: A Case of Surgical Complication', '1', 'IGS-EP-R-3', '2025-09-02 22:00:02', '2025-09-02 22:00:02'),
(25, 'Dewa Ayu Ina Dianata', 'Acute Angle-Closure Glaucoma in an Eye with Posterior Chamber Intraocular Lens: A Case Report', '1', 'IGS-EP-R-4', '2025-09-02 22:01:50', '2025-09-02 22:01:50'),
(26, 'Rahayu Oktaliani', 'COUGHT IN A NARROW TRAP: THERAPEUTIC CHALLENGES OF ANGLE CLOSURE IN MICROSPHEROPHAKIA', '1', 'IGS-EP-R-5', '2025-09-02 22:03:53', '2025-09-02 22:03:53'),
(27, 'Putri Rahmah Ajizah', 'Trabeculectomy + 5-Fluorouracil (5-FU) for Managing Secondary Glaucoma in Childhood with Sturge-Weber Syndrome', '1', 'IGS-EP-R-6', '2025-09-02 22:07:17', '2025-09-02 22:07:17'),
(28, 'Lucyana', 'From Success to Complication: Choroidal Detachment After Trabeculectomy in Young Patient', '1', 'IGS-EP-R-7', '2025-09-02 22:09:32', '2025-09-02 22:09:32'),
(29, 'Hamdan Ramadhan', 'The Bleb Preservation Protocol Systematic Analysis of Multimodal Strategies to Combat Fibrosis in Trabeculectomy', '1', 'IGS-EP-R-8', '2025-09-02 22:11:56', '2025-09-02 22:11:56'),
(30, 'Usamah Haidar', 'A Secondary Glaucoma Associated with Lens Subluxation in Elderly Male patient: A Case Report', '1', 'IGS-EP-R-9', '2025-09-02 22:14:08', '2025-09-02 22:14:08'),
(31, 'Pranandito Trunogati', 'SEQUENTIAL GLAUCOMA DRAINAGE DEVICE IMPLEMENTATION IN REFRACTORY JUVENILE OPEN-ANGLE GLAUCOMA: A CASE REPORT OF VISION PRESERVATION IN A CHALLENGING PEDIATRIC PATIENT', '1', 'IGS-EP-R-10', '2025-09-02 22:17:26', '2025-09-02 22:33:24'),
(32, 'Klarissa Chrishalim', 'Complication of Trabeculectomy: A Rare Concurrence of Toxic Anterior Segment Syndrome and Choroidal Effusion', '1', 'IGS-EP-R-11', '2025-09-02 22:36:09', '2025-09-02 22:36:09'),
(33, 'Noviana', 'A Total Hyphema as a Complication of GDD in POAG, Why? A Case Report', '1', 'IGS-EP-R-13', '2025-09-02 22:38:02', '2025-09-02 22:38:02'),
(34, 'Hafiz Shatari', 'Unilateral Ocular Hypertension Following Blunt Trauma:L A Case of Sectoral Angle Recession', '1', 'IGS-EP-R-14', '2025-09-02 22:39:46', '2025-09-02 22:39:46'),
(35, 'Saraya Amajida', 'A case series: Phacolytic Glaucoma', '1', 'IGS-EP-R-16', '2025-09-02 22:40:54', '2025-09-02 22:40:54'),
(36, 'Utin Alvina Nuzuliawati', 'Management and Risk Factor of Glaucoma Drainage Device Plate Exposure', '1', 'IGS-EP-R-17', '2025-09-02 22:41:44', '2025-09-02 22:41:44'),
(37, 'Florentina Priscilia', 'Clearer Vision Ahead: How Education and Adherence Led to Successful Hyphema Management', '1', 'IGS-EP-R-18', '2025-09-02 22:43:44', '2025-09-02 22:43:44'),
(38, 'Amani Sakinah Augianti', 'A Closer Look at Lens-Induced Glaucoma: Clinical Insights from 22 Patients', '1', 'IGS-EP-R-19', '2025-09-02 22:45:55', '2025-09-02 22:46:16'),
(39, 'dr Gressi Dwitasari', 'Saving a Child\'s Vision: Virna Glaucoma Implant for Advanced Juveline Open-Angle Glaucoma: A Case report', '1', 'IGS-EP-R-20', '2025-09-02 22:47:55', '2025-09-02 22:47:55'),
(40, 'Alma Pustika Kartikananda Retina Fibularis', 'CLINICAL DECISION MAKING AND TREATMENT APPROACH BY OPHTALMOLOGIST IN INFANT WITH PRIMARY CONGENITAL GLAUCOMA', '1', 'IGS-EP-R-21', '2025-09-02 22:50:21', '2025-09-02 22:50:21'),
(41, 'Monica Rizky Wigianita', 'When Retinal Success Meets Glaucoma Challenge: Cylophotocoagulation in a Silicone Oil-Filled Eye - A Case Report', '1', 'IGS-EP-R-22', '2025-09-02 22:52:46', '2025-09-02 22:53:20'),
(42, 'Chaerena Amri', 'Challenges in Bilateral Sturge-Weber Syndrome with Refractory Glaucoma: A Rare Pediatric Glaucoma Case', '1', 'IGS-EP-R-23', '2025-09-02 22:55:14', '2025-09-02 22:55:14'),
(43, 'Enzo Sapuandi', 'Glaucoma Drainage Device for Secondary Glaucoma After Combined-Refractive Surgery', '1', 'IGS-EP-R-24', '2025-09-02 22:56:29', '2025-09-02 22:56:29'),
(44, 'Siti Pradyta Phiskanugrah', 'TRABECULECTOMY SURGERY OUTCOMES IN PRIMARY CONGENITAL GLAUCOMA: EVALUATING SUCCESS THROUGH BUPHTHALMOS AND CORNEAL ENLARGEMENT', '1', 'IGS-EP-R-25', '2025-09-02 23:00:25', '2025-09-02 23:00:25'),
(45, 'Nathasya Maharani Susilo', 'Combination Therapy of Secondary Angle Closure Glaucoma due to Post Traumatic Lens Subluxation: A Case Report', '1', 'IGS-EP-R-26', '2025-09-02 23:02:27', '2025-09-02 23:02:27'),
(46, 'Tristira Urvina', 'A Clinical Insights: Is There A Role For Conservative Management in Patients With Traumatic Lens Subluxation And Suspected Angle Recession?', '1', 'IGS-EP-R-27', '2025-09-02 23:04:06', '2025-09-02 23:04:06'),
(47, 'Cecillia Apriliana Wulandari', 'Bilateral Secondary Glaucoma in Sturge-Weber Syndrome: Navigating Complexities and Treatment Challenges', '1', 'IGS-EP-R-28', '2025-09-02 23:06:36', '2025-09-02 23:06:36'),
(48, 'Febria Savitri', 'From Presistent IOP to Stability: Virna Glaucoma Implant (VGI) Implantation in Advanced Refractory Open-Angle Glaucoma', '1', 'IGS-EP-R-29', '2025-09-02 23:08:08', '2025-09-02 23:08:08'),
(49, 'Andi Althaf Zulfiqar', 'KISSING CHOROIDAL DETACHMENT POST GLAUCOMA DRAINAGE DEVICE IMPLANTATION: NOT AN ADVERSE PROGNOSTIC SIGN FOR SURGICAL SUCCESS', '1', 'IGS-EP-R-30', '2025-09-02 23:15:16', '2025-09-02 23:15:16'),
(50, 'Ardi Rahmansyah', 'Ocular Trauma Eye Hospital in Serang City: A Year Analisys from Emergency room', '1', 'INACOS-EP-GP-1', '2025-09-02 23:17:47', '2025-09-02 23:18:26'),
(51, 'Wilanda Ayu Evanadya Putri', 'Visual Impairmanet Characteristics Across Different Academic Major: A Screening Study of Samarinda State Vocational High School Students by Bakti Etam Kalimantan Timur Eye Hospital (January-February 2025)', '1', 'INACOS-EP-GP-2', '2025-09-02 23:21:01', '2025-09-02 23:21:33'),
(52, 'Aditya', 'Characteristic of Eye Disease Patients in Indramayu General Hospital', '1', 'INACOS-EP-GP-3', '2025-09-02 23:23:09', '2025-09-02 23:23:09'),
(53, 'Ayu Putri Prematura Sri Anasary', 'Ocular Challenges in Surfing Enthusiast: A Systematic Review', '1', 'INACOS-EP-R-1', '2025-09-02 23:25:21', '2025-09-02 23:25:21'),
(54, 'Cahya Suspimantari', 'RELATIONSHIP BETWEEN PHYSICAL AND SOCIOECONOMIC FACTORS AFFECTING QUALITY OF LIFE IN PATIENTS WITH MENINGIOMA INVOLVING THE ORBIT AND VISUAL PATHWAY', '1', 'INACOS-EP-R-2', '2025-09-02 23:27:47', '2025-09-02 23:27:47'),
(55, 'Pricilia Olivia Tan', 'Is Myopia Common Refractive Error in Elementry School Children?', '1', 'INACOS-EP-R-3', '2025-09-02 23:29:52', '2025-09-02 23:29:52'),
(56, 'Danty Indriastuty', 'Eye Care Situation Analysis Tool (ECSAT)', '1', 'INACOS-EP-R-4', '2025-09-02 23:42:07', '2025-09-02 23:42:07'),
(57, 'Darwin Gozali', 'Let’s Go Beyond the Limits to Serve', '1', 'INACOS-EP-O-7', '2025-09-02 23:43:05', '2025-09-02 23:43:05'),
(58, 'NGR Bagus Raditya Sri Damar', 'Frozen by Zoster: A Rare Case of 3rd Nerve Palsy in Herpes Zoster Ophthalmicus', '1', 'INANOS-EP-GP-1', '2025-09-02 23:44:33', '2025-09-02 23:44:33'),
(59, 'Java Indra Maulana S', 'Bilateral Optic Disc Edema Following Methanol-Induced Toxic Neuropathy', '1', 'INANOS-EP-GP-2', '2025-09-02 23:45:35', '2025-09-02 23:45:35'),
(60, 'Miska Raihana', 'Sudden Blindness Without a Trace of Imaging Lesion: an Indirect Traumatic Optic Neuropathy Case', '1', 'INANOS-EP-GP-3', '2025-09-02 23:46:10', '2025-09-02 23:46:10'),
(61, 'Dinda Dwi Puriwati', 'Diagnosis of Syphilitic Bilateral Papillitis Mimicking Papilloedema as a Rare Ocular Manifestation of Syphilis: A Case Report', '1', 'INANOS-EP-GP-4', '2025-09-02 23:46:51', '2025-09-02 23:46:51'),
(62, 'Afifah Nurfitriana', 'Pseudo Foster Kennedy Syndrome in Two Patients with Sequential Non-Arteritic Anterior Ischemic Optic Neuropathy: A Case Series', '1', 'INANOS-EP-GP-5', '2025-09-02 23:48:55', '2025-09-02 23:48:55'),
(63, 'Astri Shafirah Rasyidayati Kadarsah', 'Evaluating Non-Arteritic Anterior Ischemic Optic Neuropathy (NAION) as a Clinical Marker for Future Stroke Risk: Systematic Review & Meta Analysis', '1', 'INANOS-EP-GP-6', '2025-09-02 23:49:54', '2025-09-02 23:49:54'),
(64, 'Ardhika Prasetya', 'LINEZOLID INDUCED TOXIC OPTIC NEUROPATHY : A CASE REPORT', '1', 'INANOS-EP-GP-7', '2025-09-02 23:51:31', '2025-09-02 23:51:31'),
(65, 'Dr Anisa Fitri', 'A Rare Case: Foster Kennedy Syndrome at Doris Sylvanus Hospital Central Kalimantan', '1', 'INANOS-EP-GP-8', '2025-09-02 23:52:23', '2025-09-02 23:52:23'),
(66, 'Azzahra Jelita Kusuma Pamilih', 'A Case Of Macular Mystery: When Best Isn’t Clearly Best', '1', 'INANOS-EP-GP-9', '2025-09-03 00:33:30', '2025-09-03 00:33:30'),
(67, 'Albertus Alvin Suryanto', 'Optic Neuritis Following Tetanus Diphtheria Combined Vaccination: A Case Report', '1', 'INANOS-EP-GP-10', '2025-09-03 00:33:54', '2025-09-03 00:33:54'),
(68, 'Tiara Permatasari', 'From Vision Loss To Neurological Insight: A Case Report On Pseudo-Foster Kennedy Syndrome', '1', 'INANOS-EP-GP-11', '2025-09-03 00:34:16', '2025-09-03 00:34:16'),
(69, 'Ginulur Gensyaf Adgani', 'Optic Neuritis Following Viral Infection: A Case Report', '1', 'INANOS-EP-GP-12', '2025-09-03 00:34:34', '2025-09-03 00:34:34'),
(70, 'Irwan Sanjaya', 'True Foster Kennedy Syndrome', '1', 'INANOS-EP-GP-13', '2025-09-03 00:34:51', '2025-09-03 00:34:51'),
(71, 'Itzar Chaidir Islam', 'When All Seems Lost: A Case Report And Literature Review Of Remarkable Visual Recovery From Near-Total Blindness In Traumatic Optic Neuropathy', '1', 'INANOS-EP-R-28', '2025-09-03 00:35:13', '2025-09-03 00:35:13'),
(72, 'Miranda Howen', 'Optic Neuritis Manifestation In Patient Receiving Ethambutol: An Unforeseen Occurrences To Recognize As A Primary Care Physician', '1', 'INANOS-EP-GP-15', '2025-09-03 00:35:44', '2025-09-03 00:35:44'),
(73, 'Olivia Putri Chairunnisa', 'The Other Dark Side Of Marvelous Botox; A Plot Twist Ptosis And A Matter Of Trusting Time', '1', 'INANOS-EP-GP-16', '2025-09-03 00:36:24', '2025-09-03 00:36:24'),
(74, 'Jamaluddin Ahmad Ali Mas\'ud', 'A Rare Case Of Papillitis In A Patient With Neuromyelitis Optica And Latent Cmv Infection', '1', 'INANOS-EP-GP-17', '2025-09-03 00:36:40', '2025-09-03 00:36:40'),
(75, 'Daniel Atnil', 'Seeing the Signs: The Role of Eye Movement Abnormalities in PSP Diagnosis', '1', 'INANOS-EP-GP-18', '2025-09-03 00:36:59', '2025-09-03 00:36:59'),
(76, 'Ivy Nidia Yuwono', 'Rare Case of Spontaneous Direct Carotid Cavernous Fistula: A Diagnostic Journey Through Common Pitfalls', '1', 'INANOS-EP-GP-19', '2025-09-03 00:37:17', '2025-09-03 00:37:17'),
(77, 'Jihan Camelia Faried', 'Homonymous Hemianopia Following Depressed Parietal Fracture and Intracerebral Haemorrhage Surgery in Kaimana, West Papua – Ophthalmological Challenges in a Remote Setting', '1', 'INANOS-EP-GP-21', '2025-09-03 00:37:40', '2025-09-03 00:37:40'),
(78, 'Siswanto', 'Rapid Recovery Of Horizontal Binocular Diplopia Due To Micro Ischemic Stroke With Pharmacotherapy And Hyperbaric Oxygen Therapy: A Case Report', '1', 'INANOS-EP-O-1', '2025-09-03 00:37:54', '2025-09-03 00:37:54'),
(79, 'Sita Paramita Ayuningtyas', 'When Fever Fades And Vision Fails: Case Series Of Post-Infectious Pediatric Optic Neuritis', '1', 'INANOS-EP-O-2', '2025-09-03 00:38:18', '2025-09-03 00:38:18'),
(80, 'Disti Hardiyanti', 'A Boy With Leber Hereditary Optic Neuropathy Initially Suspected As Atypical Optic Neuritis : A Case Report', '1', 'INANOS-EP-O-3', '2025-09-03 00:38:37', '2025-09-03 00:38:37'),
(81, 'Muhammad Rizqy Abdullah', 'It Goes Dark When The Pressure Drops', '1', 'INANOS-EP-O-4', '2025-09-03 00:38:55', '2025-09-03 00:38:55'),
(82, 'Dita Permatasari', 'Bilateral Multiple Cranial Nerves Paresis In A Child With Tuberculous Meningitis', '1', 'INANOS-EP-O-5', '2025-09-03 00:39:16', '2025-09-03 00:39:16'),
(83, 'Veronica Lusiana Sinurat', 'Homonymous Hemianopia With Macular Sparing: A Sign Of Occipital Infarction In Young Adult', '1', 'INANOS-EP-R-1', '2025-09-03 00:39:46', '2025-09-03 00:39:46'),
(84, 'Tiara Alexander', 'Unilateral Complete Oculomotor Nerve Palsy As Ocular Manifestation In Dengue Haemorrhagic Fever Patient : A Rare Case Report', '1', 'INANOS-EP-R-2', '2025-09-03 00:40:28', '2025-09-03 00:40:28'),
(85, 'Aristo Callen Basten Tombokan', 'Shadowed Vision: A Case Report On Pupil-Involving Oculomotor Nerve Palsy', '1', 'INANOS-EP-R-3', '2025-09-03 00:41:06', '2025-09-03 00:41:06'),
(86, 'Dr. Ivone Rima Ballo', 'Optic Chiasm Compression Due To Suprasellar Meningioma With Complete Blindness : A Case Report', '1', 'INANOS-EP-R-4', '2025-09-03 00:42:26', '2025-09-03 00:42:26'),
(87, 'Frangklin Refelino Jotlely', 'Foster Kennedy Syndrome Caused By Craniopharyngioma: A Case With Type 2 Foster Kennedy Syndrome', '1', 'INANOS-EP-R-5', '2025-09-03 00:42:49', '2025-09-03 00:42:49'),
(88, 'Michelle Eva Rebeca Natalia', 'Bruns’ Nystagmus: A Crucial Sign Of Cerebellopontine Angle Tumor', '1', 'INANOS-EP-R-6', '2025-09-03 00:43:02', '2025-09-03 00:43:02'),
(89, 'Dinda Dwi Purwati', 'Diagnosis Of Syphilitic Bilateral Papillitis Mimicking Papilloedema As A Rare Ocular Manifestation Of Syphilis: A Case Report', '1', 'INANOS-EP-GP-4', '2025-09-03 00:43:23', '2025-09-03 00:43:23'),
(90, 'Ngr. Bagus Raditya Sri Damar', 'Frozen By Zoster: A Rare Case Of 3rd Nerve Palsy In Herpes Zoster Ophthalmicus', '1', 'INANOS-EP-GP-1', '2025-09-03 00:43:49', '2025-09-03 00:43:49'),
(91, 'Muhammad Khoirul Huda', 'Visual Clue To A Silent Killer: A Case Of Homonymous Hemianopia And Intracranial Tumor', '1', 'INANOS-EP-R-9', '2025-09-03 00:44:07', '2025-09-03 00:44:07'),
(92, 'Surya Atmaja', 'When Eyes Don\'t Move In Sync: A Case Report Of Internuclear Ophthalmoplegia', '1', 'INANOS-EP-R-10', '2025-09-03 00:44:23', '2025-09-03 00:44:23'),
(93, 'Agustin Virajati Negoro', 'Pediatric Optic Neuritis: Rapid Diagnosis And Effective Treatment Approach', '1', 'INANOS-EP-R-11', '2025-09-03 00:44:43', '2025-09-03 00:44:43'),
(94, 'Kiara Nurmathias', 'Cerebellar Ataxia With Monocular Diplopia: Diagnostic Challenges And Insight', '1', 'INANOS-EP-R-12', '2025-09-03 00:46:22', '2025-09-03 00:46:22'),
(95, 'Muh. Akbar S', 'Linezolid-Induced Optic Neuropathy In Multidrug-Resistant Tuberculosis Patient: A Case Report', '1', 'INANOS-EP-R-13', '2025-09-03 00:46:38', '2025-09-03 00:46:38'),
(96, 'Romiyanti', 'Clinical Insights Into Neuroretinitis: A Case Study And Management Overview', '1', 'INANOS-EP-R-14', '2025-09-03 00:46:54', '2025-09-03 00:46:54'),
(97, 'Febri Vina Wuwung', 'Unraveling Neuroretinitis: From Vision Loss To The Macular Star', '1', 'INANOS-EP-R-15', '2025-09-03 00:47:26', '2025-09-03 00:47:26'),
(98, 'Miranda Liony Pasandaran', 'Diagnosing Chiasmal Syndrome: A Case Involving Sella-Suprasellar Mass', '1', 'INANOS-EP-R-16', '2025-09-03 00:47:47', '2025-09-03 00:47:47'),
(99, 'Rafika', 'Left Internuclear Ophthalmoplegia With Subsequent Hemiparesis: A Sentinel Sign Of Ischemic Stroke', '1', 'INANOS-EP-R-36', '2025-09-03 00:48:02', '2025-09-03 00:48:02'),
(100, 'Heiddy Chandra Sumampouw', 'A Fleeting Darkness: A Case Report On Transient Visual Loss As An Early Indicator Of Impending Eclampsia', '1', 'INANOS-EP-R-18', '2025-09-03 00:48:19', '2025-09-03 00:48:19'),
(101, 'Arina Setyaningrum', 'A Woman With Unilateral Photophobia Caused By Adie’s Tonic Pupil Successfully Treated With Dilute Pilocarpine : A Case Report', '1', 'INANOS-EP-R-19', '2025-09-03 00:48:38', '2025-09-03 00:48:38'),
(102, 'Azmi Ilmi Aziz', 'Horner Syndrome Following Isthmolobectomy: A Rare Case Report', '1', 'INANOS-EP-R-20', '2025-09-03 00:48:52', '2025-09-03 00:48:52'),
(103, 'Fanda Aviesta Minhalina', 'Unmasking The Imitator: Syphilis Behind Optic Neuritis', '1', 'INANOS-EP-R-21', '2025-09-03 00:49:08', '2025-09-03 00:49:08'),
(104, 'Dr. Heiddy Chandra Sumampouw', 'Blurred Edges: A Case Report On Chiasmal Syndrome And The Hidden Suprasellar Mass', '1', 'INANOS-EP-R-22', '2025-09-03 00:49:35', '2025-09-03 00:49:35'),
(105, 'Nathania Sutandi', 'Complexity Unraveled: Successful Management Of Rare Immune Reconstitution Inflammatory Syndrome (Iris) Induced Sight-Threatening Graves’ Ophthalmopathy', '1', 'INANOS-EP-R-23', '2025-09-03 00:49:54', '2025-09-03 00:49:54'),
(106, 'Rianti Wulandari Pratiwi', 'A Second Chance At Sight: Full Recovery In Mog-Associated Optic Neuritis – A Case Series', '1', 'INANOS-EP-R-24', '2025-09-03 00:50:10', '2025-09-03 00:50:10'),
(107, 'Lia Amanda', 'Spontaneous Bilateral Direct Carotid-Cavernous Fistula In An Elderly Woman: Missed Clues And Delayed Diagnosis', '1', 'INANOS-EP-R-25', '2025-09-03 00:50:48', '2025-09-03 00:50:48'),
(108, 'Diannisa Paramitha Susantono', 'Multidisciplinary Management Of Septic Cavernous Sinus Thrombosis: A Case Of Successful Recovery', '1', 'INANOS-EP-R-26', '2025-09-03 00:51:04', '2025-09-03 00:51:04'),
(109, 'Felicia Sesi Herdian', 'Bilateral Leukemic Optic Neuropathy (Lon) As Sign Of Relapse In Chronic Myeloid Leukemia (Cml) : A Neuro-Oncological Emergency', '1', 'INANOS-EP-R-27', '2025-09-03 00:51:34', '2025-09-03 00:51:34'),
(110, 'Bella Puspita', 'Tolosa-Hunt Syndrome, The Thief Of Eyeball Movement: A Rare Case Report', '1', 'INANOS-EP-GP-14', '2025-09-03 00:51:49', '2025-09-03 00:51:49'),
(111, 'Paramita Fitrianingrum Hendra Putri', 'Seeing Double: Adem-On With Webino In A Rare Paediatric Case', '1', 'INANOS-EP-R-29', '2025-09-03 00:52:03', '2025-09-03 00:52:03'),
(112, 'Yolanda Wulandari Erwen', 'Seeing Beyond The Invisible Signs: Accurate Diagnosis And Prompt Management Are The Cornerstones Of Preserving Vision In Retrobulbar Optic Neuritis', '1', 'INANOS-EP-R-30', '2025-09-03 00:52:35', '2025-09-03 00:52:35'),
(113, 'Ni Nyoman Yuniasih', 'Pediatric Neuroretinitis Following Mumps Infection: Clinical Course And Response To Steroid Therapy', '1', 'INANOS-EP-R-31', '2025-09-03 00:52:51', '2025-09-03 00:52:51'),
(114, 'Ferdy Iskandar', 'Recognize The Nine Syndrome: The Importance Of Prompt Diagnosis In Neuro-Ophthalmology', '1', 'INANOS-EP-R-32', '2025-09-03 00:53:05', '2025-09-03 00:53:05'),
(115, 'Ferdy Iskandar', 'Eyes In Discoordination: A Closer Look At Internuclear Ophthalmoplegia (Ino)', '1', 'INANOS-EP-R-33', '2025-09-03 00:53:18', '2025-09-03 00:53:18'),
(116, 'Ferdy Iskandar', 'Optic Neuritis Or Something More? Neuroimaging In The Evaluation Of Atypical Optic Neuropathies', '1', 'INANOS-EP-R-34', '2025-09-03 00:53:36', '2025-09-03 00:53:36'),
(117, 'Maressya Silvia Eszy', 'The Great Mimicker: Bilateral Ophthalmoplegia Without Retinopathy As An Atypical Presentation Of Type 1 Diabetes', '1', 'INANOS-EP-R-35', '2025-09-03 00:54:12', '2025-09-03 00:54:12'),
(118, 'Romiyanti', 'Complete Visual Recovery In Bilateral Traumatic Optic Neuropathy With High-Dose Steroid, Melatonin And Vitamin B12 – A Case Report', '1', 'INANOS-EP-R-17', '2025-09-03 00:54:27', '2025-09-03 00:54:27'),
(119, 'Romiyanti', 'Unexpected Trigger For An Initial Nmosd Attack: A Case Report', '1', 'INANOS-EP-R-37', '2025-09-03 00:56:43', '2025-09-03 00:56:43'),
(120, 'Risa Rilanda', 'Effectivity Of Loading Dose Anti-Vegf Intravitreal Injection For Wet Age-Related Macular Degeneration (Amd)', '1', 'INANOS-EP-R-38', '2025-09-03 00:56:57', '2025-09-03 00:56:57'),
(121, 'Andi Marsa Nadira', 'The Invisible Venom: Toxic Optic Neuropathy Due To Methanol Inhalation', '1', 'INANOS-EP-R-39', '2025-09-03 00:57:09', '2025-09-03 00:57:09'),
(122, 'Vina Yuwanda', 'When Optic Neuritis is Not Typical: A Case of Myelin Oligodendrocyte Glycoprotein Disorder, Diagnostic and Therapeutic Insights', '1', 'INANOS-EP-R-40', '2025-09-03 00:57:25', '2025-09-03 00:57:25'),
(123, 'Al FARIZI ADHI SUNJAYA', 'The Eye Movement That Unveiled a Stroke: A Case of Internuclear Ophthalmoplegia', '1', 'INANOS-EP-R-41', '2025-09-03 00:57:38', '2025-09-03 00:57:38'),
(124, 'Yura Pradiptama', 'Creeping Pain in Proptotic Eye: Septic Cavernous Sinus Thrombosis Secondary to Herpes Zoster Ophthalmica', '1', 'INANOS-EP-R-42', '2025-09-03 00:57:52', '2025-09-03 00:57:52'),
(125, 'Vence Yusuf Ohorella', 'Parinaud Syndrome Secondary to Midbrain Glioma: A Rare Neuro-Ophthalmic Presentation', '1', 'INANOS-EP-R-43', '2025-09-03 00:58:33', '2025-09-03 00:58:33'),
(126, 'Adam Surya Romadhon', 'Preseptal Cellulitis: Recognise, Differentiate, And Treat Appropriately For Optimal Prognosis', '1', 'INASOPRS-EP-GP-17', '2025-09-03 00:59:42', '2025-09-03 00:59:42'),
(127, 'Aulia Zinedinita Rahmasari', 'Orbital Retinoblastoma With Intraocular Regression: A Case Report', '1', 'INASOPRS-EP-GP-2', '2025-09-03 01:00:05', '2025-09-03 01:00:05'),
(128, 'Lusiyanti', 'Comparison Of Outcomes In Patients Underwent Sutured And Sutureless Pterygium Surgery', '1', 'INASOPRS-EP-GP-3', '2025-09-03 01:00:32', '2025-09-03 01:00:32'),
(129, 'Izdihar Ramadhanty Abiyasa Putri', 'Eyes Wide Open: Addressing Lagophthalmos And Ectropion As Sight-Threatening Sequelae In Hansen’s Disease', '1', 'INASOPRS-EP-GP-4', '2025-09-03 01:00:52', '2025-09-03 01:00:52'),
(130, 'Annastasia Octaviany Putrayasa', 'Case Report: Untreated Penetrating Eye Trauma Due To Patient Refusal', '1', 'INASOPRS-EP-GP-5', '2025-09-03 01:01:04', '2025-09-03 01:01:04'),
(131, 'Mahardhika Nialasta', 'External Dacryocystorhinostomy For Managing Nasolacrimal Duct Obstruction Related To Type 2 Diabetes Mellitus', '1', 'INASOPRS-EP-GP-6', '2025-09-03 01:01:18', '2025-09-03 01:01:18'),
(132, 'M. Ammar Al Ghifari', 'Mild Bilateral Ptosis Without Progression: A Case Report', '1', 'INASOPRS-EP-GP-7', '2025-09-03 01:01:34', '2025-09-03 01:01:34'),
(133, 'Aulia Rezky Mufidah Toaha', 'Comprehensive Management Of Periocular Squamous Cell Carcinoma: Ocular Protection And Reconstructive Strategy', '1', 'INASOPRS-EP-GP-9', '2025-09-03 01:01:48', '2025-09-03 01:01:48'),
(134, 'Bryan Surya Saputra', 'Orbital Cellulitis In A Patient With Uncontrolled Type 2 Diabetes Mellitus ; A Case Report', '1', 'INASOPRS-EP-GP-10', '2025-09-03 01:02:02', '2025-09-03 01:02:02'),
(135, 'Rahmi Triana Putri', 'Traumatic Avulsion Of The Eyeball : A Rare Case Report', '1', 'INASOPRS-EP-GP-12', '2025-09-03 01:02:17', '2025-09-03 01:02:17'),
(136, 'Anak Agung Diyananda Paramita', 'Jones Procedure Blepharoplasty On Bilateral Involutional Entropion With Cortical Cataract In Rural Area: A Case Report', '1', 'INASOPRS-EP-GP-13', '2025-09-03 01:02:32', '2025-09-03 01:02:32'),
(137, 'Anak Agung Diyananda Paramita', 'Dermis Fat Graft For Treatment Of Scleral Melting Post Evisceration With History Of Anti-Vegf Intravitreal Injection: A Case Report', '1', 'INASOPRS-EP-GP-14', '2025-09-03 01:02:45', '2025-09-03 01:02:45'),
(138, 'Wulan Meilani', 'Periorbital Cellulitis: A Case Report', '1', 'INASOPRS-EP-GP-15', '2025-09-03 01:02:59', '2025-09-03 01:02:59'),
(139, 'Nafiisah', 'Surgical Management Of Ocular Lipodermoid: A Case Report', '1', 'INASOPRS-EP-GP-16', '2025-09-03 01:03:13', '2025-09-03 01:03:13'),
(140, 'Reyhan Anjani Putri', 'Beyond The Orbit: Recurrent Orbital Malignant Melanoma With Cerebrospinal Fluid Leak Case Report', '1', 'INASOPRS-EP-GP-1', '2025-09-03 01:03:32', '2025-09-03 01:03:32'),
(141, 'Rizki Luthfia Wardhani', 'Through The Eyes: A Rare Presentation Of Olfactory Neuroblastoma With Orbital Involvement', '1', 'INASOPRS-EP-GP-18', '2025-09-03 01:04:23', '2025-09-03 01:04:23'),
(142, 'Yenny', 'Orbital Cellulitis Due To Pseudomonas Aeruginosa In Immunocompremised : Case Report', '1', 'INASOPRS-EP-GP-19', '2025-09-03 01:04:37', '2025-09-03 01:04:37'),
(143, 'Rianza Ainunnisa', 'Outward Eyelids, Inward Damage: Chronic Environmental Exposure Causing Bilateral Ectropion In A Productive-Aged Man', '1', 'INASOPRS-EP-GP-20', '2025-09-03 01:04:49', '2025-09-03 01:04:49'),
(144, 'Narendra Lintang Yudhisthira', 'Severe Periorbital Trauma In Motorcycle Accident: Case Report', '1', 'INASOPRS-EP-GP-21', '2025-09-03 01:05:02', '2025-09-03 01:05:02'),
(145, 'Anindita Shaqiena', 'A Successful Management Of Large Conjunctival Epithelioid Malignant Melanoma Using Amniotic Membrane Transplant And Topical Mitomycin-C Chemotherapy: A Case Report', '1', 'INASOPRS-EP-GP-22', '2025-09-03 01:05:13', '2025-09-03 01:05:13'),
(146, 'Gusti Ayu Ning Wikan Sari', 'Bilateral Conjunctival Dermolipoma In Adult: A Rare And Overlooked Presentation', '1', 'INASOPRS-EP-GP-23', '2025-09-03 01:05:26', '2025-09-03 01:05:26'),
(147, 'Vinalola Vera Valentin Manalu', 'Alternating Embolization Approach In The Management Of Orbital Infantile Hemangioma: A Case Report', '1', 'INASOPRS-EP-GP-24', '2025-09-03 01:05:38', '2025-09-03 01:05:38'),
(148, 'Aulia Shakila Rahma', 'Complex Zone Ii Open Globe Injury With Eyelid And Canalicular Disruption: A Case Report On Surgical Management And Visual Outcome', '1', 'INASOPRS-EP-GP-25', '2025-09-03 01:05:52', '2025-09-03 01:05:52'),
(149, 'Rizto Wisuda Senuari', 'A Blinding Impact: Scleral Rupture Following Motorcycle Accident-Induced Oculofacial Trauma', '1', 'INASOPRS-EP-GP-26', '2025-09-03 01:06:09', '2025-09-03 01:06:09'),
(150, 'Maria Evane', 'Nodular Mass On The Iris In A 59-Year-Old Female: An Evidence-Based Case Report', '1', 'INASOPRS-EP-GP-27', '2025-09-03 01:06:40', '2025-09-03 01:10:29'),
(151, 'Gracecika Marthgareth Harianja', 'Unilateral Orbital Swelling In A Myopic Patient With Elevated Iop: A Diagnostic Challenge Leading To Nonspecific Orbital Inflammation', '1', 'INASOPRS-EP-GP-28', '2025-09-03 01:10:59', '2025-09-03 01:10:59'),
(152, 'Fitria Adelita', 'Bilateral Ocular Trauma-Induced Blowout Fracture And Retrobulbar Hemorrhage With All Its Complexity: A Case Report', '1', 'INASOPRS-EP-GP-29', '2025-09-03 01:11:28', '2025-09-03 01:11:28'),
(153, 'Made Padma Diani Putri', 'Management of Full Thickness Upper Eyelid Laceration and Superior Canaliculi Rupture Using 24G Intravenous Cannula: A Case Report', '1', 'INASOPRS-EP-GP-30', '2025-09-03 01:11:41', '2025-09-03 01:11:41'),
(154, 'Yuni Ariani', 'Conjunctival myxoma: case report and literature review of a rare tumor.', '1', 'INASOPRS-EP-GP-31', '2025-09-03 01:12:09', '2025-09-03 01:12:09'),
(155, 'Sekar Rahadisiwi', 'A Rare, Multiple, Bilateral Epidermal Cyst of the Eyelids : A Case Report', '1', 'INASOPRS-EP-GP-32', '2025-09-03 01:12:37', '2025-09-03 01:12:37'),
(157, 'Ghina Nisrina', 'Effective Surgical Management In Conjunctival Inclusion Cyst: A Case Report', '1', 'INASOPRS-EP-GP-33', '2025-09-03 01:13:12', '2025-09-03 01:13:12'),
(158, 'Mardijas Efendi', 'Destructive Orbital Wall Of Pott’s Puffy Tumour In An Adult Female', '1', 'INASOPRS-EP-O-2', '2025-09-03 01:13:25', '2025-09-03 01:13:25'),
(159, 'Tania Rahmania M.', 'Amniotic Membrane Transplantation For Conjunctival Cyst Removal, Pterygium Duplex And Symblepharon Surgery In Rural Area.', '1', 'INASOPRS-EP-O-3', '2025-09-03 01:13:38', '2025-09-03 01:13:38'),
(160, 'Merry Giovedi Ey', 'Simple Innovative Surgical Approach For Pterygium With Symblepharon Using Limbal Autograft', '1', 'INASOPRS-EP-O-4', '2025-09-03 01:13:56', '2025-09-03 01:13:56'),
(161, 'Ni Luh Putu Wistya Eka Mahadewi', 'Management Of Ocular Surface Squamous Neoplasia In Peripheral Hospital', '1', 'INASOPRS-EP-O-5', '2025-09-03 01:14:10', '2025-09-03 01:14:10'),
(162, 'Dr. Najmatuzzahra', 'A Rare Case Of Adult-Onset Xanthogranuloma Of The Eyelid: Successful Management With Surgical Debulking And Intralesional Corticosteroids', '1', 'INASOPRS-EP-R-21', '2025-09-03 01:14:24', '2025-09-03 01:14:24'),
(163, 'A. Muh. Yusril Kurniawan Yahya', '\"Conjunctival Tumor : A Rare But Real Ocular Manifestation In Neurofibromatosis Type 1\"', '1', 'INASOPRS-EP-R-11', '2025-09-03 01:14:38', '2025-09-03 01:14:38'),
(164, 'Nurizki Meutiarani', 'Challenging Management Of Complex Cnldo With Nasal Anomaly: A Case Report', '1', 'INASOPRS-EP-R-6', '2025-09-03 01:14:51', '2025-09-03 01:14:51'),
(165, 'Fitria Kusumastuti', 'Tiny Single Fallen Eyelash Leads To Giant Conjunctival Cyst : A Case Report', '1', 'INASOPRS-EP-O-9', '2025-09-03 01:15:08', '2025-09-03 01:15:08'),
(166, 'Delfitri Lutfi', 'Glabellar Flap As An Alternative Technique In Reconstruction Of Large Upper Eyelid Defect After Wide Excision Of Sebaceous Gland Carcinoma', '1', 'INASOPRS-EP-O-10', '2025-09-03 01:15:19', '2025-09-03 01:15:19'),
(167, 'Hanna Insani Vedy', 'Challenging Lower Eyelid Reconstruction: The Role Of Modified Mc Gregor Flap In Extensive Basal Cell Carcinoma', '1', 'INASOPRS-EP-R-8', '2025-09-03 01:15:38', '2025-09-03 01:15:38'),
(168, 'Dwi Erin', 'Subtotal Orbital Exenteration With Eyelid-Sparing Technique In Recurrent Conjunctival Squamous Cell Carcinoma: A Radical Approach Balancing Aesthetics And Function', '1', 'INASOPRS-EP-R-9', '2025-09-03 01:15:51', '2025-09-03 01:15:51'),
(169, 'Felichia Yovianda', 'Dacryostenosis with a huge dacryolith in rural area: How to handle it', '1', 'INASOPRS-EP-O-13', '2025-09-03 01:16:12', '2025-09-03 01:16:12'),
(170, 'Dyah TJjintya Sarika', 'Successful Management of Ocular Surface Squamous Intraepithelial Neoplasia (OSSN) with ‘No Touch’ Technique Procedure : A Case Report', '1', 'INASOPRS-EP-O-14', '2025-09-03 01:16:26', '2025-09-03 01:16:26'),
(171, 'Atika Syafendra', 'Apocrine Hidrocystoma Of The Medial Canthus: A Rare Periocular Lesion In An Adolescent', '1', 'INASOPRS-EP-R-1', '2025-09-03 01:16:56', '2025-09-03 01:16:56'),
(172, 'Irma Suwandi Sadikin', 'A Glorious Victory: Masterful Management Of Orbito-Cranial Foreign Body Caused By Rear View Mirror - A Case Report', '1', 'INASOPRS-EP-R-2', '2025-09-03 01:17:15', '2025-09-03 01:17:15'),
(173, 'Frangklin Refelino Jotlely', 'Open Globe Injury With Retained Foreign Body Of Air Rifle Bullet At The Frontal Sinus Base: A Challenging Case', '1', 'INASOPRS-EP-R-3', '2025-09-03 01:17:33', '2025-09-03 01:17:33'),
(174, 'M Akmal Ashrof', 'Surgical Excision Of Congenital Limbal Dermoid: Technique And Clinical Outcomes', '1', 'INASOPRS-EP-R-4', '2025-09-03 01:17:48', '2025-09-03 01:17:48'),
(175, 'Nabilah Rivanti Hamidah', 'The Modified Gundersen Flap : Reviving The Shrunken Eye1', '1', 'INASOPRS-EP-R-5', '2025-09-03 01:18:10', '2025-09-03 01:18:10'),
(176, 'Ni Made Ayu Trisnadewi Suyasa', 'Post Evisceration Infected Anophthalmic Socket Reconstruction With Skin Clavicula Graft And Tubing Butterfly Needle For Deepening Fornix', '1', 'INASOPRS-EP-O-7', '2025-09-03 01:19:11', '2025-09-03 01:19:11'),
(177, 'Lily Raudah Putri', 'Maximal Levator Resection For Correction Of Ptosis In Orbital Neurofibroma: A Minimalist Technique To Maximal Results', '1', 'INASOPRS-EP-R-7', '2025-09-03 01:19:27', '2025-09-03 01:19:27'),
(178, 'Nur Azizah', 'Optimizing Eyelid Function And Aesthetics In Congenital Divided Melanocytic Nevus: A Surgical Case Report', '1', 'INASOPRS-EP-O-11', '2025-09-03 01:19:41', '2025-09-03 01:19:41'),
(179, 'A. Elizar Asriyani', 'A Successful Hughes Flap Reconstruction Following Lower Eyelid Sebaceous Gland Carcinoma Excision In An Elderly', '1', 'INASOPRS-EP-O-12', '2025-09-03 01:19:54', '2025-09-03 01:19:54'),
(180, 'Darafika', 'Balancing Tumor Eradication And Eyelid Reconstruction: The Ongoing Role Of The Tenzel Flap In Managing Recurrent Eyelid Bcc', '1', 'INASOPRS-EP-R-10', '2025-09-03 01:20:08', '2025-09-03 01:20:08'),
(181, 'Ni Made Ayu Trisnadewi Suyasa', 'A Case Report : Upper Eyelid Coloboma Reconstruction With Tenzel Semisircular Flap In Oculo Auricula Vertebral Spectrum', '1', 'INASOPRS-EP-O-8', '2025-09-03 01:20:22', '2025-09-03 01:20:22'),
(182, 'Dave Abraham Kambey', 'Silent Pressure: A Rare Case Of Optic Nerve Sheath Meningioma Presenting As Isolated Right-Sided Proptosis', '1', 'INASOPRS-EP-R-12', '2025-09-03 01:20:35', '2025-09-03 01:20:35'),
(183, 'Sthery Rhefany Olive Mathindas', '\"Beyond The Surface: Unraveling An Epidermoid Cyst In The Right Upper Lid\"', '1', 'INASOPRS-EP-R-14', '2025-09-03 01:20:51', '2025-09-03 01:20:51'),
(184, 'Ferdy Iskandar', 'Restoring Lacrimal Drainage In Infected Sacs: A Case Of Acute Dacryocystitis With Preseptal Cellulitis Managed By External Dacryocystorhinostomy (Dcr)', '1', 'INASOPRS-EP-R-30', '2025-09-03 01:21:13', '2025-09-03 01:21:13'),
(185, 'Nabila Hana Syaqila', 'Surgical Management Of Traumatic Globe Avulsion Following High-Impact Trauma: A Case Report', '1', 'INASOPRS-EP-R-17', '2025-09-03 01:21:24', '2025-09-03 01:21:24'),
(186, 'Nathaniel Christopher Maryono', 'Penetrating Eye Injury By Handmade Arrow: A Case Report', '1', 'INASOPRS-EP-R-28', '2025-09-03 01:21:37', '2025-09-03 01:21:37'),
(187, 'Satria Nugraha Hasibuan', 'Optimizing Aesthetic Results In Lower Eyelid Bcc Surgery: A Tenzel Flap Approach', '1', 'INASOPRS-EP-R-19', '2025-09-03 01:21:57', '2025-09-03 01:21:57'),
(188, 'Carennia Paramita', 'How To Carefully Design An Eyelid Reconstruction For Extensive Defects — Strategies And Management', '1', 'INASOPRS-EP-R-20', '2025-09-03 01:22:09', '2025-09-03 01:22:09'),
(189, 'Lady Pranodia Sukmawidowati', 'Synchronous Eyelid Basal Cell Carcinoma And Breast Cancer: A Case Report Of Double Primary Malignancies', '1', 'INASOPRS-EP-O-6', '2025-09-03 01:22:22', '2025-09-03 01:22:22'),
(190, 'Alberta Yoshe Meiliana Tansil', 'Managing Recurrent Ocular Surface Squamous Neoplasia: Case Reports On 5-Fu Therapy', '1', 'INASOPRS-EP-R-22', '2025-09-03 01:22:36', '2025-09-03 01:22:36'),
(191, 'Rataya Paramitha Maliawan', 'Complex Blowout Fracture With Palpebral Rupture: Successful Repair With Orbital Plate Fixation And Supraclavicular Skin Grafting - A Case Report', '1', 'INASOPRS-EP-R-23', '2025-09-03 01:22:51', '2025-09-03 01:22:51'),
(192, 'Carvin Herryanto', 'A Look Alike Malignant Tumor: Treat Or Wait?', '1', 'INASOPRS-EP-R-24', '2025-09-03 01:23:24', '2025-09-03 01:23:24'),
(193, 'Ferdy Iskandar', 'Prepare For The Unexpected: Resident-Led Oral Membrane Graft And Lateral Advancement Flap In Posterior Lamellar Reconstruction In Emergency Setting', '1', 'INASOPRS-EP-R-31', '2025-09-03 01:23:39', '2025-09-03 01:23:39'),
(194, 'Kms. M. Temidtya Kurnia Romadhan', 'Frontalis Sling Approach To Restore An Entropion In Congenital Ptosis Surgery', '1', 'INASOPRS-EP-R-26', '2025-09-03 01:23:52', '2025-09-03 01:23:52'),
(195, 'Ferdy Iskandar', 'Orbital Involvement In Paranasal Sinus Mucocele: An Ophthalmologist’s Perspective On Diagnosis And Multidisciplinary', '1', 'INASOPRS-EP-R-32', '2025-09-03 01:24:05', '2025-09-03 01:24:05'),
(196, 'Ridzky Prhandika Yogasawra', 'Pigmented Conjunctival Lesion With Adjacent Tumor Growth: Should We Be More Cautious?', '1', 'INASOPRS-EP-R-18', '2025-09-03 01:24:19', '2025-09-03 01:24:19'),
(197, 'Umi Muchtiaah Udhe', 'Cutler Beard To Revise A Necrotic Flap: Friend To Overcome The Foe', '1', 'INASOPRS-EP-R-29', '2025-09-03 01:24:50', '2025-09-03 01:24:50'),
(198, 'M Akmal Ashrof', 'Multidisciplinary Approach To A Transorbital Penetrating Foreign Body: From Palpebra To Suprasellar', '1', 'INASOPRS-EP-R-27', '2025-09-03 01:25:07', '2025-09-03 01:25:07'),
(199, 'Isma Zul Abdillah Jaya', 'When Trauma Strikes Thrice: Open Globe Injury, Hyphema, Traumatic Optic Neuropathy, And Traumatic Cataract In Pediatric Care', '1', 'INASOPRS-EP-R-16', '2025-09-03 01:25:18', '2025-09-03 01:25:18'),
(200, 'Andarisa Rachman Nugraha', 'Succesful Result Of Anterior Flip Technique’s Orbitotomy In Huge Lacrimal Gland Tumor', '1', 'INASOPRS-EP-R-25', '2025-09-03 01:25:30', '2025-09-03 01:25:30'),
(201, 'Silvia Fransisca', 'An Unusual Occult Foreign Body On The Eyelid Presenting As Palpable Eyelid Mass', '1', 'INASOPRS-EP-R-33', '2025-09-03 01:25:46', '2025-09-03 01:25:46'),
(202, 'Yudrik Maulana', 'Framing The Eyes Direct Brow Lift As A Management Of Brow Ptosis', '1', 'INASOPRS-EP-R-34', '2025-09-03 01:26:05', '2025-09-03 01:26:05'),
(203, 'Fikry Barran', 'A Rare Case: Diagnosis And Treatment Of Cutaneous Horn Of The Eyelid In Cicendo Eye Hospital', '1', 'INASOPRS-EP-R-35', '2025-09-03 01:26:17', '2025-09-03 01:26:17'),
(204, 'Ayu Diah Permatasari', 'One Stage Surgery Of Blepharophimosis Syndrome: A Rare Case Report', '1', 'INASOPRS-EP-R-48', '2025-09-03 01:26:31', '2025-09-03 01:26:31'),
(205, 'Kristian Dernitra', 'Trans-Scleral Biopsy via Scleral Window in a Choroidal Melanoma Patient with Exudative Retinal Detachment: A Case Report', '1', 'INASOPRS-EP-R-56', '2025-09-03 01:26:43', '2025-09-03 01:26:43'),
(206, 'Kemala Octariny', 'From Asymmetry To Symmetry: How Do We Solve The Puzzle Of Goldenhar Syndrome?', '1', 'INASOPRS-EP-R-38', '2025-09-03 01:26:56', '2025-09-03 01:26:56'),
(207, 'Anak Agung Putri Satwika', 'Orbital Extension Of Choroidal Melanoma: A Case Of Glaucoma Masquerader', '1', 'INASOPRS-EP-R-41', '2025-09-03 01:27:09', '2025-09-03 01:27:09'),
(208, 'Fredric Zulkifly', 'Seeing The Unseen: An Unusual Case Of Giant Conjunctival Inclusion Cyst', '1', 'INASOPRS-EP-R-40', '2025-09-03 01:27:25', '2025-09-03 01:27:25'),
(209, 'Yunanda Rizki Amalia Harahap', 'A Challenging Case Of Penetrating Eyelid Injury With Intraorbital (Wooden) Foreign Body: Management Strategy', '1', 'INASOPRS-EP-R-42', '2025-09-03 01:27:36', '2025-09-03 01:27:36'),
(210, 'Dhiny Lidinillah', 'The Sun-Exposed Eye: A Case Of Ocular Surface Squamous Neoplasia', '1', 'INASOPRS-EP-R-36', '2025-09-03 01:28:11', '2025-09-03 01:28:11'),
(211, 'Anindya Ramadian Karunika', 'Overcoming Barriers: Managing Symblepharon And Lid Margin Keratinization Following Pesticide-Induced Toxic Epidermal Necrolysis In A 12-Year-Old Boy', '1', 'INASOPRS-EP-R-43', '2025-09-03 01:28:22', '2025-09-03 01:28:22'),
(212, 'Savira Amanda', 'A Rare Case Of Orbital Mantle Cell Lymphoma: A Diagnostic Challenge', '1', 'INASOPRS-EP-R-44', '2025-09-03 01:28:34', '2025-09-03 01:28:34'),
(213, 'Amira Wahyunisa', 'Revisiting Management Strategies For Residual Optic Nerve Sheath Meningioma Of The Orbital Apex', '1', 'INASOPRS-EP-R-45', '2025-09-03 01:28:48', '2025-09-03 01:28:48'),
(214, 'Prianggara Rostu Prayoga', 'Management Of Facial Nerve Paralysis Causing Lagophthalmos And Exposure Keratitis Using The Lateral Tarsal Strip Method', '1', 'INASOPRS-EP-R-46', '2025-09-03 01:29:01', '2025-09-03 01:29:01'),
(215, 'Anisha Sefina Priatna', 'Above The Eyes: Surgical Strategies For Frontal Sinus Mucocele Management', '1', 'INASOPRS-EP-R-39', '2025-09-03 01:29:13', '2025-09-03 01:29:13'),
(216, 'Priya Taufiq Arrachman', 'Blepharotomy As Surgical Management Of Lid Retraction In Thyroid- Associated Ophthalmopathy', '1', 'INASOPRS-EP-R-49', '2025-09-03 01:29:26', '2025-09-03 01:29:26'),
(217, 'Dwi Rahmawita Basri', 'Frontal Sling Technique: Addressing re-repair challenges for under-corrected congenital ptosis', '1', 'INASOPRS-EP-R-50', '2025-09-03 01:29:38', '2025-09-03 01:29:38'),
(218, 'Muhammad Khoirul Huda', 'Blinded by the Blast: Catastrophic Ocular Trauma from a Firecracker Explosion', '1', 'INASOPRS-EP-R-51', '2025-09-03 01:30:14', '2025-09-03 01:30:14'),
(219, 'Jane Framita', 'Blinded by The Sun: A Rare Case of Bilateral Ocular Squamous Cell Carcinoma in Xeroderma Pigmentosum', '1', 'INASOPRS-EP-R-52', '2025-09-03 01:30:32', '2025-09-03 01:30:32'),
(220, 'Hindun Zakiyah', 'From Glaucoma to Melanoma : Rethinking Common Diagnostic Pitfalls of Choroidal Melanoma in Daily Practice -A Case Series', '1', 'INASOPRS-EP-R-53', '2025-09-03 01:30:44', '2025-09-03 01:30:44'),
(221, 'Gustiandari Fidhya Permanik', 'How Rules Apply to Old Scars: Achieving Functional and Aesthetic Wins in Cicatricial Ectropion', '1', 'INASOPRS-EP-R-54', '2025-09-03 01:31:07', '2025-09-03 01:31:07'),
(222, 'Faiz Muhammad Ikhsan', 'Ocular Sequelae and Management After Vaping-Related Explosion: From Blast to Blindness', '1', 'INASOPRS-EP-R-55', '2025-09-03 01:31:22', '2025-09-03 01:31:22'),
(223, 'Soraya Febriananda', 'Basal Cell Carcinoma Wide Excision Reconstruction : A Case Report', '1', 'INASOPRS-EP-R-37', '2025-09-03 01:31:36', '2025-09-03 01:31:36'),
(224, 'Raudhah Salwati', '1Bilateral Pterygium In An Adult Treated With Conjunctival Autograft Using Patient’s Blood Fixation: A Case Report', '1', 'INASCRS-EP-GP-1', '2025-09-03 01:41:23', '2025-09-03 01:41:23'),
(225, 'Laksana Firman Latief', 'A Case Series Of Vision Outcomes In 15 Southeast Asian Eyes After Implanted With Refractive Edof Hybrid Iol (Lucidis)', '1', 'INASCRS-EP-GP-2', '2025-09-03 01:42:33', '2025-09-03 01:42:33'),
(226, 'Mia Audina', 'Distribution Of Blindness In Central Aceh Regency: A Retrospective Study At Datu Beru Hospital', '1', 'INASCRS-EP-GP-3', '2025-09-03 01:42:46', '2025-09-03 01:42:46'),
(227, 'Mahrumi Dewi Tri Utami', 'Management Of Blunt Ocular Trauma With Lamellar Corneal Laceration, Traumatic Cataract, And Angle Recession: A Case Report', '1', 'INASCRS-EP-GP-4', '2025-09-03 01:42:57', '2025-09-03 01:42:57'),
(228, 'Bella Puspita', 'The Mystery Of Partial Dislocation Of Crystalline Lens To The Anterior Chamber : A Case Report', '1', 'INASCRS-EP-GP-5', '2025-09-03 01:43:09', '2025-09-03 01:43:09'),
(229, 'Rizka Kusumawardani', 'Visual Outcome Of Phacoemulsification In Cataract Patients With High Myopia', '1', 'INASCRS-EP-GP-6', '2025-09-03 01:43:20', '2025-09-03 01:43:20'),
(230, 'Dr. Prasetya Utami', 'The Management For Full-Thickness Corneal Laceration With Traumatic Cataract', '1', 'INASCRS-EP-GP-7', '2025-09-03 01:43:30', '2025-09-03 01:43:30'),
(231, 'Justika Usmadhani Aulya', 'A Gym-Goer\'s Bilaterally Early-Onset Posterior Subcapsular Cataract Using Anabolic-Androgenic Steroids: A Case Report', '1', 'INASCRS-EP-GP-8', '2025-09-03 01:43:40', '2025-09-03 01:43:40'),
(232, 'Khusnul Yaqien', 'Biometric Parameters In Anisometropia: Expect The Unexpected', '1', 'INASCRS-EP-GP-9', '2025-09-03 01:43:52', '2025-09-03 01:43:52'),
(233, 'Adrian Denato', 'Aphakic Or Not : Cataract Surgery With High Myopia', '1', 'INASCRS-EP-GP-10', '2025-09-03 01:44:05', '2025-09-03 01:44:05'),
(234, 'Alya Maulida', 'Phacoemulsification As A Secondary Procedure In Traumatic Cataract With Zonulysis : The Rule Of Capsular Tension Ring Placement', '1', 'INASCRS-EP-GP-12', '2025-09-03 01:44:18', '2025-09-03 01:44:18'),
(235, 'Muhamad Zidny Fahmi', 'Excellent Visual And Refractive Outcome After Acrysof Iq Toric Sn6at3 Implantation Based On Total Keratometry And Barrett Calculation In A Grade 3–4 Cataract: A Case Report', '1', 'INASCRS-EP-O-1', '2025-09-03 01:44:40', '2025-09-03 01:44:40'),
(236, 'Ni Made Dwipayani', 'Bilateral Dropped Nuclei In Pseudoexfoliation Syndrome: A Case Report', '1', 'INASCRS-EP-O-2', '2025-09-03 01:44:59', '2025-09-03 01:44:59'),
(237, 'Dessira Rizka Tri Ariany', 'Unusual Recurrent Subconjunctival Hemorrhage Associated With Imatinib Mesylate', '1', 'INASCRS-EP-O-3', '2025-09-03 01:45:26', '2025-09-03 01:45:26'),
(238, 'Nida Farida', 'Correlation Between Preoperative Retinometry Findings And Postoperative Visual Outcomes Following Phacoemulsification Cataract Surgery With Intraocular Lens Implantation In Jakarta Aini Eye Clinic', '1', 'INASCRS-EP-O-5', '2025-09-03 01:45:36', '2025-09-03 01:45:36'),
(239, 'Ade John Nursalim', 'Managing Complex Ocular Manifestations Of Marfan Syndrome: Bilateral Lens Extraction And Scleral Iol Fixation', '1', 'INASCRS-EP-O-6', '2025-09-03 01:46:06', '2025-09-03 01:46:06'),
(240, 'Harumi Purwa Prahesthy', 'Short-Term Outcomes Of The Yamane Technique For Secondary Iol Fixation: A Single-Surgeon Experience By A Young Ophthalmologist', '1', 'INASCRS-EP-O-7', '2025-09-03 01:46:21', '2025-09-03 01:46:21'),
(241, 'Tommy Tri Atmaja', 'Managing Intraoperative Instability In High Myopia: A Case Treated With Aggressive Transprk', '1', 'INASCRS-EP-O-8', '2025-09-03 01:46:31', '2025-09-03 01:46:31'),
(242, 'Husnaini', 'Retropupillary Iris-Claw Intraocular Lens for Management of Ectopia Lentis in Patient with Marfan Syndrome', '1', 'INASCRS-EP-O-10', '2025-09-03 01:46:43', '2025-09-03 01:46:43'),
(243, 'Heri Wijayanto', 'Femto-LASIK in Multiple Corneal Scar :  A Case', '1', 'INASCRS-EP-O-11', '2025-09-03 01:47:14', '2025-09-03 01:47:14'),
(244, 'Elizabeth Candice Marbun', 'Iol Exchange Procedure From Prepupillary To Retropupillary Iris-Claw In Patients With Iol Dislocation And Low Endothelial Count', '1', 'INASCRS-EP-R-1', '2025-09-03 01:47:32', '2025-09-03 01:47:32'),
(245, 'Syafira Kamila Fathoni', 'Piggyback Intraocular Lens As A Treatment Of Choice For Refractive Surprise After Cataract Surgery', '1', 'INASCRS-EP-R-2', '2025-09-03 01:47:48', '2025-09-03 01:47:48'),
(246, 'Stevie Caroline Moningka', 'Challenges Of Restoring Vision In A Patient With Traumatic Total Aniridia And Aphakia In Toto', '1', 'INASCRS-EP-R-3', '2025-09-03 01:48:06', '2025-09-03 01:48:06'),
(247, 'Michael Hartono', 'Preserving The Bag, Securing The Vision: A Hybrid Iol Fixation Technique In Pediatric Microspherophakia', '1', 'INASCRS-EP-R-4', '2025-09-03 01:48:19', '2025-09-03 01:48:19'),
(248, 'Prika Maulina Agaristi', 'Dual Challenge: Phacoemulsification In The Presence Of A Traumatic Iris Cyst', '1', 'INASCRS-EP-R-5', '2025-09-03 01:48:30', '2025-09-03 01:48:30'),
(249, 'Dave Abraham Kambey', 'Unveiling Ifis In Women: A Rare Case Of Floppy Iris Syndrome In Cataract Surgery', '1', 'INASCRS-EP-R-6', '2025-09-03 01:48:42', '2025-09-03 01:48:42'),
(250, 'Cindy Prajna Metta', 'Spontaneous Resolution Of Optic Capture Following Flanged Intrascleral Intraocular Lens Fixation: A Case Report', '1', 'INASCRS-EP-R-7', '2025-09-03 01:49:01', '2025-09-03 01:49:01'),
(251, 'Ahmad Faishal', 'A Case Report Of Anterior Lens Luxation In Patients With Microspherophakia', '1', 'INASCRS-EP-R-8', '2025-09-03 01:49:12', '2025-09-03 01:49:12'),
(252, 'Prika Maulina Agaristi', 'Micropunctoo As A Novel Technique Of Keratopigmentation In Corneal Opacities', '1', 'INASCRS-EP-R-9', '2025-09-03 01:49:24', '2025-09-03 01:49:24'),
(253, 'Mercy Junita Putri Tumundo', 'Traumatic Open Globe Injury From Fish Fin Penetration Leading To Prolapsed Iris And Traumatic Cataract: A Case Report', '1', 'INASCRS-EP-R-10', '2025-09-03 01:49:39', '2025-09-03 01:49:39'),
(254, 'Fajri Ijrian', 'Management Of Persistent Pupillary Membrane With Cataract', '1', 'INASCRS-EP-R-11', '2025-09-03 01:49:54', '2025-09-03 01:49:54'),
(255, 'Febri Vina Wuwung', 'Phacoemulsification In Down Syndrome : Enhancing Quality Of Life', '1', 'INASCRS-EP-R-12', '2025-09-03 01:50:08', '2025-09-03 01:50:08'),
(256, 'Aprilia Elisabet', 'Optimized Surgical Timing And Management In Traumatic Cataract And Ocular Reconstruction Following A Fishing Hook Injury: A Case Report', '1', 'INASCRS-EP-R-13', '2025-09-03 01:50:21', '2025-09-03 01:50:21'),
(257, 'Nita Nurlaila Kasarwaty', 'Beyond The Iris: Strategies For Vision Recovery In Congenital Aniridia', '1', 'INASCRS-EP-R-14', '2025-09-03 01:50:37', '2025-09-03 01:50:37'),
(258, 'Alberta Yoshe Meiliana Tansil', 'From Trauma To Restoration: Refining Iridodialysis Repair With The Sewing Machine Technique', '1', 'INASCRS-EP-R-15', '2025-09-03 01:50:49', '2025-09-03 01:50:49');
INSERT INTO `posters` (`id`, `name`, `title`, `tv`, `legacyId`, `created_at`, `updated_at`) VALUES
(259, 'Gralia Risky', 'From Shadow To Sight : A Success Story Optimizing Cataract Surgery In Vogt-Koyanagi-Harada Syndrome', '1', 'INASCRS-EP-R-16', '2025-09-03 01:51:01', '2025-09-03 01:51:01'),
(260, 'Cindy Prajna Metta', 'Intralenticular Foreign Body: A Case Report', '1', 'INASCRS-EP-R-17', '2025-09-03 01:51:12', '2025-09-03 01:51:12'),
(261, 'Muhammad Dienda Ade Nugraha', 'Pupilloplasty And Cataract Surgery In A Complex Anterior Segment Anomaly: A Case Of Persistent Pupillary Membrane', '1', 'INASCRS-EP-R-18', '2025-09-03 01:51:23', '2025-09-03 01:51:23'),
(262, 'Givenchy Angela Winarjo', 'Management Of Clinically Significant Iol Glistening Using The Double Sinskey Technique: A Case-Based Approach', '1', 'INASCRS-EP-R-19', '2025-09-03 01:51:34', '2025-09-03 01:51:34'),
(263, 'Nathania Sutandi', 'Unlocking The Potential Of Auto Keratoplasty: A Closer Look Through Our Experience', '1', 'INASCRS-EP-R-20', '2025-09-03 01:51:48', '2025-09-03 01:51:48'),
(264, 'Faiz Nurboston Fauzi', 'Spontaneous Resolution Of Corneal Blood Staining And Challenging Management Of Occlusio Pupillae After Traumatic Hyphema In Children', '1', 'INASCRS-EP-R-21', '2025-09-03 01:52:06', '2025-09-03 01:52:06'),
(265, 'Rizqi Suryani Putri', 'Pseudophakic Bullous Keratopathy As Complication Of Posterior Chamber Intraocular Lens (Pc-Iol) Implantation In Anterior Chamber', '1', 'INASCRS-EP-R-22', '2025-09-03 01:52:19', '2025-09-03 01:52:19'),
(266, 'Leoni Atikawati', 'Managing Traumatic Cataract With Combination Of Capsular Tension Ring And Capsular Tension Segment Implantation', '1', 'INASCRS-EP-R-23', '2025-09-03 01:52:33', '2025-09-03 01:52:33'),
(267, 'Fachri Padmaridho Afandi', 'Corneal Aberration Post Cataract Surgery: A Systematic Review', '1', 'INASCRS-EP-R-24', '2025-09-03 01:53:32', '2025-09-03 01:53:32'),
(268, 'Metika Rahmasari Irza', 'Surgical Pupilloplasty Combined Trabeculectomy For Management Of Secondary Angle Closure Glaucoma : A Case Report', '1', 'INASCRS-EP-R-25', '2025-09-03 01:53:45', '2025-09-03 01:53:45'),
(269, 'Brigitta Marcia Budihardja', 'Dsek Meets Glaucoma: Navigating Challenges In A Multi-Glaucoma Implant Eye - A Case Report', '1', 'INASCRS-EP-R-26', '2025-09-03 01:54:05', '2025-09-03 01:54:05'),
(270, 'Hindun Zakiyah', 'Coloboma Conundrum : Overcoming Cataract Surgery Hurdles In Congenital Iris Coloboma And Microcornea', '1', 'INASCRS-EP-R-27', '2025-09-03 01:54:16', '2025-09-03 01:54:16'),
(271, 'Rizki Adi Santosa', 'Successful Sutureless Combined Implantation Of Capsular Tension Ring And Segment For Subluxated Lens In Marfan Syndrome', '1', 'INASCRS-EP-R-28', '2025-09-03 01:54:27', '2025-09-03 01:54:27'),
(272, 'Noor Adnan Setiawan', 'HIGH VOLTAGE, CLOUDED SIGHT : A RARE CASE OF BILATERAL CATARACT FOLLOWING ELECTRICAL INJURY', '1', 'INASCRS-EP-R-29', '2025-09-03 01:54:41', '2025-09-03 01:54:41'),
(273, 'Ardelia Emily Wulur', 'Rescuing the Capsule: A Case of Zonular Dialysis Managed with CTS, CTR, and Iris Repair', '1', 'INASCRS-EP-R-30', '2025-09-03 01:54:54', '2025-09-03 01:54:54'),
(274, 'Annisa Windyani', 'Early Intervention and Staged Surgery in Open Globe Trauma with Pre-Existing Visual Impairment', '1', 'INASCRS-EP-R-31', '2025-09-03 01:55:05', '2025-09-03 01:55:05'),
(275, 'Kristo Hadi Audric Sugiaman', 'Management of Traumatic Descemetocele', '1', 'INASCRS-EP-R-32', '2025-09-03 01:55:18', '2025-09-03 01:55:18'),
(276, 'Tatia Indira', 'From Surprise to Solution: A Case Report of Post-Cataract Refractive Surprise Management', '1', 'INASCRS-EP-R-33', '2025-09-03 01:55:32', '2025-09-03 01:55:32'),
(277, 'Fasya Rizkiaputri', 'Cnn Deep Learning-Based Oct-A For Diagnosis Of Diabetic Retinopathy: A Systematic Review And Meta-Analysis', '1', 'INAVRS-EP-GP-1', '2025-09-03 01:59:17', '2025-09-03 01:59:17'),
(278, 'Vinalola Vera Valentin Manalu', 'Early Surgical Management Of Intraocular Foreign Body: A Case Report And Review Of Prognostic Considerations', '1', 'INAVRS-EP-GP-2', '2025-09-03 01:59:32', '2025-09-03 01:59:32'),
(279, 'Dr. Muhammad Imran Khan Ismail', 'Evolving Therapeutic Paradigms For Rare Double Macular Hole: A Case Report.', '1', 'INAVRS-EP-GP-3', '2025-09-03 01:59:43', '2025-09-03 01:59:43'),
(280, 'Desy Kusumaningrum', 'Beyond The Darkness And Silence: A Case Report Of Usher Syndrome', '1', 'INAVRS-EP-GP-4', '2025-09-03 01:59:55', '2025-09-03 01:59:55'),
(281, 'Ragil Yulianto', 'Severe Visual Impairment Due To Dengue Infection Involving Papillary Atrophy And Retinopathy: A First Documented Rare', '1', 'INAVRS-EP-GP-5', '2025-09-03 02:00:08', '2025-09-03 02:00:08'),
(282, 'Dr. Muhammad Imran Khan Ismail', 'Padel-Related Vision Threat: Eyes On The Ball - A Case Series Of Eye Injuries And Prevention Needs', '1', 'INAVRS-EP-GP-6', '2025-09-03 02:00:20', '2025-09-03 02:00:20'),
(283, 'INAVRS-EP-GP-6', 'Visual Impairment In Terson’s Syndrome: A Rare Complication Of Subarachnoid Hemorrhage', '1', 'INAVRS-EP-GP-8', '2025-09-03 02:00:31', '2025-09-03 02:00:31'),
(284, 'Andi Marsa Nadhira', 'When The Retina Warns The Brain: Purtscher-Like Retinopathy Heralding Ischemic Stroke', '1', 'INAVRS-EP-R-34', '2025-09-03 02:00:45', '2025-09-03 02:00:45'),
(285, 'Fildzah Marsafita Aswad', 'Efficacy Of Single Intravitreal Injection Of Ranibizumab In Macular Edema Secondary To Recent Nonischemic Retinal Vein Occlusion', '1', 'INAVRS-EP-GP-10', '2025-09-03 02:00:57', '2025-09-03 02:00:57'),
(286, 'Maria Angelia', 'Rare Ocular Findings In Severe Pre-Eclamsia With Iufd: Serous Retinal Detachment And Macular Edema', '1', 'INAVRS-EP-GP-12', '2025-09-03 02:01:11', '2025-09-03 02:01:11'),
(287, 'Ferdy Iskandar', 'Globe Rupture On Call: Lessons From Resident\'s Emergency Surgical Cases', '1', 'INAVRS-EP-R-36', '2025-09-03 02:01:22', '2025-09-03 02:01:22'),
(288, 'Maria Ulfa', 'Management Of Stage Iii Idiopathic Macular Hole : A Case Report', '1', 'INAVRS-EP-R-17', '2025-09-03 02:01:33', '2025-09-03 02:01:33'),
(289, 'Grimaldi Ihsan', 'Expect The Unexpected : Central Retinal Artery Occlusion And Multiple Cranial Nerve Palsy After Spinal Surgery', '1', 'INAVRS-EP-O-2', '2025-09-03 02:01:43', '2025-09-03 02:01:43'),
(290, 'Hutami Sri Ummiyati', 'Early Detection and Management of Pseudophakic Cystoid Macular Edema After Uneventful Cataract Surgery: A Case Series', '1', 'INAVRS-EP-GP-17', '2025-09-03 02:01:53', '2025-09-03 02:01:53'),
(291, 'Julsyawiah Novthalia', 'Non-Metallic Intraocular Foreign Body Management: A Case Report', '1', 'INAVRS-EP-GP-18', '2025-09-03 02:02:13', '2025-09-03 02:02:13'),
(292, 'Davina Danusantoso', 'Myopia and Peripapillary Atrophy (PPA) in Pregnancy: A Case Report', '1', 'INAVRS-EP-GP-19', '2025-09-03 02:02:25', '2025-09-03 02:02:25'),
(293, 'Rianti Wulandari Pratiwi', 'Blinded by Clots: Central Retinal Artery Occlusion as a Critical Ocular Manifestation of Polycythemia Vera', '1', 'INAVRS-EP-R-32', '2025-09-03 02:02:42', '2025-09-03 02:02:42'),
(294, 'Michelle Eva Rebeca Natalia', 'When Improvement Is Not Enough: OCT Clues to Retinal Detachment in Acute Retinal Necrosis', '1', 'INAVRS-EP-R-33', '2025-09-03 02:02:54', '2025-09-03 02:02:54'),
(295, 'Hilda Herman', 'Self - Limiting Dengue Maculopathy : A Rare Ocular Manifestation - A Case Report', '1', 'INAVRS-EP-GP-16', '2025-09-03 02:03:05', '2025-09-03 02:03:05'),
(296, 'Priscilla Jessica', 'Silent Spread, Sudden Vision Loss: Exudative Retinal Detachment In Breast Cancer', '1', 'INAVRS-EP-R-4', '2025-09-03 02:03:17', '2025-09-03 02:03:17'),
(297, 'Adinda Mulya Pertiwi', 'Intravitreal Alteplase In Pneumatic Displacement For Chronic Submacular Haemorrhage', '1', 'INAVRS-EP-R-5', '2025-09-03 02:03:29', '2025-09-03 02:03:29'),
(298, 'Nida Farida', 'Visual Acuity Survival In Central Retinal Artery Occlusion (Crao) In A Young Adult: A Case Report', '1', 'INAVRS-EP-O-5', '2025-09-03 02:03:41', '2025-09-03 02:03:41'),
(299, 'Ewi Primadona', 'Treatment Large Macular Hole With Internal Limiting Membran Flaps', '1', 'INAVRS-EP-O-6', '2025-09-03 02:03:51', '2025-09-03 02:03:51'),
(300, 'Regina Ivanovna', 'Early Treatment Of Submacular Hemorrhage Using Tissue Plasminogen Activator, C3f8, And Bevacizumab: A Case Report', '1', 'INAVRS-EP-R-1', '2025-09-03 02:04:09', '2025-09-03 02:04:09'),
(301, 'Fira Permata Rusman', 'Macula Sparing Rhegmatogenous Retinal Detachment With Bilateral Giant Retinal Tears : A Case Report', '1', 'INAVRS-EP-R-2', '2025-09-03 02:04:26', '2025-09-03 02:04:26'),
(302, 'Faiz Muhammad Ikhsan', 'Managing Tractional Retinal Detachment In Proliferative Diabetic Retinopathy: The Role Of Pars Plana Vitrectomy, Endolaser, And Silicone Oil Tamponade', '1', 'INAVRS-EP-R-3', '2025-09-03 02:05:43', '2025-09-03 02:05:43'),
(303, 'John Elfran Sihombing', 'Management Of Polypoidal Choroidal Vasculopathy (Pcv) Without The Gold', '1', 'INAVRS-EP-O-3', '2025-09-03 02:05:55', '2025-09-03 02:05:55'),
(304, 'Febriani Yohana', 'Central Retinal Vein Occlusion Secondary To Asthma Exacerbation', '1', 'INAVRS-EP-O-4', '2025-09-03 02:06:05', '2025-09-03 02:06:05'),
(305, 'Dwirianti Almira', 'Revealing Pigmented Paravenous Retinochoroidal Atrophy (Pprca) Through Multimodal Imaging', '1', 'INAVRS-EP-R-6', '2025-09-03 02:06:17', '2025-09-03 02:06:17'),
(306, 'Nurul Hikmah', 'Treatment Of Anti-Vegf Drugs Intravitreal Injections With Or Without Retinal Laser Photocoagulation For Macular Edema Secondary To Branch Retinal Vein Occlusion', '1', 'INAVRS-EP-R-7', '2025-09-03 02:06:31', '2025-09-03 02:06:31'),
(307, 'Gita Normala Dewi', 'Managing Inferior Retinal Break Of Rhegmatogenous Retinal Detachment With Pars Plana Vitrectomy And Scleral Buckle', '1', 'INAVRS-EP-R-8', '2025-09-03 02:06:41', '2025-09-03 02:06:41'),
(308, 'M Fariz Khibran', 'Early Pars Plana Vitrectomy For Vitreomacular Traction With Cystoid Macular Edema In An Elderly Patient: A Case Report', '1', 'INAVRS-EP-R-9', '2025-09-03 02:06:51', '2025-09-03 02:06:51'),
(309, 'Fatma Diana', 'A Rare Case Of Retinal Vascular Occlusion: Concurrent Unilateral Central Retinal Vein Occlusion (Crvo) And Branch Retinal Artery Occlusion (Brao)', '1', 'INAVRS-EP-R-10', '2025-09-03 02:07:05', '2025-09-03 02:07:05'),
(310, 'Ardelia Emily Wulur', 'Two-Step Surgical Management Of Severe Ocular Trauma With Traumatic Macular Hole And Silicone Oil Tamponade', '1', 'INAVRS-EP-R-11', '2025-09-03 02:07:16', '2025-09-03 02:07:16'),
(311, 'Ilmah', 'Secondary Pneumatic Retinopexy: Successful Management Of Recurrent Retinal Detachment Following Failed Pneumatic Retinopexy', '1', 'INAVRS-EP-R-12', '2025-09-03 02:07:35', '2025-09-03 02:07:35'),
(312, 'Fransiska Ria Hoesin', 'A Rare Case Of Optic Disc Pit Maculopathy', '1', 'INAVRS-EP-R-13', '2025-09-03 02:07:48', '2025-09-03 02:07:48'),
(313, 'Wida Dwitiya Hita', 'Central Retinal Artery Occlusion With Cilioretinal Artery Sparing: An Atypical Case Report', '1', 'INAVRS-EP-R-14', '2025-09-03 02:07:58', '2025-09-03 02:07:58'),
(314, 'Florentina Priscilia', '1From Suspicion To Sight: Unraveling The Diagnosis Of Choroidal Metastasis And The Expanding Role Of Anti-Vegf Therapy', '1', 'INAVRS-EP-R-15', '2025-09-03 02:08:11', '2025-09-03 02:08:11'),
(315, 'Canitra Ilham Adirespati', 'Successful Scleral Drainage Of Suprachoroidal Hemorrhage Following Glaucoma Implant Surgery In A Vogt-Koyanagi-Harada Patient: A Case Report', '1', 'INAVRS-EP-R-16', '2025-09-03 02:08:22', '2025-09-03 02:08:22'),
(316, 'Ais Fricella', 'Complete Resolution Of Subhyaloid Hemorrhage With Nd:Yag Hyaloidotomy : A Case Report', '1', 'INAVRS-EP-GP-15', '2025-09-03 02:08:34', '2025-09-03 02:08:34'),
(317, 'Dinna Hanifah', 'Visual Recovery Following Treatment Of Submacular Hemorrhage With Various Etiology: A Case Series', '1', 'INAVRS-EP-R-18', '2025-09-03 02:08:56', '2025-09-03 02:08:56'),
(318, 'Felicia Widyaputri', 'Rescue Of Refractory Macular Detachment In High Axial Myopia Using Macular Buckling: A Case-Based Insight', '1', 'INAVRS-EP-R-19', '2025-09-03 02:09:22', '2025-09-03 02:09:22'),
(319, 'Felicia Sesi Herdian', 'When The Center Holds: Cilioretinal Artery Sparing In Crao Revealing Underlying Autoimmune Disorder', '1', 'INAVRS-EP-R-20', '2025-09-03 02:09:34', '2025-09-03 02:09:34'),
(320, 'Efti Da\'iyah', 'Exploring The Spectrum Of Retinal Changes And Axial Length In Pathologic Myopia: A Tale Of Two Cases', '1', 'INAVRS-EP-R-21', '2025-09-03 02:09:46', '2025-09-03 02:09:46'),
(321, 'Aura Aisya Ariaputri', 'A Sudden Visual Loss In Young Adult By Valsalva Retinopathy Treated With Nd:Yag Laser Hyaloidotomy', '1', 'INAVRS-EP-R-23', '2025-09-03 02:09:56', '2025-09-03 02:09:56'),
(322, 'Fadhli Waznan', 'From Light Flashes To Leaky Vessels: Multimodal Imaging Unmasks Coats-Like Retinopathy In Early Retinitis Pigmentosa', '1', 'INAVRS-EP-R-24', '2025-09-03 02:10:08', '2025-09-03 02:10:08'),
(323, 'Alfin Radhian', 'Ilm Peeling With Amniotic Membrane Graft In Recurrent Macular Hole Grade Iv : Will It Be A New Option?', '1', 'INAVRS-EP-R-27', '2025-09-03 02:10:18', '2025-09-03 02:10:18'),
(324, 'Viendri Firhand Nisa', 'The Impact Of Therapy In Coats\' Disease: Same Stage, Different Treatments, Equal Outcomes', '1', 'INAVRS-EP-R-25', '2025-09-03 02:10:31', '2025-09-03 02:10:31'),
(325, 'Dina Aqmarina Dalilati', 'Bilateral Terson Syndrome: A Multiple Intraocular Haemorrhage In Young Adult Post Traumatic Head Injury', '1', 'INAVRS-EP-R-26', '2025-09-03 02:10:42', '2025-09-03 02:10:42'),
(326, 'Iska Novi Udayani', 'Iris Rupture As A Red Flag: A Case Highlighting The Role Of Imaging And Prompt Surgery For Recognizing Hidden Iofb', '1', 'INAVRS-EP-R-22', '2025-09-03 02:10:57', '2025-09-03 02:10:57'),
(327, 'Anisa Vitriana', 'Bilateral Coats\' Disease: Diagnostic Challenges And Therapeutic Considerations In A Unique Case', '1', 'INAVRS-EP-R-28', '2025-09-03 02:11:16', '2025-09-03 02:11:16'),
(328, 'Anita Hs Parewasi', 'Presumed Terson Syndrome In Pediatric Head Trauma: A Case Of Bilateral Vitreous Hemorrhage', '1', 'INAVRS-EP-R-29', '2025-09-03 02:11:37', '2025-09-03 02:11:37'),
(329, 'Edwin Vam', 'Bilateral Exudative Retinal Detachment With Positive Igg Cytomegalovirus, Toxoplasma And Rubella : A Case Report', '1', 'INAVRS-EP-R-30', '2025-09-03 02:11:49', '2025-09-03 02:11:49'),
(330, 'Rusydiana', 'Surgical Outcome Of Pars Plana Vitrectomy In Rhegmatogenous Retinal Detachment With Choroidal Coloboma: A Case Report', '1', 'INAVRS-EP-R-31', '2025-09-03 02:12:01', '2025-09-03 02:12:01'),
(331, 'Ais Fricella', 'Case Series : Successfull Visual Recovery In Central Serous Chrorioretinopathy With Spironolactone Treatment', '1', 'INAVRS-EP-GP-20', '2025-09-03 02:12:13', '2025-09-03 02:12:13'),
(332, 'Rafrina Amnovebrianthy', 'Late-Onset Optic Disc Pit Maculopathy In An Adult: A Case Report And Review Of Treatment Strategies', '1', 'INAVRS-EP-O-1', '2025-09-03 02:12:25', '2025-09-03 02:12:25'),
(333, 'Erika Christanti', 'Internal Limiting Membrane Peeling Surgery Success Rate At Undaan Eye Hospital Surabaya', '1', 'INAVRS-EP-GP-9', '2025-09-03 02:12:36', '2025-09-03 02:12:36'),
(334, 'Peter Adolf Immanuel Kalalo', 'Unilateral Blindness In A Young Female With Optic Disc Coloboma-Associated Serous Retinal Detachment: A Case Report', '1', 'INAVRS-EP-R-35', '2025-09-03 02:12:47', '2025-09-03 02:12:47'),
(335, 'Siti Abiyya Fajriati', 'Unveiling Chronic Myeloid Leukaemia Through The Eyes', '1', 'INAVRS-EP-GP-14', '2025-09-03 02:13:00', '2025-09-03 02:13:00'),
(336, 'dr G.A Dian Listyanti Utami, S.Ked', 'Severe Windfall-Induced Ocular Trauma by Falling Durian: Successful Multistage Surgical Repair and Visual Recovery', '1', 'INAVRS-EP-R-37', '2025-09-03 02:13:15', '2025-09-03 02:13:15'),
(337, 'Delfi', 'The Effect of Ginkgo Biloba Extract on Intraocular Pressure in Non-Proliferative Diabetic Retinopathy Patients After Intravitreal Anti-VEGF Injection', '1', 'INAVRS-EP-O-7', '2025-09-03 02:13:28', '2025-09-03 02:13:28'),
(338, 'Stefanny Haryady', 'Challenges On Diagnosing Ocular Tuberculosis In Resource Limited Settings Of Indonesia', '1', 'INOIIS-EP-GP-1', '2025-09-03 02:16:05', '2025-09-03 02:16:05'),
(339, 'Lourisa Ruth Eldinia', 'Periorbital Necrotizing Fasciitis In A Malnourished Child: A Rare Case Report', '1', 'INOIIS-EP-R-26', '2025-09-03 02:16:18', '2025-09-03 02:16:18'),
(340, 'Lourisa Ruth Eldinia', 'When Treatment Blinds: Vision-Threatening Jarisch-Herxheimer Reaction In Hiv-Associated Ocular Syphilis', '1', 'INOIIS-EP-R-27', '2025-09-03 02:16:35', '2025-09-03 02:16:35'),
(341, 'Neyla Devi Mentari', 'Vancomycin Injection For Endophthalmitis Due To Exposure Keratopathy', '1', 'INOIIS-EP-GP-5', '2025-09-03 02:16:51', '2025-09-03 02:16:51'),
(342, 'Maria Claudya Bay', 'Challenges In Managing Keratitis In Rural Primary Health Care: A Case Report', '1', 'INOIIS-EP-GP-6', '2025-09-03 02:17:19', '2025-09-03 02:17:19'),
(343, 'Suci Firman', 'Corneal Ulcer From A Neglected Penetrating Trauma Of The Cornea At Rural Hospital', '1', 'INOIIS-EP-GP-7', '2025-09-03 02:17:36', '2025-09-03 02:17:36'),
(344, 'Dr. Donna Rozalia Mariz', 'Unmasking The Shadow; What To See Beyond Ocular Cicatricial Pemphigoid', '1', 'INOIIS-EP-GP-8', '2025-09-03 02:17:48', '2025-09-03 02:17:48'),
(345, 'Dr. Christanti Sambeka', 'Bilateral Corneal Ulcer With Impending Perforation In A Patient With Thyroid Eye Disease: A Case Of Severe Orbital Complications Managed In A Resource Constrained Hospital Environment', '1', 'INOIIS-EP-GP-9', '2025-09-03 02:18:04', '2025-09-03 02:18:04'),
(346, 'Putri Nabillah Mulya', 'Corneal Ulcer In Vernal Keratoconjunctivitis: What General Practitioners Should Know', '1', 'INOIIS-EP-GP-10', '2025-09-03 02:18:16', '2025-09-03 02:18:16'),
(347, 'Gagan Vihari Izzan Yulianto', 'Successful Management Of Refractory Filamentary Keratitis With Autologous Serum Tears: A Case Report', '1', 'INOIIS-EP-GP-12', '2025-09-03 02:18:47', '2025-09-03 02:18:47'),
(348, 'Addia Salsabila, Md', 'Snake Venom Ophthalmia Caused By Cobra : A Case Report', '1', 'INOIIS-EP-GP-13', '2025-09-03 02:19:00', '2025-09-03 02:19:00'),
(349, 'Gagan Vihari Izzan Yulianto', 'Fuchs Uveitis Syndrome Without Heterochromia: A Case Report', '1', 'INOIIS-EP-GP-14', '2025-09-03 02:19:20', '2025-09-03 02:19:20'),
(350, 'Irmayanti Emang', 'Characteristics Of Eye Infections In Indigenous Papuan Patients At The Eye Clinic Of Mitra Masyarakat Hospital, Mimika, Papua', '1', 'INOIIS-EP-GP-15', '2025-09-03 02:19:33', '2025-09-03 02:19:33'),
(351, 'Eka Rosdiana', 'Corneal Ulcer Due To Bicycle Tire Explosion: Clinical Course And Therapeutic Approach', '1', 'INOIIS-EP-GP-16', '2025-09-03 02:19:49', '2025-09-03 02:19:49'),
(352, 'Euis Eva Masruroh', 'Conjunctival Injury: Minor Or Ensure?', '1', 'INOIIS-EP-GP-17', '2025-09-03 02:20:04', '2025-09-03 02:20:04'),
(353, 'Difa Rachma Maula', 'Bilateral Multiple Hordeolum In A 53-Year-Old Woman With Severe Inflammatory Progression : A Case Report', '1', 'INOIIS-EP-GP-18', '2025-09-03 02:20:17', '2025-09-03 02:20:17'),
(354, 'Fadhilah Azzahra Pinardi', 'Ophthalmia Nodosa', '1', 'INOIIS-EP-GP-19', '2025-09-03 02:20:36', '2025-09-03 02:20:36'),
(355, 'Carennia Paramita', 'Ultrawide-Field Imaging–Guided, Empiric Multidisciplinary Therapy For Bilateral Mrsa Endogenous Endophthalmitis In Uncontrolled Diabetes', '1', 'INOIIS-EP-R-30', '2025-09-03 02:21:23', '2025-09-03 02:21:23'),
(356, 'Carennia Paramita', 'Head, Neck, And Chest Wall Necrotizing Fasciitis: An Entangled Ambush Resulting In A Fatal Ending', '1', 'INOIIS-EP-R-31', '2025-09-03 02:21:37', '2025-09-03 02:21:37'),
(357, 'Ira Evalina Butar Butar', 'Ocular Tuberculosis Presenting As Bilateral Panuveitis In A Patient With A History Of Glandular Tuberculosis: A Case Report', '1', 'INOIIS-EP-GP-22', '2025-09-03 02:21:51', '2025-09-03 02:21:51'),
(358, 'Stefanny Haryady', 'Bilateral Proptosis In Expanded Dengue Syndrome: A Rare Case Report With Limited Resources', '1', 'INOIIS-EP-GP-23', '2025-09-03 02:24:39', '2025-09-03 02:24:39'),
(359, 'Syifa Firza Aziza', 'Herpes Zoster Ophthalmicus With Periorbital Cellulitis: A Case Report', '1', 'INOIIS-EP-GP-24', '2025-09-03 02:24:57', '2025-09-03 02:24:57'),
(360, 'Alfelia Ezrabica Telussa', 'Penetrating Ocular Trauma Of The Right Eye With Intracerebral Involvement Caused By A Spear Injury: A Case Report', '1', 'INOIIS-EP-GP-25', '2025-09-03 02:25:08', '2025-09-03 02:25:08'),
(361, 'Salma Nabillah Gunawan', 'Management Of Neglected Corneal Ulcer In Remote Area: A Case Report', '1', 'INOIIS-EP-GP-26', '2025-09-03 02:25:23', '2025-09-03 02:25:23'),
(362, 'Anak Agung Diyananda Paramita', 'Ocular Manifestations of Steven Johnson Syndrome-Toxic Epidermal Necrolysis overlap in Children: A Case Report', '1', 'INOIIS-EP-GP-27', '2025-09-03 02:25:35', '2025-09-03 02:25:35'),
(363, 'Feby Bantoyot', 'A 40-Year-Old Male Patient With Corneal Ulcer Oculi Sinistra Cum Hypopyon', '1', 'INOIIS-EP-GP-28', '2025-09-03 02:25:47', '2025-09-03 02:25:47'),
(364, 'Michaela Kemuning', 'Management of a Rare Case of Fungal Corneal Ulcer: A Case Report', '1', 'INOIIS-EP-GP-29', '2025-09-03 02:25:59', '2025-09-03 02:25:59'),
(365, 'Venansya Maulina Praba', 'Timely Intervention And Management Strategies Of Ocular Sulphur Acid Explode Injury In Rural Area: A Case Report', '1', 'INOIIS-EP-GP-30', '2025-09-03 02:26:14', '2025-09-03 02:26:14'),
(366, 'Cintya Ristimawarni', 'Blepharoconjunctivitis Gonorrhea in Adult: A Rare Case', '1', 'INOIIS-EP-GP-31', '2025-09-03 02:26:25', '2025-09-03 02:26:25'),
(367, 'Rika Emira Noci', 'Scleromalacia Perforans: A Multidisciplinary Approach To Recurrent Scleral Melting', '1', 'INOIIS-EP-GP-32', '2025-09-03 02:26:40', '2025-09-03 02:26:40'),
(368, 'Nabila Astri Nur Kuntari', 'Management Of A 10-Day Retained Corneal Foreign Body: A Case Report', '1', 'INOIIS-EP-GP-33', '2025-09-03 02:26:54', '2025-09-03 02:26:54'),
(369, 'Petra Irfanya Mutiara Kartika', 'Characteristics of Patients with Ocular Chemical Injury at Cicendo Eye Hospital Bandung in 2024', '1', 'INOIIS-EP-GP-34', '2025-09-03 02:27:05', '2025-09-03 02:27:05'),
(370, 'Theresia Kania', 'Episcleritis As Ocular Manifestation Of Lyme Disease', '1', 'INOIIS-EP-O-1', '2025-09-03 02:27:18', '2025-09-03 02:27:18'),
(371, 'John Elfran Sihombing', 'Beyond The Pubis: Eyelash Manifestation Of Pthirus Pubis - A Case Report', '1', 'INOIIS-EP-O-3', '2025-09-03 02:28:10', '2025-09-03 02:28:10'),
(372, 'Ni Made Widya Mahayani', 'Presumed Congenital Ocular Toxoplasmosis In Siblings: A Case Report', '1', 'INOIIS-EP-O-4', '2025-09-03 02:29:57', '2025-09-03 02:29:57'),
(373, 'Ni Made Widya Mahayani', 'Different Outcome With The Standard Therapy In Bacterial Corneal Ulcer Patients: A Serial Case', '1', 'INOIIS-EP-O-5', '2025-09-03 02:30:08', '2025-09-03 02:30:08'),
(374, 'Wahyu Endah Prabawati', 'Successful Management Of Acute Orbital Cellulitis -Complication Of An Untreated Recurrent Hordeolum', '1', 'INOIIS-EP-O-6', '2025-09-03 02:30:19', '2025-09-03 02:30:19'),
(375, 'Franciscus Assisi Timmy Budi Yudhantara', 'Coin-Shaped Corneal Stromal Lesion Following Penetration Of Suspected Entomological Foreign Body: A Case Report', '1', 'INOIIS-EP-O-7', '2025-09-03 02:30:32', '2025-09-03 02:30:32'),
(376, 'Muhamad Lutfi Herliyana', 'Reviving The Ocular Surface: Surgical Insights Using A Dehydrated Dual-Layered Amniotic Membrane', '1', 'INOIIS-EP-R-1', '2025-09-03 02:30:47', '2025-09-03 02:30:47'),
(377, 'Yulia Ayu Aryati', 'Diagnostic Significance Of Recurrent Uveitis In Hla-B27 Positive Patient: A Case Report', '1', 'INOIIS-EP-R-2', '2025-09-03 02:31:04', '2025-09-03 02:31:04'),
(378, 'Amirah Deandra Diba', 'Masked By Trauma, Missed By Time: A Fatal Case Of Periorbital Necrotizing Fasciitis In An Immunocompromised Patient', '1', 'INOIIS-EP-R-34', '2025-09-03 02:31:14', '2025-09-03 02:31:14'),
(379, 'Rabiul Priyantono', 'Keratolimbal Allograft: An Alternative For Ocular Reconstruction In Recurrent Pterygium With Symblepharon', '1', 'INOIIS-EP-R-4', '2025-09-03 02:31:32', '2025-09-03 02:31:32'),
(380, 'Rini Mulyani', 'Ocular Manifestations Of Human Immunodeficiency Virus/ Acquired Immunodeficiency Syndrome : A Systematic Review', '1', 'INOIIS-EP-R-5', '2025-09-03 02:31:44', '2025-09-03 02:31:44'),
(381, 'Dewi Indah Sari', 'Refractory Filamentary Keratitis Associated With Sjögren Syndrome: A Case Series', '1', 'INOIIS-EP-R-6', '2025-09-03 02:31:54', '2025-09-03 02:31:54'),
(382, 'Adinda Mulya Pertiwi', 'When Less Is More: Clinical Judgement Averted Unnecessary Anti-Infective Therapy In Acute Anterior Uveitis', '1', 'INOIIS-EP-R-7', '2025-09-03 02:32:10', '2025-09-03 02:32:10'),
(383, 'Nurul Fitrawati Ridwan', 'Visual Recovery Following Treatment With High-Dose Corticosteroid In Early-Stage Of Vogt-Koyanagi-Harada Syndrome', '1', 'INOIIS-EP-R-8', '2025-09-03 02:32:22', '2025-09-03 02:32:22'),
(384, 'Calista Nathasya Gunawan', 'Corneal Perforation In Gonococcal Eye Infection: When To Operate?', '1', 'INOIIS-EP-R-9', '2025-09-03 02:32:34', '2025-09-03 02:32:34'),
(385, 'Andi Afiatry Muzakkar', 'Dual Approaches To Managing Vision-Threatening Phlyctenular Keratoconjungtivitis : Subtenon Triamcinolon Injection And Amniotic Membran Transplantation', '1', 'INOIIS-EP-R-10', '2025-09-03 02:32:47', '2025-09-03 02:32:47'),
(386, 'Nigel Ashifa Harmen', 'Restoring Sight: Modified Slet With Freeze-Dried Amnion For Total Unilateral Lscd', '1', 'INOIIS-EP-R-11', '2025-09-03 02:33:02', '2025-09-03 02:33:02'),
(387, 'Nisrina Sari', 'Syphilitic Uveitis: More Than Meets The Eye', '1', 'INOIIS-EP-R-12', '2025-09-03 02:33:15', '2025-09-03 02:33:15'),
(388, 'Enzo Sapuandi', 'Quiet Eye, Quiet Cuff: Falsely-Low Blood Pressure Masks Hellp Syndrome As ‘Uveitis’', '1', 'INOIIS-EP-R-13', '2025-09-03 02:34:19', '2025-09-03 02:34:19'),
(389, 'Rezki Amalia', 'Bilateral Posterior Uveitis Due To Toxoplasmosis, Tuberculosis And Cytomegalovirus In An Immunocompetent Patient : A Case With Rare Multiple Etiology', '1', 'INOIIS-EP-R-14', '2025-09-03 02:34:30', '2025-09-03 02:34:30'),
(390, 'Tsabita Annisa', 'Beyond The Conjunctiva: A Case Series Of Buccal Biopsy In Diagnosing Ocular Cicatricial Pemphigoid', '1', 'INOIIS-EP-R-15', '2025-09-03 02:34:41', '2025-09-03 02:34:41'),
(391, 'Dinar Aulia', 'Salvaging The Cornea With Amniotic Membrane Transplantation In Aggressive Fungal Corneal Ulcer', '1', 'INOIIS-EP-R-16', '2025-09-03 02:34:53', '2025-09-03 02:34:53'),
(392, 'Amirah Deandra Diba', 'Bilateral Panuveitis In Morbus Hansen: When The Eyes Speak Louder Than The Skin', '1', 'INOIIS-EP-R-17', '2025-09-03 02:35:06', '2025-09-03 02:35:06'),
(393, 'Dimas Kurnia Putra', 'Corneal Cross Linking In Keratoconus : Epi-On Versus Epi-Off', '1', 'INOIIS-EP-R-18', '2025-09-03 02:35:17', '2025-09-03 02:35:17'),
(394, 'Metika Rahmasari Irza', 'When The Eyes Speak Louder: Ocular Clues Unlock Systemic Control In Refractory Sweet Syndrome', '1', 'INOIIS-EP-R-19', '2025-09-03 02:35:28', '2025-09-03 02:35:28'),
(395, 'Dimitra Novalita Tendra Nababan', 'Management And Outcomes Of A Perforated Corneal Ulcer Caused By Gonococcal Infection: A Case Report', '1', 'INOIIS-EP-R-20', '2025-09-03 02:35:43', '2025-09-03 02:35:43'),
(396, 'Fathia Azzahra', 'Comprehensive Approach To Dry Eye Management In Thyroid Eye Disease: A Case Series', '1', 'INOIIS-EP-R-21', '2025-09-03 02:35:54', '2025-09-03 02:35:54'),
(397, 'Yelsi Khairani', 'Blepharoconjunctivitis Gonorrhea In Adult: A Rare Case', '1', 'INOIIS-EP-R-22', '2025-09-03 02:36:06', '2025-09-03 02:36:06'),
(398, 'Priscillia Tondolambung', 'Successfull Initial Management Of Ocular Involvement In The Acute Phase Of Toxic Epidermal Necrolysis: A Case Report', '1', 'INOIIS-EP-R-23', '2025-09-03 02:36:20', '2025-09-03 02:36:20'),
(399, 'Sherly Kurniawan Chandra Saputra', 'Succesfull Management Of Gonococcal Conjunctivitis With Secondary Infection Of Chlamidia Trachomatis: A Case Report', '1', 'INOIIS-EP-R-24', '2025-09-03 02:36:32', '2025-09-03 02:36:32'),
(400, 'Yaumil Qorisa', 'Pediatric Ocular Lichen Planus: A Rare Case', '1', 'INOIIS-EP-R-25', '2025-09-03 02:36:44', '2025-09-03 02:36:44'),
(401, 'Mutiara Kantika', 'Gonococcal Keratoconjunctivitis, Secretly Spreading And Blinding: A Case Series', '1', 'INOIIS-EP-GP-2', '2025-09-03 02:37:04', '2025-09-03 02:37:04'),
(402, 'Imania', 'Bilateral Corneal Dystrophy In Male Patient', '1', 'INOIIS-EP-GP-4', '2025-09-03 02:37:18', '2025-09-03 02:37:18'),
(403, 'Ni Putu Sitha Medha Paramitha', 'Diagnostic Approach And Management Of Bilateral Probable Panuveitis Tuberculosis With Palpebral Abcess In A Patient With Prolonged Active Pulmonary Tb', '1', 'INOIIS-EP-R-28', '2025-09-03 02:37:28', '2025-09-03 02:37:28'),
(404, 'Anthea Casey', 'Surgical Reconstruction Of The Ocular Surface In Severe Pterygium With Symblepharon: Clinical Challenges And Outcomes', '1', 'INOIIS-EP-R-29', '2025-09-03 02:37:39', '2025-09-03 02:37:39'),
(405, 'Lalu Hermawan Ranova', 'Strategic Role Of General Practitioners In Primary Health Centers For Managing Conjunctivitis In Children: A Case Report', '1', 'INOIIS-EP-GP-20', '2025-09-03 02:37:51', '2025-09-03 02:37:51'),
(406, 'Putri Nabillah Mulya', 'Suture-Less And Glue-Free Conjunctival Limbal Graft In Pterygium Surgery', '1', 'INOIIS-EP-GP-21', '2025-09-03 02:38:07', '2025-09-03 02:38:07'),
(407, 'Nurwahidah Oktorisa', 'A One Year Follow Up Of Amnion Graft Approach In Patient With Corneal Ulcer And Limbal Stem Cell Deficiency : Is It A Promising Result?', '1', 'INOIIS-EP-R-32', '2025-09-03 02:38:19', '2025-09-03 02:38:19'),
(408, 'Zakirunallah Karunia', 'Addressing Diagnostic And Therapeutic Challenges Of Acanthamoeba Keratitis In A Soft Contact Lens Wearer: A Case Report', '1', 'INOIIS-EP-R-33', '2025-09-03 02:38:32', '2025-09-03 02:38:32'),
(409, 'Gloria Evita Thalia', 'Gloria Evita Thalia', '1', 'INOIIS-EP-R-3', '2025-09-03 02:38:47', '2025-09-03 02:38:47'),
(410, 'Astrid Feriza', 'Surgically Induced Necrotizing Scleritis In A Young Patient With Spondyloarthritis', '1', 'INOIIS-EP-R-35', '2025-09-03 02:38:58', '2025-09-03 02:38:58'),
(411, 'INOIIS-EP-R-35', 'Beyond The Surface : Complication Of Ocular Stevens-Johnson Syndrome', '1', 'INOIIS-EP-R-46', '2025-09-03 02:39:09', '2025-09-03 02:39:09'),
(412, 'Febri Vina Wuwung', 'Evaluating the Effectiveness of Cost-Effective Autologous Blood in Conjunctival Limbal Grafting for Pterygiumplasty: Real-World Data from West Papua', '1', 'INOIIS-EP-R-47', '2025-09-03 02:39:19', '2025-09-03 02:39:19'),
(413, 'INOIIS-EP-R-47', 'Ocular Tuberculosis: The Great Imitator Behind A Mask Of Uveitis – A Case Report', '1', 'INOIIS-EP-R-38', '2025-09-03 02:39:30', '2025-09-03 02:39:30'),
(414, 'Muhammad Khalil Akbar', 'Successful Management And Prophylactic Therapy Of Recurrent Ocular Toxoplasmosis', '1', 'INOIIS-EP-R-39', '2025-09-03 02:39:44', '2025-09-03 02:39:44'),
(415, 'Yaumil Qorisa', 'Taming The Flames: Systemic Corticosteroid For Acute Management Of Chemical Eye Injury', '1', 'INOIIS-EP-R-40', '2025-09-03 02:40:17', '2025-09-03 02:40:17'),
(416, 'Yura Pradiptama', 'Interstitial Keratitis: A Little Hint At Cornea For Tuberculosis', '1', 'INOIIS-EP-R-41', '2025-09-03 02:40:46', '2025-09-03 02:40:46'),
(417, 'Denny Indra Maulana', 'Trace The Serpent Track : Clinical Challenge Of Serpiginous-Like Choroiditis', '1', 'INOIIS-EP-R-42', '2025-09-03 02:40:58', '2025-09-03 02:40:58'),
(418, 'Hindun Zakiyah', 'When the Wound Was Covered, the Other Eye Reacted : A Cautionary Report of Sympathetic Ophthalmia Following Periosteal Graft', '1', 'INOIIS-EP-R-43', '2025-09-03 02:41:10', '2025-09-03 02:41:10'),
(419, 'Lazuardiah Anandi', 'Early Empiric Therapy for HIV‑Associated Ocular Syphilis Preserves Vision: A Case Report', '1', 'INOIIS-EP-R-44', '2025-09-03 02:41:21', '2025-09-03 02:41:21'),
(420, 'Mandy Putriyudi', 'Beyond the Surface: Unmasking Primary Sjögren’s Syndrome Through Dry Eye Disease', '1', 'INOIIS-EP-R-45', '2025-09-03 02:41:32', '2025-09-03 02:41:32'),
(421, 'Golda Asina Miranda Simanjunta', 'Unveiling The Mystery: The First Case Series Of Ocular Monkeypox In Indonesia', '1', 'INOIIS-EP-R-36', '2025-09-03 02:41:43', '2025-09-03 02:41:43'),
(422, 'Triana Hardianti Gunardi', 'Do-It-Yourself (Diy) Dental Filling Gone Wrong: From Self-Filled Tooth To Preseptal Cellulitis', '1', 'INOIIS-EP-R-37', '2025-09-03 02:41:54', '2025-09-03 02:41:54'),
(423, 'Samuel Yudhistira', 'Superficial Keratectomy, Ethylenediaminetetraacetic acid (EDTA), and Amniotic Membrane Transplantation Procedure as an Alternative Management for Calcific Band Keratopathy in End-stage Renal Disease Patient', '1', 'INOIIS-EP-R-48', '2025-09-03 02:42:05', '2025-09-03 02:42:05'),
(424, 'Rona Ali Badjrai', 'Vision–Vitritis Mismatch: Hepatocellular Carcinoma Masquerading as Bilateral Panuveitis', '1', 'INOIIS-EP-R-49', '2025-09-03 02:42:16', '2025-09-03 02:42:16'),
(434, 'Dr. Dian Islami', 'Restoring Vision After Corneal Perforation: The Role Of Periosteal Graft And Delayed Penetrating Keratoplasty', '1', 'INOIIS-EP-GP-11', '2025-09-03 02:48:03', '2025-09-03 02:48:03'),
(459, 'Theresia Kania', 'Ocular Manifestations Of Biopsy-Proven Sarcoidosis', '1', 'INOIIS-EP-O-2', '2025-09-03 02:57:47', '2025-09-03 02:57:47'),
(498, 'Gloria Evita Thalia', 'Punctal Plug As An Essential Tool For Dry Eye Disease Management : A Case Report', '1', 'INOIIS-EP-R-3', '2025-09-03 03:12:37', '2025-09-03 03:12:37'),
(500, 'Fania Liahsani', 'Beyond The Surface : Complication Of Ocular Stevens-Johnson Syndrome', '1', 'INOIIS-EP-R-46', '2025-09-03 03:12:57', '2025-09-03 03:12:57'),
(502, 'Susan Tarawifa', 'Ocular Tuberculosis: The Great Imitator Behind A Mask Of Uveitis – A Case Report', '1', 'INOIIS-EP-R-38', '2025-09-03 03:13:35', '2025-09-03 03:13:35'),
(514, 'Amanda Khalieta', 'Choosing Low Vision Aids For Patient With Optic Atrophy After Intracranial Tumor Removal', '1', 'INARVOS-EP-R-1', '2025-09-03 03:36:44', '2025-09-03 03:36:44'),
(515, 'Seruni Hanna Ardhia', 'From High Myopia To Strabismus Fixus: Unveiling The Rare Case Of Heavy Eye Syndrome', '1', 'INARVOS-EP-R-2', '2025-09-03 03:37:05', '2025-09-03 03:37:05'),
(516, 'Maykel Sondak', 'Accommodative Insufficiency Due To Brain Lesions In Encephalitis', '1', 'INARVOS-EP-R-3', '2025-09-03 03:37:16', '2025-09-03 03:37:16'),
(517, 'Diaz Hazrina Setiadi', 'High Myopia In Heavy Eye Syndrome', '1', 'INARVOS-EP-R-4', '2025-09-03 03:37:30', '2025-09-03 03:37:30'),
(518, 'Willy Agung Rustyawan', 'Low Vision Management For Patient With Moderate Visual Impairment In Foveal Hypoplasia', '1', 'INARVOS-EP-R-5', '2025-09-03 03:37:41', '2025-09-03 03:37:41'),
(519, 'Erika Anggraini', 'Baby Contact Lens For Infant With Unilateral Aphaki', '1', 'INARVOS-EP-R-6', '2025-09-03 03:37:53', '2025-09-03 03:37:53'),
(520, 'Annisa Meivira Budiman', 'Successful Management Of Asymmetric Keratoconus With Corneoscleral Contact Lens After Crosslinking Procedure', '1', 'INARVOS-EP-R-7', '2025-09-03 03:38:03', '2025-09-03 03:38:03'),
(521, 'Annisa Shafira Pramono', 'Rgp Contact Lenses: A Non-Invasive Approach For Pathological Myopia And Anisometropia', '1', 'INARVOS-EP-R-8', '2025-09-03 03:38:14', '2025-09-03 03:38:14'),
(522, 'Ivany Rizky Rahmadani', 'Optimizing Visual Rehabilitation In Pediatric Unilateral Aphakia With Corneal Scarring Using Soft Contact Lens', '1', 'INARVOS-EP-R-12', '2025-09-03 03:38:24', '2025-09-03 03:38:24'),
(523, 'dr Muhammad Rizky Rachmadi', 'Seeing Beyond Albinism: Functional Visual Improvement With Telescopic Aids In Moderate Low Vision', '1', 'INARVOS-EP-R-10', '2025-09-03 03:38:33', '2025-09-03 03:38:33'),
(524, 'Delvi Saswita', 'Optimization Of Vision In Patients With Astigmatism And Allergic Conjunctivitis With Rgp Contact Lenses : A Case Report', '1', 'INARVOS-EP-R-13', '2025-09-03 03:38:44', '2025-09-03 03:38:44'),
(525, 'Nurul Ramadhani Mustafa', 'Corneal Thickness Recovery In Keratoconus: A Case Report In One Year Of Rgp Contact Lens Therapy', '1', 'INARVOS-EP-R-14', '2025-09-03 03:38:54', '2025-09-03 03:38:54'),
(526, 'Sarah Yasmin Ramadhanti', 'Optimizing Vision: Rgp In Bilateral Keratoconus Patients With Monocular Keratoplasty', '1', 'INARVOS-EP-R-15', '2025-09-03 03:39:05', '2025-09-03 03:39:05'),
(527, 'Nurul Akla', 'From Subclinical to Advanced: Diagnostic Spectrum of Keratoconus in Young Adults', '1', 'INARVOS-EP-R-16', '2025-09-03 03:39:17', '2025-09-03 03:39:17'),
(528, 'Biana Lisa', 'Monovision Spectacles Enhance Comfort For Patients With High Myopia, Astigmatism, And Presbyopia', '1', 'INARVOS-EP-R-9', '2025-09-03 03:39:29', '2025-09-03 03:39:29'),
(529, 'Argatria Michelle Gracia', 'From Birthmark To Blindness? The Role Of Early Eye Detection In Sturge-Weber Syndrome', '1', 'INAPOSS-EP-GP-1', '2025-09-03 03:40:03', '2025-09-03 03:40:03'),
(530, 'Mahrumi Dewi Tri Utami', 'Neglected Traumatic Cataract In A Pediatric Patient: A Case Report On Surgical Challenges And Intraoperative Modifications', '1', 'INAPOSS-EP-GP-2', '2025-09-03 03:40:15', '2025-09-03 03:40:15'),
(531, 'Tanessa Audrey Wihardji', 'Systemic Risk Factors For Retinopathy Of Prematurity In Very Preterm Infants: Experience From A Private Hospital With Level Iii Nicu In South Tangerang, Banten, Indonesia', '1', 'INAPOSS-EP-GP-4', '2025-09-03 03:40:25', '2025-09-03 03:40:25'),
(532, 'Ruth Astry Evangelia', 'Long Term Outcome In Pediatric Ocular Trauma: A Case Report', '1', 'INAPOSS-EP-GP-5', '2025-09-03 03:40:37', '2025-09-03 03:40:37'),
(533, 'Ika Putriyuliani', 'A Boy With Coil Spring In His Left Eye', '1', 'INAPOSS-EP-GP-6', '2025-09-03 03:40:50', '2025-09-03 03:40:50'),
(534, 'Anesa Priyanti Marsal', 'Ocular Involvement In A Child With Albinism: A Case Report', '1', 'INAPOSS-EP-GP-7', '2025-09-03 03:41:04', '2025-09-03 03:41:04'),
(535, 'Melvy Roza', 'Congenital Cataract In An Infant With Down Syndrome : A Case Report', '1', 'INAPOSS-EP-GP-8', '2025-09-03 03:41:19', '2025-09-03 03:41:19'),
(536, 'Nabila Ayu Mahardika', 'Adult Sensory Deprivation Exotropia: A Case Series. What To Expect?', '1', 'INAPOSS-EP-GP-9', '2025-09-03 03:41:31', '2025-09-03 03:41:31'),
(537, 'Steffi Olivia Padriyani', 'Exotropia In Children With High Hyperopia : A Rare Case', '1', 'INAPOSS-EP-GP-10', '2025-09-03 03:41:42', '2025-09-03 03:41:42'),
(538, 'Sarra Mutiara Adev', 'Refractive Amblyopia Due To Peripheral Corneal Dermoid: A Case Report Of Delayed Diagnosis In A 10-Year-Old', '1', 'INAPOSS-EP-GP-11', '2025-09-03 03:41:54', '2025-09-03 03:41:54'),
(539, 'Tsamara Zakiyyah Ramli', 'Vision Restored: A Pediatric Patient With Uveitis-Related Cataract', '1', 'INAPOSS-EP-GP-12', '2025-09-03 03:42:11', '2025-09-03 03:42:11'),
(540, 'Sabila Larasati', 'Striking Visual Recovery After Pediatric Corneal Fish-Hook Injury Removed with Back-Out Technique: A Case Report', '1', 'INAPOSS-EP-GP-13', '2025-09-03 03:42:29', '2025-09-03 03:42:29'),
(541, 'INDADZI ARSYI IWAN', 'Three Years Study of Retinoblastoma Patients in a Single Institution', '1', 'INAPOSS-EP-GP-14', '2025-09-03 03:42:41', '2025-09-03 03:42:41'),
(542, 'Santi Anugrahsari', 'Retrobulbar Abscess In Meningitis Children Patient Presenting With Carotid Artery Thrombosis: A Case Report', '1', 'INAPOSS-EP-O-2', '2025-09-03 03:43:01', '2025-09-03 03:43:01'),
(543, 'Nur Aisyah Rahmawati', 'Inverted Prism Use For Persistent Paradoxical Diplopia In Post-Operated Congenital Exotropia', '1', 'INAPOSS-EP-O-3', '2025-09-03 03:43:12', '2025-09-03 03:43:12'),
(544, 'Ni Made Ayu Surasmiati', 'A Comprehensive Surgical Approach To Exotropia In Monocular Elevation Deficit: Multistage Success', '1', 'INAPOSS-EP-O-4', '2025-09-03 03:43:23', '2025-09-03 03:43:23'),
(545, 'Balgis Desi S.', 'A Rare Encounter: Isolated Extraocular Muscle Abscess Following Strabismus Surgery', '1', 'INAPOSS-EP-O-5', '2025-09-03 03:43:40', '2025-09-03 03:43:40'),
(546, 'Balgis Desi S.', 'Silent Displacement: A Rare Case Of Spontaneous Lens Dislocation Without Trauma In An 8-Month-Old Girl', '1', 'INAPOSS-EP-O-6', '2025-09-03 03:43:54', '2025-09-03 03:43:54'),
(547, 'Mutia Khanza', 'Successful Management Of Aggressive Retinopathy Of Prematurity And Peserving Visual Acuity In A Larger And Moderate Preterm Baby', '1', 'INAPOSS-EP-R-1', '2025-09-03 03:45:06', '2025-09-03 03:45:06'),
(548, 'Christy Magdalena', 'Lost Windows, Lingering Battles: Navigating The Long-Term Management Of Congenital Cataract With Microcornea', '1', 'INAPOSS-EP-R-2', '2025-09-03 03:45:21', '2025-09-03 03:45:21'),
(549, 'Dearaini', 'Intravitreal Topotecan For Refractory Retinoblastoma: A First Clinical Experience From A National Referral Hospital', '1', 'INAPOSS-EP-R-3', '2025-09-03 03:45:37', '2025-09-03 03:45:37'),
(550, 'Mahardika Wulan Ester Tirajoh', 'A Complex Case Of Axenfeld-Rieger Syndrome: Glaucoma Risk And Systemic Manifestations In A Young Patient', '1', 'INAPOSS-EP-R-4', '2025-09-03 03:45:50', '2025-09-03 03:45:50'),
(551, 'Ardis Trianita Adilla', 'Challenging Outcome Of Vertical Rectus Transposition In Post-Traumatic Paralytic Esotropia: A Case Report', '1', 'INAPOSS-EP-R-5', '2025-09-03 03:46:02', '2025-09-03 03:46:02'),
(552, 'Hesty Rohmatul Fajri', 'Modified Horizontal Strabismus Surgery Successfully Repairs V-Pattern Esotropia With Inferior Oblique Overaction And Convergence Excess In A 12-Year-Old Child: A Case Report', '1', 'INAPOSS-EP-R-6', '2025-09-03 03:46:13', '2025-09-03 03:46:13'),
(553, 'Febri Vina Wuwung', 'Juvenile Cataracts : Challenges In Maintaining Quality Of Life', '1', 'INAPOSS-EP-R-7', '2025-09-03 03:46:24', '2025-09-03 03:46:24'),
(554, 'Najmatuzzahra', 'A Rare Case Of Best Vitelliform Macular Dystrophy (Bvmd) Mimicking Stargardt Disease In A Patient With Bilateral Compound Myopic Astigmatism: Diagnostic Challenges And Multimodal Imaging Approach', '1', 'INAPOSS-EP-R-8', '2025-09-03 03:46:35', '2025-09-03 03:46:35'),
(555, 'Elgalytha Cassie Lende', 'Heavy Eye Syndrome: How To Treat An Extreme Globe Displacement? A Case Series', '1', 'INAPOSS-EP-R-9', '2025-09-03 03:46:48', '2025-09-03 03:46:48'),
(556, 'Nuari Aqriana Darwis', 'Unveiling The Hidden: Ocular Symptoms In A Pediatric Patient With Pituitary Tuberculoma', '1', 'INAPOSS-EP-R-10', '2025-09-03 03:46:59', '2025-09-03 03:46:59'),
(557, 'Anggita Chandra Oktaviani', 'Secondary Childhood Glaucoma Associated With Sturge Weber Syndrome: A Case Series', '1', 'INAPOSS-EP-R-11', '2025-09-03 03:47:15', '2025-09-03 03:47:15'),
(558, 'Daniswara Wisnu Wardhana', 'Relationship Between Axial Length, Average Keratometry, And Biometry Technique With Prediction Error And Absolute Prediction Error In Paediatric Cataract Surgery', '1', 'INAPOSS-EP-R-12', '2025-09-03 03:47:26', '2025-09-03 03:47:26'),
(559, 'Lydia Permata Hilman', 'Retinal Astrocytic Hamartoma As Ocular Manifestation Of Tuberous Sclerosis Complex', '1', 'INAPOSS-EP-R-13', '2025-09-03 03:47:39', '2025-09-03 03:47:39'),
(560, 'Farisa Shauma Fachir', 'Early Onset Ocular Manifestation In Blau Syndrome: A Rare Pediatric Case With Confirmed Nod2 Gene Mutation', '1', 'INAPOSS-EP-R-14', '2025-09-03 03:47:49', '2025-09-03 03:47:49'),
(561, 'Florentina Priscilia', 'A Race Against Time: Visual Preservation In A Child With Noonan Syndrome And Asymmetric Ocular Pathology', '1', 'INAPOSS-EP-R-16', '2025-09-03 03:48:03', '2025-09-03 03:48:03'),
(562, 'Stevie Kresentia', 'A Surgical Challenge For Restrictive Strabismus In A Complex Case', '1', 'INAPOSS-EP-R-17', '2025-09-03 03:48:16', '2025-09-03 03:48:16'),
(563, 'Muthia Adila', 'Succesfull Half Tendon Vertical Transposition In A Case Of A Pattern Esotropia', '1', 'INAPOSS-EP-R-18', '2025-09-03 03:48:30', '2025-09-03 03:48:30'),
(564, 'Sarah Riskita', 'Blue Eyes In A Brown-Eyed Population: Ophthalmic Features Of Waardenburg Syndrome In An Asian Child', '1', 'INAPOSS-EP-R-19', '2025-09-03 03:48:41', '2025-09-03 03:48:41'),
(565, 'Iska Novi Udayani', 'Ophthalmic Manifestations Of Suspected Congenital Rubella Syndrome: A Case Series Of Bilateral Congenital Cataracts In Siblings', '1', 'INAPOSS-EP-R-20', '2025-09-03 03:48:57', '2025-09-03 03:48:57'),
(566, 'Zamrud Wilda Nuril Awaly', 'Optimizing Quality Of Life In A Child With Advanced Juvenile Glaucoma And Irreversible Visual Loss : A Case For Holistic Rehabilitation', '1', 'INAPOSS-EP-R-21', '2025-09-03 03:49:07', '2025-09-03 03:49:07'),
(567, 'Hindun Zakiyah', 'Familial Exudative Vitreoretinopathy In A Child With Pseudoexotropia : A Case Report', '1', 'INAPOSS-EP-R-22', '2025-09-03 03:49:19', '2025-09-03 03:49:19'),
(568, 'Anya Dewi Nastiti', 'A Comprehensive Examination And Management Strategies For Primary Congenital Glaucoma: Unraveling The Challenges In Fluctuating Intraocular Pressure', '1', 'INAPOSS-EP-R-23', '2025-09-03 03:49:33', '2025-09-03 03:49:33'),
(569, 'Ahmad Azmi Hasyim', 'Behind The Blink: Unmasking Hemangiopericytoma Eyelid Tumor In A 7 Year Old Child', '1', 'INAPOSS-EP-R-24', '2025-09-03 03:49:44', '2025-09-03 03:49:44'),
(570, 'Safira Nadifa', 'Amblyogenic Risk Of Persistent Pupillary Membrane In Pediatrics: A Case Report And Management Strategy', '1', 'INAPOSS-EP-R-25', '2025-09-03 03:49:55', '2025-09-03 03:49:55'),
(571, 'Triana Hardianti Gunardi', 'Silent Eyes, Loud Message: Syphilitic Hemorrhagic Necrotizing Retinitis And Neurosyphilis In A Newborn From An Untreated Maternal Infection', '1', 'INAPOSS-EP-R-26', '2025-09-03 03:50:05', '2025-09-03 03:50:05'),
(572, 'Sthery Rhefany Olive Mathindas', '\"The Iris Claw\'s Grasp: Restoring Vision In Marfan-Related Lens Subluxation\"', '1', 'INAPOSS-EP-R-27', '2025-09-03 03:50:22', '2025-09-03 03:50:22'),
(573, 'Anas Jatikusuma', 'Subconjunctival Hemorrhage as a Sign of Intraocular Retinoblastoma Progression to Orbital Retinoblastoma: A Case Report', '1', 'INAPOSS-EP-R-28', '2025-09-03 03:50:34', '2025-09-03 03:50:34'),
(574, 'Adi Rakhmadi Kurniawan', 'ADDRESSING VISUAL IMPAIRMENTS IN INDIVIDUALS WITH DOWN SYNDROME: A CASE REPORT', '1', 'INAPOSS-EP-R-29', '2025-09-03 03:50:47', '2025-09-03 03:50:47'),
(575, 'Mutiara Qori Akbar', 'Complex Traumatic Cataract in a 5-Year-Old Child—What Are the Best Management Strategies?', '1', 'INAPOSS-EP-R-30', '2025-09-03 03:50:58', '2025-09-03 03:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NLkezXQVhoVTgRrTDtNDXN2Ul3HsxpUye6aMMFIN', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0ZIT3hCOWhIUGxxNEd6NU5yTGpONjhZbHFxRjloTXF4MlB1Z2V0biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zbGlkZURhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1756896659);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posters`
--
ALTER TABLE `posters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
