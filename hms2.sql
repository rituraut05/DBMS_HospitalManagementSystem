-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2017 at 01:04 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL PRIMARY KEY,
  `name` varchar(225) NOT NULL,
  `discount` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `name`, `discount`, `status`) VALUES
(1, '', '', '0'),
(2, 'Phil healths', '5', '1'),
(3, 'SSS', '10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL PRIMARY KEY,
  `transaction_id` varchar(225) NOT NULL,
  `services_id` varchar(225) NOT NULL,
  `qty` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `transaction_id`, `services_id`, `qty`) VALUES
(5, '88', '1', '1'),
(6, '8', '1', '1'),
(7, '8', '11', '1'),
(8, '8', '3', '1'),
(9, '9', '1', '1'),
(10, '10', '1', '1'),
(11, '11', '4', '1'),
(12, '12', '1', '1'),
(13, '15', '3', '1'),
(14, '15', '1', '1'),
(15, '15', '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders_discount`
--

CREATE TABLE `orders_discount` (
  `orders_discount_id` int(11) NOT NULL,
  `transaction_id` varchar(225) NOT NULL,
  `discount_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_discount`
--

INSERT INTO `orders_discount` (`orders_discount_id`, `transaction_id`, `discount_id`) VALUES
(2, '8', '3'),
(3, '9', '3'),
(4, '10', '3'),
(5, '11', '3'),
(6, '12', '3'),
(7, '15', '2');

-- --------------------------------------------------------

--
-- Table structure for table `orders_rooms`
--

CREATE TABLE `orders_rooms` (
  `orders_rooms_id` int(11) NOT NULL,
  `transaction_id` varchar(225) NOT NULL,
  `room_id` varchar(225) NOT NULL,
  `qty` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_rooms`
--

INSERT INTO `orders_rooms` (`orders_rooms_id`, `transaction_id`, `room_id`, `qty`) VALUES
(7, '8', '2', '2'),
(8, '9', '1', '1'),
(9, '10', '1', '1'),
(10, '11', '1', '1'),
(11, '12', '1', '1'),
(12, '15', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `birthday` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `confine` varchar(225) NOT NULL,
  `room` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `name`, `birthday`, `gender`, `address`, `phone`, `img`, `email`, `confine`, `room`, `status`) VALUES
(1, 'Anne Curtis', '1997-08-06', 'Male', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '09993628811', 'c.jpg', 'asd@gmail.com', 'In', '', '1'),
(2, 'Angel Locsin', '2016-11-30', 'Male', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '639489101882', '535111_1040587059334734_5366597921990537295_n.jpg', '', 'out', '', '0'),
(3, 'Genalyn Mercado', '2015-11-30', 'Female', 'asd', '21312', 'b.jpg', '', 'out', '', '1'),
(4, 'a b. v', '2016-09-07', 'Male', 'asd', 'alakneth@gmail.com', 'asd.png', '', 'In', 'none', '0'),
(5, 'test tester. testibngf', '2003-06-19', 'Female', 'tester adderss', '12354678', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', '123sd@gmail.com', 'In', 'none', '1'),
(6, 'test testerasd. ASD', '1987-09-23', 'Male', 'test', '12312512', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', 'sd123123a@gmail.com', 'In', 'none', '1'),
(7, 'man kid. papa', '1526-10-20', 'Female', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '639489101882', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', '2134@gmail.com', 'out', 'none', '1'),
(8, 'men barcode. mendoza', '1997-08-06', 'Male', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '639489101882', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', 'alakneth@gmail.com', 'in', 'none', '1'),
(9, 'al d. buhi', '1991-11-03', 'Male', '061 dao st. marikina heights\r\n061 dao st. marikina heights', '639489101882', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', 'alakneth@gmail.com', 'out', 'none', '1');

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `physician_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `fee` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `license` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `bday` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`physician_id`, `name`, `phone`, `fee`, `img`, `status`, `license`, `email`, `bday`, `address`) VALUES
(5, 'Miami, Fatima Jacksons', 'Surgeon', '234', '1468758339_5cf9674b6980f5c30ec7151f6dd2fca1.jpeg', '1', '123599946743', 'MiamiJackson@gmail.com', '1979-12-31', 'Baliuag bulacan');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `number` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `name`, `category`, `price`, `status`, `number`, `description`) VALUES
(1, '4th floor dengue ward', 'Private', '120', '1', '34', 'asds23124352134'),
(2, '1st floor ICU', 'Private', '1233', '1', '21', 'asd'),
(3, 'asd11', 'Private', '123', '0', '53', 'asd'),
(4, 'a', 'ICU', '12', '1', '2', 'asdasd'),
(5, '1', 'Private', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `name`, `category`, `description`, `price`, `status`) VALUES
(1, 'Checkup', 'Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '300', '1'),
(2, 'Blood Chem', 'Laboratory', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '450', '1'),
(3, 'Ascof Lagundi', 'Pharmacy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '80', '1'),
(4, 'Wheel Chair', 'Utilities', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2000', '1'),
(5, 'Private Room', 'Utilities', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '2000', '1'),
(6, 'General Checkup', 'Doctors Fee', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '999', '1'),
(7, 'Parasetamol Biogesic', 'Pharmacy', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '45', '1'),
(8, 'Anti Tetano Vaccine', 'Services', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '350', '1'),
(9, 'X-ray', 'Laboratory', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '400', '1'),
(10, 'UltraSound', 'Laboratory', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '3000', '1'),
(11, 'asd', 'Services', 'asd', '123', '1'),
(12, 'a', 'Pharmacy', 'aasdasd', '123', '1'),
(13, 'as', 'Pharmacy', 'as', '23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `date` varchar(225) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `physician_id` int(11) NOT NULL,
  `total` varchar(225) NOT NULL,
  `payment_status` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  FOREIGN KEY (`patient_id`) REFERENCES patients(`patient_id`) ON DELETE CASCADE,
  FOREIGN KEY (`physician_id`) References physician(`physician_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `date`, `patient_id`, `physician_id`, `total`, `payment_status`, `status`) VALUES
(8, '2016-09-26 13:36:13', '1', '5', '2672.1', 'Cash', '1'),
(9, '2016-09-26 16:12:29', '2', '5', '378', 'Cash', '1'),
(10, '2016-10-10 01:39:45', '3', '5', '390', 'Cash', '1'),
(11, '2016-10-17 12:13:26', '4', '5', '1908', 'Cash', '1'),
(12, '2017-01-04 22:51:21', '5', '5', '378', 'Cash', '1'),
(13, '2017-01-04 22:53:57', '6', '5', '0', '0', '1'),
(14, '2017-01-04 22:57:36', '5', '5', '0', '0', '1'),
(15, '2017-01-04 22:58:35', '6', '5', '2261', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `user` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `role` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `user`, `pass`, `role`, `img`, `status`) VALUES
(1, 'Vic Fuentes', 'admin', '1234', '1', 'cover.png', '1'),
(2, 'Ronnie Radkle', 'staff', '1234', '0', 'Untitled.png', '1'),
(3, 'Black Blue', 'staff2', '1234', '0', 'backblue.gif', '0'),
(4, 'Kellin Quin', 'cahier', '1234', '0', 'full-bg-5 - Copy.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `visitor_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `stat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_acc`
--

CREATE TABLE `visitor_acc` (
  `va_id` int(11) NOT NULL,
  `pass` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_acc`
--

INSERT INTO `visitor_acc` (`va_id`, `pass`, `name`, `email`, `code`, `status`) VALUES
(1, '1234', 'tester', '639489101882', 'v4w8diph', '1'),
(2, '1234', 'jomar', '639364470607', 'sjiozuf4', '0');

--
-- Indexes for dumped tables
--
CREATE TABLE insurance
	(insco_id int NOT NULL,
	insco_name varchar(100) NOT NULL,
	category varchar(50) NOT NULL,
	phone int NOT NULL,
	PRIMARY KEY (insco_id)
	);
INSERT INTO insurance
VALUES ('0010', 'SBI Life Insurance', 'Health Insurance', '12243769');
INSERT INTO insurance
VALUES ('0020', 'HDFC Life Insurance', 'Health Insurance', '12855576');
INSERT INTO insurance
VALUES ('0030', 'IDBI Life Insurance', 'Health Insurance', '12776569');
INSERT INTO insurance
VALUES ('0040', 'ICICI Life Insurance', 'Health Insurance', '12877776');
INSERT INTO insurance
VALUES ('0050', 'KOTAK Life Insurance', 'Health Insurance', '12778769');
INSERT INTO insurance
VALUES ('0060', 'SAHARA Life Insurance', 'Health Insurance', '12811176');


CREATE TABLE patientinsurance
	(patient_id int NOT NULL,
	insco_id int  NOT NULL,
	FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
	FOREIGN KEY (insco_id) REFERENCES insurance(insco_id)
	ON DELETE CASCADE);


INSERT INTO patientinsurance
VALUES (1,'0010');
INSERT INTO patientinsurance
VALUES (2,'0010');
INSERT INTO patientinsurance
VALUES (3,'0050');
INSERT INTO patientinsurance
VALUES (4,'0010');
INSERT INTO patientinsurance
VALUES (5,'0030');
INSERT INTO patientinsurance
VALUES (6,'0060');
INSERT INTO patientinsurance
VALUES (7,'0040');
INSERT INTO patientinsurance
VALUES (8,'0020');
INSERT INTO patientinsurance
VALUES (9,'0050');
INSERT INTO patientinsurance
VALUES (10,'0030');
INSERT INTO patientinsurance
VALUES (11,'0020');
INSERT INTO patientinsurance
VALUES (12,'0030');
INSERT INTO patientinsurance
VALUES (13,'0020');
INSERT INTO patientinsurance
VALUES (14,'0050');
INSERT INTO patientinsurance
VALUES (15,'0060');
INSERT INTO patientinsurance
VALUES (16,'0040');
INSERT INTO patientinsurance
VALUES (17,'0060');
INSERT INTO patientinsurance
VALUES (18,'0060');
INSERT INTO patientinsurance
VALUES (19,'0010');
INSERT INTO patientinsurance
VALUES (20,'0040');


CREATE TABLE cpt
	(cpt_id int NOT NULL,
	category varchar(20) NOT NULL,
	PRIMARY KEY (cpt_id)
	);

  INSERT INTO cpt
VALUES ('1001', 'Medical');
INSERT INTO cpt
VALUES ('2002','Medical');
INSERT INTO cpt
VALUES ('3003', 'Medical');
INSERT INTO cpt
VALUES ('4004','Medical');
INSERT INTO cpt
VALUES ('5005', 'Medical');
INSERT INTO cpt
VALUES ('6006','Medical');
INSERT INTO cpt
VALUES ('7007', 'Medical');
INSERT INTO cpt
VALUES ('8008','Medical');

CREATE TABLE diagnosis 
	(diagnosis_id int NOT NULL,
	category varchar(100) NOT NULL,
	PRIMARY KEY (diagnosis_id)
	);
INSERT INTO diagnosis
VALUES ('1010', 'ENT');
INSERT INTO diagnosis
VALUES ('2020', 'Circulatory System');
INSERT INTO diagnosis
VALUES ('3030', 'Digestive System');
INSERT INTO diagnosis
VALUES ('4040', 'Respiratory System');
INSERT INTO diagnosis
VALUES ('5050', 'Skin, Subcutaneous Tissue And Breast');
INSERT INTO diagnosis
VALUES ('6060', 'Kidney And Urinary Tract');
INSERT INTO diagnosis
VALUES ('7070', 'Pregnancy, Childbirth And Puerperium');
INSERT INTO diagnosis
VALUES ('8080', 'Mental Diseases and Disorders');
INSERT INTO diagnosis
VALUES ('9090', 'Injuries, Poison And Toxic Effect of Drugs');
INSERT INTO diagnosis
VALUES ('100100', 'Multiple Significant Trauma');
INSERT INTO diagnosis
VALUES ('110110', 'Human Immunodeficiency Virus Infection');
INSERT INTO diagnosis
VALUES ('120120', 'Female Reproductive System');
INSERT INTO diagnosis
VALUES ('130130', 'Male Reproductive System');
INSERT INTO diagnosis
VALUES ('140140', 'Hepatobiliary System And Pancreas');

CREATE TABLE medicine
	(m_id int NOT NULL,
	m_name varchar(100) NOT NULL,
	manufacturer varchar(100) NOT NULL,
	price varchar(100) NOT NULL,
	quantity int NOT NULL,
	exp_date date NOT NULL,
	PRIMARY KEY (m_id)
	);

INSERT INTO medicine
VALUES ('1111', 'ASPIRIN', 'Pfizers', '$20.99', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('2222','Biaxin','Pfizers','$10.99','1','2018-07-13');
INSERT INTO medicine
VALUES ('3333', 'Amoxil', 'Pfizers', '$10.49', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('4444','Atenolol','Pfizers','$15.99','1','2018-07-13');
INSERT INTO medicine
VALUES ('5555', 'Nitroglycerin','Pfizers', '$17.99', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('6666','Coated ASA','Pfizers','$11.99','1','2018-07-13');
INSERT INTO medicine
VALUES ('7777', 'Metoprolol','Mercky', '$11.00', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('8888','Glipizide','Hulet','$17.60','1','2018-07-13');
INSERT INTO medicine
VALUES ('9999', 'Flonasl','Hulet',  '$30.99', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('10101010','Livostin','Mercky','$65.99','1','2018-07-13');
INSERT INTO medicine
VALUES ('11111111', 'Cortisporin','Hulet', '$28.99', '1', '2018-07-13');
INSERT INTO medicine
VALUES ('12121212','Motrin','Mercky','$67.99','1','2018-07-13');


CREATE TABLE prescription
	(prescription_id int NOT NULL,
	medicine_qty int NOT NULL,
  m_id int NOT NULL,
  FOREIGN KEY (m_id) REFERENCES medicine(m_id)
	ON DELETE CASCADE,
	PRIMARY KEY (prescription_id)
	);
INSERT INTO prescription
VALUES ('12345', '50', '1111');
INSERT INTO prescription
VALUES ('23456', '50', '1111');
INSERT INTO prescription
VALUES ('34567', '50', '1111');
INSERT INTO prescription
VALUES ('45678', '50', '1111');
INSERT INTO prescription
VALUES ('56789', '50', '2222');
INSERT INTO prescription
VALUES ('13456', '50', '2222');
INSERT INTO prescription
VALUES ('24567', '50', '2222');
INSERT INTO prescription
VALUES ('35678', '50', '3333');
INSERT INTO prescription
VALUES ('46789', '50', '4444');
INSERT INTO prescription
VALUES ('14567', '50', '4444');
INSERT INTO prescription
VALUES ('25678', '50', '4444');
INSERT INTO prescription
VALUES ('36789', '50', '5555');
INSERT INTO prescription
VALUES ('15678', '50', '6666');
INSERT INTO prescription
VALUES ('26789', '50', '7777');






CREATE TABLE prescriptionmedicine
	(m_id int NOT NULL,
	prescription_id int NOT NULL,
	FOREIGN KEY (prescription_id) REFERENCES prescription(prescription_id),
	FOREIGN KEY (m_id) REFERENCES medicine(m_id)
	ON DELETE CASCADE);

CREATE TABLE invoice
	(invoice_num int NOT NULL,
	amount varchar(100) NOT NULL,
	invoice_date date NOT NULL,
	due_date date NOT NULL,
	patient_id int NOT NULL,
	cpt_id int NOT NULL,
	diagnosis_id int NOT NULL,
	prescription_id int NOT NULL,
	PRIMARY KEY (invoice_num),
	FOREIGN KEY (patient_id) REFERENCES patients (patient_id),
	FOREIGN KEY (cpt_id) REFERENCES cpt(cpt_id),
	FOREIGN KEY (diagnosis_id) REFERENCES diagnosis(diagnosis_id),
	FOREIGN KEY (prescription_id) REFERENCES prescription(prescription_id)
	ON DELETE CASCADE);


INSERT INTO invoice
VALUES ('111', '$2,000.00', '2017-02-01', '2017-03-01', 1 , '1001', '1010', '12345' );
INSERT INTO invoice
VALUES ('112', '$3,000.00', '2017-03-02', '2017-04-02', 2 , '2002', '140140', '23456');
INSERT INTO invoice
VALUES ('113', '$2,500.00', '2017-04-03', '2017-05-03', 3 , '8008', '8080', '45678' );
INSERT INTO invoice
VALUES ('114', '$4,000.00', '2017-05-04', '2017-06-04', 4 , '5005', '2020', '34567');
INSERT INTO invoice
VALUES ('115', '$2,050.00', '2017-06-05', '2017-07-05', 5 , '4004', '3030', '56789' );
INSERT INTO invoice
VALUES ('116', '$2,006.00', '2017-06-15', '2017-07-15', 6 , '1001', '5050', '13456');
INSERT INTO invoice
VALUES ('117', '$4,000.00', '2017-02-28', '2017-03-28', 7 , '2002', '2020', '34567' );
INSERT INTO invoice
VALUES ('118', '$2,006.00', '2017-03-16', '2017-04-16', 8 , '6006', '5050', '13456');
INSERT INTO invoice
VALUES ('119', '$3,000.00', '2017-08-06', '2017-09-06', 9 , '4004', '140140', '23456' );
INSERT INTO invoice
VALUES ('120', '$8,000.00', '2017-09-15', '2017-10-15', 10, '8008', '110110', '14567');
INSERT INTO invoice
VALUES ('121', '$1,000.00', '2017-10-07', '2017-11-07', 11, '7007', '130130', '25678' );
INSERT INTO invoice
VALUES ('122', '$4,000.00', '2017-11-08', '2017-12-08', 12, '5005', '2020', '34567');
INSERT INTO invoice
VALUES ('123', '$9,030.00', '2017-01-09', '2017-02-09', 13, '3003', '7070', '36789' );
INSERT INTO invoice
VALUES ('124', '$9,030.00', '2017-03-10', '2017-04-10', 14, '6006', '7070', '36789');
INSERT INTO invoice
VALUES ('125', '$1,000.00', '2017-03-21', '2017-04-21', 15, '8008', '130130', '25678' );
INSERT INTO invoice
VALUES ('126', '$11,000.00', '2017-04-11', '2017-05-11', 16, '4004', '6060', '15678');
INSERT INTO invoice
VALUES ('127', '$2,000.00', '2017-06-22', '2017-07-22', 17, '8008', '1010', '12345' );
INSERT INTO invoice
VALUES ('128', '$12,000.00', '2017-07-12', '2017-08-12', 18, '3003', '4040', '26789');
INSERT INTO invoice
VALUES ('129', '$11,000.00', '2017-02-24', '2017-03-24', 19, '5005', '6060', '15678' );
INSERT INTO invoice
VALUES ('130', '$12,000.00', '2017-03-13', '2017-04-13', 20, '1001', '4040', '26789');

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `orders_discount`
--
ALTER TABLE `orders_discount`
  ADD PRIMARY KEY (`orders_discount_id`);

--
-- Indexes for table `orders_rooms`
--
ALTER TABLE `orders_rooms`
  ADD PRIMARY KEY (`orders_rooms_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD PRIMARY KEY (`physician_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);
  
ALTER TABLE `transactions`
  ADD FOREIGN KEY (`patient_id`) REFERENCES patients(`patient_id`) ON DELETE CASCADE,
  ADD FOREIGN KEY (`physician_id`) References physician(`physician_id`) ON DELETE CASCADE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `visitor_acc`
--
ALTER TABLE `visitor_acc`
  ADD PRIMARY KEY (`va_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `orders_discount`
--
ALTER TABLE `orders_discount`
  MODIFY `orders_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders_rooms`
--
ALTER TABLE `orders_rooms`
  MODIFY `orders_rooms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `physician`
--
ALTER TABLE `physician`
  MODIFY `physician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visitor_acc`
--
ALTER TABLE `visitor_acc`
  MODIFY `va_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
