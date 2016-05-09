/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-05-09 16:50:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for order_code
-- ----------------------------
DROP TABLE IF EXISTS `order_code`;
CREATE TABLE `order_code` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_code` varchar(225) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `timeline` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
