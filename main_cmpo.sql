/*
 Navicat Premium Data Transfer

 Source Server         : MySQL8
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3300
 Source Schema         : newcockpit

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 04/08/2020 11:32:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_cmpo
-- ----------------------------
DROP TABLE IF EXISTS `main_cmpo`;
CREATE TABLE `main_cmpo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `population` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_cmpo
-- ----------------------------
INSERT INTO `main_cmpo` VALUES (1, 'Muang Chumphon', 115071);
INSERT INTO `main_cmpo` VALUES (2, 'Thasae', 73203);
INSERT INTO `main_cmpo` VALUES (3, 'Phathui', 36750);
INSERT INTO `main_cmpo` VALUES (4, 'Langsuan', 53347);
INSERT INTO `main_cmpo` VALUES (5, 'Lamae', 22815);
INSERT INTO `main_cmpo` VALUES (6, 'Phatho', 20730);
INSERT INTO `main_cmpo` VALUES (7, 'Sawee', 60273);
INSERT INTO `main_cmpo` VALUES (8, 'Thungtago', 19688);

SET FOREIGN_KEY_CHECKS = 1;
