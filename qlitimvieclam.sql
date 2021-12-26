-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: qlitimvieclam
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Toàn thời gian'),(2,'Bán thời gian  '),(3,'Thời vụ'),(4,'Thực tập'),(5,'Làm tại nhà'),(6,'Dự án');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ho` varchar(45) NOT NULL,
  `ten` varchar(45) NOT NULL,
  `noi_lam_viec` varchar(255) DEFAULT NULL,
  `sdt` int DEFAULT NULL,
  `ngaysinh` varchar(45) DEFAULT NULL,
  `gioi_tinh` varchar(45) DEFAULT NULL,
  `nghanhnghe_id` int NOT NULL,
  `kinh_nghiem` varchar(45) DEFAULT NULL,
  `luong` varchar(45) DEFAULT NULL,
  `trinh_do` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nghanh_nghe`
--

DROP TABLE IF EXISTS `nghanh_nghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nghanh_nghe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_nghanh` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nghanh_nghe`
--

LOCK TABLES `nghanh_nghe` WRITE;
/*!40000 ALTER TABLE `nghanh_nghe` DISABLE KEYS */;
INSERT INTO `nghanh_nghe` VALUES (1,'Partender'),(2,'Công  nghê thông tin'),(3,'Bất động sản'),(4,'Kế toán'),(5,'Ngoại ngữ');
/*!40000 ALTER TABLE `nghanh_nghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_tuyen_dung`
--

DROP TABLE IF EXISTS `nha_tuyen_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_tuyen_dung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_ntd` varchar(45) NOT NULL,
  `linh_vuc` varchar(45) NOT NULL,
  `thong_tin` varchar(45) NOT NULL,
  `sdt` varchar(12) NOT NULL,
  `dia_chi` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_tuyen_dung`
--

LOCK TABLES `nha_tuyen_dung` WRITE;
/*!40000 ALTER TABLE `nha_tuyen_dung` DISABLE KEYS */;
INSERT INTO `nha_tuyen_dung` VALUES (1,'FPT','Công nghệ','Công nghệ thông tin','1234567890','gò vấp'),(2,'Big C','Siêu thị',' Lươn g','s','Gò vấp'),(3,'KFC','Đồ ăn nhanh','Không cân kinh nghiệm','s','Bình Thạnh'),(4,'Cty TNHH 333','Công nghệ','Kinh nghiệm trên 3 năm','1234567','Quận 1'),(5,'Nhà máy dệt may Gò vấp','Dệt may','ư','s','Gò Vấp');
/*!40000 ALTER TABLE `nha_tuyen_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntd_account`
--

DROP TABLE IF EXISTS `ntd_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ntd_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntd_account`
--

LOCK TABLES `ntd_account` WRITE;
/*!40000 ALTER TABLE `ntd_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntd_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tim_viec`
--

DROP TABLE IF EXISTS `tim_viec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tim_viec` (
  `id` int NOT NULL,
  `tencv` varchar(225) NOT NULL,
  `luong` decimal(10,0) DEFAULT NULL,
  `dia_chi` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `ungvien_id` int NOT NULL,
  `nganhnghe_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_timviec` (`ungvien_id`) /*!80000 INVISIBLE */,
  KEY `FK_timviec_idx` (`nganhnghe_id`),
  CONSTRAINT `FK_timviec` FOREIGN KEY (`nganhnghe_id`) REFERENCES `nghanh_nghe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_timviec_` FOREIGN KEY (`ungvien_id`) REFERENCES `ung_vien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tim_viec`
--

