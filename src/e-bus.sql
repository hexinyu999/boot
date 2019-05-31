/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.20 : Database - e-bus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`e-bus` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `e-bus`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_bin NOT NULL,
  `money` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `account` */

insert  into `account`(`id`,`name`,`money`) values (1,'aaa','55.00'),(2,'bbb','45.00'),(3,'ccc','0.00'),(6,'abcd','100.55');

/*Table structure for table `account_33` */

DROP TABLE IF EXISTS `account_33`;

CREATE TABLE `account_33` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) COLLATE utf8_bin NOT NULL,
  `money` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `account_33` */

insert  into `account_33`(`id`,`username`,`money`) values (1,'公司帐户','800.00'),(2,'张三','200.00'),(3,'李四','0.00');

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `gender` varchar(100) COLLATE utf8_bin NOT NULL,
  `birthday` date NOT NULL,
  `cellphone` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `hobby` varchar(100) COLLATE utf8_bin NOT NULL,
  `type` varchar(100) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customers` */

insert  into `customers`(`id`,`name`,`gender`,`birthday`,`cellphone`,`email`,`hobby`,`type`,`description`) values (1,'张三','male','1999-10-01','15850000000','abc@sina.com','睡觉,学java','VVIP','不错的小伙子。');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `jie` varchar(255) DEFAULT NULL,
  `kecheng` varchar(255) DEFAULT NULL,
  `mingzi` varchar(255) DEFAULT NULL,
  `xingqi` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  `laoshiname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jiaoshi` */

/*Table structure for table `loufang` */

DROP TABLE IF EXISTS `loufang`;

CREATE TABLE `loufang` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `mingzi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `loufang` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `person` */

