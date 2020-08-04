/*
 Navicat Premium Data Transfer

 Source Server         : Local Mysql 8
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3300
 Source Schema         : cockpit

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 03/08/2020 21:50:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add chospcode', 7, 'add_chospcode');
INSERT INTO `auth_permission` VALUES (26, 'Can change chospcode', 7, 'change_chospcode');
INSERT INTO `auth_permission` VALUES (27, 'Can delete chospcode', 7, 'delete_chospcode');
INSERT INTO `auth_permission` VALUES (28, 'Can view chospcode', 7, 'view_chospcode');
INSERT INTO `auth_permission` VALUES (29, 'Can add city', 8, 'add_city');
INSERT INTO `auth_permission` VALUES (30, 'Can change city', 8, 'change_city');
INSERT INTO `auth_permission` VALUES (31, 'Can delete city', 8, 'delete_city');
INSERT INTO `auth_permission` VALUES (32, 'Can view city', 8, 'view_city');
INSERT INTO `auth_permission` VALUES (33, 'Can add cmpo', 9, 'add_cmpo');
INSERT INTO `auth_permission` VALUES (34, 'Can change cmpo', 9, 'change_cmpo');
INSERT INTO `auth_permission` VALUES (35, 'Can delete cmpo', 9, 'delete_cmpo');
INSERT INTO `auth_permission` VALUES (36, 'Can view cmpo', 9, 'view_cmpo');
INSERT INTO `auth_permission` VALUES (37, 'Can add country', 10, 'add_country');
INSERT INTO `auth_permission` VALUES (38, 'Can change country', 10, 'change_country');
INSERT INTO `auth_permission` VALUES (39, 'Can delete country', 10, 'delete_country');
INSERT INTO `auth_permission` VALUES (40, 'Can view country', 10, 'view_country');
INSERT INTO `auth_permission` VALUES (41, 'Can add dep', 11, 'add_dep');
INSERT INTO `auth_permission` VALUES (42, 'Can change dep', 11, 'change_dep');
INSERT INTO `auth_permission` VALUES (43, 'Can delete dep', 11, 'delete_dep');
INSERT INTO `auth_permission` VALUES (44, 'Can view dep', 11, 'view_dep');
INSERT INTO `auth_permission` VALUES (45, 'Can add group', 12, 'add_group');
INSERT INTO `auth_permission` VALUES (46, 'Can change group', 12, 'change_group');
INSERT INTO `auth_permission` VALUES (47, 'Can delete group', 12, 'delete_group');
INSERT INTO `auth_permission` VALUES (48, 'Can view group', 12, 'view_group');
INSERT INTO `auth_permission` VALUES (49, 'Can add kpi_eval_prov', 13, 'add_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (50, 'Can change kpi_eval_prov', 13, 'change_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (51, 'Can delete kpi_eval_prov', 13, 'delete_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (52, 'Can view kpi_eval_prov', 13, 'view_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (53, 'Can add kpi_eval_rh', 14, 'add_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (54, 'Can change kpi_eval_rh', 14, 'change_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (55, 'Can delete kpi_eval_rh', 14, 'delete_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (56, 'Can view kpi_eval_rh', 14, 'view_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (57, 'Can add kpi_hosp', 15, 'add_kpi_hosp');
INSERT INTO `auth_permission` VALUES (58, 'Can change kpi_hosp', 15, 'change_kpi_hosp');
INSERT INTO `auth_permission` VALUES (59, 'Can delete kpi_hosp', 15, 'delete_kpi_hosp');
INSERT INTO `auth_permission` VALUES (60, 'Can view kpi_hosp', 15, 'view_kpi_hosp');
INSERT INTO `auth_permission` VALUES (61, 'Can add kpi_index', 16, 'add_kpi_index');
INSERT INTO `auth_permission` VALUES (62, 'Can change kpi_index', 16, 'change_kpi_index');
INSERT INTO `auth_permission` VALUES (63, 'Can delete kpi_index', 16, 'delete_kpi_index');
INSERT INTO `auth_permission` VALUES (64, 'Can view kpi_index', 16, 'view_kpi_index');
INSERT INTO `auth_permission` VALUES (65, 'Can add kpi_index_ old', 17, 'add_kpi_index_old');
INSERT INTO `auth_permission` VALUES (66, 'Can change kpi_index_ old', 17, 'change_kpi_index_old');
INSERT INTO `auth_permission` VALUES (67, 'Can delete kpi_index_ old', 17, 'delete_kpi_index_old');
INSERT INTO `auth_permission` VALUES (68, 'Can view kpi_index_ old', 17, 'view_kpi_index_old');
INSERT INTO `auth_permission` VALUES (69, 'Can add pk_byear', 18, 'add_pk_byear');
INSERT INTO `auth_permission` VALUES (70, 'Can change pk_byear', 18, 'change_pk_byear');
INSERT INTO `auth_permission` VALUES (71, 'Can delete pk_byear', 18, 'delete_pk_byear');
INSERT INTO `auth_permission` VALUES (72, 'Can view pk_byear', 18, 'view_pk_byear');
INSERT INTO `auth_permission` VALUES (73, 'Can add กลุ่มงาน', 19, 'add_reponse_kpi');
INSERT INTO `auth_permission` VALUES (74, 'Can change กลุ่มงาน', 19, 'change_reponse_kpi');
INSERT INTO `auth_permission` VALUES (75, 'Can delete กลุ่มงาน', 19, 'delete_reponse_kpi');
INSERT INTO `auth_permission` VALUES (76, 'Can view กลุ่มงาน', 19, 'view_reponse_kpi');
INSERT INTO `auth_permission` VALUES (77, 'Can add จังหวัด', 20, 'add_ssj');
INSERT INTO `auth_permission` VALUES (78, 'Can change จังหวัด', 20, 'change_ssj');
INSERT INTO `auth_permission` VALUES (79, 'Can delete จังหวัด', 20, 'delete_ssj');
INSERT INTO `auth_permission` VALUES (80, 'Can view จังหวัด', 20, 'view_ssj');
INSERT INTO `auth_permission` VALUES (81, 'Can add trole', 21, 'add_trole');
INSERT INTO `auth_permission` VALUES (82, 'Can change trole', 21, 'change_trole');
INSERT INTO `auth_permission` VALUES (83, 'Can delete trole', 21, 'delete_trole');
INSERT INTO `auth_permission` VALUES (84, 'Can view trole', 21, 'view_trole');
INSERT INTO `auth_permission` VALUES (85, 'Can add task', 22, 'add_task');
INSERT INTO `auth_permission` VALUES (86, 'Can change task', 22, 'change_task');
INSERT INTO `auth_permission` VALUES (87, 'Can delete task', 22, 'delete_task');
INSERT INTO `auth_permission` VALUES (88, 'Can view task', 22, 'view_task');
INSERT INTO `auth_permission` VALUES (89, 'Can add profile', 23, 'add_profile');
INSERT INTO `auth_permission` VALUES (90, 'Can change profile', 23, 'change_profile');
INSERT INTO `auth_permission` VALUES (91, 'Can delete profile', 23, 'delete_profile');
INSERT INTO `auth_permission` VALUES (92, 'Can view profile', 23, 'view_profile');
INSERT INTO `auth_permission` VALUES (93, 'Can add person', 24, 'add_person');
INSERT INTO `auth_permission` VALUES (94, 'Can change person', 24, 'change_person');
INSERT INTO `auth_permission` VALUES (95, 'Can delete person', 24, 'delete_person');
INSERT INTO `auth_permission` VALUES (96, 'Can view person', 24, 'view_person');
INSERT INTO `auth_permission` VALUES (97, 'Can add kpi_prov', 25, 'add_kpi_prov');
INSERT INTO `auth_permission` VALUES (98, 'Can change kpi_prov', 25, 'change_kpi_prov');
INSERT INTO `auth_permission` VALUES (99, 'Can delete kpi_prov', 25, 'delete_kpi_prov');
INSERT INTO `auth_permission` VALUES (100, 'Can view kpi_prov', 25, 'view_kpi_prov');
INSERT INTO `auth_permission` VALUES (101, 'Can add kpi_input', 26, 'add_kpi_input');
INSERT INTO `auth_permission` VALUES (102, 'Can change kpi_input', 26, 'change_kpi_input');
INSERT INTO `auth_permission` VALUES (103, 'Can delete kpi_input', 26, 'delete_kpi_input');
INSERT INTO `auth_permission` VALUES (104, 'Can view kpi_input', 26, 'view_kpi_input');
INSERT INTO `auth_permission` VALUES (105, 'Can add ตัวชี้วัด KPI', 27, 'add_kpi');
INSERT INTO `auth_permission` VALUES (106, 'Can change ตัวชี้วัด KPI', 27, 'change_kpi');
INSERT INTO `auth_permission` VALUES (107, 'Can delete ตัวชี้วัด KPI', 27, 'delete_kpi');
INSERT INTO `auth_permission` VALUES (108, 'Can view ตัวชี้วัด KPI', 27, 'view_kpi');
INSERT INTO `auth_permission` VALUES (109, 'Can add บันทึก KPI', 28, 'add_keyinput');
INSERT INTO `auth_permission` VALUES (110, 'Can change บันทึก KPI', 28, 'change_keyinput');
INSERT INTO `auth_permission` VALUES (111, 'Can delete บันทึก KPI', 28, 'delete_keyinput');
INSERT INTO `auth_permission` VALUES (112, 'Can view บันทึก KPI', 28, 'view_keyinput');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$9ZnAMXD6cAag$oqyC+6WIrxAzSFivhiiiHGKsMIyBC3LD/b2peUOH4ZM=', '2020-08-03 12:54:38.807636', 1, 'admin', '', '', 'joblackpoc@gmail.com', 1, 1, '2020-08-03 12:54:00.337574');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(0) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-08-03 13:42:45.298459', '1', 'เมืองชุมพร', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-08-03 13:42:56.986372', '2', 'ท่าแซะ', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-08-03 13:43:08.893559', '3', 'ปะทิว', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-08-03 13:43:21.542694', '4', 'หลังสวน', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-08-03 13:43:29.988232', '5', 'ละแม', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-08-03 13:43:40.714416', '6', 'พะโต๊ะ', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-08-03 13:43:53.921645', '7', 'สวี', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-08-03 13:44:18.801992', '8', 'ทุ่งตะโก', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2020-08-03 14:21:33.217926', '8', 'Thungtago', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2020-08-03 14:21:42.088678', '7', 'Sawee', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2020-08-03 14:21:51.014351', '6', 'Phatho', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (12, '2020-08-03 14:21:59.036985', '5', 'Lamae', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (13, '2020-08-03 14:22:09.876056', '4', 'Langsuan', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (14, '2020-08-03 14:22:21.569390', '3', 'Phathui', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (15, '2020-08-03 14:22:31.268284', '2', 'Thasae', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (16, '2020-08-03 14:22:44.252644', '1', 'Muang Chumphon', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 9, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'main', 'chospcode');
INSERT INTO `django_content_type` VALUES (8, 'main', 'city');
INSERT INTO `django_content_type` VALUES (9, 'main', 'cmpo');
INSERT INTO `django_content_type` VALUES (10, 'main', 'country');
INSERT INTO `django_content_type` VALUES (11, 'main', 'dep');
INSERT INTO `django_content_type` VALUES (12, 'main', 'group');
INSERT INTO `django_content_type` VALUES (28, 'main', 'keyinput');
INSERT INTO `django_content_type` VALUES (27, 'main', 'kpi');
INSERT INTO `django_content_type` VALUES (13, 'main', 'kpi_eval_prov');
INSERT INTO `django_content_type` VALUES (14, 'main', 'kpi_eval_rh');
INSERT INTO `django_content_type` VALUES (15, 'main', 'kpi_hosp');
INSERT INTO `django_content_type` VALUES (16, 'main', 'kpi_index');
INSERT INTO `django_content_type` VALUES (17, 'main', 'kpi_index_old');
INSERT INTO `django_content_type` VALUES (26, 'main', 'kpi_input');
INSERT INTO `django_content_type` VALUES (25, 'main', 'kpi_prov');
INSERT INTO `django_content_type` VALUES (24, 'main', 'person');
INSERT INTO `django_content_type` VALUES (18, 'main', 'pk_byear');
INSERT INTO `django_content_type` VALUES (23, 'main', 'profile');
INSERT INTO `django_content_type` VALUES (19, 'main', 'reponse_kpi');
INSERT INTO `django_content_type` VALUES (20, 'main', 'ssj');
INSERT INTO `django_content_type` VALUES (22, 'main', 'task');
INSERT INTO `django_content_type` VALUES (21, 'main', 'trole');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-03 12:53:23.829458');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-08-03 12:53:23.998362');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-08-03 12:53:24.500436');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-08-03 12:53:24.636332');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-03 12:53:24.644339');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-08-03 12:53:24.757262');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-08-03 12:53:24.814229');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-08-03 12:53:24.897181');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-08-03 12:53:24.905177');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-08-03 12:53:24.985132');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-08-03 12:53:24.989129');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-03 12:53:25.000122');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-08-03 12:53:25.097434');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-03 12:53:25.180386');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-08-03 12:53:25.268335');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-08-03 12:53:25.277340');
INSERT INTO `django_migrations` VALUES (17, 'main', '0001_initial', '2020-08-03 12:53:26.024906');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2020-08-03 12:53:26.941381');
INSERT INTO `django_migrations` VALUES (19, 'main', '0002_auto_20200803_2116', '2020-08-03 14:16:32.127056');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('ryp88uh3yj6jq2c5o067q4hsccifumsa', 'MzJkNzg4NTg1NzA4OGJkMzFhMDI5OTVhZWNmMGIzNzAzMjg0ZGMyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiZjdlODU1MDIxMzQ2NjE0OTY5ZWI3NWU1NWM4ZmM3NmEyNWY1MzE0In0=', '2020-08-17 12:54:38.811640');

-- ----------------------------
-- Table structure for main_chospcode
-- ----------------------------
DROP TABLE IF EXISTS `main_chospcode`;
CREATE TABLE `main_chospcode`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mu` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subdistcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ampcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cupcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_chospcode
-- ----------------------------

-- ----------------------------
-- Table structure for main_city
-- ----------------------------
DROP TABLE IF EXISTS `main_city`;
CREATE TABLE `main_city`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_city_country_id_df1a0601_fk_main_country_id`(`country_id`) USING BTREE,
  CONSTRAINT `main_city_country_id_df1a0601_fk_main_country_id` FOREIGN KEY (`country_id`) REFERENCES `main_country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_city
-- ----------------------------

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

-- ----------------------------
-- Table structure for main_country
-- ----------------------------
DROP TABLE IF EXISTS `main_country`;
CREATE TABLE `main_country`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_country
-- ----------------------------

-- ----------------------------
-- Table structure for main_dep
-- ----------------------------
DROP TABLE IF EXISTS `main_dep`;
CREATE TABLE `main_dep`  (
  `DEPTID` int(0) NOT NULL,
  `DEPTNAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPTNAMEnew` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstaus` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstatustime` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob_old` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`DEPTID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_dep
-- ----------------------------

-- ----------------------------
-- Table structure for main_group
-- ----------------------------
DROP TABLE IF EXISTS `main_group`;
CREATE TABLE `main_group`  (
  `group_id` int(0) NOT NULL,
  `group_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_group
-- ----------------------------

-- ----------------------------
-- Table structure for main_keyinput
-- ----------------------------
DROP TABLE IF EXISTS `main_keyinput`;
CREATE TABLE `main_keyinput`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `year` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a1` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a2` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b2` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a3` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b3` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a4` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b4` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a5` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b5` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a6` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b6` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a7` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b7` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a8` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b8` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a9` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b9` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a10` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b10` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a11` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b11` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a12` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b12` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_update` datetime(6) NOT NULL,
  `hospcode_id` int(0) NOT NULL,
  `kpi_id` int(0) NOT NULL,
  `response_id` int(0) NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id`(`hospcode_id`) USING BTREE,
  INDEX `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id`(`kpi_id`) USING BTREE,
  INDEX `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id`(`response_id`) USING BTREE,
  INDEX `main_keyinput_user_id_00f116de_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id` FOREIGN KEY (`hospcode_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id` FOREIGN KEY (`kpi_id`) REFERENCES `main_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id` FOREIGN KEY (`response_id`) REFERENCES `main_reponse_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_user_id_00f116de_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_keyinput
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi`;
CREATE TABLE `main_kpi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_group` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_group_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal_descript` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cri_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_kpi_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kpi_code`(`kpi_code`) USING BTREE,
  INDEX `main_kpi_response_kpi_id_38bc94ea_fk_main_reponse_kpi_id`(`response_kpi_id`) USING BTREE,
  CONSTRAINT `main_kpi_response_kpi_id_38bc94ea_fk_main_reponse_kpi_id` FOREIGN KEY (`response_kpi_id`) REFERENCES `main_reponse_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_eval_prov
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_prov`;
CREATE TABLE `main_kpi_eval_prov`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_eval_prov
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_eval_rh
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_rh`;
CREATE TABLE `main_kpi_eval_rh`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_eval_rh
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_hosp
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_hosp`;
CREATE TABLE `main_kpi_hosp`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_hosp
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_index
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_index`;
CREATE TABLE `main_kpi_index`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cri_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hdc` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `kpi_year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `success_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_kpi_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `static_target` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kpi_formular` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kpi_formular_script` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `c` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `d` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `e` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `f` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pa` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_kpi` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `target` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_index
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_index_old
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_index_old`;
CREATE TABLE `main_kpi_index_old`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cri_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hdc` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `respon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `success_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_kpi_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `static_target` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_formular` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_formular_script` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pa` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_kpi` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_index_old
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_input
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_input`;
CREATE TABLE `main_kpi_input`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_month` date NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `a1` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a2` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b2` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a3` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b3` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a4` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b4` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a5` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b5` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a6` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b6` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a7` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b7` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a8` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b8` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a9` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b9` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a10` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b10` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a11` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b11` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a12` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b12` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_value` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_update` datetime(6) NOT NULL,
  `input_date` datetime(6) NOT NULL,
  `kpi_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_kpi_input_kpi_id_id_7c7a0f27_fk_main_kpi_index_id`(`kpi_id_id`) USING BTREE,
  CONSTRAINT `main_kpi_input_kpi_id_id_7c7a0f27_fk_main_kpi_index_id` FOREIGN KEY (`kpi_id_id`) REFERENCES `main_kpi_index` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_input
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_prov
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_prov`;
CREATE TABLE `main_kpi_prov`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` decimal(19, 2) NOT NULL,
  `a1` decimal(19, 2) NOT NULL,
  `p1` decimal(19, 2) NOT NULL,
  `b2` decimal(19, 2) NOT NULL,
  `a2` decimal(19, 2) NOT NULL,
  `p2` decimal(19, 2) NOT NULL,
  `b3` decimal(19, 2) NOT NULL,
  `a3` decimal(19, 2) NOT NULL,
  `p3` decimal(19, 2) NOT NULL,
  `b4` decimal(19, 2) NOT NULL,
  `a4` decimal(19, 2) NOT NULL,
  `p4` decimal(19, 2) NOT NULL,
  `bt` decimal(19, 2) NOT NULL,
  `at` decimal(19, 2) NOT NULL,
  `pt` decimal(19, 2) NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  `kpi_id_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_kpi_prov_kpi_id_id_9a8d52b3_fk_main_kpi_index_id`(`kpi_id_id`) USING BTREE,
  CONSTRAINT `main_kpi_prov_kpi_id_id_9a8d52b3_fk_main_kpi_index_id` FOREIGN KEY (`kpi_id_id`) REFERENCES `main_kpi_index` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_prov
-- ----------------------------

-- ----------------------------
-- Table structure for main_person
-- ----------------------------
DROP TABLE IF EXISTS `main_person`;
CREATE TABLE `main_person`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `city_id` int(0) NOT NULL,
  `country_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_person_city_id_7ddbd0ea_fk_main_city_id`(`city_id`) USING BTREE,
  INDEX `main_person_country_id_280d98a5_fk_main_country_id`(`country_id`) USING BTREE,
  CONSTRAINT `main_person_city_id_7ddbd0ea_fk_main_city_id` FOREIGN KEY (`city_id`) REFERENCES `main_city` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_person_country_id_280d98a5_fk_main_country_id` FOREIGN KEY (`country_id`) REFERENCES `main_country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_person
-- ----------------------------

-- ----------------------------
-- Table structure for main_pk_byear
-- ----------------------------
DROP TABLE IF EXISTS `main_pk_byear`;
CREATE TABLE `main_pk_byear`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `yearprocess` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_pk_byear
-- ----------------------------

-- ----------------------------
-- Table structure for main_profile
-- ----------------------------
DROP TABLE IF EXISTS `main_profile`;
CREATE TABLE `main_profile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ssj` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `main_profile_user_id_b40d720a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_profile
-- ----------------------------
INSERT INTO `main_profile` VALUES (1, NULL, '00068', '1', 'default.jpg', 1);

-- ----------------------------
-- Table structure for main_reponse_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_reponse_kpi`;
CREATE TABLE `main_reponse_kpi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_reponse_kpi
-- ----------------------------

-- ----------------------------
-- Table structure for main_ssj
-- ----------------------------
DROP TABLE IF EXISTS `main_ssj`;
CREATE TABLE `main_ssj`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_ssj
-- ----------------------------

-- ----------------------------
-- Table structure for main_task
-- ----------------------------
DROP TABLE IF EXISTS `main_task`;
CREATE TABLE `main_task`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  `user_hospcode_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_task_user_id_1f6ddeed_fk_auth_user_id`(`user_id`) USING BTREE,
  INDEX `main_task_user_hospcode_id_23f6b3ad_fk_main_chospcode_id`(`user_hospcode_id`) USING BTREE,
  CONSTRAINT `main_task_user_hospcode_id_23f6b3ad_fk_main_chospcode_id` FOREIGN KEY (`user_hospcode_id`) REFERENCES `main_chospcode` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_task_user_id_1f6ddeed_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_task
-- ----------------------------

-- ----------------------------
-- Table structure for main_trole
-- ----------------------------
DROP TABLE IF EXISTS `main_trole`;
CREATE TABLE `main_trole`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_group` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_trole
-- ----------------------------

-- ----------------------------
-- Procedure structure for kpi_eval_prov
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_eval_prov`;
delimiter ;;
CREATE PROCEDURE `kpi_eval_prov`()
BEGIN
DROP TABLE IF EXISTS kpi_eval_prov;
CREATE TABLE  kpi_eval_prov
#REPLACE INTO kpi_eval_prov
SELECT
p.kpi_year, p.hospcode, p.kpi_id, k.ex,
CASE
    WHEN k.cri_type = '>=' THEN (CASE WHEN p.pt >= k.goal THEN 1 ELSE 0 END)
    WHEN k.cri_type = '>' THEN (CASE WHEN p.pt > k.goal THEN 1 ELSE 0 END)
    WHEN k.cri_type = '<=' THEN (CASE WHEN p.pt <= k.goal THEN 1 ELSE 0 END)
    WHEN k.cri_type = '<' THEN (CASE WHEN p.pt < k.goal THEN 1 ELSE 0 END)
    ELSE 0
END AS kpi_eval
FROM kpi_prov p
LEFT JOIN kpi_index k ON k.kpi = p.kpi_id AND k.kpi_year = p.kpi_year;

INSERT INTO log_process (dtime) VALUES (NOW());

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_prov
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_prov`;
delimiter ;;
CREATE PROCEDURE `kpi_prov`()
BEGIN

DROP TABLE IF EXISTS kpi_prov;
CREATE TABLE  kpi_prov
#REPLACE INTO kpi_prov
SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a1+a2+a3)a1
,SUM(a4+a5+a6)a2
,SUM(a7+a8+a9)a3
,SUM(a10+a11+a12)a4
,SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)at
,SUM(b1+b2+b3)b1
,SUM(b4+b5+b6)b2
,SUM(b7+b8+b9)b3
,SUM(b10+b11+b12)b4
,SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12)bt
,COALESCE(ROUND((SUM(a1+a2+a3)/SUM(b1+b2+b3))*100000,2),0)p1
,COALESCE(ROUND((SUM(a4+a5+a6)/SUM(b4+b5+b6))*100000,2),0)p2
,COALESCE(ROUND((SUM(a7+a8+a9)/SUM(b7+b8+b9))*100000,2),0)p3
,COALESCE(ROUND((SUM(a10+a11+a12)/SUM(b10+b11+b12))*100000,2),0)p4
,COALESCE(ROUND((SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12))*100000,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100000'
GROUP BY h.hospcode,i.kpi_id)rh

UNION ALL

SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a1+a2+a3)a1
,SUM(a4+a5+a6)a2
,SUM(a7+a8+a9)a3
,SUM(a10+a11+a12)a4
,SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)at
,SUM(b1+b2+b3)b1
,SUM(b4+b5+b6)b2
,SUM(b7+b8+b9)b3
,SUM(b10+b11+b12)b4
,SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12)bt
,COALESCE(ROUND((SUM(a1+a2+a3)/SUM(b1+b2+b3))*100,2),0)p1
,COALESCE(ROUND((SUM(a4+a5+a6)/SUM(b4+b5+b6))*100,2),0)p2
,COALESCE(ROUND((SUM(a7+a8+a9)/SUM(b7+b8+b9))*100,2),0)p3
,COALESCE(ROUND((SUM(a10+a11+a12)/SUM(b10+b11+b12))*100,2),0)p4
,COALESCE(ROUND((SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12))*100,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100'
GROUP BY h.hospcode,i.kpi_id)rh

UNION ALL

SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a3)a1
,SUM(a6)a2
,SUM(a9)a3
,SUM(a12)a4
,SUM(a9)at
,SUM(b3)b1
,SUM(b6)b2
,SUM(b9)b3
,SUM(b12)b4
,SUM(b9)bt
,COALESCE(ROUND((SUM(a3)/SUM(b3))*100,2),0)p1
,COALESCE(ROUND((SUM(a6)/SUM(b6))*100,2),0)p2
,COALESCE(ROUND((SUM(a9)/SUM(b9))*100,2),0)p3
,COALESCE(ROUND((SUM(a12)/SUM(b12))*100,2),0)p4
,COALESCE(ROUND((SUM(a9)/SUM(b9))*100,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100Y'
GROUP BY h.hospcode,i.kpi_id)rh;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_rh
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_rh`;
delimiter ;;
CREATE PROCEDURE `kpi_rh`()
BEGIN

DROP TABLE IF EXISTS kpi_rh;
CREATE TABLE  kpi_rh
SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on  q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100'
GROUP BY q.kpi_year, q.kpi_id

UNION ALL

SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on  q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100Y'
GROUP BY q.kpi_year, q.kpi_id

UNION ALL

SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100000),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on  q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100000'
GROUP BY q.kpi_year, q.kpi_id;



END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
