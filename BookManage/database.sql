# MySQL-Front 5.1  (Build 4.2)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: booksystem
# ------------------------------------------------------
# Server version 5.0.22-community-nt

#
# Source for table t_book
#

DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `barCode` int(6) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `author` varchar(255) default NULL,
  `publisher` varchar(255) default NULL,
  `publishDate` date default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`barCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table t_book
#

LOCK TABLES `t_book` WRITE;
/*!40000 ALTER TABLE `t_book` DISABLE KEYS */;
INSERT INTO `t_book` VALUES (100000,'水浒传','施耐庵','北京印刷厂','2020-09-10',10);
INSERT INTO `t_book` VALUES (100001,'三国志','罗贯中','武汉出版商','2020-08-12',10);
INSERT INTO `t_book` VALUES (100031,'官方','飒飒的','a的故事','2022-07-25',10);
INSERT INTO `t_book` VALUES (100033,'阿斯弗','s大概','a人噶','2022-07-11',10);
INSERT INTO `t_book` VALUES (100038,'47586','786','6745','2022-07-11',10);
INSERT INTO `t_book` VALUES (100041,'453','3574','453','2022-07-10',4);
INSERT INTO `t_book` VALUES (100042,'543','7583','4534','2022-07-25',4);
INSERT INTO `t_book` VALUES (100043,'345','453','74563','2022-07-11',45);
INSERT INTO `t_book` VALUES (100044,'345','453','74563','2022-07-11',44);
INSERT INTO `t_book` VALUES (100045,'345','453','74563','2022-07-11',42);
INSERT INTO `t_book` VALUES (100046,'653','898','653','2022-07-27',586);
INSERT INTO `t_book` VALUES (100047,'453','456','4753','2022-07-17',4);
INSERT INTO `t_book` VALUES (100048,'123','453','453','2022-07-18',1);
INSERT INTO `t_book` VALUES (100049,'123','453','453','2022-07-04',45);
INSERT INTO `t_book` VALUES (100050,'543','543','453','2022-07-18',453);
INSERT INTO `t_book` VALUES (100051,'786','456','75','2022-07-18',456);
INSERT INTO `t_book` VALUES (100052,'756','7586','7856','2022-07-18',7);
INSERT INTO `t_book` VALUES (100053,'213','453','453','2022-07-25',45);
INSERT INTO `t_book` VALUES (100054,'456','7865','7543','2022-07-18',45);
INSERT INTO `t_book` VALUES (100055,'456','7865','7543','2022-07-18',45);
INSERT INTO `t_book` VALUES (100056,'456','7865','7543','2022-07-18',45);
INSERT INTO `t_book` VALUES (100057,'456','7865','7543','2022-07-18',45);
INSERT INTO `t_book` VALUES (100058,'456','786','786','2022-07-26',456);
INSERT INTO `t_book` VALUES (100059,'453','453','786','2022-07-11',45);
INSERT INTO `t_book` VALUES (100064,'453','453','\\75','2022-07-18',4);
INSERT INTO `t_book` VALUES (100066,'trhs','ygju','\\78275','2022-07-03',42);
INSERT INTO `t_book` VALUES (100067,'54','7864','75','2022-07-17',456);
INSERT INTO `t_book` VALUES (100068,'2453','74534','452345','2022-07-25',45);
INSERT INTO `t_book` VALUES (100069,'213','453','48','2022-07-25',45);
INSERT INTO `t_book` VALUES (100070,'453','4567','5464','2022-07-17',100);
INSERT INTO `t_book` VALUES (100071,'453','78674','78654','2022-07-18',456);
/*!40000 ALTER TABLE `t_book` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
