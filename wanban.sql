/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : wanban

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2019-01-13 14:26:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `admin_pass` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'wanbanAdmin', 'e3ceb5881a0a1fdaad01296d7554868d');

-- ----------------------------
-- Table structure for `admire`
-- ----------------------------
DROP TABLE IF EXISTS `admire`;
CREATE TABLE `admire` (
  `admire_id` int(11) NOT NULL AUTO_INCREMENT,
  `admired_user_id` int(11) DEFAULT NULL COMMENT '被点赞的人的id',
  `admire_user_id` int(11) DEFAULT NULL COMMENT '点赞的人的id',
  PRIMARY KEY (`admire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of admire
-- ----------------------------

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` varchar(500) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `question_time` datetime DEFAULT NULL,
  `question_status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('2', '继续测试', '2018-01-23 09:39:41', '1', '1');

-- ----------------------------
-- Table structure for `firstlevel`
-- ----------------------------
DROP TABLE IF EXISTS `firstlevel`;
CREATE TABLE `firstlevel` (
  `firstId` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级分类的id',
  `firstName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `firstImageName` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`firstId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of firstlevel
-- ----------------------------
INSERT INTO `firstlevel` VALUES ('1', '运动1', '20180120055231.jpg');
INSERT INTO `firstlevel` VALUES ('2', '健身', '20180120055222.jpg');
INSERT INTO `firstlevel` VALUES ('3', '游戏', '20180120055212.jpg');

-- ----------------------------
-- Table structure for `place`
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `place_id` int(11) NOT NULL AUTO_INCREMENT,
  `place_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '场所名称',
  `place_sports` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '可运动的项目',
  `place_level` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL COMMENT '评价（A级、B级....）',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('1', '广东东软学院运动场', '跑步、足球', 'A级', '112.211', '110.011');

-- ----------------------------
-- Table structure for `releases`
-- ----------------------------
DROP TABLE IF EXISTS `releases`;
CREATE TABLE `releases` (
  `release_id` int(11) NOT NULL AUTO_INCREMENT,
  `release_time` datetime DEFAULT NULL,
  `sport_time` datetime DEFAULT NULL,
  `sport_place` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `types` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`release_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of releases
-- ----------------------------
INSERT INTO `releases` VALUES ('2', '2018-01-24 17:25:58', '2018-01-24 19:26:02', '东软运动场', '健身', '0', '1');
INSERT INTO `releases` VALUES ('3', '2018-01-24 17:26:42', '2018-01-24 21:26:47', '阳光在线广场', '购物', '1', '1');

-- ----------------------------
-- Table structure for `secondlevel`
-- ----------------------------
DROP TABLE IF EXISTS `secondlevel`;
CREATE TABLE `secondlevel` (
  `second_id` int(11) NOT NULL AUTO_INCREMENT,
  `second_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `second_image_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `firstId` int(11) NOT NULL,
  PRIMARY KEY (`second_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of secondlevel
-- ----------------------------
INSERT INTO `secondlevel` VALUES ('7', '地方大', '20180808013359.jpg', '1');
INSERT INTO `secondlevel` VALUES ('8', '地方', '20180808014054.jpg', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `hobby` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `admire_count` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张三', '123456', null, null, null, null, null, null, null, null, null, null, '0');
