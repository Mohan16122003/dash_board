-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 08:45 AM
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
-- Database: `admissiondashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `bba`
--

CREATE TABLE `bba` (
  `id` int(11) NOT NULL,
  `RegisteredName` varchar(255) NOT NULL,
  `RegisteredEmail` varchar(255) NOT NULL,
  `RegisteredMobile` varchar(15) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Status` enum('accepted','declined','pending') NOT NULL,
  `RegistrationFee` varchar(225) NOT NULL,
  `RegisteredCampus` varchar(225) NOT NULL,
  `School` varchar(225) NOT NULL,
  `College` varchar(255) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Gender` enum('male','female','other') NOT NULL,
  `AssignToCounsellor` varchar(255) NOT NULL,
  `AdmissionCategory` enum('EAPCET','Management Quota') NOT NULL,
  `IntermediateMarks` decimal(5,2) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bba`
--

INSERT INTO `bba` (`id`, `RegisteredName`, `RegisteredEmail`, `RegisteredMobile`, `State`, `City`, `Status`, `RegistrationFee`, `RegisteredCampus`, `School`, `College`, `Country`, `Gender`, `AssignToCounsellor`, `AdmissionCategory`, `IntermediateMarks`, `Department`) VALUES
(243001, 'Rajesh Sharma', 'rajeshsharma@example.com', '9473884001', 'Punjab', 'Ludhiana', 'accepted', 'Paid', 'PKD campus', 'School of Management', 'PCTE', 'India', 'male', 'Praveen', '', 86.50, 'Accounts'),
(243002, 'Sunita Verma', 'sunitaverma@example.com', '9513633707', 'Uttar Pradesh', 'Varanasi', 'declined', 'not paid', 'Bhuvaneshwar campus', 'School of Management', 'BHU', 'India', 'female', 'Kishore', 'Management Quota', 77.30, 'Accounts'),
(243003, 'Ashish Singh', 'ashishsingh@example.com', '9844878577', 'Bihar', 'Patna', 'pending', 'Paid', 'Vizianagaram campus', 'School of Management', 'NIT Patna', 'India', 'male', 'Sreekar', '', 83.90, 'Accounts'),
(243004, 'Ria Gupta', 'riagupta@example.com', '9689304339', 'Gujarat', 'Ahmedabad', 'declined', 'Paid', 'PKD campus', 'School of Management', 'CEPT University', 'India', 'female', 'Praveen', 'Management Quota', 75.80, 'Accounts'),
(243005, 'Rohan Verma', 'rohanverma@example.com', '9353493597', 'Maharashtra', 'Pune', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'School of Management', 'Fergusson College', 'India', 'male', 'Sreekar', '', 84.30, 'Accounts'),
(243006, 'Kirti Sharma', 'kirtisharma@example.com', '9962128195', 'Rajasthan', 'Jaipur', 'pending', 'not paid', 'Vizianagaram campus', 'School of Management', 'LNMIIT Jaipur', 'India', 'female', 'Kishore', 'Management Quota', 88.70, 'Accounts'),
(243007, 'Deepak Singh', 'deepaksingh@example.com', '9295579742', 'Uttar Pradesh', 'Agra', 'declined', 'Paid', 'PKD campus', 'School of Management', 'Agra University', 'India', 'male', 'Praveen', '', 76.20, 'Accounts'),
(243008, 'Trisha Patel', 'trishapatel@example.com', '9614640356', 'Gujarat', 'Surat', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Management', 'SVNIT', 'India', 'female', 'Sreekar', 'Management Quota', 87.80, 'Accounts'),
(243009, 'Ankit Singh', 'ankitsingh@example.com', '9438146362', 'Bihar', 'Gaya', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Management', 'Magadh University', 'India', 'male', 'Kishore', '', 82.70, 'Accounts'),
(243010, 'Sonam Gupta', 'sonamgupta@example.com', '9681000582', 'Maharashtra', 'Mumbai', 'declined', 'not paid', 'PKD campus', 'School of Management', 'NMIMS', 'India', 'female', 'Praveen', 'Management Quota', 75.40, 'Accounts'),
(243011, 'Manish Kumar', 'manishkumar@example.com', '9637559663', 'Rajasthan', 'Jodhpur', 'accepted', 'not paid', 'Vizianagaram campus', 'School of Management', 'IIT Jodhpur', 'India', 'male', 'Sreekar', '', 89.10, 'Accounts'),
(243012, 'Anu Singh', 'anusigh@example.com', '9238852475', 'Uttar Pradesh', 'Kanpur', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Management', 'IIT Kanpur', 'India', 'female', 'Kishore', 'Management Quota', 87.30, 'Accounts'),
(243013, 'Mohit Patel', 'mohitpatel@example.com', '9908528807', 'Gujarat', 'Vadodara', 'declined', 'Paid', 'Vizianagaram campus', 'School of Management', 'MSU Baroda', 'India', 'male', 'Praveen', '', 78.60, 'Accounts'),
(243014, 'Shikha Sharma', 'shikhasharma@example.com', '9354526968', 'Maharashtra', 'Pune', 'accepted', 'not paid', 'PKD campus', 'School of Management', 'Symbiosis Pune', 'India', 'female', 'Sreekar', 'Management Quota', 84.90, 'Accounts'),
(243015, 'Vivek Kumar', 'vivekkumar@example.com', '9247690531', 'Bihar', 'Muzaffarpur', 'pending', 'not paid', 'Vizianagaram campus', 'School of Management', 'B. R. Ambedkar Bihar', 'India', 'male', 'Kishore', '', 83.20, 'Accounts'),
(243016, 'Rekha Verma', 'rekhaverma@example.com', '9873130375', 'Uttar Pradesh', 'Ghaziabad', 'declined', 'not paid', 'Bhuvaneshwar campus', 'School of Management', 'AKGEC', 'India', 'female', 'Praveen', 'Management Quota', 79.70, 'Accounts'),
(243017, 'Ajay Singh', 'ajaysingh@example.com', '9998895234', 'Madhya Pradesh', 'Indore', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Management', 'IIM Indore', 'India', 'male', 'Sreekar', '', 88.90, 'Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `bsc`
--

CREATE TABLE `bsc` (
  `id` int(11) NOT NULL,
  `RegisteredName` varchar(255) NOT NULL,
  `RegisteredEmail` varchar(255) NOT NULL,
  `RegisteredMobile` varchar(15) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Status` enum('accepted','declined','pending') NOT NULL,
  `RegistrationFee` varchar(225) NOT NULL,
  `RegisteredCampus` varchar(225) NOT NULL,
  `School` varchar(225) NOT NULL,
  `College` varchar(255) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Gender` enum('male','female','other') NOT NULL,
  `AssignToCounsellor` varchar(255) NOT NULL,
  `AdmissionCategory` enum('EAPCET','Management Quota') NOT NULL,
  `IntermediateMarks` decimal(5,2) NOT NULL,
  `Department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bsc`
--

INSERT INTO `bsc` (`id`, `RegisteredName`, `RegisteredEmail`, `RegisteredMobile`, `State`, `City`, `Status`, `RegistrationFee`, `RegisteredCampus`, `School`, `College`, `Country`, `Gender`, `AssignToCounsellor`, `AdmissionCategory`, `IntermediateMarks`, `Department`) VALUES
(242001, 'Priya Sharma', 'priyasharma@example.com', '9333332057', 'Maharashtra', 'Nagpur', 'pending', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'Hislop College', 'India', 'female', 'Kishore', 'Management Quota', 92.10, 'Radiology'),
(242002, 'Siddharth Gupta', 'siddharthgupta@example.com', '9190986594', 'Uttar Pradesh', 'Lucknow', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'Amity University', 'India', 'male', 'Praveen', 'Management Quota', 85.40, 'Forensic science'),
(242003, 'Neha Sharma', 'nehasharma@example.com', '9627314623', 'Punjab', 'Ludhiana', '', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Punjab University', 'India', 'female', 'Sreekar', 'Management Quota', 78.90, 'Radiology'),
(242004, 'Rohan Patel', 'rohanpatel@example.com', '9436961088', 'Gujarat', 'Surat', 'pending', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'SVNIT', 'India', 'male', 'Kishore', 'Management Quota', 83.70, 'Optometry'),
(242005, 'Pooja Verma', 'poojaverma@example.com', '9759134719', 'Rajasthan', 'Jaipur', '', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'Manipal University', 'India', 'female', 'Praveen', 'Management Quota', 75.20, 'Forensic science'),
(242006, 'Amit Kumar', 'amitkumar@example.com', '9348993117', 'Bihar', 'Patna', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'NIT Patna', 'India', 'male', 'Sreekar', 'Management Quota', 79.50, 'Optometry'),
(242007, 'Ritu Singh', 'ritusingh@example.com', '9540729520', 'Uttar Pradesh', 'Allahabad', 'pending', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'IIIT Allahabad', 'India', 'female', 'Kishore', 'Management Quota', 88.30, 'Anathesia'),
(242008, 'Varun Sharma', 'varunsharma@example.com', '9219166470', 'Haryana', 'Faridabad', '', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'YMCA University', 'India', 'male', 'Praveen', 'Management Quota', 82.60, 'Anathesia'),
(242009, 'Sneha Gupta', 'snehagupta@example.com', '9845317343', 'Maharashtra', 'Pune', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Symbiosis Pune', 'India', 'female', 'Kishore', 'Management Quota', 90.10, 'Anathesia'),
(242010, 'Akash Singh', 'akashsingh@example.com', '9154970690', 'Uttar Pradesh', 'Varanasi', 'accepted', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'BHU', 'India', 'male', 'Sreekar', 'Management Quota', 85.70, 'Forensic science'),
(242011, 'Nidhi Sharma', 'nidhisharma@example.com', '9777021135', 'Gujarat', 'Ahmedabad', '', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'Nirma University', 'India', 'female', 'Praveen', 'Management Quota', 77.80, 'Anathesia'),
(242012, 'Manish Verma', 'manishverma@example.com', '9688367506', 'Rajasthan', 'Udaipur', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'IIM Udaipur', 'India', 'male', 'Kishore', 'Management Quota', 81.40, 'Forensic science'),
(242013, 'Suman Patel', 'sumanpatel@example.com', '9375118695', 'Madhya Pradesh', 'Indore', 'pending', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'IIT Indore', 'India', 'female', 'Sreekar', 'Management Quota', 87.20, 'Forensic science'),
(242014, 'Arjun Sharma', 'arjunsharma@example.com', '9121143034', 'Punjab', 'Amritsar', '', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'GNDU', 'India', 'male', 'Praveen', 'Management Quota', 79.30, 'Radiology'),
(242015, 'Kavita Singh', 'kavitasingh@example.com', '9645546711', 'Uttar Pradesh', 'Ghaziabad', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'AKGEC', 'India', 'female', 'Kishore', 'Management Quota', 88.60, 'Forensic science'),
(242016, 'Rahul Verma', 'rahulverma@example.com', '9266283611', 'Bihar', 'Gaya', 'pending', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'Magadh University', 'India', 'male', 'Sreekar', 'Management Quota', 84.90, 'Anathesia'),
(242017, 'Shweta Gupta', 'shwetagupta@example.com', '9318618023', 'Gujarat', 'Rajkot', '', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'Saurashtra University', 'India', 'female', 'Praveen', 'Management Quota', 76.40, 'Forensic science'),
(242018, 'Rohit Kumar', 'rohitkumar@example.com', '9469427037', 'Bihar', 'Bhagalpur', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'TMBU', 'India', 'male', 'Kishore', 'Management Quota', 82.30, 'Optometry'),
(242019, 'Smita Sharma', 'smitasharma@example.com', '9360807415', 'Maharashtra', 'Mumbai', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Narsee Monjee', 'India', 'female', 'Sreekar', 'Management Quota', 89.70, 'Radiology'),
(242020, 'Aditya Patel', 'adityapatel@example.com', '9554171037', 'Gujarat', 'Vadodara', '', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'MSU Baroda', 'India', 'male', 'Praveen', 'Management Quota', 78.20, 'Radiology'),
(242021, 'Priyanka Singh', 'priyankasingh@example.com', '9969863476', 'Uttar Pradesh', 'Kanpur', 'accepted', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'IIT Kanpur', 'India', 'female', 'Kishore', 'Management Quota', 86.50, 'Radiology'),
(242022, 'Ankit Verma', 'ankitverma@example.com', '9194229471', 'Uttar Pradesh', 'Lucknow', 'accepted', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'IIM Lucknow', 'India', 'male', 'Praveen', 'Management Quota', 88.40, 'Radiology'),
(242023, 'Poonam Gupta', 'poonamgupta@example.com', '9726294491', 'Punjab', 'Ludhiana', '', 'not paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Punjab Agricultural Uni', 'India', 'female', 'Sreekar', 'Management Quota', 79.10, 'Optometry'),
(242024, 'Prashant Singh', 'prashantsingh@example.com', '9282418314', 'Bihar', 'Patna', 'pending', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'NIT Patna', 'India', 'male', 'Kishore', 'Management Quota', 85.60, 'Forensic science'),
(242025, 'Shreya Verma', 'shreyaverma@example.com', '9880310547', 'Gujarat', 'Ahmedabad', '', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'CEPT University', 'India', 'female', 'Praveen', 'Management Quota', 76.80, 'Radiology'),
(242026, 'Vishal Patel', 'vishalpatel@example.com', '9661927500', 'Maharashtra', 'Pune', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Fergusson College', 'India', 'male', 'Sreekar', 'Management Quota', 83.90, 'Anathesia'),
(242027, 'Meenakshi Sharma', 'meenakshisharma@example.com', '9191134602', 'Rajasthan', 'Jaipur', 'pending', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'LNMIIT Jaipur', 'India', 'female', 'Kishore', 'Management Quota', 89.30, 'Optometry'),
(242028, 'Ravi Singh', 'ravsingh@example.com', '9129263840', 'Uttar Pradesh', 'Agra', '', 'Paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'Agra University', 'India', 'male', 'Praveen', 'Management Quota', 77.20, 'Optometry'),
(242029, 'Tanvi Gupta', 'tanvigupta@example.com', '9740567592', 'Gujarat', 'Surat', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'SVNIT', 'India', 'female', 'Sreekar', 'Management Quota', 86.70, 'Anathesia'),
(242030, 'Anil Kumar', 'anilkumar@example.com', '9913154396', 'Bihar', 'Gaya', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'Magadh University', 'India', 'male', 'Kishore', 'Management Quota', 82.40, 'Radiology'),
(242031, 'Kavita Sharma', 'kavitasharma@example.com', '9854992800', 'Maharashtra', 'Mumbai', '', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'NMIMS', 'India', 'female', 'Praveen', 'Management Quota', 75.60, 'Optometry'),
(242032, 'Abhishek Verma', 'abhishekverma@example.com', '9421093595', 'Rajasthan', 'Jodhpur', 'accepted', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'IIT Jodhpur', 'India', 'male', 'Sreekar', 'Management Quota', 89.20, 'Anathesia'),
(242033, 'Riya Singh', 'riyasingh@example.com', '9377470220', 'Uttar Pradesh', 'Kanpur', 'pending', 'Paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'IIT Kanpur', 'India', 'female', 'Kishore', 'Management Quota', 87.90, 'Radiology'),
(242034, 'Prakash Patel', 'prakashpatel@example.com', '9814097394', 'Gujarat', 'Vadodara', '', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'MSU Baroda', 'India', 'male', 'Praveen', 'Management Quota', 78.30, 'Forensic science'),
(242035, 'Sakshi Sharma', 'sakshisharma@example.com', '9627544198', 'Maharashtra', 'Pune', 'accepted', 'not paid', 'PKD campus', 'School of Paramedics & Allied Health Science', 'Symbiosis Pune', 'India', 'female', 'Sreekar', 'Management Quota', 84.70, 'Anathesia'),
(242036, 'Sanjay Kumar', 'sanjaykumar@example.com', '9259254473', 'Bihar', 'Muzaffarpur', 'pending', 'not paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'B. R. Ambedkar Bihar', 'India', 'male', 'Kishore', 'Management Quota', 83.10, 'Anathesia'),
(242037, 'Preeti Verma', 'preetiverma@example.com', '9220229842', 'Uttar Pradesh', 'Ghaziabad', '', 'not paid', 'Bhuvaneshwar campus', 'School of Paramedics & Allied Health Science', 'AKGEC', 'India', 'female', 'Praveen', 'Management Quota', 79.80, 'Anathesia'),
(242038, 'Aditya Singh', 'adityasingh@example.com', '9603222726', 'Madhya Pradesh', 'Indore', 'accepted', 'Paid', 'Vizianagaram campus', 'School of Paramedics & Allied Health Science', 'IIM Indore', 'India', 'male', 'Sreekar', 'Management Quota', 88.60, 'Radiology');

-- --------------------------------------------------------

--
-- Table structure for table `btech`
--

CREATE TABLE `btech` (
  `id` int(11) NOT NULL,
  `RegisteredName` varchar(255) NOT NULL,
  `RegisteredEmail` varchar(255) NOT NULL,
  `RegisteredMobile` varchar(15) NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Status` enum('accepted','declined','pending') NOT NULL,
  `RegistrationFee` varchar(225) NOT NULL,
  `RegisteredCampus` varchar(225) NOT NULL,
  `School` varchar(225) NOT NULL,
  `College` varchar(255) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Gender` enum('male','female','other') NOT NULL,
  `AssignToCounsellor` varchar(255) NOT NULL,
  `AdmissionCategory` enum('EAPCET','Management Quota') NOT NULL,
  `IntermediateMarks` decimal(5,2) NOT NULL,
  `Department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `btech`
--

INSERT INTO `btech` (`id`, `RegisteredName`, `RegisteredEmail`, `RegisteredMobile`, `State`, `City`, `Status`, `RegistrationFee`, `RegisteredCampus`, `School`, `College`, `Country`, `Gender`, `AssignToCounsellor`, `AdmissionCategory`, `IntermediateMarks`, `Department`) VALUES
(241001, 'Amit Sharma', 'amitsharma@example.com', '9169069505', 'Maharashtra', 'Mumbai', 'pending', 'not paid', 'Vizianagaram campus', 'vishwa bharathi public school ', 'Vignan college', 'India', 'male', 'Kishore', 'EAPCET', 95.60, 'ECE'),
(241002, 'Priya Patel', 'priyapatel@example.com', '9686200771', 'Gujarat', 'Ahmedabad', 'accepted', 'Paid', 'Vizianagaram campus', 'geethanjali Public School', 'Narayana college', 'India', 'female', 'Sreekar', 'EAPCET', 85.60, 'CSE'),
(241003, 'Rahul Singh', 'rahulsingh@example.com', '9349502251', 'Uttar Pradesh', 'Lucknow', 'declined', 'Paid', 'PKD campus', 'Vignan Public School', 'sri chaitanya college', 'India', 'male', 'Kishore', 'EAPCET', 65.00, 'MECH'),
(241004, 'Anjali Gupta', 'anjaligupta@example.com', '9554534159', 'Rajasthan', 'Jaipur', 'accepted', 'Paid', 'Vizianagaram campus', 'kendriya Public School', ' Surya college', 'India', 'female', 'Kishore', 'EAPCET', 75.00, 'CSE'),
(241005, 'Ravi Kumar', 'ravikumar@example.com', '9297949335', 'Delhi', 'Delhi', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'Bhasyam Public School', 'st.Anna\'s college', 'India', 'male', 'Sreekar', 'EAPCET', 95.30, 'ECE'),
(241006, 'Sneha Mishra', 'snehamishra@example.com', '9743411217', 'Karnataka', 'Bangalore', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'Narayana Public School', 'kendriaya college', 'India', 'female', 'Sreekar', 'Management Quota', 58.30, 'MECH'),
(241007, 'Manish Singh', 'manishsingh@example.com', '9804689338', 'Madhya Pradesh', 'Indore', 'pending', 'Paid', 'Bhuvaneshwar campus', 'TBR Public School', 'govt. jr college', 'India', 'male', 'Praveen', 'Management Quota', 65.00, 'CSE'),
(241008, 'Pooja Sharma', 'poojasharma@example.com', '9911125342', 'Maharashtra', 'Pune', 'pending', 'Paid', 'PKD campus', 'Chaitanya Public School', 'Model college', 'India', 'female', 'Kishore', 'Management Quota', 85.00, 'CSE'),
(241009, 'Vikas Verma', 'vikasverma@example.com', '9269003669', 'Tamil Nadu', 'Chennai', 'accepted', 'Paid', 'Vizianagaram campus', 'Gokul Public School', 'Gokul college', 'India', 'male', 'Praveen', 'Management Quota', 12.00, 'CSE'),
(241010, 'Neha Singh', 'nehasingh@example.com', '9394191391', 'Uttar Pradesh', 'Allahabad', 'pending', 'not paid', 'Vizianagaram campus', 'CenturionPublic School', 'bharathi college', 'India', 'female', 'Sreekar', 'Management Quota', 78.00, 'MECH'),
(241011, 'Karan Gupta', 'karangupta@example.com', '9207241476', 'Punjab', 'Chandigarh', 'pending', 'not paid', 'PKD campus', 'laksya Public School', 'Sri devi coolege', 'India', 'male', 'Sreekar', 'EAPCET', 89.00, 'CSE'),
(241012, 'Shreya Patel', 'shreyapatel@example.com', '9265075766', 'Gujarat', 'Surat', 'accepted', 'Paid', 'PKD campus', 'Model Public School', 'AVK juniour college', 'India', 'female', 'Kishore', 'EAPCET', 56.30, 'CSE'),
(241013, 'Arun Kumar', 'arunkumar@example.com', '9675029365', 'Andhra Pradesh', 'Hyderabad', 'declined', 'Paid', 'PKD campus', 'Ideal Public School', 'Vasavi college', 'India', 'male', 'Kishore', 'EAPCET', 75.00, 'ECE'),
(241014, 'Sakshi Singh', 'sakshisingh@example.com', '9396560057', 'West Bengal', 'Kolkata', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'vizag Public School', 'pragathi college', 'India', 'female', 'Praveen', 'Management Quota', 58.00, 'ECE'),
(241015, 'Rahul Sharma', 'rahulsharma@example.com', '9462101933', 'Maharashtra', 'Nagpur', 'pending', 'Paid', 'Vizianagaram campus', 'Neora Public School', 'Adithya college', 'India', 'male', 'Sreekar', 'Management Quota', 65.00, 'MECH'),
(241016, 'Nisha Patel', 'nishapatel@example.com', '9807786697', 'Gujarat', 'Vadodara', 'declined', 'not paid', 'PKD campus', 'christain Public School', 'Saraswathi juniour college', 'India', 'female', 'Praveen', 'Management Quota', 95.00, 'ECE'),
(241017, 'Sanjay Gupta', 'sanjaygupta@example.com', '9507273483', 'Uttar Pradesh', 'Kanpur', 'declined', 'Paid', 'Bhuvaneshwar campus', 'Sunflower Public School', 'Narayana college', 'India', 'male', 'Kishore', 'Management Quota', 85.00, 'CSE'),
(241018, 'Ananya Singh', 'ananyasingh@example.com', '9484447046', 'Rajasthan', 'Udaipur', 'pending', 'Paid', 'Vizianagaram campus', 'NeoraPublic School', 'Vignan college', 'India', 'female', 'Praveen', 'Management Quota', 89.00, 'CSE'),
(241019, 'Rajesh Verma', 'rajeshverma@example.com', '9315972809', 'Delhi', 'New Delhi', 'pending', 'Paid', 'Vizianagaram campus', 'Vignan Public School', 'sri chaitanya college', 'India', 'male', 'Praveen', 'Management Quota', 87.00, 'MECH'),
(241020, 'Deepika Sharma', 'deepikasharma@example.com', '9232527670', 'Haryana', 'Gurgaon', 'pending', 'not paid', 'Bhuvaneshwar campus', 'Millennium Public School', 'Gokul college', 'India', 'female', 'Sreekar', 'Management Quota', 78.50, 'MECH'),
(241021, 'Rajat Patel', 'rajatpatel@example.com', '9132197733', 'Gujarat', 'Rajkot', 'pending', 'Paid', 'Vizianagaram campus', 'Vishwa Public School', 'Pragathi college', 'India', 'male', 'Kishore', 'Management Quota', 92.40, 'CSE'),
(241022, 'Kritika Singh', 'kritikasingh@example.com', '9346142549', 'Bihar', 'Patna', 'accepted', 'Paid', 'PKD campus', 'Sunshine Public School', 'Sri devi college', 'India', 'female', 'Praveen', 'EAPCET', 82.70, 'MECH'),
(241023, 'Aryan Verma', 'aryanverma@example.com', '9304279195', 'Uttar Pradesh', 'Varanasi', 'pending', 'not paid', 'Vizianagaram campus', 'Geetanjali Public School', 'Narayana college', 'India', 'male', 'Kishore', 'Management Quota', 75.80, 'CSE'),
(241024, 'Neha Gupta', 'nehagupta@example.com', '9975228493', 'Madhya Pradesh', 'Bhopal', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'Sunrise Public School', 'AVK junior college', 'India', 'female', 'Sreekar', 'EAPCET', 67.20, 'ECE'),
(241025, 'Mohit Kumar', 'mohitkumar@example.com', '9815354595', 'Rajasthan', 'Jodhpur', 'declined', 'Paid', 'Vizianagaram campus', 'Central Public School', 'Vignan college', 'India', 'male', 'Praveen', 'Management Quota', 88.30, 'ECE'),
(241026, 'Kavya Sharma', 'kavyasharma@example.com', '9816032806', 'Punjab', 'Ludhiana', 'pending', 'not paid', 'Bhuvaneshwar campus', 'Bluebell Public School', 'Pragathi college', 'India', 'female', 'Kishore', 'EAPCET', 74.60, 'CSE'),
(241027, 'Rohan Singh', 'rohansingh@example.com', '9652159406', 'Maharashtra', 'Nashik', 'accepted', 'Paid', 'Vizianagaram campus', 'Saraswathi Public School', 'Vasavi college', 'India', 'male', 'Sreekar', 'Management Quota', 81.90, 'CSE'),
(241028, 'Isha Verma', 'ishaverma@example.com', '9611509224', 'Uttar Pradesh', 'Ghaziabad', 'declined', 'Paid', 'PKD campus', 'Royal Public School', 'Gokul college', 'India', 'female', 'Praveen', 'EAPCET', 91.50, 'CSE'),
(241029, 'Vishal Patel', 'vishalpatel@example.com', '9557160002', 'Gujarat', 'Vadodara', 'pending', 'Paid', 'Bhuvaneshwar campus', 'Rainbow Public School', 'Sri devi college', 'India', 'male', 'Kishore', 'Management Quota', 76.30, 'CSE'),
(241030, 'Neha Verma', 'nehaverma@example.com', '9968508793', 'Uttar Pradesh', 'Ghaziabad', 'pending', 'not paid', 'PKD campus', 'Sunshine Public School', 'Sri Sai college', 'India', 'female', 'Sreekar', 'EAPCET', 79.50, 'MECH'),
(241031, 'Suresh Kumar', 'sureshkumar@example.com', '9901026454', 'Tamil Nadu', 'Coimbatore', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'Vani Public School', 'College', 'India', 'male', 'Kishore', 'EAPCET', 68.20, 'CSE'),
(241032, 'Meera Devi', 'meeradevi@example.com', '9158451974', 'Bihar', 'Patna', 'declined', 'not paid', 'Vizianagaram campus', 'Gyan Bharati School', 'Vignan college', 'India', 'female', 'Praveen', 'Management Quota', 73.80, 'CSE'),
(241033, 'Rohan Patel', 'rohanpatel@example.com', '9546282782', 'Gujarat', 'Vadodara', 'pending', 'Paid', 'PKD campus', 'Little Flower School', 'Narayana college', 'India', 'male', 'Sreekar', 'Management Quota', 82.10, 'ECE'),
(241034, 'Kavita Sharma', 'kavitasharma@example.com', '9923577763', 'Maharashtra', 'Nagpur', 'accepted', 'not paid', 'Vizianagaram campus', 'St. Mary\'s School', 'sri chaitanya college', 'India', 'female', 'Kishore', 'EAPCET', 91.40, 'ECE'),
(241035, 'Varun Gupta', 'varungupta@example.com', '9137342884', 'Uttar Pradesh', 'Agra', 'declined', 'Paid', 'Bhuvaneshwar campus', 'Blue Bells School', ' Surya college', 'India', 'male', 'Praveen', 'Management Quota', 76.50, 'CSE'),
(241036, 'Swati Singh', 'swatisingh@example.com', '9307737207', 'Bihar', 'Gaya', 'accepted', 'Paid', 'Vizianagaram campus', 'City Public School', 'st.Anna\'s college', 'India', 'female', 'Sreekar', 'Management Quota', 84.70, 'CSE'),
(241037, 'Amarjeet Kaur', 'amarjeetkaur@example.com', '9735474488', 'Punjab', 'Ludhiana', 'pending', 'not paid', 'PKD campus', 'St. Xavier\'s School', 'kendriaya college', 'India', 'female', 'Kishore', 'EAPCET', 77.90, 'ECE'),
(241038, 'Mohan Das', 'mohandas@example.com', '9133281158', 'Kerala', 'Kochi', 'pending', 'not paid', 'Bhuvaneshwar campus', 'Sacred Heart School', 'govt. jr college', 'India', 'male', 'Praveen', 'Management Quota', 88.30, 'ECE'),
(241039, 'Preeti Gupta', 'preetigupta@example.com', '9223039875', 'Uttar Pradesh', 'Varanasi', 'declined', 'Paid', 'Vizianagaram campus', 'Saraswati Vidya Mandir', 'Model college', 'India', 'female', 'Kishore', 'EAPCET', 72.60, 'ECE'),
(241040, 'Ajay Kumar', 'ajaykumar@example.com', '9100875106', 'Karnataka', 'Mysore', 'accepted', 'Paid', 'PKD campus', 'Green Valley School', 'Gokul college', 'India', 'male', 'Sreekar', 'Management Quota', 79.30, 'ECE'),
(241041, 'Nidhi Verma', 'nidhiverma@example.com', '9798563418', 'Delhi', 'Faridabad', 'pending', 'Paid', 'Vizianagaram campus', 'Modern Public School', 'bharathi college', 'India', 'female', 'Kishore', 'Management Quota', 85.20, 'ECE'),
(241042, 'Vivek Singh', 'viveksingh@example.com', '9405034411', 'Bihar', 'Bhagalpur', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'Vivekananda School', 'Sri devi coolege', 'India', 'male', 'Praveen', 'EAPCET', 74.80, 'CSE'),
(241043, 'Simran Kaur', 'simrankaur@example.com', '9158025331', 'Punjab', 'Amritsar', 'declined', 'not paid', 'Vizianagaram campus', 'Sacred Heart Convent', 'AVK juniour college', 'India', 'female', 'Sreekar', 'Management Quota', 80.50, 'ECE'),
(241044, 'Rahul Mehta', 'rahulmehta@example.com', '9177085485', 'Haryana', 'Gurgaon', 'pending', 'Paid', 'PKD campus', 'DAV Public School', 'Vasavi college', 'India', 'male', 'Kishore', 'Management Quota', 93.10, 'MECH'),
(241045, 'Priyanka Das', 'priyankadas@example.com', '9711126745', 'West Bengal', 'Howrah', 'accepted', 'Paid', 'Bhuvaneshwar campus', 'St. Joseph\'s School', 'pragathi college', 'India', 'female', 'Praveen', 'EAPCET', 68.90, 'CSE'),
(241046, 'Sushant Patel', 'sushantpatel@example.com', '9930926504', 'Gujarat', 'Rajkot', 'declined', 'Paid', 'Vizianagaram campus', 'St. Xavier\'s School', 'Adithya college', 'India', 'male', 'Sreekar', 'Management Quota', 86.40, 'MECH'),
(241047, 'Deepak Sharma', 'deepaksharma@example.com', '9229676507', 'Rajasthan', 'Jodhpur', 'pending', 'not paid', 'PKD campus', 'Rajput Public School', 'Narayana college', 'India', 'male', 'Kishore', 'EAPCET', 82.70, 'ECE'),
(241048, 'Neha Gupta', 'nehagupta@example.com', '9499636602', 'Madhya Pradesh', 'Bhopal', 'declined', 'Paid', 'Bhuvaneshwar campus', 'Oxford Public School', 'Vignan college', 'India', 'female', 'Praveen', 'Management Quota', 76.20, 'ECE'),
(241049, 'Arjun Singh', 'arjunsingh@example.com', '9380176530', 'Karnataka', 'Hubli', 'accepted', 'Paid', 'Vizianagaram campus', 'St. John\'s School', 'sri chaitanya college', 'India', 'male', 'Sreekar', 'EAPCET', 89.40, 'CSE'),
(241050, 'Kritika Verma', 'kritikaverma@example.com', '9446072331', 'Uttar Pradesh', 'Meerut', 'pending', 'Paid', 'PKD campus', 'Bright Future School', 'Narayana college', 'India', 'female', 'Kishore', 'Management Quota', 83.80, 'CSE'),
(241051, 'Akash Patel', 'akashpatel@example.com', '9730489481', 'Gujarat', 'Gandhinagar', 'accepted', 'not paid', 'Bhuvaneshwar campus', 'Swaminarayan School', 'kendriaya college', 'India', 'male', 'Praveen', 'Management Quota', 78.50, 'ECE'),
(241052, 'Ritu Sharma', 'ritusharma@example.com', '9464559461', 'Maharashtra', 'Thane', 'declined', 'not paid', 'Vizianagaram campus', 'Sunrise Public School', 'Model college', 'India', 'female', 'Kishore', 'Management Quota', 81.60, 'CSE'),
(241053, 'Vikram Singh', 'vikramsingh@example.com', '9151043646', 'Haryana', 'Karnal', 'pending', 'not paid', 'PKD campus', 'Shri Ram School', 'MR college', 'India', 'male', 'Sreekar', 'EAPCET', 75.90, 'MECH'),
(241054, 'Jyoti Gupta', 'jyotigupta@example.com', '9677507577', 'Punjab', 'Patiala', 'accepted', 'Paid', 'Vizianagaram campus', 'DAV Public School', 'Mangala giri college', 'India', 'female', 'Praveen', 'EAPCET', 88.20, 'ECE'),
(241055, 'Rohit Verma', 'rohitverma@example.com', '9432522824', 'Rajasthan', 'Ajmer', 'pending', 'Paid', 'Bhuvaneshwar campus', 'Tagore Public School', 'Narayana college', 'India', 'male', 'Kishore', 'Management Quota', 79.30, 'MECH'),
(241056, 'Poonam Singh', 'poonamsingh@example.com', '9434881066', 'Uttar Pradesh', 'Ghaziabad', 'declined', 'Paid', 'Vizianagaram campus', 'St. Teresa\'s School', 'AVK juniour college', 'India', 'female', 'Sreekar', 'Management Quota', 86.70, 'CSE'),
(241057, 'Harish Patel', 'harishpatel@example.com', '9666754245', 'Gujarat', 'Bhavnagar', 'accepted', 'not paid', 'PKD campus', 'Navyug Public School', 'Adithya college', 'India', 'male', 'Praveen', 'EAPCET', 74.10, 'CSE'),
(241058, 'Aarti Sharma', 'aartisharma@example.com', '9675817439', 'Maharashtra', 'Nashik', 'pending', 'Paid', 'Bhuvaneshwar campus', 'Millennium School', 'Vasavi college', 'India', 'female', 'Kishore', 'Management Quota', 90.50, 'MECH'),
(241059, 'Ajay Kumar', 'ajaykumar@example.com', '9151061672', 'Bihar', 'Darbhanga', 'declined', 'not paid', 'Vizianagaram campus', 'Holy Cross School', 'siva sakthi coolege', 'India', 'male', 'Sreekar', 'Management Quota', 77.40, 'MECH'),
(241060, 'Sonali Gupta', 'sonaligupta@example.com', '9611404507', 'Uttar Pradesh', 'Agra', 'accepted', 'Paid', 'PKD campus', 'City Montessori School', 'andalamma college', 'India', 'female', 'Praveen', 'EAPCET', 85.30, 'MECH'),
(241061, 'Deepak Verma', 'deepakverma@example.com', '9228685669', 'Madhya Pradesh', 'Jabalpur', 'pending', 'not paid', 'Vizianagaram campus', 'Birla Public School', 'Adithya college', 'India', 'male', 'Kishore', 'Management Quota', 78.90, 'ECE'),
(241062, 'Renuka Singh', 'renukasingh@example.com', '9910748100', 'Bihar', 'Muzaffarpur', 'declined', 'Paid', 'Bhuvaneshwar campus', 'St. Francis School', 'Narayana college', 'India', 'female', 'Sreekar', 'Management Quota', 82.40, 'MECH'),
(241063, 'Rohan Kumar', 'rohankumar@example.com', '9413858130', 'Jharkhand', 'Ranchi', 'accepted', 'Paid', 'PKD campus', 'DAV Public School', 'Vignan college', 'India', 'male', 'Praveen', 'EAPCET', 79.60, 'CSE'),
(241064, 'Anushka Patel', 'anushkapatel@example.com', '9361683351', 'Gujarat', 'Jamnagar', 'pending', 'Paid', 'Vizianagaram campus', 'Gurukul School', 'kendriaya college', 'India', 'female', 'Kishore', 'Management Quota', 87.80, 'CSE'),
(241065, 'Prakash Singh', 'prakashsingh@example.com', '9697729778', 'Uttar Pradesh', 'Kanpur', 'declined', 'not paid', 'Bhuvaneshwar campus', 'St. Mary\'s Convent', 'bharathi college', 'India', 'male', 'Sreekar', 'EAPCET', 84.20, 'ECE'),
(241066, 'RegisteredName', 'Registered Email', 'RegisteredMobil', 'State', 'City', '', 'registrationfee', 'RegisteredCampus', 'School', 'College', 'Country', '', 'AssignToCounsellor', '', 0.00, 'Department'),
(241067, 'sujith', 'sujithreddygondesi@gmail.com', '7032650328', 'Andhra Pradesh', 'RANASTHALAM', 'accepted', 'paid', 'Vizinagaram Campus', 'School of Paramedics & Allied Health Science', 'viswavignancollege', 'India', 'male', 'sreekar', 'Management Quota', 96.20, 'ECE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` varchar(5) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` bigint(20) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`, `email`, `token`, `reset_token`) VALUES
('sreekar', 'sreekar1234', 'admin', 'saisreekarnadakudativenkata@gmail.com', NULL, NULL),
('abdul', 'abdul1234', 'admin', 'adbul@gmail.com', NULL, NULL),
('kula', 'kula1234', 'user', 'kula@gami.com', NULL, NULL),
('', '', '', '', NULL, NULL),
('raju', 'raju1234', 'user', 'raju@gmail.com', NULL, NULL),
('mohan', 'mohan1234', 'admin', 'moham@gmail.com', NULL, NULL),
('kishore', 'kishore1234', 'user', 'kishore@gmail.com', NULL, NULL),
('lokesh', 'lokesh1234', 'user', 'lokesh@gmail.com', NULL, NULL),
('kailash', 'kailash1234', 'user', 'kailash@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bba`
--
ALTER TABLE `bba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsc`
--
ALTER TABLE `bsc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btech`
--
ALTER TABLE `btech`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bba`
--
ALTER TABLE `bba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243025;

--
-- AUTO_INCREMENT for table `bsc`
--
ALTER TABLE `bsc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242041;

--
-- AUTO_INCREMENT for table `btech`
--
ALTER TABLE `btech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241068;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
