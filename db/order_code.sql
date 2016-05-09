/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2016-05-09 11:54:42
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_code
-- ----------------------------
INSERT INTO `order_code` VALUES ('1', '123456789', '0', '201586952');
INSERT INTO `order_code` VALUES ('2', '1462763068fd2ce4cc5d', '0', '1462763068');
INSERT INTO `order_code` VALUES ('3', '1462763080ffe5dedf52', '0', '1462763080');
INSERT INTO `order_code` VALUES ('4', '1462763100ag2a22a44a', '0', '1462763100');
INSERT INTO `order_code` VALUES ('5', '1462763120gceefcd54g', '0', '1462763120');
INSERT INTO `order_code` VALUES ('6', '1462763140g2efd4ddgb', '0', '1462763140');
INSERT INTO `order_code` VALUES ('7', '1462763160gcafa44dga', '0', '1462763160');
INSERT INTO `order_code` VALUES ('8', '146276318045bbf4bb45', '0', '1462763180');
INSERT INTO `order_code` VALUES ('9', '1462763200fcfgcaacdd', '0', '1462763200');
INSERT INTO `order_code` VALUES ('10', '14627632202d5bbcba42', '0', '1462763220');
INSERT INTO `order_code` VALUES ('11', '1462763240fc5eaa4dfc', '0', '1462763240');
INSERT INTO `order_code` VALUES ('12', '14627645462fccaa2ef2', '0', '1462764546');
INSERT INTO `order_code` VALUES ('13', '1462764560cffebcagbc', '0', '1462764560');
INSERT INTO `order_code` VALUES ('14', '14627645802g4b4dg5dd', '0', '1462764580');
INSERT INTO `order_code` VALUES ('15', '14627646005g2ebfgfeb', '0', '1462764600');
INSERT INTO `order_code` VALUES ('16', '14627646202e4gaacfc2', '0', '1462764620');
INSERT INTO `order_code` VALUES ('17', '14627646402f4g2a2c2c', '0', '1462764640');
INSERT INTO `order_code` VALUES ('18', '1462764680gf4555gga5', '0', '1462764680');
INSERT INTO `order_code` VALUES ('19', '14627647005222db44a2', '0', '1462764700');
INSERT INTO `order_code` VALUES ('20', '1462764720cga2gc4ad5', '0', '1462764720');
INSERT INTO `order_code` VALUES ('21', '1462764740acabcabag4', '0', '1462764740');
INSERT INTO `order_code` VALUES ('22', '14627647602cfdfag2d4', '0', '1462764760');
INSERT INTO `order_code` VALUES ('23', '146276478042egeadgda', '0', '1462764780');
INSERT INTO `order_code` VALUES ('24', '1462764831f2bf5da25c', '0', '1462764831');
INSERT INTO `order_code` VALUES ('25', '146276484054fdde5faf', '0', '1462764840');
INSERT INTO `order_code` VALUES ('26', '1462764860b5afc5df44', '0', '1462764860');
INSERT INTO `order_code` VALUES ('27', '1462764880ee2dfge242', '0', '1462764880');
INSERT INTO `order_code` VALUES ('28', '1462764900ed2fdcdcgb', '0', '1462764900');
INSERT INTO `order_code` VALUES ('29', '1462764920afeafdd25c', '0', '1462764920');
INSERT INTO `order_code` VALUES ('30', '14627649405db545effa', '0', '1462764940');
INSERT INTO `order_code` VALUES ('31', '1462764960gdade4ad5c', '0', '1462764960');
INSERT INTO `order_code` VALUES ('32', '1462764980422dfcgfef', '0', '1462764980');
INSERT INTO `order_code` VALUES ('33', '14627650025a22gfc4ed', '0', '1462765002');
INSERT INTO `order_code` VALUES ('34', '1462765020f2g2aeea5f', '0', '1462765020');
INSERT INTO `order_code` VALUES ('35', '1462765040ba2gd55aca', '0', '1462765040');
INSERT INTO `order_code` VALUES ('36', '1462765060f5gebg5cgb', '0', '1462765060');
INSERT INTO `order_code` VALUES ('37', '1462765080g44bba5gg2', '0', '1462765080');
INSERT INTO `order_code` VALUES ('38', '1462765100f4acbdfgbf', '0', '1462765100');
INSERT INTO `order_code` VALUES ('39', '14627651202afg2d55ag', '0', '1462765120');
INSERT INTO `order_code` VALUES ('40', '1462765140ba52e5db4a', '0', '1462765140');
INSERT INTO `order_code` VALUES ('41', '1462765160ba4gbg4ge4', '0', '1462765160');
INSERT INTO `order_code` VALUES ('42', '1462765180e524fc5fgb', '0', '1462765180');
INSERT INTO `order_code` VALUES ('43', '1462765774c252a2egf4', '0', '1462765775');
INSERT INTO `order_code` VALUES ('44', '14627659465gfbb2acb2', '0', '1462765946');
INSERT INTO `order_code` VALUES ('45', '14627659604eb2cdagf2', '0', '1462765960');
INSERT INTO `order_code` VALUES ('46', '1462765980abg4fde5c4', '0', '1462765980');
INSERT INTO `order_code` VALUES ('47', '1462766000c44fdbf52c', '0', '1462766000');
INSERT INTO `order_code` VALUES ('48', '146276602055aagdb2g2', '0', '1462766020');
INSERT INTO `order_code` VALUES ('49', '1462766040dfc2de4ef2', '0', '1462766040');
INSERT INTO `order_code` VALUES ('50', '1462766060g5ffaaac2b', '0', '1462766060');
INSERT INTO `order_code` VALUES ('51', '1462766080aga5c254ac', '0', '1462766080');