LOCK TABLES `tim_viec` WRITE;
/*!40000 ALTER TABLE `tim_viec` DISABLE KEYS */;
INSERT INTO `tim_viec` VALUES (1,'Cần tìm công việc nhân viên pa chế',50000000,'Hồ Chí Minh',NULL,1,1);
/*!40000 ALTER TABLE `tim_viec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ung_vien`
--

DROP TABLE IF EXISTS `ung_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ung_vien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ho` varchar(100) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `sdt` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  `nghanh_id` int NOT NULL,
  `kinh_nghiem` varchar(45) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ungvien_idx` (`nghanh_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `FK_ungvien` FOREIGN KEY (`nghanh_id`) REFERENCES `nghanh_nghe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ung_vien`
--

LOCK TABLES `ung_vien` WRITE;
/*!40000 ALTER TABLE `ung_vien` DISABLE KEYS */;
INSERT INTO `ung_vien` VALUES (1,'Phạm Thị Hồng ',' Ngự','12345678','44 Nguyễn Văn Công Phườn 3, Gò Vấp',2,'Chưa có kinh nghiệm','Vui vẻ , hòa đồng',NULL),(2,'Nguyễn Thị','Trang','0202456789','234 Nguyễn Kiệm Phường 3, Gò Vấp',4,'Kinh nghiệm >3 năm','Kỹ năng giao tiếp tốt, hòa đồng',NULL),(3,'Trần Văn ',' Hùng','0902551333','99 Nguyễn Du phường 5, Bình Thạnh',5,'Kinh nghiệm >1 năm','Tiếng anh giao tiếp tốt',NULL),(4,'Nguyễn Văn','Trường','0505665722','23/122 Lý Thường Kiệt phường 7 Tân Bình',2,'Chưa có kinh nghiệm','Tiếng anh giao tiếp tốt',NULL),(5,'Lê Anh ','Tuấn','0877345654','21/2/ Lê Đức Thọ Phường 17 Gò Vấp',1,'Kinh nghiệm >1 năm','Vui vẻ , hòa đồng',NULL),(6,'Nguyễn Minh','Huy','905776677','108 Nguyễn Oanh p6, Gò Vấp',5,'Kinh nghiệm >1 năm','Hòa đồng, giao tiếp tốt, làm việc hiệu quả','https://res.cloudinary.com/qlitimvieclam/image/upload/v1640373469/dlcwbmfwltrmt0izoasz.jpg'),(7,'Phạm Thị Hồng ','Nguyễn Minh','905776677','108 Nguyễn Oanh p6, Gò Vấp',3,'Chưa có kinh nghiệm','Hòa đồng, giao tiếp tốt, làm việc hiệu quả','https://res.cloudinary.com/qlitimvieclam/image/upload/v1640451171/c3fh2dsqxk0flybuby8e.jpg');
/*!40000 ALTER TABLE `ung_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` int DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `user_role` varchar(45) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Phạm Thị Hồng ','Ngự','nene11122k@gmail.com',123456789,'Pham Hong','Ngu','1wdf',NULL,NULL),(2,'Pháº¡m Thá» Há»ng','Ngá»±','123ngu@gmail.com',123456789,'hongngu1112','$2a$10$lhhaXyDa2ttRvS5F.TUQuOyENzmXu4I01d6XGPjH5zVqBQ2bvpDRa','ROLE_USER',_binary '\0',NULL),(3,'Nguyá»n Há»ng','Hoa','123hoa@gmail.com',987654321,'hoa123','$2a$10$NrC16hloLvoofsmHM5MA6ONM.COjSMxXe8KfHTIudUMReyFUfAH6y','ROLE_USER',_binary '\0',NULL),(4,'Pháº¡m Thá» ','Hoa','123hoe@gmail.com',98765444,'user','$2a$10$KS1qc.JsYx1yLKJ84W.7AO4DmjEUFzsu/PwGvZnVELRngIYazzn0O','ROLE_USER',_binary '\0',NULL),(5,'Nguyễn Văn','Nam','123nam@gmail.com',973564747,'nam123','$2a$10$5/BeXk.GHkUXocag5OrRBO/3HAcBMadU8FKyRWvOlwl0ilLxlq5vi','ROLE_USER',_binary '\0','https://res.cloudinary.com/qlitimvieclam/image/upload/v1640440625/tbqnern5gochbkip6zxe.jpg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viec_lam`
--

DROP TABLE IF EXISTS `viec_lam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viec_lam` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_vieclam` varchar(255) NOT NULL,
  `luong` decimal(10,0) DEFAULT NULL,
  `category_id` int NOT NULL,
  `nhatuyendung_id` int unsigned NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_vieclam_loai_idx` (`category_id`),
  KEY `FK_vieclam_idx` (`nhatuyendung_id`),
  CONSTRAINT `FK_vieclam_loai` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viec_lam`
--

LOCK TABLES `viec_lam` WRITE;
/*!40000 ALTER TABLE `viec_lam` DISABLE KEYS */;
INSERT INTO `viec_lam` VALUES (1,'Tuyển nhân viên quản lí kho',5000000,2,1,NULL,'Có kinh nghiệm trên 3 năm'),(2,'Tuyển nhân viên bán hàng',3000000,2,1,NULL,'Có kinh nghiệm trên 3 năm'),(3,'Công nhân dệt may',10000000,1,5,NULL,'Có kinh nghiệm trên 3 năm'),(4,'Tuyển thư kí 3 năm kinh nghiệm',18000000,1,4,NULL,'Có kinh nghiệm trên 3 năm, ngoại ngữ giỏi'),(5,'KFC tuyển nhân viên phục vụ',7000000,3,3,NULL,'Không cần kinh nghiệm, đào tạo miễn phí'),(6,'Gia công bút bi tại nhà',700000,5,4,NULL,'Không cọc'),(7,'Tuyển nhân viên bán trà sữa',6000000,1,2,NULL,NULL),(8,'Big C tuyển nhân viên tiếp thi',5000000,2,2,NULL,NULL),(32,'Tuyển nhân viên trực tổng đài',3000000,5,1,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640027340/lxopwljzndveuys1cisb.jpg',NULL),(33,'Tuyen  Lập trình viên PHP',20000000,1,1,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640031105/phsotuyrraqu8os3eltb.png',NULL),(34,'Tuyen nhân viên phục vụ',4000000,2,2,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640031303/ptm0mz4bxydefn231suc.jpg',NULL),(35,'Tuyen  Lập trình viên PHP',20000000,1,1,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640144135/qbmjrktxx54zpr0q6fvh.png',NULL),(36,'Tuyển  Lập trình viên Java',3000000,4,4,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640153805/srlmfpava6gqjlyn5zux.jpg','Sinh viên năm 4, không cần kinh nghiệm, năng động, vui vẻ hòa đồng'),(37,'Tuyển nhân viên bán hàng sau tết',7000000,3,2,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640450635/z2nezy6yie60e8b2ecl6.jpg','Không yêu cầu kinh nghiệm, chịu được áp lực công việc'),(38,'Tuyển nhân viên bán hàng KFC',3000000,2,3,'https://res.cloudinary.com/qlitimvieclam/image/upload/v1640450710/omegwzutmxsclxril2m8.jpg','Không yêu cầu kinh nghiệm, chịu được áp lực công việc');
/*!40000 ALTER TABLE `viec_lam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26  0:45:11
