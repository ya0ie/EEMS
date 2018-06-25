/*
Navicat MySQL Data Transfer

Source Server         : aaaa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : eedb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-25 09:07:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(8) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `realname` varchar(8) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(12) DEFAULT NULL,
  `salary` double(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', '0001', '0001', '张文浩', '20', '男', '19970708', '2266.00');
INSERT INTO `emp` VALUES ('2', '0002', '0002', '刘震', '20', '男', '19970708', '2266.00');
INSERT INTO `emp` VALUES ('3', '0003', '0003', '孙彤', '20', '男', '19970708', '2266.00');
INSERT INTO `emp` VALUES ('4', '0004', '0004', '徐飞', '20', '男', '19970708', '2266.00');
