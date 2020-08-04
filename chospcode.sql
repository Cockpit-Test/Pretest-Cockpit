/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.30.102-157
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : 172.16.30.102:3306
 Source Schema         : copy_cockpit11

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 04/08/2020 11:38:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chospcode
-- ----------------------------
DROP TABLE IF EXISTS `chospcode`;
CREATE TABLE `chospcode`  (
  `hospcode` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mu` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subdistcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ampcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provcode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cupcode` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hospcode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chospcode
-- ----------------------------
INSERT INTO `chospcode` VALUES ('00062', 'สสจ.นครศรีธรรมราช', NULL, NULL, NULL, '80', '00000');
INSERT INTO `chospcode` VALUES ('00063', 'สสจ.กระบี่', NULL, NULL, NULL, '81', '00000');
INSERT INTO `chospcode` VALUES ('00064', 'สสจ.พังงา', NULL, NULL, NULL, '82', '00000');
INSERT INTO `chospcode` VALUES ('00065', 'สสจ.ภูเก็ต', NULL, NULL, NULL, '83', '00000');
INSERT INTO `chospcode` VALUES ('00066', 'สสจ.สุราษฎร์ธานี', NULL, NULL, NULL, '84', '00000');
INSERT INTO `chospcode` VALUES ('00067', 'สสจ.ระนอง', NULL, NULL, NULL, '85', '00000');
INSERT INTO `chospcode` VALUES ('00068', 'สสจ.ชุมพร', NULL, NULL, NULL, '86', '00000');

SET FOREIGN_KEY_CHECKS = 1;
