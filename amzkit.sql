/*
Navicat MySQL Data Transfer

Source Server         : 0.1
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : amzkit

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-03-23 17:22:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `akvpn`
-- ----------------------------
DROP TABLE IF EXISTS `akvpn`;
CREATE TABLE `akvpn` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(5) DEFAULT NULL,
  `VpnName` varchar(30) DEFAULT NULL,
  `VpnServer` varchar(20) DEFAULT NULL,
  `VpnUser` varchar(20) DEFAULT NULL,
  `VpnPswd` varchar(50) DEFAULT NULL,
  `VpnStatus` char(1) NOT NULL DEFAULT 'N',
  `VpnIp1` varchar(20) DEFAULT NULL,
  `VpnIp2` varchar(20) DEFAULT NULL,
  `VpnType` char(1) NOT NULL DEFAULT 'R',
  PRIMARY KEY (`ID`),
  KEY `IX_N` (`Country`,`VpnName`,`VpnServer`,`VpnUser`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of akvpn
-- ----------------------------
INSERT INTO `akvpn` VALUES ('13', 'UK', 'envee', 'test456', 'tesr', '123456', 'Y', '192.168.1.100', '192.168.1.255', 'F');
INSERT INTO `akvpn` VALUES ('15', 'ES', 'ss', 'sss', 'sesd', 'ddd', 'N', '192.168.1.100', '192.168.1.255', 'F');
INSERT INTO `akvpn` VALUES ('16', 'UK', '11ppo', 'test456', 'username', '22', 'Y', '192.168.1.100', '192.168.1.255', 'F');
INSERT INTO `akvpn` VALUES ('17', 'ED', 'er', 'ss', 'ddf', 'ert', 'N', '123.0.9.8', '123.0.9.100', 'R');
INSERT INTO `akvpn` VALUES ('19', 'US', 'erts', 'rert', 'erg', 'eert', 'N', '192.158.1.0', '192.168.100', 'U');
INSERT INTO `akvpn` VALUES ('20', 'US', 'sert1', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('21', 'US', 'sert2', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('22', 'US', 'sert3', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('23', 'US', 'sert4', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('24', 'US', 'sert5', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('25', 'US', 'sert6', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('26', 'US', 'sert7', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('27', 'US', 'sert8', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('28', 'US', 'sert8', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('29', 'US', 'sert9', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('30', 'US', 'sert23', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('31', 'US', 'sert234', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('32', 'US', 'sert34', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('33', 'US', 'sert345', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('34', 'US', 'sert56', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('35', 'US', 'sert67', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('36', 'US', 'sert67', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('37', 'US', 'sertw', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('38', 'US', '76swr', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('39', 'US', 'sertwe', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('40', 'US', 'sertrt', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('41', 'US', 'sertdr', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('42', 'US', 'sert', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('43', 'US', 'sertdfgt', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('44', 'US', 'sertg', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('45', 'US', 'sertv', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('46', 'US', 'serth', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('47', 'US', 'sertt', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('48', 'US', 'sertg', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('49', 'US', 'serth', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('50', 'EN', 'sertt', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('51', 'ED', 'sertht', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('52', 'ED', 'serth', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('53', 'TRSAS', 'serty', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('54', 'TREXD', 'sertu', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('55', 'RRRRE', 'sertt', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
INSERT INTO `akvpn` VALUES ('56', 'JS', 'sert', 'rest', 'ertrh', 'ert', 'N', '192.168.1.1', '192.168.1.100', 'U');
