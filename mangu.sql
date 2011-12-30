-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: mangu
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `additional_exam_groups`
--

DROP TABLE IF EXISTS `additional_exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `result_published` tinyint(1) DEFAULT '0',
  `students_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_groups`
--

LOCK TABLES `additional_exam_groups` WRITE;
/*!40000 ALTER TABLE `additional_exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exam_scores`
--

DROP TABLE IF EXISTS `additional_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `additional_exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_scores`
--

LOCK TABLES `additional_exam_scores` WRITE;
/*!40000 ALTER TABLE `additional_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exams`
--

DROP TABLE IF EXISTS `additional_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `additional_exam_group_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `maximum_marks` int(11) DEFAULT NULL,
  `minimum_marks` int(11) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `weightage` int(11) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exams`
--

LOCK TABLES `additional_exams` WRITE;
/*!40000 ALTER TABLE `additional_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_fields`
--

DROP TABLE IF EXISTS `additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_fields`
--

LOCK TABLES `additional_fields` WRITE;
/*!40000 ALTER TABLE `additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_leaves`
--

DROP TABLE IF EXISTS `apply_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_types_id` int(11) DEFAULT NULL,
  `is_half_day` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `viewed_by_manager` tinyint(1) DEFAULT '0',
  `manager_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_leaves`
--

LOCK TABLES `apply_leaves` WRITE;
/*!40000 ALTER TABLE `apply_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_additional_details`
--

DROP TABLE IF EXISTS `archived_employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_additional_details`
--

LOCK TABLES `archived_employee_additional_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_bank_details`
--

DROP TABLE IF EXISTS `archived_employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `bank_field_id` int(11) DEFAULT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_bank_details`
--

LOCK TABLES `archived_employee_bank_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_salary_structures`
--

DROP TABLE IF EXISTS `archived_employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_salary_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_salary_structures`
--

LOCK TABLES `archived_employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `archived_employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employees`
--

DROP TABLE IF EXISTS `archived_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_category_id` int(11) DEFAULT NULL,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_position_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `reporting_manager_id` int(11) DEFAULT NULL,
  `employee_grade_id` int(11) DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_detail` text COLLATE utf8_unicode_ci,
  `experience_year` int(11) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `children_count` int(11) DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `husband_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `home_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_country_id` int(11) DEFAULT NULL,
  `home_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_country_id` int(11) DEFAULT NULL,
  `office_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `former_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employees`
--

LOCK TABLES `archived_employees` WRITE;
/*!40000 ALTER TABLE `archived_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_exam_scores`
--

DROP TABLE IF EXISTS `archived_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_archived_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_exam_scores`
--

LOCK TABLES `archived_exam_scores` WRITE;
/*!40000 ALTER TABLE `archived_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_guardians`
--

DROP TABLE IF EXISTS `archived_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_guardians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_guardians`
--

LOCK TABLES `archived_guardians` WRITE;
/*!40000 ALTER TABLE `archived_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_students`
--

DROP TABLE IF EXISTS `archived_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `immediate_contact_id` int(11) DEFAULT NULL,
  `is_sms_enabled` tinyint(1) DEFAULT '1',
  `former_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_students`
--

LOCK TABLES `archived_students` WRITE;
/*!40000 ALTER TABLE `archived_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `period_table_entry_id` int(11) DEFAULT NULL,
  `forenoon` tinyint(1) DEFAULT '0',
  `afternoon` tinyint(1) DEFAULT '0',
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_fields`
--

DROP TABLE IF EXISTS `bank_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_fields`
--

LOCK TABLES `bank_fields` WRITE;
/*!40000 ALTER TABLE `bank_fields` DISABLE KEYS */;
INSERT INTO `bank_fields` VALUES (1,'KENYA COMMERCIAL BANK',1);
/*!40000 ALTER TABLE `bank_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_events`
--

DROP TABLE IF EXISTS `batch_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_batch_events_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_events`
--

LOCK TABLES `batch_events` WRITE;
/*!40000 ALTER TABLE `batch_events` DISABLE KEYS */;
INSERT INTO `batch_events` VALUES (1,1,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(2,2,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(3,3,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(4,4,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(5,5,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(6,6,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(7,7,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(8,8,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(9,9,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(10,10,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(11,11,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(12,12,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(13,13,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(14,14,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(15,15,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(16,16,1,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(17,17,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(18,18,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(19,19,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(20,20,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(21,21,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(22,22,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(23,23,1,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(24,24,1,'2011-09-09 13:42:51','2011-09-09 13:42:51');
/*!40000 ALTER TABLE `batch_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_students` (
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  KEY `index_batch_students_on_batch_id_and_student_id` (`batch_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_students`
--

LOCK TABLES `batch_students` WRITE;
/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_batches_on_is_deleted_and_is_active` (`is_deleted`,`is_active`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'TERM  THREE',1,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(2,'FIRST TERM',2,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(3,'TERM  THREE',3,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,'3'),(4,'FIRST TERM',4,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(5,'FIRST TERM',5,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(6,'FIRST TERM',6,'2011-09-09 00:00:00','2012-09-09 00:00:00',1,0,NULL),(7,'FIRST TERM',7,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(8,'FIRST TERM',8,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(9,'FIRST TERM',9,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(10,'FIRST TERM',10,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(11,'FIRST TERM',11,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(12,'TERM  THREE',12,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(13,'FIRST TERM',13,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(14,'FIRST TERM',14,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(15,'FIRST TERM',15,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(16,'FIRST TERM',16,'2011-09-09 00:00:00','2011-12-20 00:00:00',1,0,NULL),(17,'TERM THREE',17,'2011-11-06 00:00:00','2011-12-06 00:00:00',1,0,NULL),(18,'TERM THREE',18,'2011-09-06 00:00:00','2012-11-20 00:00:00',1,0,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_timings`
--

DROP TABLE IF EXISTS `class_timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_break` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_class_timings_on_batch_id_and_start_time_and_end_time` (`batch_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_timings`
--

LOCK TABLES `class_timings` WRITE;
/*!40000 ALTER TABLE `class_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_configurations_on_config_key` (`config_key`(10)),
  KEY `index_configurations_on_config_value` (`config_value`(10))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'InstitutionName','Mang\'u High School'),(2,'InstitutionAddress','P.O BOX 314 - THIKA'),(3,'InstitutionPhoneNo','25406724146'),(4,'StudentAttendanceType','Daily'),(5,'CurrencyType','KSH'),(6,'AdmissionNumberAutoIncrement','1'),(7,'EmployeeNumberAutoIncrement','1'),(8,'TotalSmsCount','0'),(9,'AvailableModules','HR'),(10,'AvailableModules','Finance'),(11,'NetworkState','Online'),(12,'FinancialYearStartDate','2011-09-09'),(13,'FinancialYearEndDate','2012-09-09'),(14,'AutomaticLeaveReset','0'),(15,'LeaveResetPeriod','4'),(16,'LastAutoLeaveReset',NULL),(17,'AvailableModules','SMS'),(18,'AvailableModules','Library');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua & Deps'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina'),(28,'Burundi'),(29,'Cambodia'),(30,'Cameroon'),(31,'Canada'),(32,'Cape Verde'),(33,'Central African Rep'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo'),(40,'Congo {Democratic Rep}'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czech Republic'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'East Timor'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Honduras'),(74,'Hungary'),(75,'Iceland'),(76,'India'),(77,'Indonesia'),(78,'Iran'),(79,'Iraq'),(80,'Ireland {Republic}'),(81,'Israel'),(82,'Italy'),(83,'Ivory Coast'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Korea North'),(91,'Korea South'),(92,'Kosovo'),(93,'Kuwait'),(94,'Kyrgyzstan'),(95,'Laos'),(96,'Latvia'),(97,'Lebanon'),(98,'Lesotho'),(99,'Liberia'),(100,'Libya'),(101,'Liechtenstein'),(102,'Lithuania'),(103,'Luxembourg'),(104,'Macedonia'),(105,'Madagascar'),(106,'Malawi'),(107,'Malaysia'),(108,'Maldives'),(109,'Mali'),(110,'Malta'),(111,'Montenegro'),(112,'Marshall Islands'),(113,'Mauritania'),(114,'Mauritius'),(115,'Mexico'),(116,'Micronesia'),(117,'Moldova'),(118,'Monaco'),(119,'Mongolia'),(120,'Morocco'),(121,'Mozambique'),(122,'Myanmar, {Burma}'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Netherlands'),(127,'New Zealand'),(128,'Nicaragua'),(129,'Niger'),(130,'Nigeria'),(131,'Norway'),(132,'Oman'),(133,'Pakistan'),(134,'Palau'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russian Federation'),(145,'Rwanda'),(146,'St Kitts & Nevis'),(147,'St Lucia'),(148,'Saint Vincent & the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome & Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Swaziland'),(168,'Sweden'),(169,'Switzerland'),(170,'Syria'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tonga'),(177,'Trinidad & Tobago'),(178,'Tunisia'),(179,'Turkey'),(180,'Turkmenistan'),(181,'Tuvalu'),(182,'Uganda'),(183,'Ukraine'),(184,'United Arab Emirates'),(185,'United Kingdom'),(186,'United States'),(187,'Uruguay'),(188,'Uzbekistan'),(189,'Vanuatu'),(190,'Vatican City'),(191,'Venezuea'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),(195,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'FORM 1','1W','WEST',0,'2011-09-09 12:46:42','2011-09-09 12:46:42'),(2,'FORM 1','1E','EAST',0,'2011-09-09 12:47:44','2011-09-09 12:47:44'),(3,'FORM 1','1N','NORTH',0,'2011-09-09 12:48:32','2011-09-09 12:48:32'),(4,'FORM 1','1S','SOUTH',0,'2011-09-09 12:49:05','2011-09-09 12:49:05'),(5,'FORM 2','2E','EAST',0,'2011-09-09 12:49:43','2011-09-09 12:49:43'),(6,'FORM 2','2W','WEST',0,'2011-09-09 12:50:32','2011-09-09 12:50:32'),(7,'FORM 2','2N','NORTH',0,'2011-09-09 12:51:14','2011-09-09 12:51:14'),(8,'FORM 2','2 S','SOUTH',0,'2011-09-09 12:52:07','2011-09-09 12:52:07'),(9,'FORM 3','3E','EAST',0,'2011-09-09 12:52:42','2011-09-09 12:52:42'),(10,'FORM 3','3W','WEST',0,'2011-09-09 12:53:43','2011-09-09 12:53:43'),(11,'FORM 3','3N','NORTH',0,'2011-09-09 12:54:11','2011-09-09 12:54:11'),(12,'FORM 3','3S','SOUTH',0,'2011-09-09 12:54:48','2011-09-09 12:54:48'),(13,'FORM 4','4 E','EAST',0,'2011-09-09 12:55:33','2011-09-09 12:55:33'),(14,'FORM 4','4 W','WEST',0,'2011-09-09 12:56:24','2011-09-09 12:56:24'),(15,'FORM 4','4 N','NORTH',0,'2011-09-09 12:57:03','2011-09-09 12:57:03'),(16,'FORM 4','4 S','SOUTH',0,'2011-09-09 12:57:43','2011-09-09 12:57:43'),(17,'FORM 1','1 NE','NORTH EAST',0,'2011-11-06 17:37:39','2011-11-06 17:37:39'),(18,'FORM 1','1 NW','NORTH WEST',0,'2011-11-06 17:38:36','2011-11-06 17:38:36');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elective_groups`
--

DROP TABLE IF EXISTS `elective_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elective_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elective_groups`
--

LOCK TABLES `elective_groups` WRITE;
/*!40000 ALTER TABLE `elective_groups` DISABLE KEYS */;
INSERT INTO `elective_groups` VALUES (1,'GROUP 4',1,0,'2011-09-09 13:02:25','2011-09-09 13:02:25'),(2,'GROUP 5',1,0,'2011-09-09 13:02:41','2011-09-09 13:02:41');
/*!40000 ALTER TABLE `elective_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electives`
--

DROP TABLE IF EXISTS `electives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elective_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electives`
--

LOCK TABLES `electives` WRITE;
/*!40000 ALTER TABLE `electives` DISABLE KEYS */;
/*!40000 ALTER TABLE `electives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_additional_details`
--

DROP TABLE IF EXISTS `employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_additional_details`
--

LOCK TABLES `employee_additional_details` WRITE;
/*!40000 ALTER TABLE `employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_type_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_half_day` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendances`
--

LOCK TABLES `employee_attendances` WRITE;
/*!40000 ALTER TABLE `employee_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_details`
--

DROP TABLE IF EXISTS `employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `bank_field_id` int(11) DEFAULT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bank_details`
--

LOCK TABLES `employee_bank_details` WRITE;
/*!40000 ALTER TABLE `employee_bank_details` DISABLE KEYS */;
INSERT INTO `employee_bank_details` VALUES (1,2,1,'111256709'),(2,3,1,''),(3,4,1,''),(4,5,1,''),(5,6,1,''),(6,7,1,''),(7,8,1,''),(8,9,1,''),(9,11,1,''),(10,12,1,''),(11,13,1,'');
/*!40000 ALTER TABLE `employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_categories`
--

DROP TABLE IF EXISTS `employee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_categories`
--

LOCK TABLES `employee_categories` WRITE;
/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` VALUES (1,'ADMINISTRATION','Admin',1),(9,'TEACHERS','TEACHERS',1),(10,'LABORATORY TECHNICIANS','LAB',1),(11,'LIBRARIANS','LIB',1),(12,'SUBORDINATE STAFF','SUB',1);
/*!40000 ALTER TABLE `employee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department_events`
--

DROP TABLE IF EXISTS `employee_department_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_department_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department_events`
--

LOCK TABLES `employee_department_events` WRITE;
/*!40000 ALTER TABLE `employee_department_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_departments`
--

DROP TABLE IF EXISTS `employee_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_departments`
--

LOCK TABLES `employee_departments` WRITE;
/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` VALUES (1,'Admin','ADMINISTRATION',1),(2,'SPTDEPT','SPORTS DEPARTMENT',1),(3,'CAT','CATERING DEPARTMENT',1),(4,'EXAMS','EXAMINATION DEPARTMENT',1),(5,'SCI','SCIENCE DEPARTMENT',1),(6,'MATHDEPT','MATHEMATICS DEPARTMENT',1);
/*!40000 ALTER TABLE `employee_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_grades`
--

DROP TABLE IF EXISTS `employee_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `max_hours_day` int(11) DEFAULT NULL,
  `max_hours_week` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_grades`
--

LOCK TABLES `employee_grades` WRITE;
/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` VALUES (1,'ADMINISTRATION',0,1,NULL,NULL),(2,'TEACHER',1,1,4,12),(3,'TECHNICIANS',2,1,3,16),(4,'INSTRUCTORS',3,1,3,12);
/*!40000 ALTER TABLE `employee_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_types`
--

DROP TABLE IF EXISTS `employee_leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `max_leave_count` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carry_forward` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave_types`
--

LOCK TABLES `employee_leave_types` WRITE;
/*!40000 ALTER TABLE `employee_leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_type_id` int(11) DEFAULT NULL,
  `leave_count` decimal(5,1) DEFAULT '0.0',
  `leave_taken` decimal(5,1) DEFAULT '0.0',
  `reset_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leaves`
--

LOCK TABLES `employee_leaves` WRITE;
/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_category_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_positions`
--

LOCK TABLES `employee_positions` WRITE;
/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` VALUES (1,'Fedena Admin',1,1),(2,'HEAD OF DEPARTMENT',9,1),(3,'INSTRUCTOR',9,1),(4,'MODERATOR',9,1),(5,'EXAMINER',9,1);
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_structures`
--

DROP TABLE IF EXISTS `employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_structures`
--

LOCK TABLES `employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `employee_salary_structures` DISABLE KEYS */;
INSERT INTO `employee_salary_structures` VALUES (1,2,1,''),(2,3,1,''),(3,4,1,''),(4,5,1,''),(5,6,1,''),(6,7,1,''),(7,8,1,''),(8,9,1,''),(9,11,1,''),(10,12,1,''),(11,13,1,'');
/*!40000 ALTER TABLE `employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_category_id` int(11) DEFAULT NULL,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_position_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `reporting_manager_id` int(11) DEFAULT NULL,
  `employee_grade_id` int(11) DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_detail` text COLLATE utf8_unicode_ci,
  `experience_year` int(11) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `children_count` int(11) DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `husband_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `home_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_country_id` int(11) DEFAULT NULL,
  `home_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_country_id` int(11) DEFAULT NULL,
  `office_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_on_employee_number` (`employee_number`(10))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'admin','2011-09-09','Mang\'u1','','Mang\'u1',1,'',1,1,NULL,1,'','',NULL,NULL,1,NULL,'2010-09-09',NULL,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'noreplyadmin@fedena.com',NULL,NULL,NULL,NULL,'2011-09-09 11:19:21','2011-09-11 19:22:21',NULL,1),(2,1,'E1','1996-09-12','HENRY','MWENDA','REICHENYA',1,'PRINCIPAL',1,1,NULL,1,'BACHELORS','15 YEARS DSM',15,6,1,NULL,'2011-09-09','Single',NULL,'','','','',88,'','','','',76,'','','','','',76,'','','','','','ronomeya@gmail.com','','images.jpeg','image/jpeg',NULL,'2011-09-09 14:16:16','2011-09-09 14:16:44',2904,3),(3,9,'E2','1997-09-09','BRIAN','OWINO','OGUTU',1,'MR',3,4,NULL,4,'B.A EDUCATION','10 YEARS',10,6,1,NULL,'1065-09-09','Single',NULL,'','','','',76,'','','','',88,'','','','','',88,'','','','0723678543','','ronomeya@gmail.com','','photo.jpeg','image/jpeg',NULL,'2011-09-09 14:22:18','2011-09-09 14:22:59',1673,4),(4,9,'E3','2000-09-11','Paul','Mwaura','Ndegwa',1,'DEPUTY PRINCIPAL',3,5,NULL,2,'BSC Mathematics','12 YEARS TEACHING\r\n2 YEARS INDUSTRIAL',15,3,1,NULL,'1966-09-11','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','tich.jpeg','image/jpeg',NULL,'2011-09-11 19:27:00','2011-09-11 19:27:27',1597,5),(5,9,'E4','2002-09-11','JANE','','MURITHI',0,'DEAN OF STUDENTS',2,1,NULL,1,'B.A EDUCATION','15 YEARS TEACHING\r\n3 YEARS MANAGEMENT',18,7,1,NULL,'1967-09-11','Married',NULL,'','','','B-',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','teacher.jpeg','image/jpeg',NULL,'2011-09-11 19:31:15','2011-11-13 17:41:44',1848,6),(6,9,'E5','2011-09-11','KEVIN ','','OKOTH',1,'MR',3,6,NULL,2,'B.A EDUCATION','3 YEARS',3,3,1,NULL,'1970-09-11','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','photo.jpeg','image/jpeg',NULL,'2011-09-11 19:33:44','2011-09-11 19:34:08',1673,7),(7,9,'E6','2003-09-11','VICTOR','','MUSYOKA',1,'MR',3,5,NULL,2,'B.A EDUCATION','2 YEARS TEACHING',2,3,1,NULL,'1984-09-11','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','teacher.jpeg','image/jpeg',NULL,'2011-09-11 19:37:44','2011-09-11 19:38:04',1848,8),(8,9,'E7','2007-09-11','DAVID','','NDERI',1,'MR',3,5,NULL,2,'B.A EDUCATION','4 YEARS TEACHING',4,2,1,NULL,'1978-09-11','Single',NULL,'','','','A+',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','images.jpeg','image/jpeg',NULL,'2011-09-11 19:44:25','2011-09-11 19:44:40',2904,9),(9,9,'E8','2010-09-11','JOSEPH','','KINGANGI',1,'MR',3,5,NULL,2,'B.A EDUCATION','5 YEARS TEACHING',5,1,1,NULL,'1984-09-11','Single',NULL,'','','','B-',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','photo.jpeg','image/jpeg',NULL,'2011-09-11 19:49:22','2011-09-11 19:49:39',1673,10),(10,9,'E9','2001-01-03','Lucy','','Ngarui',0,'MRS',3,5,NULL,2,'B.EDUCATION','8',8,3,1,NULL,'1971-09-10','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','',NULL,NULL,NULL,'2011-09-12 13:56:37','2011-09-12 13:56:53',NULL,11),(11,9,'F0','2010-09-12','LUCY','','NGARUIYA',0,'MRS',3,6,NULL,2,'B.EDUCATION','1',1,3,1,NULL,'1985-09-27','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','','tich.jpeg','image/jpeg',NULL,'2011-09-12 14:00:08','2011-09-12 14:00:26',1597,12),(12,9,'F1','2007-09-12','SARAH','','KAMAU',0,'MRS',5,4,NULL,2,'B.EDUCATION','6',6,3,1,NULL,'1987-09-12','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','ronomeya@gmail.com','',NULL,NULL,NULL,'2011-09-12 14:02:27','2011-09-12 14:02:36',NULL,13),(13,9,'F2','2011-09-12','JENNIFER','','MUTIE',1,'MRS',5,6,NULL,2,'B.EDUCATION','8',8,9,1,NULL,'1982-09-16','Single',NULL,'','','','',88,'','','','',88,'','','','','',88,'','','','','','noreplyF2@fedena.com','',NULL,NULL,NULL,'2011-09-12 14:05:53','2011-09-12 14:05:57',NULL,14);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_subjects`
--

DROP TABLE IF EXISTS `employees_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_subjects_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_subjects`
--

LOCK TABLES `employees_subjects` WRITE;
/*!40000 ALTER TABLE `employees_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_common` tinyint(1) DEFAULT '0',
  `is_holiday` tinyint(1) DEFAULT '0',
  `is_exam` tinyint(1) DEFAULT '0',
  `is_due` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_is_common_and_is_holiday_and_is_exam` (`is_common`,`is_holiday`,`is_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Exam','FIRST CAT for 1W - FIRST TERM - ENGLISH','2011-09-15 16:07:00','2011-09-15 17:08:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(2,'Exam','FIRST CAT for 1W - FIRST TERM - MATHEMATICS','2011-09-08 16:07:00','2011-09-08 17:10:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(3,'Exam','FIRST CAT for 1W - FIRST TERM - KISWAHILI','2011-09-22 16:07:00','2011-09-22 17:10:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(4,'Exam','FIRST CAT for 1W - FIRST TERM - GEOGRAPHY','2011-09-15 16:07:00','2011-09-15 17:12:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(5,'Exam','FIRST CAT for 1W - FIRST TERM - ACCOUNTING','2011-09-29 16:07:00','2011-09-29 17:12:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(6,'Exam','FIRST CAT for 1W - FIRST TERM - BIOLOGY','2011-09-27 09:12:00','2011-09-27 10:13:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(7,'Exam','FIRST CAT for 1W - FIRST TERM - CHEMISTRY','2011-09-20 14:13:00','2011-09-20 15:14:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(8,'Exam','FIRST CAT for 1W - FIRST TERM - PHYSICS','2011-09-14 11:14:00','2011-09-14 12:14:00',0,0,1,0,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(9,'Exam','SECOND CAT for 1W - FIRST TERM - ENGLISH','2011-11-07 14:17:00','2011-11-07 15:18:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(10,'Exam','SECOND CAT for 1W - FIRST TERM - MATHEMATICS','2011-11-08 14:19:00','2011-11-08 15:19:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(11,'Exam','SECOND CAT for 1W - FIRST TERM - KISWAHILI','2011-11-09 14:20:00','2011-11-09 15:20:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(12,'Exam','SECOND CAT for 1W - FIRST TERM - GEOGRAPHY','2011-11-10 14:20:00','2011-11-10 15:21:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(13,'Exam','SECOND CAT for 1W - FIRST TERM - ACCOUNTING','2011-11-03 14:21:00','2011-11-03 15:22:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(14,'Exam','SECOND CAT for 1W - FIRST TERM - BIOLOGY','2011-10-31 14:23:00','2011-10-31 15:23:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(15,'Exam','SECOND CAT for 1W - FIRST TERM - CHEMISTRY','2011-11-18 14:23:00','2011-11-18 15:23:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(16,'Exam','SECOND CAT for 1W - FIRST TERM - PHYSICS','2011-11-14 14:24:00','2011-11-14 15:32:00',0,0,1,0,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(17,'Exam','END TERM for 1W - FIRST TERM - ENGLISH','2011-12-13 08:34:00','2011-12-13 10:34:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(18,'Exam','END TERM for 1W - FIRST TERM - MATHEMATICS','2011-12-13 14:00:00','2011-12-13 16:30:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(19,'Exam','END TERM for 1W - FIRST TERM - KISWAHILI','2011-12-14 08:00:00','2011-12-14 10:30:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(20,'Exam','END TERM for 1W - FIRST TERM - GEOGRAPHY','2011-12-14 11:36:00','2011-12-14 13:30:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(21,'Exam','END TERM for 1W - FIRST TERM - ACCOUNTING','2011-12-14 14:00:00','2011-12-14 16:00:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(22,'Exam','END TERM for 1W - FIRST TERM - BIOLOGY','2011-12-15 08:30:00','2011-12-15 11:00:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(23,'Exam','END TERM for 1W - FIRST TERM - CHEMISTRY','2011-12-15 14:00:00','2011-12-15 16:30:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(24,'Exam','END TERM for 1W - FIRST TERM - PHYSICS','2011-12-16 08:00:00','2011-12-16 10:30:00',0,0,1,0,'2011-09-09 13:42:51','2011-09-09 13:42:51');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_groups`
--

DROP TABLE IF EXISTS `exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `result_published` tinyint(1) DEFAULT '0',
  `exam_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_groups`
--

LOCK TABLES `exam_groups` WRITE;
/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
INSERT INTO `exam_groups` VALUES (1,'FIRST CAT',1,'MarksAndGrades',1,0,'2011-09-08'),(2,'SECOND CAT',1,'MarksAndGrades',1,0,'2011-09-09'),(3,'END TERM',1,'MarksAndGrades',1,0,'2011-09-09');
/*!40000 ALTER TABLE `exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_scores`
--

LOCK TABLES `exam_scores` WRITE;
/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `maximum_marks` decimal(10,2) DEFAULT NULL,
  `minimum_marks` decimal(10,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `weightage` int(11) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exams_on_exam_group_id_and_subject_id` (`exam_group_id`,`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,1,1,'2011-09-15 16:07:00','2011-09-15 17:08:00','30.00','0.00',NULL,0,1,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(2,1,2,'2011-09-08 16:07:00','2011-09-08 17:10:00','30.00','0.00',NULL,0,2,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(3,1,3,'2011-09-22 16:07:00','2011-09-22 17:10:00','30.00','0.00',NULL,0,3,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(4,1,4,'2011-09-15 16:07:00','2011-09-15 17:12:00','30.00','0.00',NULL,0,4,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(5,1,5,'2011-09-29 16:07:00','2011-09-29 17:12:00','30.00','0.00',NULL,0,5,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(6,1,6,'2011-09-27 09:12:00','2011-09-27 10:13:00','30.00','0.00',NULL,0,6,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(7,1,7,'2011-09-20 14:13:00','2011-09-20 15:14:00','30.00','0.00',NULL,0,7,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(8,1,8,'2011-09-14 11:14:00','2011-09-14 12:14:00','30.00','0.00',NULL,0,8,'2011-09-09 13:15:04','2011-09-09 13:15:04'),(9,2,1,'2011-11-07 14:17:00','2011-11-07 15:18:00','30.00','0.00',NULL,0,9,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(10,2,2,'2011-11-08 14:19:00','2011-11-08 15:19:00','30.00','0.00',NULL,0,10,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(11,2,3,'2011-11-09 14:20:00','2011-11-09 15:20:00','30.00','0.00',NULL,0,11,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(12,2,4,'2011-11-10 14:20:00','2011-11-10 15:21:00','30.00','0.00',NULL,0,12,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(13,2,5,'2011-11-03 14:21:00','2011-11-03 15:22:00','30.00','0.00',NULL,0,13,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(14,2,6,'2011-10-31 14:23:00','2011-10-31 15:23:00','30.00','0.00',NULL,0,14,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(15,2,7,'2011-11-18 14:23:00','2011-11-18 15:23:00','30.00','0.00',NULL,0,15,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(16,2,8,'2011-11-14 14:24:00','2011-11-14 15:32:00','30.00','0.00',NULL,0,16,'2011-09-09 13:33:11','2011-09-09 13:33:11'),(17,3,1,'2011-12-13 08:34:00','2011-12-13 10:34:00','70.00','0.00',NULL,0,17,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(18,3,2,'2011-12-13 14:00:00','2011-12-13 16:30:00','70.00','0.00',NULL,0,18,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(19,3,3,'2011-12-14 08:00:00','2011-12-14 10:30:00','70.00','0.00',NULL,0,19,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(20,3,4,'2011-12-14 11:36:00','2011-12-14 13:30:00','70.00','0.00',NULL,0,20,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(21,3,5,'2011-12-14 14:00:00','2011-12-14 16:00:00','70.00','0.00',NULL,0,21,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(22,3,6,'2011-12-15 08:30:00','2011-12-15 11:00:00','70.00','0.00',NULL,0,22,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(23,3,7,'2011-12-15 14:00:00','2011-12-15 16:30:00','70.00','0.00',NULL,0,23,'2011-09-09 13:42:51','2011-09-09 13:42:51'),(24,3,8,'2011-12-16 08:00:00','2011-12-16 10:30:00','70.00','0.00',NULL,0,24,'2011-09-09 13:42:51','2011-09-09 13:42:51');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_discounts`
--

DROP TABLE IF EXISTS `fee_collection_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `finance_fee_collection_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `is_amount` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_discounts`
--

LOCK TABLES `fee_collection_discounts` WRITE;
/*!40000 ALTER TABLE `fee_collection_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_particulars`
--

DROP TABLE IF EXISTS `fee_collection_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_particulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(12,2) DEFAULT NULL,
  `finance_fee_collection_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_particulars`
--

LOCK TABLES `fee_collection_particulars` WRITE;
/*!40000 ALTER TABLE `fee_collection_particulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_discounts`
--

DROP TABLE IF EXISTS `fee_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `finance_fee_category_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `is_amount` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_discounts`
--

LOCK TABLES `fee_discounts` WRITE;
/*!40000 ALTER TABLE `fee_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_donations`
--

DROP TABLE IF EXISTS `finance_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_donations`
--

LOCK TABLES `finance_donations` WRITE;
/*!40000 ALTER TABLE `finance_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_categories`
--

DROP TABLE IF EXISTS `finance_fee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_master` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_categories`
--

LOCK TABLES `finance_fee_categories` WRITE;
/*!40000 ALTER TABLE `finance_fee_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_collections`
--

DROP TABLE IF EXISTS `finance_fee_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_finance_fee_collections_on_fee_category_id` (`fee_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_collections`
--

LOCK TABLES `finance_fee_collections` WRITE;
/*!40000 ALTER TABLE `finance_fee_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_particulars`
--

DROP TABLE IF EXISTS `finance_fee_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_particulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(15,2) DEFAULT NULL,
  `finance_fee_category_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_particulars`
--

LOCK TABLES `finance_fee_particulars` WRITE;
/*!40000 ALTER TABLE `finance_fee_particulars` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_structure_elements`
--

DROP TABLE IF EXISTS `finance_fee_structure_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_structure_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `fee_collection_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_structure_elements`
--

LOCK TABLES `finance_fee_structure_elements` WRITE;
/*!40000 ALTER TABLE `finance_fee_structure_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_structure_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fees`
--

DROP TABLE IF EXISTS `finance_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_collection_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_finance_fees_on_fee_collection_id_and_student_id` (`fee_collection_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fees`
--

LOCK TABLES `finance_fees` WRITE;
/*!40000 ALTER TABLE `finance_fees` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_categories`
--

DROP TABLE IF EXISTS `finance_transaction_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_income` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_categories`
--

LOCK TABLES `finance_transaction_categories` WRITE;
/*!40000 ALTER TABLE `finance_transaction_categories` DISABLE KEYS */;
INSERT INTO `finance_transaction_categories` VALUES (1,'Salary',' ',0,0),(2,'Donation',' ',1,0),(3,'Fee',' ',1,0);
/*!40000 ALTER TABLE `finance_transaction_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_triggers`
--

DROP TABLE IF EXISTS `finance_transaction_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finance_category_id` int(11) DEFAULT NULL,
  `percentage` decimal(8,2) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_triggers`
--

LOCK TABLES `finance_transaction_triggers` WRITE;
/*!40000 ALTER TABLE `finance_transaction_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transaction_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `fine_included` tinyint(1) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `finance_fees_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `fine_amount` decimal(10,2) DEFAULT '0.00',
  `master_transaction_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grading_levels`
--

DROP TABLE IF EXISTS `grading_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grading_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `min_score` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grading_levels`
--

LOCK TABLES `grading_levels` WRITE;
/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` VALUES (1,'A',NULL,80,NULL,0,'2011-09-09 11:19:17','2011-09-11 17:37:45'),(2,'A-',NULL,75,NULL,0,'2011-09-09 11:19:17','2011-09-11 17:38:08'),(3,'B+',NULL,70,NULL,0,'2011-09-09 11:19:17','2011-09-11 17:38:36'),(4,'B',NULL,65,NULL,0,'2011-09-09 11:19:17','2011-09-11 17:39:18'),(5,'B-',NULL,60,NULL,0,'2011-09-09 11:19:17','2011-09-11 17:40:14'),(6,'C+',NULL,55,NULL,0,'2011-09-09 11:19:18','2011-09-11 17:41:05'),(7,'C',NULL,50,NULL,0,'2011-09-11 17:41:26','2011-09-11 17:41:26'),(8,'C-',NULL,45,NULL,0,'2011-09-11 17:41:46','2011-09-11 17:41:46'),(9,'E',NULL,1,NULL,0,'2011-09-11 17:42:09','2011-09-11 17:42:21'),(10,'F',NULL,0,NULL,0,'2011-09-11 17:42:54','2011-09-11 17:42:54');
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exams`
--

DROP TABLE IF EXISTS `grouped_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_exams`
--

LOCK TABLES `grouped_exams` WRITE;
/*!40000 ALTER TABLE `grouped_exams` DISABLE KEYS */;
INSERT INTO `grouped_exams` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `grouped_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
INSERT INTO `guardians` VALUES (1,2,'PAUL','MWANGI','SON','','','','0734567890','6785-00100','','NAIROBI','',88,NULL,'','','','2011-09-12 14:26:02','2011-09-12 14:26:02'),(2,3,'MUGAMBI','','FATHER','','','','','','','','',88,NULL,'','','','2011-09-12 14:30:44','2011-09-12 14:30:44'),(3,4,'WESLEY','','FATHER','','','','0726987654','','','','',88,NULL,'','','','2011-09-12 14:59:35','2011-09-12 14:59:35'),(4,5,'OMUSAKHULU','','FATHER','','','','','','','','',88,NULL,'','','','2011-09-12 15:03:33','2011-09-12 15:03:33'),(5,6,'MUKHISA','','UNCLE','','','','0722765432','','','','',88,NULL,'MINISTER','','','2011-09-12 15:06:28','2011-09-12 15:06:57'),(6,7,'OMUTATA','','UNCLE','','','','0736789654','','','','',88,NULL,'','','','2011-09-12 15:36:53','2011-09-12 15:36:53'),(7,8,'BUKEKO','CHARLES','GUARDIAN','','','','0726786543','','','','',88,NULL,'','','','2011-09-12 15:40:03','2011-09-12 15:40:03');
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_payslip_categories`
--

DROP TABLE IF EXISTS `individual_payslip_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_payslip_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `salary_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deduction` tinyint(1) DEFAULT NULL,
  `include_every_month` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_payslip_categories`
--

LOCK TABLES `individual_payslip_categories` WRITE;
/*!40000 ALTER TABLE `individual_payslip_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual_payslip_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liabilities`
--

DROP TABLE IF EXISTS `liabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `is_solved` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liabilities`
--

LOCK TABLES `liabilities` WRITE;
/*!40000 ALTER TABLE `liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_payslips`
--

DROP TABLE IF EXISTS `monthly_payslips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_payslips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `is_rejected` tinyint(1) NOT NULL DEFAULT '0',
  `rejector_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_payslips`
--

LOCK TABLES `monthly_payslips` WRITE;
/*!40000 ALTER TABLE `monthly_payslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_payslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Teachers Strike','<p>We wish to bring to the notice of the entire Mang\'u fraternity that we join the teachers in their peaceful demonstration.</p>',2,'2011-09-09 14:30:36','2011-09-09 14:30:36'),(2,'First CATs','<p>The coming week shall be the week for the term\'s first CATs</p>\r\n<p>&nbsp;</p>',2,'2011-09-09 14:31:32','2011-09-09 14:31:32');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `news_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_categories`
--

DROP TABLE IF EXISTS `payroll_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `is_deduction` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_categories`
--

LOCK TABLES `payroll_categories` WRITE;
/*!40000 ALTER TABLE `payroll_categories` DISABLE KEYS */;
INSERT INTO `payroll_categories` VALUES (1,'CASUALS',NULL,NULL,0,1);
/*!40000 ALTER TABLE `payroll_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_entries`
--

DROP TABLE IF EXISTS `period_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_date` date DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_period_entries_on_month_date_and_batch_id` (`month_date`,`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_entries`
--

LOCK TABLES `period_entries` WRITE;
/*!40000 ALTER TABLE `period_entries` DISABLE KEYS */;
INSERT INTO `period_entries` VALUES (1,'2011-11-07',17,NULL,NULL,NULL),(2,'2011-11-08',17,NULL,NULL,NULL),(3,'2011-11-09',17,NULL,NULL,NULL),(4,'2011-11-10',17,NULL,NULL,NULL),(5,'2011-11-11',17,NULL,NULL,NULL),(6,'2011-11-14',17,NULL,NULL,NULL),(7,'2011-11-15',17,NULL,NULL,NULL),(8,'2011-11-16',17,NULL,NULL,NULL),(9,'2011-11-17',17,NULL,NULL,NULL),(10,'2011-11-18',17,NULL,NULL,NULL),(11,'2011-11-21',17,NULL,NULL,NULL),(12,'2011-11-22',17,NULL,NULL,NULL),(13,'2011-11-23',17,NULL,NULL,NULL),(14,'2011-11-24',17,NULL,NULL,NULL),(15,'2011-11-25',17,NULL,NULL,NULL),(16,'2011-11-28',17,NULL,NULL,NULL),(17,'2011-11-29',17,NULL,NULL,NULL),(18,'2011-11-30',17,NULL,NULL,NULL),(19,'2011-12-01',17,NULL,NULL,NULL),(20,'2011-12-02',17,NULL,NULL,NULL),(21,'2011-12-05',17,NULL,NULL,NULL),(22,'2011-12-06',17,NULL,NULL,NULL);
/*!40000 ALTER TABLE `period_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'ExaminationControl','2011-09-09 11:19:25','2011-09-09 11:19:25'),(2,'EnterResults','2011-09-09 11:19:25','2011-09-09 11:19:25'),(3,'ViewResults','2011-09-09 11:19:25','2011-09-09 11:19:25'),(4,'Admission','2011-09-09 11:19:25','2011-09-09 11:19:25'),(5,'StudentsControl','2011-09-09 11:19:25','2011-09-09 11:19:25'),(6,'ManageNews','2011-09-09 11:19:25','2011-09-09 11:19:25'),(7,'ManageTimetable','2011-09-09 11:19:25','2011-09-09 11:19:25'),(8,'StudentAttendanceView','2011-09-09 11:19:25','2011-09-09 11:19:25'),(9,'HrBasics','2011-09-09 11:19:25','2011-09-09 11:19:25'),(10,'AddNewBatch','2011-09-09 11:19:25','2011-09-09 11:19:25'),(11,'SubjectMaster','2011-09-09 11:19:25','2011-09-09 11:19:25'),(12,'EventManagement','2011-09-09 11:19:25','2011-09-09 11:19:25'),(13,'GeneralSettings','2011-09-09 11:19:25','2011-09-09 11:19:25'),(14,'FinanceControl','2011-09-09 11:19:25','2011-09-09 11:19:25'),(15,'TimetableView','2011-09-09 11:19:25','2011-09-09 11:19:25'),(16,'StudentAttendanceRegister','2011-09-09 11:19:25','2011-09-09 11:19:25'),(17,'EmployeeAttendance','2011-09-09 11:19:26','2011-09-09 11:19:26'),(18,'PayslipPowers','2011-09-09 11:19:26','2011-09-09 11:19:26'),(19,'EmployeeSearch','2011-09-09 11:19:26','2011-09-09 11:19:26'),(20,'SMSManagement','2011-09-09 11:19:26','2011-09-09 11:19:26');
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_users`
--

DROP TABLE IF EXISTS `privileges_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges_users` (
  `user_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  KEY `index_privileges_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges_users`
--

LOCK TABLES `privileges_users` WRITE;
/*!40000 ALTER TABLE `privileges_users` DISABLE KEYS */;
INSERT INTO `privileges_users` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(4,1),(4,2),(4,3),(4,8),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,14),(5,15),(5,16),(5,17),(5,18),(5,19),(5,20),(6,1),(6,2),(6,3),(6,4),(6,5),(6,7),(6,8),(6,11),(6,15),(6,16),(6,17),(6,20),(7,1),(7,2),(7,3),(7,5),(7,7),(7,8),(7,11),(7,15),(7,16),(7,20),(8,1),(8,2),(8,3),(8,5),(8,7),(8,11),(8,15),(8,16),(8,20),(9,1),(9,2),(9,3),(9,5),(9,7),(9,8),(9,11),(9,15),(9,16),(9,20),(10,1),(10,2),(10,5),(10,7),(10,8),(10,11),(10,15),(10,16),(10,20),(12,1),(12,2),(12,3),(12,5),(12,7),(12,8),(12,11),(12,15),(12,16),(13,1),(13,2),(13,3),(13,4),(13,5),(13,7),(13,8),(13,11),(13,15),(13,16),(14,2),(14,3),(14,4),(14,7),(14,11);
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `is_read` tinyint(1) DEFAULT '0',
  `is_deleted_by_sender` tinyint(1) DEFAULT '0',
  `is_deleted_by_recipient` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reminders_on_recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090622100004'),('20090622102004'),('20090622104053'),('20090622104054'),('20090622114927'),('20090622115927'),('20090703074822'),('20090706170408'),('20090715234257'),('20090715234258'),('20090717124241'),('20090717126241'),('20090718050113'),('20090718050453'),('20090718050921'),('20090718052749'),('20090731092833'),('20090818045411'),('20090818050018'),('20090904071048'),('20090904071548'),('20090904071642'),('20090904071905'),('20090904071906'),('20090904071907'),('20090904071908'),('20090904071909'),('20090910062751'),('20090914095002'),('20090914114212'),('20090916052300'),('20090917052349'),('20090917065256'),('20090924081520'),('20090926071527'),('20091009093746'),('20091026065251'),('20091202050910'),('20091202053600'),('20091202104818'),('20091207084711'),('20091207085849'),('20091207090412'),('20091217191652'),('20091217201118'),('20091224063502'),('20100403073735'),('20100403092229'),('20100403093355'),('20100412105036'),('20100412105116'),('20100422110336'),('20100426094532'),('20100429093616'),('20100505075459'),('20100515063157'),('20100515063814'),('20100520073311'),('20100524093457'),('20100525055716'),('20100602115152'),('20100604103435'),('20100604103916'),('20100604104308'),('20100604104759'),('20100609073016'),('20100609074544'),('20100720104231'),('20100730092747'),('20100731053458'),('20100731054033'),('20100731055437'),('20101209063633'),('20110221051223'),('20110510121550'),('20110511053223'),('20110516110336'),('20110706114907'),('20110721122326'),('20110728115723'),('20110729055539'),('20110730100503'),('20110805072425'),('20110810052138');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'ApplicationEnabled',0),(2,'ParentSmsEnabled',1),(3,'EmployeeSmsEnabled',1),(4,'StudentSmsEnabled',1),(5,'ResultPublishEnabled',0),(6,'StudentAdmissionEnabled',1),(7,'ExamScheduleResultEnabled',1),(8,'AttendanceEnabled',1),(9,'NewsEventsEnabled',1);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_details`
--

DROP TABLE IF EXISTS `student_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_details`
--

LOCK TABLES `student_additional_details` WRITE;
/*!40000 ALTER TABLE `student_additional_details` DISABLE KEYS */;
INSERT INTO `student_additional_details` VALUES (1,9,1,'kimathi'),(2,10,1,'SCHENEIDER'),(3,11,1,'ARCHBISHOP NDINGI'),(4,12,1,'OLD BOYS'),(5,13,1,'FATHER EDWARDS'),(6,14,1,'SCHENEIDER'),(7,15,1,'BROTHER RAYMOND'),(8,16,1,'ARCHBISHOP NDINGI'),(9,17,1,'CARDINAL OTUNGA'),(10,18,1,'OLD BOYS'),(11,19,1,'TOM MBOYA'),(12,20,1,'KIMATHI'),(13,21,1,'ARCHBISHOP NDINGI'),(14,22,1,'CARDINAL OTUNGA'),(15,23,1,'SCHENEIDER'),(16,24,1,'KENYATTA'),(17,25,1,'OLD BOYS'),(18,26,1,'BROTHER RAYMOND'),(19,27,1,'ARCHBISHOP NDINGI'),(20,28,1,'BROTHER RAYMOND'),(21,29,1,'BROTHER RAYMOND');
/*!40000 ALTER TABLE `student_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_fields`
--

DROP TABLE IF EXISTS `student_additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_fields`
--

LOCK TABLES `student_additional_fields` WRITE;
/*!40000 ALTER TABLE `student_additional_fields` DISABLE KEYS */;
INSERT INTO `student_additional_fields` VALUES (1,'Hostel',1);
/*!40000 ALTER TABLE `student_additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_categories`
--

LOCK TABLES `student_categories` WRITE;
/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` VALUES (1,'Day Scholars',0),(2,'Full Boarders',0);
/*!40000 ALTER TABLE `student_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_datas`
--

DROP TABLE IF EXISTS `student_previous_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_datas`
--

LOCK TABLES `student_previous_datas` WRITE;
/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
INSERT INTO `student_previous_datas` VALUES (1,1,'KAPCHOLYO PRIMARY SCHOOL','2010','KCPE','401'),(2,2,'KENYAKENI','2010','KCPE','367'),(3,3,'MBEERE','2010','KCPE','405'),(4,4,'KUNGONI PRI SCHOOL','2010','KCPE','360'),(5,5,'KAKAMEGA ACADEMY','2009','','398'),(6,6,'WEBUYE','2009','','408'),(7,7,'KILIMBA','2009','KCPE','414'),(8,8,'MARANDA','2009','KCPE','406');
/*!40000 ALTER TABLE `student_previous_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_subject_marks`
--

DROP TABLE IF EXISTS `student_previous_subject_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_subject_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_subject_marks`
--

LOCK TABLES `student_previous_subject_marks` WRITE;
/*!40000 ALTER TABLE `student_previous_subject_marks` DISABLE KEYS */;
INSERT INTO `student_previous_subject_marks` VALUES (1,2,'ENGLISH','73'),(2,2,'SWAHILI','56'),(3,2,'SOCIAL STUDIES','89'),(4,2,'SCIENCE','90'),(5,2,'MATHEMATICS','54');
/*!40000 ALTER TABLE `student_previous_subject_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_contact_id` int(11) DEFAULT NULL,
  `is_sms_enabled` tinyint(1) DEFAULT '1',
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `has_paid_fees` tinyint(1) DEFAULT '0',
  `photo_file_size` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_on_admission_no` (`admission_no`(10)),
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'016001',NULL,'2011-09-12','JORAM','','MAINA',2,'2006-09-12','m','B+','BOMET',88,'KALENJIN','CHRISTIAN',2,'','','','','',88,'','0724554994','crono@computing-strategies.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 14:18:36','2011-09-12 14:18:36',0,NULL,15),(2,'016002',NULL,'2011-09-12','JAMES','','MWANGANGI',3,'1989-09-12','m','','MURANGA',88,'KIKUYU','CHRISTIAN',2,'6785-00100','','NAIROBI','','',88,'','0724554994','chonchiro@gmail.com',1,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 14:25:11','2011-09-12 14:26:15',0,NULL,16),(3,'016003',NULL,'2011-09-12','GEOFFREY','','MWAILENGO',4,'1999-09-12','m','O-','NANDI',88,'','',NULL,'','','','','',88,'','','noreply016003@fedena.com',2,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 14:30:27','2011-09-12 14:30:51',0,NULL,17),(4,'016004',NULL,'2011-09-12','HENRY','','MULI',1,'1997-10-15','m','','',88,'','',2,'','','','','',88,'','','noreply016004@fedena.com',3,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 14:59:09','2011-09-12 14:59:40',0,NULL,18),(5,'016005',NULL,'2010-01-05','OLIVER','','ONYIMBO',8,'1995-07-04','m','','',88,'','',2,'','','','','',88,'','','noreply016005@fedena.com',4,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 15:03:07','2011-09-12 15:03:37',0,NULL,19),(6,'016006',NULL,'2010-01-06','SAMWEL','','GICHUHI',3,'1994-09-12','m','','',88,'','',NULL,'','','','','',88,'','','noreply016006@fedena.com',5,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 15:04:48','2011-09-12 15:06:32',0,NULL,20),(7,'016007',NULL,'2011-09-12','SAMWEL','','OGONJI',5,'1997-09-12','m','A-','',88,'','',NULL,'','','','','',88,'','','noreply016007@fedena.com',6,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 15:36:17','2011-09-12 15:36:59',0,NULL,21),(8,'016008',NULL,'2010-01-06','ISAAC','','MISIANI',6,'1997-09-12','m','','',88,'','',2,'','','','','',88,'','','noreply016008@fedena.com',7,1,NULL,NULL,NULL,NULL,1,0,'2011-09-12 15:39:24','2011-09-12 15:40:08',0,NULL,22),(9,'016009',NULL,'2011-11-06','DENNIS','','RUTO',2,'2006-11-08','m','','',88,'','',NULL,'','','','','',88,'','','noreply016009@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 09:33:05','2011-11-06 09:33:05',0,NULL,23),(10,'016010',NULL,'2011-11-06','VICTOR','MIRITI','MUTHOMI',7,'1990-11-21','m','','',88,'','',2,'','','','','',88,'','','noreply016010@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 13:34:16','2011-11-06 13:34:16',0,NULL,24),(11,'12002',NULL,'2009-01-13','JAMES','CHILUMO','MBOGHOLI',11,'1990-11-07','m','','',88,'','',2,'','','','','',88,'','','noreply12002@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 13:44:37','2011-11-06 13:44:37',0,NULL,25),(12,'12014',NULL,'2009-01-14','EDWIN','KIBERI','MUTERO',9,'1991-04-09','m','','',88,'','',2,'','','','','',88,'','','noreply12014@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 13:54:11','2011-11-06 13:54:11',0,NULL,26),(13,'12130',NULL,'2009-01-07','HANS','GICHABA ','MOMANYI',9,'2006-11-06','m','','',88,'','',NULL,'','','','','',88,'','','noreply12130@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 13:57:16','2011-11-06 13:57:16',0,NULL,27),(14,'12076',NULL,'2009-01-14','ALVIN','WAWERU','MUNGAI',12,'1992-02-19','m','','',88,'','',NULL,'','','','','',88,'','','noreply12076@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 13:59:02','2011-11-06 13:59:02',0,NULL,28),(15,'12001',NULL,'2009-01-07','MICHAEL','NGUGI','MAINA',6,'2006-11-06','m','','',88,'','',NULL,'','','','','',88,'','','noreply12001@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 14:01:05','2011-11-06 14:01:05',0,NULL,29),(16,'11002',NULL,'2008-01-09','NATHANIEL','M','MWADIME',13,'2006-11-06','m','','',88,'','',2,'','','','','',88,'','','noreply11002@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 14:17:28','2011-11-06 14:17:28',0,NULL,30),(17,'11003',NULL,'2008-01-10','BRIAN','MWAKIO','MBOGHOLI',15,'2006-11-06','m','','',88,'','',2,'','','','','',88,'','','noreply11003@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 14:19:16','2011-11-06 14:19:16',0,NULL,31),(18,'11024',NULL,'2008-01-09','KELVIN','MICHA','MWANGI',16,'2006-11-06','m','','',88,'','',2,'','','','','',88,'','','noreply11024@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 14:21:02','2011-11-06 14:21:02',0,NULL,32),(19,'11126',NULL,'2008-01-09','ROBERT','KAMAU','CHEGE',2,'2006-11-06','m','','',88,'','',2,'','','','','',88,'','','noreply11126@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 14:22:44','2011-11-06 14:22:44',0,NULL,33),(20,'13087',NULL,'2010-01-13','PAUL','K','ROTICH',7,'1992-04-15','m','','',88,'','',2,'','','','','',88,'','','noreply130087@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:34:47','2011-11-06 17:57:20',0,NULL,34),(21,'14002',NULL,'2011-01-11','VICTOR','MBETSA','NGOME',2,'1991-03-20','m','','',88,'','',2,'','','','','',88,'','','noreply14002@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:41:39','2011-11-06 17:41:39',0,NULL,35),(22,'14003',NULL,'2011-01-11','BRIAN','AROME','BARAKA',3,'1992-03-18','m','','',88,'','',2,'','','','','',88,'','','noreply14003@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:44:07','2011-11-06 17:44:07',0,NULL,36),(23,'14006',NULL,'2011-01-11','SIMON','WILFRED','MUTISYA',17,'1994-03-15','m','','',88,'','',NULL,'','','','','',88,'','','noreply14006@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:46:22','2011-11-06 17:46:22',0,NULL,37),(24,'14005',NULL,'2011-01-11','PETER','GITONGA','WACHIRA',18,'1993-02-09','m','','',88,'','',2,'','','','','',88,'','','noreply14005@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:50:01','2011-11-06 17:50:01',0,NULL,38),(25,'14004',NULL,'2011-01-11','SULEIMAN','OMAR','BWANAKALI',4,'1993-01-06','m','','',88,'','',2,'','','','','',88,'','','noreply14004@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:51:36','2011-11-06 17:51:36',0,NULL,39),(26,'14001',NULL,'2011-01-11','GERALD','M','MBAYA',1,'2006-11-06','m','','',88,'','',2,'','','','','',88,'','','noreply14001@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:54:34','2011-11-06 17:54:34',0,NULL,40),(27,'13002',NULL,'2010-01-12','BRIAN','AMANI','WAITHAKA',5,'1991-11-12','m','','',88,'','',NULL,'','','','','',88,'','','noreply13002@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 17:59:53','2011-11-06 17:59:53',0,NULL,41),(28,'13004',NULL,'2010-01-12','ANDREW','CEAZER','MONGO',8,'2006-11-06','m','','',88,'','',NULL,'','','','','',88,'','','noreply13004@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 18:01:37','2011-11-06 18:04:52',0,NULL,42),(29,'13001',NULL,'2010-01-12','BRIAN','AZEY','MWARIKETI',6,'2006-11-06','m','','',88,'','',NULL,'','','','','',88,'','','noreply13001@fedena.com',NULL,1,NULL,NULL,NULL,NULL,1,0,'2011-11-06 18:03:14','2011-11-06 18:03:14',0,NULL,43);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_subjects_on_student_id_and_subject_id` (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_subjects`
--

LOCK TABLES `students_subjects` WRITE;
/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `no_exams` tinyint(1) DEFAULT '0',
  `max_weekly_classes` int(11) DEFAULT NULL,
  `elective_group_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'ENGLISH','ENG',1,0,5,NULL,0,'2011-09-09 13:00:08','2011-09-09 13:00:08'),(2,'MATHEMATICS','MATH',1,0,6,NULL,0,'2011-09-09 13:00:42','2011-09-09 13:00:42'),(3,'KISWAHILI','SWA',1,0,6,NULL,0,'2011-09-09 13:01:00','2011-09-09 13:01:00'),(4,'GEOGRAPHY','GEO',1,0,7,NULL,0,'2011-09-09 13:01:33','2011-09-09 13:01:33'),(5,'ACCOUNTING','ACCT',1,0,3,NULL,0,'2011-09-09 13:01:55','2011-09-09 13:01:55'),(6,'BIOLOGY','BIO',1,0,5,NULL,0,'2011-09-09 13:03:26','2011-09-09 13:03:26'),(7,'CHEMISTRY','CHEM',1,0,5,NULL,0,'2011-09-09 13:04:06','2011-09-09 13:04:06'),(8,'PHYSICS','PHY',1,0,5,NULL,0,'2011-09-09 13:04:27','2011-09-09 13:04:27'),(9,'COMMERCE','COM',1,0,4,NULL,0,'2011-09-11 17:49:34','2011-09-11 17:49:34'),(10,'RELIGOUS STUDIES','RE',1,0,3,NULL,0,'2011-09-11 17:53:15','2011-09-11 17:53:15'),(11,'BIOLOGY PRACTICALS','BIOPRACTS',1,0,2,NULL,0,'2011-09-11 17:53:51','2011-09-11 17:53:51');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `weekday_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `by_timetable` (`weekday_id`,`batch_id`,`class_timing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `student` tinyint(1) DEFAULT NULL,
  `employee` tinyint(1) DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code_until` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Mang\'u1','Mang\'u1','noreplyadmin@fedena.com',0,0,1,'0e43ea0735696d41f89f2bac6b04b234435efade','H2CM7Cga',NULL,NULL,'2011-09-09 11:19:21','2011-09-11 19:22:21'),(2,'ronomeya','Charles','Ronoh','ronomeya@gmail.com',1,0,0,'c94d2c7a8c20d4af8de14ea416c69b98eedf7317','dlTgzzhP',NULL,NULL,'2011-09-09 11:53:49','2011-09-09 11:53:49'),(3,'E1','HENRY','REICHENYA','noreplyE1@fedena.com',0,0,1,'eb0cffa194eaa77febea6f887743145766de5397','eoHxKPGv',NULL,NULL,'2011-09-09 14:16:16','2011-09-09 14:16:16'),(4,'E2','BRIAN','OGUTU','noreplyE2@fedena.com',0,0,1,'8726f1ef89a29d58e02af1a1f3389b769036e8e8','PTtJRs7C',NULL,NULL,'2011-09-09 14:22:18','2011-09-09 14:22:18'),(5,'E3','Paul','Ndegwa','noreplyE3@fedena.com',0,0,1,'6d953a97308d1bc5274379502f96ea0295862735','RnW7WfuV',NULL,NULL,'2011-09-11 19:27:00','2011-09-11 19:27:00'),(6,'E4','JANE','MURITHI','noreplyE4@fedena.com',0,0,1,'f6e209602f0c8f0e5b00d82dcf429014f373a63a','6tkNWaVY',NULL,NULL,'2011-09-11 19:31:15','2011-11-13 17:41:44'),(7,'E5','KEVIN ','OKOTH','noreplyE5@fedena.com',0,0,1,'a4ed89311a6424add091911ea1fa7aa52d6dd7c7','9c8xUWim',NULL,NULL,'2011-09-11 19:33:44','2011-09-11 19:33:44'),(8,'E6','VICTOR','MUSYOKA','noreplyE6@fedena.com',0,0,1,'19c3c6cad5737ab4dc8b3acc09c815e2825d837d','OxjyQHjJ',NULL,NULL,'2011-09-11 19:37:44','2011-09-11 19:37:44'),(9,'E7','DAVID','NDERI','noreplyE7@fedena.com',0,0,1,'35f9ffa597a16851653647b445b989f063529829','o1RCl9R8',NULL,NULL,'2011-09-11 19:44:25','2011-09-11 19:44:25'),(10,'E8','JOSEPH','KINGANGI','noreplyE8@fedena.com',0,0,1,'f0231d5385d523c1d977df7d4db7bbbdb67ff0db','R8bRGk10',NULL,NULL,'2011-09-11 19:49:22','2011-09-11 19:49:22'),(11,'E9','Lucy','Ngarui','noreplyE9@fedena.com',0,0,1,'be3260a35865b884a50d3908068b7d3268c9aa6b','8Axcqms3',NULL,NULL,'2011-09-12 13:56:37','2011-09-12 13:56:37'),(12,'F0','LUCY','NGARUIYA','noreplyF0@fedena.com',0,0,1,'f69fe55a3d47702189be603c95b28e3c113cda7c','m0c1KU2H',NULL,NULL,'2011-09-12 14:00:08','2011-09-12 14:00:08'),(13,'F1','SARAH','KAMAU','noreplyF1@fedena.com',0,0,1,'6edb7f8e62c644f2799db6b34a69a6a131c3b0b6','RLLpdXov',NULL,NULL,'2011-09-12 14:02:27','2011-09-12 14:02:27'),(14,'F2','JENNIFER','MUTIE','noreplyF2@fedena.com',0,0,1,'5baddfeb33ecbc73af5a814fbaa0109309819a3b','t92G56gF',NULL,NULL,'2011-09-12 14:05:53','2011-09-12 14:05:53'),(15,'016001','JORAM','MAINA','crono@computing-strategies.com',0,1,0,'00ef16b7a499e28bacf887a5cb570ae1f09dd271','dHy3SWNF',NULL,NULL,'2011-09-12 14:18:36','2011-09-12 14:18:36'),(16,'016002','JAMES','MWANGANGI','chonchiro@gmail.com',0,1,0,'972436a63fde3e348dfa47fe950c5bb225946396','P8uAA13z',NULL,NULL,'2011-09-12 14:25:11','2011-09-12 14:25:11'),(17,'016003','GEOFFREY','MWAILENGO','noreply016003@fedena.com',0,1,0,'c10f8ece5028239972910e8d3cb9d0f34c2c205a','63KH6KbA',NULL,NULL,'2011-09-12 14:30:27','2011-09-12 14:30:27'),(18,'016004','HENRY','MULI','noreply016004@fedena.com',0,1,0,'b4997257552130eca08c8005628e00b4e76f9791','ccsX5vRL',NULL,NULL,'2011-09-12 14:59:09','2011-09-12 14:59:09'),(19,'016005','OLIVER','ONYIMBO','noreply016005@fedena.com',0,1,0,'2bc24248ded1b5b36ca0f151797d0cd2a427873d','ue9rpx1D',NULL,NULL,'2011-09-12 15:03:07','2011-09-12 15:03:07'),(20,'016006','SAMWEL','GICHUHI','noreply016006@fedena.com',0,1,0,'19bd07e5da819f9bf08892bde8064afe9ba236d0','oFrpRJek',NULL,NULL,'2011-09-12 15:04:48','2011-09-12 15:04:48'),(21,'016007','SAMWEL','OGONJI','noreply016007@fedena.com',0,1,0,'64be4a09ef4b0a31c145e233e18940d7df73f59e','Fz2FRup8',NULL,NULL,'2011-09-12 15:36:17','2011-09-12 15:36:17'),(22,'016008','ISAAC','MISIANI','noreply016008@fedena.com',0,1,0,'d249784e75210cbfae0f1df80c2663c03fc91819','XnL2CEWV',NULL,NULL,'2011-09-12 15:39:24','2011-09-12 15:39:24'),(23,'016009','DENNIS','RUTO','noreply016009@fedena.com',0,1,0,'4440b7900b538476c738f0760a7597191cad6e9f','UEC5uFKM',NULL,NULL,'2011-11-06 09:33:05','2011-11-06 09:33:05'),(24,'016010','VICTOR','MUTHOMI','noreply016010@fedena.com',0,1,0,'e4ab354f2068bf48f4d32cc246438e1163bfdba8','B2HNksVX',NULL,NULL,'2011-11-06 13:34:16','2011-11-06 13:34:16'),(25,'12002','JAMES','MBOGHOLI','noreply12002@fedena.com',0,1,0,'c3ad1e8373870fc16596ea4d086f6377b08767af','Cb3bIplQ',NULL,NULL,'2011-11-06 13:44:37','2011-11-06 13:44:37'),(26,'12014','EDWIN','MUTERO','noreply12014@fedena.com',0,1,0,'275a78d8975c2e05d7fe8c9f9f1b426ec0887433','0I4rB4Qz',NULL,NULL,'2011-11-06 13:54:11','2011-11-06 13:54:11'),(27,'12130','HANS','MOMANYI','noreply12130@fedena.com',0,1,0,'d85c8df8c229378c0b686f62bbaec52656ba1f1a','auR71qFl',NULL,NULL,'2011-11-06 13:57:16','2011-11-06 13:57:16'),(28,'12076','ALVIN','MUNGAI','noreply12076@fedena.com',0,1,0,'bcbd6e89ca947327eb1b16c86b5f3aec33d2d4d8','ytgxlGuY',NULL,NULL,'2011-11-06 13:59:02','2011-11-06 13:59:02'),(29,'12001','MICHAEL','MAINA','noreply12001@fedena.com',0,1,0,'2148d8ea72381c4a4cfe9575f89b307a42b54ba7','Y42JTkEG',NULL,NULL,'2011-11-06 14:01:05','2011-11-06 14:01:05'),(30,'11002','NATHANIEL','MWADIME','noreply11002@fedena.com',0,1,0,'d8af72ec3937e67c4eebb81b0281f8173433f02a','OAD54Efq',NULL,NULL,'2011-11-06 14:17:28','2011-11-06 14:17:28'),(31,'11003','BRIAN','MBOGHOLI','noreply11003@fedena.com',0,1,0,'4ec335dc85a8351114c8d1242ff1e9704eb212c4','6Qv2DLon',NULL,NULL,'2011-11-06 14:19:16','2011-11-06 14:19:16'),(32,'11024','KELVIN','MWANGI','noreply11024@fedena.com',0,1,0,'5671476b3bc6b04fe067f59e89c5fc6b2a83b48e','oofBLWhD',NULL,NULL,'2011-11-06 14:21:02','2011-11-06 14:21:02'),(33,'11126','ROBERT','CHEGE','noreply11126@fedena.com',0,1,0,'b6b46c390c29d15c43bf9ff43bbe8860229c4c21','fHyEwQL3',NULL,NULL,'2011-11-06 14:22:44','2011-11-06 14:22:44'),(34,'13087','PAUL','ROTICH','noreply130087@fedena.com',0,1,0,'0ad83dd3e30f266ab90e3524f1ad26dee409ba6b','3elyarvs',NULL,NULL,'2011-11-06 17:34:47','2011-11-06 17:57:20'),(35,'14002','VICTOR','NGOME','noreply14002@fedena.com',0,1,0,'005f8f49dd1fea218ba1e096a43acc6a4e06844b','LbTyYpg2',NULL,NULL,'2011-11-06 17:41:39','2011-11-06 17:41:39'),(36,'14003','BRIAN','BARAKA','noreply14003@fedena.com',0,1,0,'1bd4e0ee693b3a2848f0ed52efcb0424b594c331','cO1NkIzo',NULL,NULL,'2011-11-06 17:44:07','2011-11-06 17:44:07'),(37,'14006','SIMON','MUTISYA','noreply14006@fedena.com',0,1,0,'d7083b24500bb7a9bd8892794668f3bde605d734','47t3zLsz',NULL,NULL,'2011-11-06 17:46:22','2011-11-06 17:46:22'),(38,'14005','PETER','WACHIRA','noreply14005@fedena.com',0,1,0,'2a91c4e58acc6987df96d24dde8b6c559044ad24','HLeBkCyj',NULL,NULL,'2011-11-06 17:50:01','2011-11-06 17:50:01'),(39,'14004','SULEIMAN','BWANAKALI','noreply14004@fedena.com',0,1,0,'176b9e06cc3231bef87fbaeca48239ff4a6a2f5b','N0Fx9WPB',NULL,NULL,'2011-11-06 17:51:36','2011-11-06 17:51:36'),(40,'14001','GERALD','MBAYA','noreply14001@fedena.com',0,1,0,'4a8881c8d199ff40da8d4948cf934fe45a46b926','W5nKdvBn',NULL,NULL,'2011-11-06 17:54:34','2011-11-06 17:54:34'),(41,'13002','BRIAN','WAITHAKA','noreply13002@fedena.com',0,1,0,'6ff07ce130e415c19d6586e4f09b6e916a18cacb','nm45mWki',NULL,NULL,'2011-11-06 17:59:53','2011-11-06 17:59:53'),(42,'13004','ANDREW','MONGO','noreply13004@fedena.com',0,1,0,'76accb2538d7699d3f921f5801a4103c4abb7b5b','7821eYit',NULL,NULL,'2011-11-06 18:01:37','2011-11-06 18:01:37'),(43,'13001','BRIAN','MWARIKETI','noreply13001@fedena.com',0,1,0,'272bd1d33ca689e714692aa21201fb1ae495b76b','oftRa4co',NULL,NULL,'2011-11-06 18:03:14','2011-11-06 18:03:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `weekday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,NULL,'1'),(2,NULL,'2'),(3,NULL,'3'),(4,NULL,'4'),(5,NULL,'5');
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmls`
--

DROP TABLE IF EXISTS `xmls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xmls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finance_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ledger_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmls`
--

LOCK TABLES `xmls` WRITE;
/*!40000 ALTER TABLE `xmls` DISABLE KEYS */;
INSERT INTO `xmls` VALUES (1,'Salary','','2011-09-09 11:19:31','2011-09-09 11:19:31'),(2,'Fee','','2011-09-09 11:19:31','2011-09-09 11:19:31'),(3,'Donation','','2011-09-09 11:19:31','2011-09-09 11:19:31');
/*!40000 ALTER TABLE `xmls` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-11-30 17:15:58
