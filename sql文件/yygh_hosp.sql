/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 8.0.27 : Database - yygh_hosp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yygh_hosp` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `yygh_hosp`;

/*Table structure for table `hospital_set` */

DROP TABLE IF EXISTS `hospital_set`;

CREATE TABLE `hospital_set` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `api_url` varchar(100) DEFAULT NULL COMMENT 'api基础路径',
  `sign_key` varchar(50) DEFAULT NULL COMMENT '签名秘钥',
  `contacts_name` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hoscode` (`hoscode`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='医院设置表';

/*Data for the table `hospital_set` */

insert  into `hospital_set`(`id`,`hosname`,`hoscode`,`api_url`,`sign_key`,`contacts_name`,`contacts_phone`,`status`,`create_time`,`update_time`,`is_deleted`) values (1,'北京协和医院','123456789','http://localhost:8201','ba27058f8dcbf42c1523b4b7881a1c07','不知道叫什么','15115447254',1,'2021-08-20 16:07:43','2021-08-24 15:55:08',0),(3,'陆丰市人民医院','123456222','http://localhost:8888',NULL,'不知道叫什么','15477785658',1,'2021-08-21 22:58:09','2021-08-22 15:15:08',0),(4,'上海人民医院','123456666','http://localhost:8555',NULL,'不知道叫什么','18554456484',1,'2021-08-21 22:58:46','2022-01-19 13:57:55',1),(5,'中山协和医院','123546486','http://localhost:8844',NULL,'不知道叫什么','15477785658',1,'2021-08-21 22:59:14','2022-01-19 13:57:55',1),(6,'东海高级医院','788888888','http://jiaxianniubi.com','a100b98afd6afa687c760f6f6af5ef5f','张天','14744684861',1,'2021-08-22 16:57:39','2022-01-18 13:43:16',0),(7,'1111','111','111','ba27058f8dcbf42c1523b4b6629a1c07','11','11',1,'2021-08-22 16:58:53','2021-08-22 16:58:53',0),(8,'11353','353','3543','42f9d93d44e46f44a8c451ca0ffb3693','5345','5435',1,'2021-08-22 16:59:49','2021-08-22 16:59:49',0),(9,'535433','53453453','543543','86077eb5c6b4963c73d4320f9d3c96ba','5435345','3453534',1,'2021-08-22 17:04:25','2021-08-22 17:04:25',0),(10,'0000','00','00','458616ff6386801c36c9e57e75061d4a','00','00',1,'2021-08-22 18:13:57','2022-01-19 14:26:59',1),(11,'测试','123456221','http://localhost:8888','54733ec7d706e41d4de788ac68c1128a','22','15477785658',1,'2022-01-18 14:15:35','2022-01-19 13:34:50',1),(12,'苏家屯医院','123456','httptest','06f7ed8c26e48a8ec02aec0744561ee5','www','17784457808',1,'2022-01-19 14:32:29','2022-01-19 14:32:29',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