insert  into `person`(`id`,`name`,`age`) values (1,'张三',18),(2,'李四',20);

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `mingzi` varchar(255) DEFAULT NULL,
  `nianfen` varchar(255) DEFAULT NULL,
  `tongxue` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sushe` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`Id`,`username`,`password`,`name`,`createtime`,`role`) values (1,'admin','111111','系统管理员',NULL,0);

/*Table structure for table `tb_bill` */

DROP TABLE IF EXISTS `tb_bill`;

CREATE TABLE `tb_bill` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL,
  `bill_user_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `delivery_method` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `memo` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `delivery_sign` bit(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tb_bill` (`bill_user_id`),
  KEY `FK_tb_bill_1` (`payment_id`),
  CONSTRAINT `FK_tb_bill` FOREIGN KEY (`bill_user_id`) REFERENCES `tb_user` (`id`),
  CONSTRAINT `FK_tb_bill_1` FOREIGN KEY (`payment_id`) REFERENCES `tb_payment_mode` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_bill` */

insert  into `tb_bill`(`id`,`bill_user_id`,`total_price`,`delivery_method`,`memo`,`delivery_sign`,`create_time`,`payment_id`) values ('201611201903080084_50',1,'1300.00','快递','备注:...','\0','2016-11-20 19:03:08',1),('201611201913340088_00',2,'1000.00','快递','备注:...','\0','2016-11-20 19:13:34',1),('201611201918190390_36',2,'1788.00','快递','备注:...','\0','2016-11-20 19:18:19',1),('201611201921160124_05',1,'800.00','快递','备注:...','\0','2016-11-20 19:21:16',1),('201611201925360280_36',1,'800.00','快递','备注:...','\0','2016-11-20 19:25:36',1),('201611201929390270_84',1,'300.00','快递','备注:...','\0','2016-11-20 19:29:39',1),('201611202004580288_85',1,'1000.00','快递','备注:...','\0','2016-11-20 20:04:58',1),('201611202105550261_15',1,'200.00','快递','备注:...','\0','2016-11-20 21:05:55',1),('201611202240360539_81',1,'3900.00','快递','备注:...','\0','2016-11-20 22:40:36',1),('201804150902340550_74',1,'200.00','快递','备注:...','\0','2018-04-15 09:02:34',1),('201804221247340971_67',1,'600.00','快递','备注:...','\0','2018-04-22 12:47:35',1),('201805080714360609_56',1,'599.00','快递','备注:...','\0','2018-05-08 07:14:36',1),('201805141223410216_42',2,'2500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 12:23:41',1),('201805141239200620_74',2,'4200.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 12:39:20',1),('201805141240470831_77',2,'5500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 12:40:47',1),('201805141338180936_07',2,'420.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 13:38:18',1),('201805141347450655_73',2,'2500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 13:47:45',1),('201805141538510707_56',1,'3000.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 15:38:51',1),('201805141547530609_08',2,'2500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 15:47:53',1),('201805141552300827_16',2,'13700.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 15:52:30',1),('201805141558100616_65',1,'5000.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-14 15:58:10',1),('201805150945030513_41',1,'4000.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-15 09:45:03',1),('201805200836200377_87',1,'3420.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-20 08:36:20',1),('201805201131510761_81',1,'7000.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-20 11:31:51',1),('201805221339320262_65',1,'5999.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-22 13:39:32',1),('201805231638070826_18',1,'5500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-05-23 16:38:07',1),('201808061022320419_88',1,'5488.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:22:32',1),('201808061024470103_58',1,'3900.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:24:47',1),('201808061025300984_51',1,'2500.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:25:30',1),('201808061030550608_76',1,'3100.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:30:55',1),('201808061036270059_27',1,'1999.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:36:27',1),('201808061038300345_34',2,'5040.00','普通邮寄','请联系商家确定发货时间！','\0','2018-08-06 10:38:30',1),('201812270811060444_05',1,'3887.00','快递','备注:...','\0','2018-12-27 08:11:06',1);

/*Table structure for table `tb_bill_item` */

DROP TABLE IF EXISTS `tb_bill_item`;

CREATE TABLE `tb_bill_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tb_bill_item` (`bill_id`),
  KEY `FK_tb_bill_item-1` (`product_id`),
  CONSTRAINT `FK_tb_bill_item` FOREIGN KEY (`bill_id`) REFERENCES `tb_bill` (`id`),
  CONSTRAINT `FK_tb_bill_item-1` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_bill_item` */

insert  into `tb_bill_item`(`id`,`bill_id`,`product_id`,`product_name`,`product_price`,`quantity`) values (8,'201611201903080084_50',44,'运动鞋','300.00',1),(9,'201611201903080084_50',50,'耐克NIKE男短袖针织衫','200.00',2),(10,'201611201903080084_50',55,'骆驼男皮鞋19784025棕色','600.00',1),(14,'201611201913340088_00',50,'耐克NIKE男短袖针织衫','200.00',2),(15,'201611201913340088_00',55,'骆驼男皮鞋19784025棕色','600.00',1),(16,'201611201918190390_36',2,'洗衣机','1000.00',1),(17,'201611201918190390_36',37,'大自行车','500.00',1),(18,'201611201918190390_36',52,'耐克NIKE男短袖针织衫','288.00',1),(19,'201611201921160124_05',50,'耐克NIKE男短袖针织衫','200.00',1),(20,'201611201921160124_05',55,'骆驼男皮鞋19784025棕色','600.00',1),(21,'201611201925360280_36',50,'耐克NIKE男短袖针织衫','200.00',1),(22,'201611201925360280_36',55,'骆驼男皮鞋19784025棕色','600.00',1),(23,'201611201929390270_84',44,'运动鞋','300.00',1),(24,'201611202004580288_85',50,'耐克NIKE男短袖针织衫','200.00',2),(25,'201611202004580288_85',55,'骆驼男皮鞋19784025棕色','600.00',1),(26,'201611202105550261_15',50,'耐克NIKE男短袖针织衫','200.00',1),(27,'201611202240360539_81',38,'液晶显示器','1200.00',2),(28,'201611202240360539_81',39,'液晶显示器','1500.00',1),(29,'201804150902340550_74',50,'耐克NIKE男短袖针织衫','200.00',1),(30,'201804221247340971_67',44,'运动鞋','300.00',2),(31,'201805080714360609_56',40,'休闲','100.00',2),(32,'201805080714360609_56',53,'耐克NIKE女针织七分裤','399.00',1),(33,'201805141223410216_42',2,'洗衣机','1000.00',2),(34,'201805141223410216_42',37,'大自行车','500.00',1),(35,'201805141239200620_74',2,'洗衣机','1000.00',2),(36,'201805141239200620_74',37,'大自行车','500.00',2),(37,'201805141239200620_74',38,'液晶显示器','1200.00',1),(38,'201805141240470831_77',2,'洗衣机','1000.00',4),(39,'201805141240470831_77',37,'大自行车','500.00',3),(40,'201805141338180936_07',44,'运动鞋','300.00',1),(41,'201805141338180936_07',47,'十八子作雀之屏切片刀','120.00',1),(42,'201805141347450655_73',2,'洗衣机','1000.00',2),(43,'201805141347450655_73',37,'大自行车','500.00',1),(44,'201805141538510707_56',2,'洗衣机','1000.00',3),(45,'201805141547530609_08',2,'洗衣机','1000.00',2),(46,'201805141547530609_08',37,'大自行车','500.00',1),(47,'201805141552300827_16',2,'洗衣机','1000.00',10),(48,'201805141552300827_16',37,'大自行车','500.00',5),(49,'201805141552300827_16',38,'液晶显示器','1200.00',1),(50,'201805141558100616_65',2,'洗衣机','1000.00',5),(51,'201805150945030513_41',2,'洗衣机','1000.00',4),(52,'201805200836200377_87',2,'洗衣机','1000.00',3),(53,'201805200836200377_87',48,'苏泊尔精铸富铁锅FC30E','420.00',1),(54,'201805201131510761_81',2,'洗衣机','1000.00',5),(55,'201805201131510761_81',37,'大自行车','500.00',4),(56,'201805221339320262_65',2,'洗衣机','1000.00',5),(57,'201805221339320262_65',37,'大自行车','500.00',1),(58,'201805221339320262_65',46,'锐步Reebok男运动鞋','499.00',1),(59,'201805231638070826_18',2,'洗衣机','1000.00',1),(60,'201805231638070826_18',37,'大自行车','500.00',9),(61,'201808061022320419_88',2,'洗衣机','1000.00',2),(62,'201808061022320419_88',37,'大自行车','500.00',1),(63,'201808061022320419_88',38,'液晶显示器','1200.00',1),(64,'201808061022320419_88',39,'液晶显示器','1500.00',1),(65,'201808061022320419_88',52,'耐克NIKE男短袖针织衫','288.00',1),(66,'201808061024470103_58',2,'洗衣机','1000.00',1),(67,'201808061024470103_58',37,'大自行车','500.00',1),(68,'201808061024470103_58',38,'液晶显示器','1200.00',2),(69,'201808061025300984_51',2,'洗衣机','1000.00',2),(70,'201808061025300984_51',37,'大自行车','500.00',1),(71,'201808061030550608_76',37,'大自行车','500.00',1),(72,'201808061030550608_76',2,'洗衣机','1000.00',1),(73,'201808061030550608_76',39,'液晶显示器','1500.00',1),(74,'201808061030550608_76',40,'休闲','100.00',1),(75,'201808061036270059_27',2,'洗衣机','1000.00',1),(76,'201808061036270059_27',37,'大自行车','500.00',1),(77,'201808061036270059_27',46,'锐步Reebok男运动鞋','499.00',1),(78,'201808061038300345_34',47,'十八子作雀之屏切片刀','120.00',1),(79,'201808061038300345_34',44,'运动鞋','300.00',5),(80,'201808061038300345_34',48,'苏泊尔精铸富铁锅FC30E','420.00',1),(81,'201808061038300345_34',49,'爱仕达4L爵士电热水壶','300.00',1),(82,'201808061038300345_34',2,'洗衣机','1000.00',1),(83,'201808061038300345_34',37,'大自行车','500.00',1),(84,'201808061038300345_34',38,'液晶显示器','1200.00',1),(85,'201812270811060444_05',2,'洗衣机','1000.00',3),(86,'201812270811060444_05',50,'??NIKE??????','200.00',1),(87,'201812270811060444_05',52,'耐克NIKE男短袖针织衫','288.00',1),(88,'201812270811060444_05',53,'耐克NIKE女针织七分裤','399.00',1);

/*Table structure for table `tb_board` */

DROP TABLE IF EXISTS `tb_board`;

CREATE TABLE `tb_board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_issue_name` varchar(50) DEFAULT NULL,
  `content` longtext,
  `issue_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `tb_board` */

insert  into `tb_board`(`id`,`board_issue_name`,`content`,`issue_time`) values (27,'本商城自即日起退出优惠','本商城大部分商品优惠活动','2015-12-01 08:00:00'),(28,'城招代理商','因业务量不断的扩大，本商城招聘各地的代理商','2015-12-01 08:00:00'),(29,'春节到了','春节将近，本商城的所有员工祝所有顾客，节日快乐，谢谢','2015-12-01 08:00:00'),(30,'五一节快乐','五一节即将来临，本商城将给员工发放500员奖金','2015-12-01 08:00:00'),(31,'父亲节快乐122','祝天下的父亲节日快乐','2015-12-01 08:00:00'),(32,'打折大行动开始啦','为庆祝本商城开业一周年，特定所有商品八八折，广大客户朋友们敬请光临','2015-12-01 08:00:00'),(33,'价格战已经打响','大部分商城的价格战已经开始了，我们的商城已经开始了','2015-12-01 08:00:00'),(34,'母亲节快乐','祝天下的母亲节日快乐','2015-12-01 08:00:00'),(35,'安全注意','最近不少黑客袭击本站点，现已报告警方，请客户朋友注意自己的交易安全','2015-12-01 08:00:00'),(36,'柜台出租','现有空余柜台3个，请有意者联系本商城','2015-12-01 08:00:00'),(37,'国庆节快乐','很快就国庆中秋啦，祝41131X班全体同学节日快乐。\r\n\r\n韩\r\n','2012-09-25 10:59:00'),(38,'更新后的E-Store发布','最新的更新系统已经正式上线，请各位同学下载。','2013-08-16 19:32:00');

/*Table structure for table `tb_category_branch` */

DROP TABLE IF EXISTS `tb_category_branch`;

CREATE TABLE `tb_category_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_main_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_category_branch_name` (`name`),
  KEY `main_branch_fk` (`category_main_id`),
  CONSTRAINT `main_branch_fk` FOREIGN KEY (`category_main_id`) REFERENCES `tb_category_main` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

/*Data for the table `tb_category_branch` */

insert  into `tb_category_branch`(`id`,`category_main_id`,`name`,`create_time`) values (54,18,'显示器','2016-05-12 22:12:00'),(55,17,'上衣','2016-05-12 22:12:00'),(56,16,'洗衣机','2016-05-12 22:12:00'),(57,16,'电视机','2016-05-12 22:12:00'),(58,20,'杯子','2016-05-12 22:12:00'),(59,19,'自行车','2016-05-12 22:12:00'),(60,20,'电动类','2016-05-12 22:12:00'),(61,17,'裤子','2016-05-12 22:12:00'),(62,17,'鞋子','2016-05-13 12:24:00'),(63,20,'锅','2016-05-23 21:12:00'),(64,20,'刀具','2016-05-23 21:12:00'),(65,20,'水壶','2016-05-23 21:12:00'),(66,21,'小饰物','2016-08-18 15:43:00');

/*Table structure for table `tb_category_main` */

DROP TABLE IF EXISTS `tb_category_main`;

CREATE TABLE `tb_category_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_category_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `tb_category_main` */

insert  into `tb_category_main`(`id`,`name`,`create_time`) values (16,'电器','2015-09-14 08:00:00'),(17,'服饰','2015-09-14 08:00:00'),(18,'计算机','2015-09-14 08:00:00'),(19,'交通工具','2015-09-14 08:00:00'),(20,'日用','2015-09-14 08:00:00'),(21,'玩具','2015-09-14 08:00:00');

/*Table structure for table `tb_link` */

DROP TABLE IF EXISTS `tb_link`;

CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(50) DEFAULT NULL,
  `link_URL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `tb_link` */

insert  into `tb_link`(`id`,`link_name`,`link_URL`) values (28,'淘宝','http://www.taobao.com/'),(29,'京东商城','http://www.360buy.com/'),(32,'当当网','http://www.home.dangdang.com/'),(34,'搜狐','http://www.sohu.com/'),(35,'苏宁易购','http://www.sunin.com/'),(37,'信息','http://www.njcit.cn'),(39,'qq','www.qq.cn'),(40,'njc','njcit.cn');

/*Table structure for table `tb_payment_mode` */

DROP TABLE IF EXISTS `tb_payment_mode`;

CREATE TABLE `tb_payment_mode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `payment_mode` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_payment_mode` */

insert  into `tb_payment_mode`(`id`,`name`,`payment_mode`) values (1,'快递','快递公司'),(2,'船运','上海货轮船运'),(3,'空运','港龙航空');

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_main_id` int(11) NOT NULL,
  `category_branch_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `producing_area` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `create_time` datetime NOT NULL,
  `market_price` decimal(10,2) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `sales_volume` int(11) NOT NULL,
  `picture` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `stock` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_branch_fk` (`category_branch_id`),
  KEY `product_mian_fk` (`category_main_id`),
  CONSTRAINT `product_branch_fk` FOREIGN KEY (`category_branch_id`) REFERENCES `tb_category_branch` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_mian_fk` FOREIGN KEY (`category_main_id`) REFERENCES `tb_category_main` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `tb_product` */

insert  into `tb_product`(`id`,`category_main_id`,`category_branch_id`,`name`,`producing_area`,`description`,`create_time`,`market_price`,`sell_price`,`sales_volume`,`picture`,`discount`,`stock`) values (2,16,57,'洗衣机','南京市洗衣机公司','该洗衣机','2015-12-01 08:00:00','1000.00','0.00',4,'1195001711750.jpg',0,0),(37,19,59,'大自行车','长春市*永自行车厂','该自行车适合与小学生使用','2015-12-01 08:00:00','500.00','0.00',0,'1195000845828.jpg',0,0),(38,18,54,'液晶显示器','长春市三科技有限公司','该液晶显示器的大小是17存','2015-12-01 08:00:00','1200.00','0.00',1,'1195001047171.jpg',0,0),(39,18,54,'液晶显示器','长春市三科技有限公司','该液晶显示器的大小是19存','2015-12-01 08:00:00','1500.00','0.00',1,'1195001141953.jpg',0,0),(40,17,55,'休闲','生产厂家：NIKE','该休闲装适合','2015-12-01 08:00:00','100.00','0.00',2,'1195001840844.jpg',0,0),(44,17,61,'运动鞋','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2015-12-01 08:00:00','300.00','200.00',4,'1195000845821.jpg',1,0),(46,17,62,'锐步Reebok男运动鞋','生产厂家：Reebok','锐步Reebok全球著名运动品牌.','2016-05-23 21:12:00','499.00','0.00',23,'1195000845822.jpg',0,0),(47,20,64,'十八子作雀之屏切片刀','生产厂家：十八子作','造型美观高雅，设计理念时尚，具有艺术感，是现代家庭时尚的选择','2016-05-23 21:12:00','120.00','100.00',8,'1195000845823.jpg',1,0),(48,20,63,'苏泊尔精铸富铁锅FC30E','生产厂家：苏泊尔','生铁铸造，铁质纯净，有益健康','2016-05-23 21:12:00','420.00','51.00',44,'1195000845824.jpg',1,0),(49,20,65,'爱仕达4L爵士电热水壶','生产厂家：爱仕达','壶身采用优质不锈钢基材，匠心设计，精工制作；','2016-05-23 21:12:00','300.00','0.00',31,'1195000845825.jpg',1,0),(50,17,55,'耐克NIKE男短袖针织衫','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2015-12-01 08:00:00','200.00','100.00',4,'1195000845826.jpg',1,0),(52,17,55,'耐克NIKE男短袖针织衫','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2016-05-23 21:12:00','288.00','0.00',43,'1195000845827.jpg',0,0),(53,17,61,'耐克NIKE女针织七分裤','生产厂家：NIKE','Nike全球最大的运动鞋品牌.','2016-05-23 21:12:00','399.00','0.00',66,'1195000845829.jpg',0,0),(54,17,62,'圣大保罗女凉鞋','生产厂家：圣大保罗','圣大保罗长久以来深受欧美众多名流、绅士的推崇和喜爱。','2016-05-23 21:12:00','400.00','100.00',64,'1195000845820.jpg',1,0),(55,17,62,'骆驼男皮鞋19784025棕色','生产厂家：骆驼','豪迈鞋业有限公司是集研发、设计、生产及市场营销职能于一体的产业实体','2016-05-23 21:12:00','600.00','100.00',124,'1195000845830.jpg',1,0),(56,20,65,'爱仕达不锈钢蒸锅JX1528','生产厂家：爱仕达','锅身采用优质不锈钢基材，坚固耐用，导热迅速，节能省时','2016-05-23 21:12:00','499.00','400.00',43,'1195000845831.jpg',1,0),(57,21,66,'猪猪','卡卡玩具','顶贴猪','2016-08-18 16:31:00','4.00','1.00',36,'pig.jpg',1,0),(59,21,66,'插入测试商品','这是插入测试商品生产产地','这是插入测试商品描述','2018-05-13 14:08:41','199.86','180.00',0,'pig.jpg',0,0),(60,21,66,'插入测试商品','这是插入测试商品生产产地','这是插入测试商品描述','2018-05-13 14:08:48','199.86','180.00',0,'pig.jpg',0,0);

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `realName` varchar(10) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwordQuestion` varchar(50) DEFAULT NULL,
  `passwordHintAnswer` varchar(50) DEFAULT NULL,
  `auth` int(11) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_name` (`userName`),
  UNIQUE KEY `unique_mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`userName`,`password`,`realName`,`mobile`,`email`,`passwordQuestion`,`passwordHintAnswer`,`auth`,`picture`) values (1,'user','user','user','15850504800','masters@163.com','email','163.com',0,'han.jpg'),(2,'admin','admin','张三','18900000000','habcnnn@njcit.cn','birthday','1997-10-1',1,'abc.jpg'),(3,'helloabc','helloabc','李四','15999999999','abc@sina.com','abc','abc',0,'common.GIF'),(4,'hello123','hello123','韩某人','15788888888','hanjh@sina.com','abcd','abcd',1,'common.GIF'),(5,'abcd1234','abcdabcd','中国人','15802342342','a@sina.com','a','a',1,'common.GIF'),(7,'ab331234','abcdabcd','中国国','13902323223','a@sina.com','a','abc',0,'common.GIF'),(8,'a1234342','aaaaaaaa','男人','13708909809','a@sina.com','bat','bat',1,'common.GIF'),(9,'hello144','abcdabcd','张三','13988676767','AFASDFSDF@163.com','abc','abc',1,'common.GIF'),(10,'lililili','abcdabcd','中国人','13409090909','a@sina.com','abc','abc',1,'common.GIF'),(11,'abcd2324','abcdabcd','中国人','15834534534','masters@163.com','hello','hello',1,'common.GIF'),(12,'adminabc','abcdabcd','中国人','17645645645','abc@sina.com','abcdab','abcd',0,'common.GIF'),(13,'abc','abc','abc','110','abc@sina.com','abc','abc',1,NULL),(14,'abcd','abcd','abcd','111','abc@sina.com','abc','abc',0,NULL),(15,'hello','hello','hello','15160706991','abcd@163.com','abcd','abcd',0,NULL);

/*Table structure for table `tb_user_cart` */

DROP TABLE IF EXISTS `tb_user_cart`;

CREATE TABLE `tb_user_cart` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `product_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`user_id`),
  KEY `FK_tb_user_cart_2` (`user_id`),
  CONSTRAINT `FK_tb_user_cart` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`),
  CONSTRAINT `FK_tb_user_cart_2` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_user_cart` */

insert  into `tb_user_cart`(`product_id`,`user_id`,`price`,`product_name`,`create_time`,`number`) values (2,2,'1000.00','洗衣机','2016-11-20 19:19:45',3);

/*Table structure for table `tb_user_spring` */

DROP TABLE IF EXISTS `tb_user_spring`;

CREATE TABLE `tb_user_spring` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) COLLATE utf8_bin NOT NULL,
  `password` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tb_user_spring` */

insert  into `tb_user_spring`(`id`,`username`,`password`) values (14,'hello1','hello'),(16,'张张','hello'),(17,'a','a'),(19,'abcdef','abcdef'),(20,'han','han'),(22,'abcd','abcd'),(23,'bc','bc');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
