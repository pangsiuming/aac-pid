/*
 Navicat Premium Data Transfer

 Source Server         : Mysql（localhost）
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : pid-new

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/01/2020 16:14:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for digital_micro
-- ----------------------------
DROP TABLE IF EXISTS `digital_micro`;
CREATE TABLE `digital_micro`  (
  `dm_id` int(11) NOT NULL AUTO_INCREMENT,
  `dm_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dm_dimension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dm_sensitive` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dm_signal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dm_aop` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dm_way` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of digital_micro
-- ----------------------------
INSERT INTO `digital_micro` VALUES (1, 'SDM0401-RS261-G04', '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部');
INSERT INTO `digital_micro` VALUES (2, 'SDM0401B-RS261-M02', '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '底部');
INSERT INTO `digital_micro` VALUES (3, 'SDM0502-RFS261-G02', '3.50x2.65x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部');
INSERT INTO `digital_micro` VALUES (4, 'SDM0502B-RS261-M02', '3.50x2.65x0.98', '-26±1', 'typ 65', 'AOP=120', '底部');
INSERT INTO `digital_micro` VALUES (5, 'SDM0502B-FDS371-M02', '3.35x2.50x0.98', '-37±1', 'typ 65', 'AOP=132.5', '底部');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_menu_id` int(11) NULL DEFAULT NULL,
  `menu_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 328 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'MEMS类器件', 0, NULL);
INSERT INTO `menu` VALUES (2, '电声类器件', 0, NULL);
INSERT INTO `menu` VALUES (3, '电磁转动类', 0, NULL);
INSERT INTO `menu` VALUES (4, '光学', 0, NULL);
INSERT INTO `menu` VALUES (5, '精密器件', 0, NULL);
INSERT INTO `menu` VALUES (6, '模拟麦克风', 1, 'detail');
INSERT INTO `menu` VALUES (7, '数字麦克风', 1, 'detail');
INSERT INTO `menu` VALUES (8, '压电麦克风', 1, 'detail');
INSERT INTO `menu` VALUES (9, '气压&麦克风二合一传感器', 1, 'detail');
INSERT INTO `menu` VALUES (10, '天线调谐器（Tuner）', 1, 'detail');
INSERT INTO `menu` VALUES (11, '天线开关（Switch）', 1, 'detail');
INSERT INTO `menu` VALUES (12, '微型扬声器', 2, '');
INSERT INTO `menu` VALUES (13, '受话器', 2, 'detail');
INSERT INTO `menu` VALUES (14, '扬声器&受话器二合一', 2, '');
INSERT INTO `menu` VALUES (15, '中型扬声器', 2, 'detail');
INSERT INTO `menu` VALUES (16, '耳机芯', 2, 'detail');
INSERT INTO `menu` VALUES (17, '触感器', 3, 'detail');
INSERT INTO `menu` VALUES (18, '激励器', 3, 'detail');
INSERT INTO `menu` VALUES (19, '步进电机模组', 3, 'detail');
INSERT INTO `menu` VALUES (20, '塑胶镜头', 4, 'detail');
INSERT INTO `menu` VALUES (21, 'WLG镜片\r', 4, 'detail');
INSERT INTO `menu` VALUES (22, '混合镜头', 4, 'detail');
INSERT INTO `menu` VALUES (23, '玻璃镜头', 4, 'detail');
INSERT INTO `menu` VALUES (24, '音圈马达', 4, 'detail');
INSERT INTO `menu` VALUES (25, 'SMA驱动器', 4, 'detail');
INSERT INTO `menu` VALUES (26, '常规镜头模组', 4, 'detail');
INSERT INTO `menu` VALUES (27, '潜望式镜头模组', 4, 'detail');
INSERT INTO `menu` VALUES (28, 'LCP天线/传输线及模组', 5, 'detail');
INSERT INTO `menu` VALUES (29, 'LDS天线/电磁屏蔽件', 5, 'detail');
INSERT INTO `menu` VALUES (30, '无线充电', 5, 'detail');
INSERT INTO `menu` VALUES (31, '散热产品', 5, 'detail');
INSERT INTO `menu` VALUES (32, '3D玻璃', 5, 'detail');
INSERT INTO `menu` VALUES (33, '金属结构件', 5, 'detail');
INSERT INTO `menu` VALUES (34, '基站陶瓷滤波器', 5, 'detail');
INSERT INTO `menu` VALUES (35, '基站天线', 5, 'detail');
INSERT INTO `menu` VALUES (36, '毫米波天线', 5, 'detail');
INSERT INTO `menu` VALUES (56, 'SLS系列', 12, 'detail');
INSERT INTO `menu` VALUES (57, 'SPS系列', 12, 'detail');
INSERT INTO `menu` VALUES (62, 'SLS系列', 14, 'detail');
INSERT INTO `menu` VALUES (63, 'SPS系列', 14, 'detail');
INSERT INTO `menu` VALUES (200, '1', 6, 'end');
INSERT INTO `menu` VALUES (201, '2', 6, 'end');
INSERT INTO `menu` VALUES (202, '3', 6, 'end');
INSERT INTO `menu` VALUES (203, '4', 6, 'end');
INSERT INTO `menu` VALUES (204, '5', 6, 'end');
INSERT INTO `menu` VALUES (205, '6', 6, 'end');
INSERT INTO `menu` VALUES (206, '7', 6, 'end');
INSERT INTO `menu` VALUES (207, '8', 6, 'end');
INSERT INTO `menu` VALUES (208, '9', 6, 'end');
INSERT INTO `menu` VALUES (209, '10', 6, 'end');
INSERT INTO `menu` VALUES (210, '11', 6, 'end');
INSERT INTO `menu` VALUES (211, '12', 6, 'end');
INSERT INTO `menu` VALUES (212, '13', 6, 'end');
INSERT INTO `menu` VALUES (213, '1', 7, 'end');
INSERT INTO `menu` VALUES (214, '2', 7, 'end');
INSERT INTO `menu` VALUES (215, '3', 7, 'end');
INSERT INTO `menu` VALUES (216, '4', 7, 'end');
INSERT INTO `menu` VALUES (217, '5', 7, 'end');
INSERT INTO `menu` VALUES (218, '1', 8, 'end');
INSERT INTO `menu` VALUES (219, '1', 9, 'end');
INSERT INTO `menu` VALUES (220, '1', 10, 'end');
INSERT INTO `menu` VALUES (221, '2', 10, 'end');
INSERT INTO `menu` VALUES (222, '1', 11, 'end');
INSERT INTO `menu` VALUES (223, '2', 11, 'end');
INSERT INTO `menu` VALUES (224, '1', 56, 'end');
INSERT INTO `menu` VALUES (225, '2', 56, 'end');
INSERT INTO `menu` VALUES (226, '3', 56, 'end');
INSERT INTO `menu` VALUES (227, '4', 56, 'end');
INSERT INTO `menu` VALUES (228, '5', 56, 'end');
INSERT INTO `menu` VALUES (229, '6', 56, 'end');
INSERT INTO `menu` VALUES (230, '7', 56, 'end');
INSERT INTO `menu` VALUES (231, '8', 56, 'end');
INSERT INTO `menu` VALUES (232, '9', 56, 'end');
INSERT INTO `menu` VALUES (233, '10', 56, 'end');
INSERT INTO `menu` VALUES (234, '11', 56, 'end');
INSERT INTO `menu` VALUES (235, '12', 56, 'end');
INSERT INTO `menu` VALUES (236, '13', 56, 'end');
INSERT INTO `menu` VALUES (237, '14', 56, 'end');
INSERT INTO `menu` VALUES (238, '15', 56, 'end');
INSERT INTO `menu` VALUES (239, '16', 57, 'end');
INSERT INTO `menu` VALUES (240, '17', 57, 'end');
INSERT INTO `menu` VALUES (241, '18', 57, 'end');
INSERT INTO `menu` VALUES (242, '19', 57, 'end');
INSERT INTO `menu` VALUES (243, '20', 57, 'end');
INSERT INTO `menu` VALUES (244, '21', 57, 'end');
INSERT INTO `menu` VALUES (245, '22', 57, 'end');
INSERT INTO `menu` VALUES (246, '23', 57, 'end');
INSERT INTO `menu` VALUES (247, '24', 57, 'end');
INSERT INTO `menu` VALUES (248, '1', 13, 'end');
INSERT INTO `menu` VALUES (249, '2', 13, 'end');
INSERT INTO `menu` VALUES (250, '3', 13, 'end');
INSERT INTO `menu` VALUES (251, '4', 13, 'end');
INSERT INTO `menu` VALUES (252, '5', 13, 'end');
INSERT INTO `menu` VALUES (253, '6', 13, 'end');
INSERT INTO `menu` VALUES (254, '7', 13, 'end');
INSERT INTO `menu` VALUES (255, '1', 62, 'end');
INSERT INTO `menu` VALUES (256, '2', 62, 'end');
INSERT INTO `menu` VALUES (257, '3', 62, 'end');
INSERT INTO `menu` VALUES (258, '4', 62, 'end');
INSERT INTO `menu` VALUES (259, '5', 62, 'end');
INSERT INTO `menu` VALUES (260, '6', 63, 'end');
INSERT INTO `menu` VALUES (261, '1', 63, 'end');
INSERT INTO `menu` VALUES (262, '1', 15, 'end');
INSERT INTO `menu` VALUES (263, '2', 15, 'end');
INSERT INTO `menu` VALUES (264, '3', 15, 'end');
INSERT INTO `menu` VALUES (265, '4', 15, 'end');
INSERT INTO `menu` VALUES (266, '5', 15, 'end');
INSERT INTO `menu` VALUES (267, '6', 15, 'end');
INSERT INTO `menu` VALUES (268, '7', 15, 'end');
INSERT INTO `menu` VALUES (269, '1', 16, 'end');
INSERT INTO `menu` VALUES (270, '2', 16, 'end');
INSERT INTO `menu` VALUES (271, '1', 17, 'end');
INSERT INTO `menu` VALUES (272, '2', 17, 'end');
INSERT INTO `menu` VALUES (273, '3', 17, 'end');
INSERT INTO `menu` VALUES (274, '4', 17, 'end');
INSERT INTO `menu` VALUES (275, '5', 17, 'end');
INSERT INTO `menu` VALUES (276, '1', 18, 'end');
INSERT INTO `menu` VALUES (277, '2', 18, 'end');
INSERT INTO `menu` VALUES (278, '3', 18, 'end');
INSERT INTO `menu` VALUES (279, '4', 18, 'end');
INSERT INTO `menu` VALUES (280, '1', 19, 'end');
INSERT INTO `menu` VALUES (281, '2', 19, 'end');
INSERT INTO `menu` VALUES (282, '3', 19, 'end');
INSERT INTO `menu` VALUES (283, '4', 19, 'end');
INSERT INTO `menu` VALUES (284, '5', 19, 'end');
INSERT INTO `menu` VALUES (285, '1', 20, 'end');
INSERT INTO `menu` VALUES (286, '2', 20, 'end');
INSERT INTO `menu` VALUES (287, '3', 20, 'end');
INSERT INTO `menu` VALUES (288, '4', 20, 'end');
INSERT INTO `menu` VALUES (289, '5', 20, 'end');
INSERT INTO `menu` VALUES (290, '6', 20, 'end');
INSERT INTO `menu` VALUES (291, '7', 20, 'end');
INSERT INTO `menu` VALUES (292, '8', 20, 'end');
INSERT INTO `menu` VALUES (293, '9', 20, 'end');
INSERT INTO `menu` VALUES (294, '10', 20, 'end');
INSERT INTO `menu` VALUES (295, '11', 20, 'end');
INSERT INTO `menu` VALUES (296, '12', 20, 'end');
INSERT INTO `menu` VALUES (297, '13', 20, 'end');
INSERT INTO `menu` VALUES (298, '14', 20, 'end');
INSERT INTO `menu` VALUES (299, '15', 20, 'end');
INSERT INTO `menu` VALUES (300, '16', 20, 'end');
INSERT INTO `menu` VALUES (301, '17', 20, 'end');
INSERT INTO `menu` VALUES (302, '18', 20, 'end');
INSERT INTO `menu` VALUES (303, '19', 20, 'end');
INSERT INTO `menu` VALUES (304, '20', 20, 'end');
INSERT INTO `menu` VALUES (305, '1', 22, 'end');
INSERT INTO `menu` VALUES (306, '2', 22, 'end');
INSERT INTO `menu` VALUES (307, '3', 22, 'end');
INSERT INTO `menu` VALUES (308, '1', 23, 'end');
INSERT INTO `menu` VALUES (309, '2', 23, 'end');
INSERT INTO `menu` VALUES (310, '1', 24, 'end');
INSERT INTO `menu` VALUES (311, '2', 24, 'end');
INSERT INTO `menu` VALUES (312, '1', 27, 'end');
INSERT INTO `menu` VALUES (313, '2', 27, 'end');
INSERT INTO `menu` VALUES (314, '3', 27, 'end');
INSERT INTO `menu` VALUES (315, '4', 27, 'end');
INSERT INTO `menu` VALUES (316, '1', 30, 'end');
INSERT INTO `menu` VALUES (317, '2', 30, 'end');
INSERT INTO `menu` VALUES (318, '1', 34, 'end');
INSERT INTO `menu` VALUES (319, '2', 34, 'end');
INSERT INTO `menu` VALUES (320, '1', 35, 'end');
INSERT INTO `menu` VALUES (321, '2', 35, 'end');
INSERT INTO `menu` VALUES (322, '3', 35, 'end');
INSERT INTO `menu` VALUES (323, '4', 35, 'end');
INSERT INTO `menu` VALUES (324, '1', 36, 'end');
INSERT INTO `menu` VALUES (325, '2', 36, 'end');

-- ----------------------------
-- Table structure for menu_copy1
-- ----------------------------
DROP TABLE IF EXISTS `menu_copy1`;
CREATE TABLE `menu_copy1`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_menu_id` int(11) NULL DEFAULT NULL,
  `menu_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_copy1
-- ----------------------------
INSERT INTO `menu_copy1` VALUES (1, 'MEME类器件', 0, NULL);
INSERT INTO `menu_copy1` VALUES (2, '电声类器件', 0, NULL);
INSERT INTO `menu_copy1` VALUES (3, '电磁转动类', 0, NULL);
INSERT INTO `menu_copy1` VALUES (4, '光学', 0, NULL);
INSERT INTO `menu_copy1` VALUES (5, '精密器件', 0, NULL);
INSERT INTO `menu_copy1` VALUES (6, '模拟麦克风', 1, 'search');
INSERT INTO `menu_copy1` VALUES (7, '数字麦克风', 1, 'search');
INSERT INTO `menu_copy1` VALUES (8, '压电麦克风', 1, 'search');
INSERT INTO `menu_copy1` VALUES (9, '气压&麦克风二合一传感器', 1, 'search');
INSERT INTO `menu_copy1` VALUES (10, '天线调谐器（Tuner）', 1, 'search');
INSERT INTO `menu_copy1` VALUES (11, '天线开关（Switch）', 1, 'search');
INSERT INTO `menu_copy1` VALUES (12, '微型扬声器', 2, 'search');
INSERT INTO `menu_copy1` VALUES (13, '受话器', 2, 'search');
INSERT INTO `menu_copy1` VALUES (14, '扬声器&受话器二合一', 2, 'search');
INSERT INTO `menu_copy1` VALUES (15, '中型扬声器', 2, 'search');
INSERT INTO `menu_copy1` VALUES (16, '耳机芯', 2, 'search');
INSERT INTO `menu_copy1` VALUES (17, '触感器', 3, 'search');
INSERT INTO `menu_copy1` VALUES (18, '激励器', 3, 'search');
INSERT INTO `menu_copy1` VALUES (19, '步进电机模组', 3, 'search');
INSERT INTO `menu_copy1` VALUES (20, '塑胶镜头', 4, 'search');
INSERT INTO `menu_copy1` VALUES (21, 'WLG镜片\r', 4, 'search');
INSERT INTO `menu_copy1` VALUES (22, '混合镜头', 4, 'search');
INSERT INTO `menu_copy1` VALUES (23, '玻璃镜头', 4, 'search');
INSERT INTO `menu_copy1` VALUES (24, '音圈马达', 4, 'search');
INSERT INTO `menu_copy1` VALUES (25, 'SMA驱动器', 4, 'search');
INSERT INTO `menu_copy1` VALUES (26, '常规镜头模组', 4, 'search');
INSERT INTO `menu_copy1` VALUES (27, '潜望式镜头模组', 4, 'search');
INSERT INTO `menu_copy1` VALUES (28, 'LCP天线/传输线及模组', 5, 'search');
INSERT INTO `menu_copy1` VALUES (29, 'LDS天线/电磁屏蔽件', 5, 'search');
INSERT INTO `menu_copy1` VALUES (30, '无线充电', 5, 'search');
INSERT INTO `menu_copy1` VALUES (31, '散热产品', 5, 'search');
INSERT INTO `menu_copy1` VALUES (32, '3D玻璃', 5, 'search');
INSERT INTO `menu_copy1` VALUES (33, '金属结构件', 5, 'search');
INSERT INTO `menu_copy1` VALUES (34, '基站陶瓷滤波器', 5, 'search');
INSERT INTO `menu_copy1` VALUES (35, '基站天线', 5, 'search');
INSERT INTO `menu_copy1` VALUES (36, '毫米波天线', 5, 'search');
INSERT INTO `menu_copy1` VALUES (37, '全部', 6, 'detail');
INSERT INTO `menu_copy1` VALUES (38, '系列一', 6, 'detail');
INSERT INTO `menu_copy1` VALUES (39, '系列二', 6, 'detail');
INSERT INTO `menu_copy1` VALUES (40, '全部', 7, 'detail');
INSERT INTO `menu_copy1` VALUES (41, '系列一', 7, 'detail');
INSERT INTO `menu_copy1` VALUES (42, '系列二', 7, 'detail');
INSERT INTO `menu_copy1` VALUES (43, '全部', 8, 'detail');
INSERT INTO `menu_copy1` VALUES (44, '系列一', 8, 'detail');
INSERT INTO `menu_copy1` VALUES (45, '系列二', 8, 'detail');
INSERT INTO `menu_copy1` VALUES (46, '全部', 9, 'detail');
INSERT INTO `menu_copy1` VALUES (47, '系列一', 9, 'detail');
INSERT INTO `menu_copy1` VALUES (48, '系列二', 9, 'detail');
INSERT INTO `menu_copy1` VALUES (49, '全部', 10, 'detail');
INSERT INTO `menu_copy1` VALUES (50, '系列一', 10, 'detail');
INSERT INTO `menu_copy1` VALUES (51, '系列二', 10, 'detail');
INSERT INTO `menu_copy1` VALUES (52, '全部', 11, 'detail');
INSERT INTO `menu_copy1` VALUES (53, '系列一', 11, 'detail');
INSERT INTO `menu_copy1` VALUES (54, '系列二', 11, 'detail');
INSERT INTO `menu_copy1` VALUES (55, '全部', 12, 'detail');
INSERT INTO `menu_copy1` VALUES (56, '系列一', 12, 'detail');
INSERT INTO `menu_copy1` VALUES (57, '系列二', 12, 'detail');
INSERT INTO `menu_copy1` VALUES (100, 'SM0802L-S421-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (101, 'SM0401BL-RFS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (102, 'SM0401L-RS321-G02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (103, 'SM0401L-RS381-G02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (104, 'AM0502B-RS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (105, 'AM0502-RS381-G03', 37, 'end');
INSERT INTO `menu_copy1` VALUES (106, 'SM0103B-RFS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (107, 'SM0103B-RIS421-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (108, 'AM0502B-RHS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (109, 'SM0103B-RLS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (110, 'SM0401B-RDS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (111, 'SM0103B-U381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (112, 'SM0102B-FDS381-M02', 37, 'end');
INSERT INTO `menu_copy1` VALUES (113, 'SDM0401-RS261-G04', 40, 'end');
INSERT INTO `menu_copy1` VALUES (114, 'SDM0401B-RS261-M02', 40, 'end');
INSERT INTO `menu_copy1` VALUES (115, 'SDM0502-RFS261-G02', 40, 'end');
INSERT INTO `menu_copy1` VALUES (116, 'SDM0502B-RS261-M02', 40, 'end');
INSERT INTO `menu_copy1` VALUES (117, 'SDM0502B-FDS371-M02', 40, 'end');
INSERT INTO `menu_copy1` VALUES (118, 'AM0502B-PA381-M02', 43, 'end');
INSERT INTO `menu_copy1` VALUES (119, 'MC0401B-RFS381-M02', 46, 'end');
INSERT INTO `menu_copy1` VALUES (120, 'WS1040', 49, 'end');
INSERT INTO `menu_copy1` VALUES (121, 'WS1021.2', 49, 'end');
INSERT INTO `menu_copy1` VALUES (122, 'WS5200', 52, 'end');
INSERT INTO `menu_copy1` VALUES (123, 'WCS', 52, 'end');

-- ----------------------------
-- Table structure for menu_copy2
-- ----------------------------
DROP TABLE IF EXISTS `menu_copy2`;
CREATE TABLE `menu_copy2`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_menu_id` int(11) NULL DEFAULT NULL,
  `menu_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 327 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_copy2
-- ----------------------------
INSERT INTO `menu_copy2` VALUES (1, 'MEME类器件', 0, NULL);
INSERT INTO `menu_copy2` VALUES (2, '电声类器件', 0, NULL);
INSERT INTO `menu_copy2` VALUES (3, '电磁转动类', 0, NULL);
INSERT INTO `menu_copy2` VALUES (4, '光学', 0, NULL);
INSERT INTO `menu_copy2` VALUES (5, '精密器件', 0, NULL);
INSERT INTO `menu_copy2` VALUES (6, '模拟麦克风', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (7, '数字麦克风', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (8, '压电麦克风', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (9, '气压&麦克风二合一传感器', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (10, '天线调谐器（Tuner）', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (11, '天线开关（Switch）', 1, 'detail');
INSERT INTO `menu_copy2` VALUES (12, '微型扬声器', 2, '');
INSERT INTO `menu_copy2` VALUES (13, '受话器', 2, '');
INSERT INTO `menu_copy2` VALUES (14, '扬声器&受话器二合一', 2, '');
INSERT INTO `menu_copy2` VALUES (15, '中型扬声器', 2, '');
INSERT INTO `menu_copy2` VALUES (16, '耳机芯', 2, '');
INSERT INTO `menu_copy2` VALUES (17, '触感器', 3, 'detail');
INSERT INTO `menu_copy2` VALUES (18, '激励器', 3, 'detail');
INSERT INTO `menu_copy2` VALUES (19, '步进电机模组', 3, 'detail');
INSERT INTO `menu_copy2` VALUES (20, '塑胶镜头', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (21, 'WLG镜片\r', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (22, '混合镜头', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (23, '玻璃镜头', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (24, '音圈马达', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (25, 'SMA驱动器', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (26, '常规镜头模组', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (27, '潜望式镜头模组', 4, 'detail');
INSERT INTO `menu_copy2` VALUES (28, 'LCP天线/传输线及模组', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (29, 'LDS天线/电磁屏蔽件', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (30, '无线充电', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (31, '散热产品', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (32, '3D玻璃', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (33, '金属结构件', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (34, '基站陶瓷滤波器', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (35, '基站天线', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (36, '毫米波天线', 5, 'detail');
INSERT INTO `menu_copy2` VALUES (52, '全部', 11, 'detail');
INSERT INTO `menu_copy2` VALUES (53, '系列一（待做）', 11, 'detail');
INSERT INTO `menu_copy2` VALUES (54, '系列二（待做）', 11, 'detail');
INSERT INTO `menu_copy2` VALUES (55, '全部', 12, 'detail');
INSERT INTO `menu_copy2` VALUES (56, '系列一（待做）', 12, 'detail');
INSERT INTO `menu_copy2` VALUES (57, '系列二（待做）', 12, 'detail');
INSERT INTO `menu_copy2` VALUES (58, '全部', 13, 'detail');
INSERT INTO `menu_copy2` VALUES (59, '系列一（待做）', 13, 'detail');
INSERT INTO `menu_copy2` VALUES (60, '系列二（待做）', 13, 'detail');
INSERT INTO `menu_copy2` VALUES (61, '全部', 14, 'detail');
INSERT INTO `menu_copy2` VALUES (62, '系列一（待做）', 14, 'detail');
INSERT INTO `menu_copy2` VALUES (63, '系列二（待做）', 14, 'detail');
INSERT INTO `menu_copy2` VALUES (64, '全部', 15, 'detail');
INSERT INTO `menu_copy2` VALUES (65, '系列一（待做）', 15, 'detail');
INSERT INTO `menu_copy2` VALUES (66, '系列二（待做）', 15, 'detail');
INSERT INTO `menu_copy2` VALUES (67, '全部', 16, 'detail');
INSERT INTO `menu_copy2` VALUES (68, '系列一（待做）', 16, 'detail');
INSERT INTO `menu_copy2` VALUES (69, '系列二（待做）', 16, 'detail');
INSERT INTO `menu_copy2` VALUES (200, '1', 6, 'end');
INSERT INTO `menu_copy2` VALUES (201, '2', 6, 'end');
INSERT INTO `menu_copy2` VALUES (202, '3', 6, 'end');
INSERT INTO `menu_copy2` VALUES (203, '4', 6, 'end');
INSERT INTO `menu_copy2` VALUES (204, '5', 6, 'end');
INSERT INTO `menu_copy2` VALUES (205, '6', 6, 'end');
INSERT INTO `menu_copy2` VALUES (206, '7', 6, 'end');
INSERT INTO `menu_copy2` VALUES (207, '8', 6, 'end');
INSERT INTO `menu_copy2` VALUES (208, '9', 6, 'end');
INSERT INTO `menu_copy2` VALUES (209, '10', 6, 'end');
INSERT INTO `menu_copy2` VALUES (210, '11', 6, 'end');
INSERT INTO `menu_copy2` VALUES (211, '12', 6, 'end');
INSERT INTO `menu_copy2` VALUES (212, '13', 6, 'end');
INSERT INTO `menu_copy2` VALUES (213, '1', 7, 'end');
INSERT INTO `menu_copy2` VALUES (214, '2', 7, 'end');
INSERT INTO `menu_copy2` VALUES (215, '3', 7, 'end');
INSERT INTO `menu_copy2` VALUES (216, '4', 7, 'end');
INSERT INTO `menu_copy2` VALUES (217, '5', 7, 'end');
INSERT INTO `menu_copy2` VALUES (218, '1', 8, 'end');
INSERT INTO `menu_copy2` VALUES (219, '1', 9, 'end');
INSERT INTO `menu_copy2` VALUES (220, '1', 10, 'end');
INSERT INTO `menu_copy2` VALUES (221, '2', 10, 'end');
INSERT INTO `menu_copy2` VALUES (222, '1', 11, 'end');
INSERT INTO `menu_copy2` VALUES (223, '2', 11, 'end');
INSERT INTO `menu_copy2` VALUES (224, '1', 12, 'end');
INSERT INTO `menu_copy2` VALUES (225, '2', 12, 'end');
INSERT INTO `menu_copy2` VALUES (226, '3', 12, 'end');
INSERT INTO `menu_copy2` VALUES (227, '4', 12, 'end');
INSERT INTO `menu_copy2` VALUES (228, '5', 12, 'end');
INSERT INTO `menu_copy2` VALUES (229, '6', 12, 'end');
INSERT INTO `menu_copy2` VALUES (230, '7', 12, 'end');
INSERT INTO `menu_copy2` VALUES (231, '8', 12, 'end');
INSERT INTO `menu_copy2` VALUES (232, '9', 12, 'end');
INSERT INTO `menu_copy2` VALUES (233, '10', 12, 'end');
INSERT INTO `menu_copy2` VALUES (234, '11', 12, 'end');
INSERT INTO `menu_copy2` VALUES (235, '12', 12, 'end');
INSERT INTO `menu_copy2` VALUES (236, '13', 12, 'end');
INSERT INTO `menu_copy2` VALUES (237, '14', 12, 'end');
INSERT INTO `menu_copy2` VALUES (238, '15', 12, 'end');
INSERT INTO `menu_copy2` VALUES (239, '16', 12, 'end');
INSERT INTO `menu_copy2` VALUES (240, '17', 12, 'end');
INSERT INTO `menu_copy2` VALUES (241, '18', 12, 'end');
INSERT INTO `menu_copy2` VALUES (242, '19', 12, 'end');
INSERT INTO `menu_copy2` VALUES (243, '20', 12, 'end');
INSERT INTO `menu_copy2` VALUES (244, '21', 12, 'end');
INSERT INTO `menu_copy2` VALUES (245, '22', 12, 'end');
INSERT INTO `menu_copy2` VALUES (246, '23', 12, 'end');
INSERT INTO `menu_copy2` VALUES (247, '24', 12, 'end');
INSERT INTO `menu_copy2` VALUES (248, '1', 13, 'end');
INSERT INTO `menu_copy2` VALUES (249, '2', 13, 'end');
INSERT INTO `menu_copy2` VALUES (250, '3', 13, 'end');
INSERT INTO `menu_copy2` VALUES (251, '4', 13, 'end');
INSERT INTO `menu_copy2` VALUES (252, '5', 13, 'end');
INSERT INTO `menu_copy2` VALUES (253, '6', 13, 'end');
INSERT INTO `menu_copy2` VALUES (254, '7', 13, 'end');
INSERT INTO `menu_copy2` VALUES (255, '1', 14, 'end');
INSERT INTO `menu_copy2` VALUES (256, '2', 14, 'end');
INSERT INTO `menu_copy2` VALUES (257, '3', 14, 'end');
INSERT INTO `menu_copy2` VALUES (258, '4', 14, 'end');
INSERT INTO `menu_copy2` VALUES (259, '5', 14, 'end');
INSERT INTO `menu_copy2` VALUES (260, '6', 14, 'end');
INSERT INTO `menu_copy2` VALUES (261, '1', 14, 'end');
INSERT INTO `menu_copy2` VALUES (262, '1', 15, 'end');
INSERT INTO `menu_copy2` VALUES (263, '2', 15, 'end');
INSERT INTO `menu_copy2` VALUES (264, '3', 15, 'end');
INSERT INTO `menu_copy2` VALUES (265, '4', 15, 'end');
INSERT INTO `menu_copy2` VALUES (266, '5', 15, 'end');
INSERT INTO `menu_copy2` VALUES (267, '6', 15, 'end');
INSERT INTO `menu_copy2` VALUES (268, '7', 15, 'end');
INSERT INTO `menu_copy2` VALUES (269, '1', 16, 'end');
INSERT INTO `menu_copy2` VALUES (270, '2', 16, 'end');
INSERT INTO `menu_copy2` VALUES (271, '1', 17, 'end');
INSERT INTO `menu_copy2` VALUES (272, '2', 17, 'end');
INSERT INTO `menu_copy2` VALUES (273, '3', 17, 'end');
INSERT INTO `menu_copy2` VALUES (274, '4', 17, 'end');
INSERT INTO `menu_copy2` VALUES (275, '5', 17, 'end');
INSERT INTO `menu_copy2` VALUES (276, '1', 18, 'end');
INSERT INTO `menu_copy2` VALUES (277, '2', 18, 'end');
INSERT INTO `menu_copy2` VALUES (278, '3', 18, 'end');
INSERT INTO `menu_copy2` VALUES (279, '4', 18, 'end');
INSERT INTO `menu_copy2` VALUES (280, '1', 19, 'end');
INSERT INTO `menu_copy2` VALUES (281, '2', 19, 'end');
INSERT INTO `menu_copy2` VALUES (282, '3', 19, 'end');
INSERT INTO `menu_copy2` VALUES (283, '4', 19, 'end');
INSERT INTO `menu_copy2` VALUES (284, '5', 19, 'end');
INSERT INTO `menu_copy2` VALUES (285, '1', 20, 'end');
INSERT INTO `menu_copy2` VALUES (286, '2', 20, 'end');
INSERT INTO `menu_copy2` VALUES (287, '3', 20, 'end');
INSERT INTO `menu_copy2` VALUES (288, '4', 20, 'end');
INSERT INTO `menu_copy2` VALUES (289, '5', 20, 'end');
INSERT INTO `menu_copy2` VALUES (290, '6', 20, 'end');
INSERT INTO `menu_copy2` VALUES (291, '7', 20, 'end');
INSERT INTO `menu_copy2` VALUES (292, '8', 20, 'end');
INSERT INTO `menu_copy2` VALUES (293, '9', 20, 'end');
INSERT INTO `menu_copy2` VALUES (294, '10', 20, 'end');
INSERT INTO `menu_copy2` VALUES (295, '11', 20, 'end');
INSERT INTO `menu_copy2` VALUES (296, '12', 20, 'end');
INSERT INTO `menu_copy2` VALUES (297, '13', 20, 'end');
INSERT INTO `menu_copy2` VALUES (298, '14', 20, 'end');
INSERT INTO `menu_copy2` VALUES (299, '15', 20, 'end');
INSERT INTO `menu_copy2` VALUES (300, '16', 20, 'end');
INSERT INTO `menu_copy2` VALUES (301, '17', 20, 'end');
INSERT INTO `menu_copy2` VALUES (302, '18', 20, 'end');
INSERT INTO `menu_copy2` VALUES (303, '19', 20, 'end');
INSERT INTO `menu_copy2` VALUES (304, '20', 20, 'end');
INSERT INTO `menu_copy2` VALUES (305, '1', 22, 'end');
INSERT INTO `menu_copy2` VALUES (306, '2', 22, 'end');
INSERT INTO `menu_copy2` VALUES (307, '3', 22, 'end');
INSERT INTO `menu_copy2` VALUES (308, '1', 23, 'end');
INSERT INTO `menu_copy2` VALUES (309, '2', 23, 'end');
INSERT INTO `menu_copy2` VALUES (310, '1', 24, 'end');
INSERT INTO `menu_copy2` VALUES (311, '2', 24, 'end');
INSERT INTO `menu_copy2` VALUES (312, '1', 27, 'end');
INSERT INTO `menu_copy2` VALUES (313, '2', 27, 'end');
INSERT INTO `menu_copy2` VALUES (314, '3', 27, 'end');
INSERT INTO `menu_copy2` VALUES (315, '4', 27, 'end');
INSERT INTO `menu_copy2` VALUES (316, '1', 30, 'end');
INSERT INTO `menu_copy2` VALUES (317, '2', 30, 'end');
INSERT INTO `menu_copy2` VALUES (318, '1', 34, 'end');
INSERT INTO `menu_copy2` VALUES (319, '2', 34, 'end');
INSERT INTO `menu_copy2` VALUES (320, '1', 35, 'end');
INSERT INTO `menu_copy2` VALUES (321, '2', 35, 'end');
INSERT INTO `menu_copy2` VALUES (322, '3', 35, 'end');
INSERT INTO `menu_copy2` VALUES (323, '4', 35, 'end');
INSERT INTO `menu_copy2` VALUES (324, '1', 36, 'end');
INSERT INTO `menu_copy2` VALUES (325, '2', 36, 'end');

-- ----------------------------
-- Table structure for pie_micro
-- ----------------------------
DROP TABLE IF EXISTS `pie_micro`;
CREATE TABLE `pie_micro`  (
  `pi_id` int(11) NOT NULL AUTO_INCREMENT,
  `pi_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pi_dimension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pi_sensitive` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pi_signal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pi_aop` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pi_way` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pi_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pie_micro
-- ----------------------------
INSERT INTO `pie_micro` VALUES (1, 'AM0502B-PA381-M02', '3.50x2.65x0.98', '-38±1dB', 'typ 62dB', 'AOP=125dBSPL', '底部');

-- ----------------------------
-- Table structure for pre_micro
-- ----------------------------
DROP TABLE IF EXISTS `pre_micro`;
CREATE TABLE `pre_micro`  (
  `pre_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_dimension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_sensitive` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_signal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_aop` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_way` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pre_relerror` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_abserror` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_noise` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pre_current` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pre_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pre_micro
-- ----------------------------
INSERT INTO `pre_micro` VALUES (1, 'MC0401B-RFS381-M02', '4.0x3.0x1.0', '-38±1', 'typ 62', 'AOP=125', '底部', '±0.06hPa', '±1hPa', '0.5Pa RMS', '<400μA');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_type_id` int(11) NULL DEFAULT NULL,
  `product_icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '声学', NULL, 'thumb_声学.jpg', '声学.jpg');
INSERT INTO `product` VALUES (2, '光学', NULL, 'thumb_光学.jpg', '光学.jpg');
INSERT INTO `product` VALUES (3, '电磁传动', NULL, 'thumb_电磁传动.jpg', '电磁传动.jpg');
INSERT INTO `product` VALUES (4, '精密加工', NULL, 'thumb_精密加工.jpg', '精密加工.jpg');
INSERT INTO `product` VALUES (5, '射频', NULL, 'thumb_射频.jpg', '射频.jpg');
INSERT INTO `product` VALUES (6, '高速传输', NULL, 'thumb_高速传输.jpg', '高速传输.jpg');

-- ----------------------------
-- Table structure for product_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail`  (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_pid` int(11) NULL DEFAULT NULL,
  `detail_did` int(11) NULL DEFAULT NULL,
  `detail_mid` int(11) NULL DEFAULT NULL,
  `detail_nid` int(11) NULL DEFAULT NULL,
  `detail_mmid` int(11) NULL DEFAULT NULL,
  `detail_pn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_ap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_di` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_po` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_dc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_ac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_se` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_th` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_frg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_thg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_hog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_co` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_wa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_st` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_lt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_al` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_sto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_opt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_xmax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_snr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_trc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_th10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_adv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_sf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_str` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fno` int(11) NULL DEFAULT NULL,
  `detail_ttl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_bl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_nf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_tlen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_tdim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_vol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_pace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rsis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_tcf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rfip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_mrfv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_onr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_offc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_esd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_ce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_is` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_stuff` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_wire` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_master` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fov` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_cra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_tvd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_mic` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_bst` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_maxv` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_maxp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_maxc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_acc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_bt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_rt50` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_bt50` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_vd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_am` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_fen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `detail_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 198 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_detail
-- ----------------------------
INSERT INTO `product_detail` VALUES (62, 1, 1, 6, 1, 200, 'SM0802L-S421-M02', NULL, '3.76x2.95x1.10', '-42±1', 'typ 57', '130', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (63, 1, 1, 6, 2, 201, 'SM0401BL-RFS381-M02', NULL, '3.76x2.95x1.10', '-38±1', 'typ 65', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (64, 1, 1, 6, 3, 202, 'SM0401L-RS321-G02', NULL, '3.76x2.95x1.10', '-32±1', 'typ 66', '125', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (65, 1, 1, 6, 4, 203, 'SM0401L-RS381-G02', NULL, '3.76x2.95x1.10', '-38±1', 'typ 66', '125', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (66, 1, 1, 6, 5, 204, 'AM0502B-RS381-M02', NULL, '3.50x2.65x0.98', '-38±1', 'typ 66', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (67, 1, 1, 6, 6, 205, 'AM0502-RS381-G03', NULL, '3.50x2.65x1.0', '-38±1', 'typ 66', '125', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (68, 1, 1, 6, 7, 206, 'SM0103B-RFS381-M02', NULL, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (69, 1, 1, 6, 8, 207, 'SM0103B-RIS421-M02', NULL, '2.75x1.85x0.90', '-42±1', 'typ 64', '134', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (70, 1, 1, 6, 9, 208, 'AM0502B-RHS381-M02', NULL, '3.50x2.65x0.98', '-38±1', 'typ 68', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (71, 1, 1, 6, 10, 209, 'SM0103B-RLS381-M02', NULL, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (72, 1, 1, 6, 11, 210, 'SM0401B-RDS381-M02', NULL, '4.00x3.00x1.2', '-38±1', 'typ 70', '130', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (73, 1, 1, 6, 12, 211, 'SM0103B-U381-M02', NULL, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (74, 1, 1, 6, 13, 212, 'SM0102B-FDS381-M02', NULL, '2.75x1.85x0.90', '-38±1', 'typ 65', '135', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (75, 1, 1, 7, 1, 213, 'SDM0401-RS261-G04', NULL, '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (76, 1, 1, 7, 2, 214, 'SDM0401B-RS261-M02', NULL, '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (77, 1, 1, 7, 3, 215, 'SDM0502-RFS261-G02', NULL, '3.50x2.65x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (78, 1, 1, 7, 4, 216, 'SDM0502B-RS261-M02', NULL, '3.50x2.65x0.98', '-26±1', 'typ 65', 'AOP=120', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (79, 1, 1, 7, 5, 217, 'SDM0502B-FDS371-M02', NULL, '3.35x2.50x0.98', '-37±1', 'typ 65', 'AOP=132.5', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (80, 1, 1, 8, 1, 218, 'AM0502B-PA381-M02', NULL, '3.50x2.65x0.98', '-38±1dB', 'typ 62dB', 'AOP=125dBSPL', '底部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (81, 1, 1, 9, 1, 219, 'MC0401B-RFS381-M02', '', '4.0x3.0x1.0', '-38±1', 'typ 62', 'AOP=125', '底部', '±0.06hPa', '±1hPa', '0.5Pa RMS', '<400μA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (82, 1, 1, 10, 1, 220, 'WS1040\r\n', '<5.7mm2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '0.3 pF – 2.9 pF', '120', '0.1pF', '4.3G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (83, 1, 1, 10, 2, 221, 'WS1021.2', '<2mm2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0.25 pF – 3.0 pF', '294', 'Programmable', '11G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (84, 1, 1, 11, 1, 222, 'WS5200', '<2mm2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SP4T', '39', '120', '1', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (85, 1, 1, 11, 2, 223, 'WCS', '<2mm2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SP4T', '39', '130', '0.5', '10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (86, 12, 1, 56, 1, 224, 'SLS121703', NULL, '12x17x2.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880', '0.7', NULL, '94.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (87, 12, 1, 56, 2, 225, 'SLS121704', NULL, '12x17x2.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '800', NULL, NULL, '93.5', '0.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (88, 12, 1, 56, 3, 226, 'SLS121706', NULL, '12x17x2.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '920', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (89, 12, 1, 56, 4, 227, 'SLS121708', NULL, '12x17x3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '980', '0.9', '98', NULL, '0.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (90, 12, 1, 56, 5, 228, 'SLS121707', NULL, '12x17x2.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '845', '0.8', '90.5', '94', '0.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (91, 12, 1, 56, 6, 229, 'SLS121601', NULL, '12x16x2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '970', '0.65', '89', '95.5', '0.25', '1.2', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (92, 12, 1, 56, 7, 230, 'SLS121602', NULL, '12x16x2.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '890', '1', '85.5', '96', '0.25', '1', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (93, 12, 1, 56, 8, 231, 'SLS121605', NULL, '12x16x2.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '810', NULL, '94', NULL, '0.27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (94, 12, 1, 56, 9, 232, 'SLS121607', NULL, '12x16x2.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '750', '0.8', '94.5', NULL, '0.2', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (95, 12, 1, 56, 10, 233, 'SLS121610', NULL, '12x16x2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '620', '1.2', '94', '96', '0.35', '1', '6.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (96, 12, 1, 56, 11, 234, 'SLS121611', NULL, '12x16x2.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', '8', NULL, NULL, '0.3', '0.5', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (97, 12, 1, 56, 12, 235, 'SLS111601', NULL, '11x16x2.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '840', '0.8', '90', '94.5', '0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (98, 12, 1, 56, 13, 236, 'SLS111504', NULL, '11x15x2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '870', '0.7', '84', '94', '0.18', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (99, 12, 1, 56, 14, 237, 'SLS101601', NULL, '10x16x2.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '95', NULL, '0.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (100, 12, 1, 56, 15, 238, 'SLS081508', NULL, '8x15x', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '900', '5', NULL, '93.5', '0.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (101, 12, 2, 57, 16, 239, 'SPS121708', NULL, '12x17x2.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '840', NULL, '94', '94', '0.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (102, 12, 2, 57, 17, 240, 'SPS121716', NULL, '12x17x2.45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '870', '0.7', '85', '95', '0.15', '1', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (103, 12, 2, 57, 18, 241, 'SPS111507', NULL, '11x15x2.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '870', NULL, '95', NULL, '0.38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (104, 12, 2, 57, 19, 242, 'SPS081503', NULL, '8x15x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1020', '3.5', NULL, '92.5', '0.5', '0.8', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (105, 12, 2, 57, 20, 243, 'SPS081504', NULL, '8x15x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1000', '5', NULL, '94', '0.4', '0.8', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (106, 12, 2, 57, 21, 244, 'SPS051501', NULL, '5x15x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1300', '3', NULL, '86', '0.4', '0.4', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (107, 12, 2, 57, 22, 245, 'SPS121610', NULL, '12x16x2.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '950', '0.65', NULL, '94.5', '0.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (108, 12, 2, 57, 23, 246, 'SPS101624', NULL, '10x16x2.18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880', '0.4', NULL, '93.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (109, 12, 2, 57, 24, 247, 'SPS101304', NULL, '10.5x13x3.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, '92.5', '0.4', '1', '7.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (111, 2, 1, 13, 1, 248, 'SPS081002', NULL, '8x10x2.4', '123@(200Hz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, '0.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (112, 2, 1, 13, 2, 249, 'SPS080902', NULL, '8x9x2', '123@(200Hz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, '0.35', '50mW', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (113, 2, 1, 13, 3, 250, 'SPS080904', NULL, '8x9x2.35', '122.5(@1KHz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '480', NULL, NULL, NULL, '40%@200Hz', '50mW', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (114, 2, 1, 13, 4, 251, 'SPS080911', NULL, '8x9x2.5', '123(@1KHz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '515', NULL, NULL, NULL, '37%@200Hz', '50mW', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (115, 2, 1, 13, 5, 252, 'SPS071003', NULL, '7x10x2.5', '122(@1KHz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '460', NULL, NULL, NULL, '0.4', '50mW', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (116, 2, 1, 13, 6, 253, 'SPS061201', NULL, '6x12x2.0', '123(@1kHz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, '0.4', '0.05', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (117, 2, 1, 13, 7, 254, 'SPS061516', NULL, '6x15x2.0', '118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '450', NULL, NULL, NULL, '0.6', '0.02', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (126, 14, 1, 62, 1, 255, 'SLS121201', NULL, '11.5x12x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (127, 14, 1, 62, 2, 256, 'SLS101201', NULL, '10x12x2.5', '92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '600', NULL, NULL, NULL, '<70%', '1', '7', '126', '<20%', '0.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (128, 14, 1, 62, 3, 257, 'SLS101202', NULL, '10x12x2.9', '93.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, '<80%', '1', '7', '/', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (129, 14, 1, 62, 4, 258, 'SLS081504', NULL, '8x15x2.55', '92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '700', NULL, NULL, NULL, NULL, NULL, '8', '127', '<50%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (130, 14, 1, 62, 5, 259, 'SLS081201', NULL, '8x12x2.5', '90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '400', NULL, NULL, NULL, NULL, '0.02', '8', '118.5', '<50%', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (131, 14, 2, 63, 6, 260, 'SPS080908', NULL, '8x9x2.5', '84.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, '0.25', '32', '123', '<40%', '0.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (132, 14, 2, 63, 7, 261, 'SPS091002', NULL, '9x10x2.5', '86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, '0.6', '13', '122.5', '<37%', '0.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (133, 2, 1, 15, 1, 262, 'SLS132601', NULL, '13x26x2.6', '91.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '880', NULL, NULL, NULL, '0.1', NULL, NULL, NULL, NULL, NULL, '2', '101.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (134, 2, 1, 15, 2, 263, 'SLS306001', NULL, '30x60x12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '240', NULL, NULL, NULL, '0.15', '1', '8', NULL, NULL, NULL, '60', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (135, 2, 1, 15, 3, 264, 'LES34', NULL, 'φ34x22.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '300', NULL, NULL, NULL, '0.38', NULL, NULL, NULL, NULL, NULL, '70', '78.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (136, 2, 1, 15, 4, 265, 'LES50', NULL, 'φ50x33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '160', NULL, NULL, NULL, '0.5', '0.8', '8', NULL, NULL, NULL, '250', '81', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (137, 2, 1, 15, 5, 266, 'LES93', NULL, 'φ93x42', '85(@200Hz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '130', NULL, NULL, NULL, '0.4', '0.8', '8', NULL, NULL, NULL, '600', '94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (138, 2, 1, 15, 6, 267, 'LES140', NULL, 'φ140x50', '75(@200Hz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '80', NULL, NULL, NULL, '0.4', '0.4', '9', NULL, NULL, NULL, '1200', '86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (139, 2, 1, 15, 7, 268, 'LES180', NULL, 'φ180x55.4', '77(@200Hz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '32', NULL, NULL, NULL, '0.25', NULL, NULL, NULL, NULL, NULL, NULL, '94.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (140, 2, 1, 16, 1, 269, 'SLS143204', NULL, 'φ14.25x3.3', '88.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '210', NULL, NULL, NULL, '<20%', '10', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (141, 2, 1, 16, 2, 270, 'SLS133201', NULL, 'φ13.4x2.4', '85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '210', NULL, NULL, NULL, '<20%', '10', '32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (142, 3, 1, 17, 1, 271, 'ELA061902', NULL, '6x19x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170±10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '≥0.7（TYP0.9）', 0, '≤110', '≤50', '≤50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (143, 3, 1, 17, 2, 272, 'SLA081502', NULL, '8x15x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170±8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '≥0.8（TYP1.05）', 0, '≤130', '≤50', '≤50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (144, 3, 1, 17, 3, 273, 'ELA081504', NULL, '10x10x3.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170±10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '≥0.7（TYP0.85）', 0, '≤60', '≤30', '≤30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (145, 3, 1, 17, 4, 274, 'SLA101002', NULL, '8x15x3.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '170±10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '≥0.9（TYP1.1）', 0, '≤90', '≤40', '≤40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (146, 3, 1, 17, 5, 275, 'SLA102201', NULL, '10x22x9.0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '140±10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '≥0.9（TYP1.0）@ 400g', 0, '≤100', '≤50', '≤50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (147, 3, 1, 18, 1, 276, 'EMT081201', NULL, '8x12x3.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.83', '8', '1.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (148, 3, 1, 18, 2, 277, 'EMT061501', NULL, '6x15x3.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.83', '8', '0.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (149, 3, 1, 18, 3, 278, 'EMT131308', NULL, '13x13x4.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.83', '8', '1.35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (150, 3, 1, 18, 4, 279, 'EMT100801', NULL, 'φ10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.83', '8', '1.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (151, 3, 1, 19, 1, 280, 'BJM3401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.6', '7.5', '0.6', '22.5', '≥0.12 ', '≥4000pps', '14 ±1Ω ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (152, 3, 1, 19, 2, 281, 'BJM4501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.4', '8.5', '0.7', '22.5', '≥0.3 ', '≥3000pps', '10 ±1 Ω ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (153, 3, 1, 19, 3, 282, 'BJM4501', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.4', '8.5', '0.7', '22.5', '≥0.27 ', '≥3000pps', '14 ±1Ω', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (154, 3, 1, 19, 4, 283, 'BJM5001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5.1', '8.3', '0.8', '18', '≥0.4 ', '≥3000pps', '14 ±1Ω ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (155, 3, 1, 19, 5, 284, 'BJM5002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5.8', '0.8', '18', '≥0.27 ', '≥3000pps', '14 ±1Ω', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (156, 4, 1, 20, 1, 285, '0010401', NULL, '1/4\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4P', '8', '2', '4.1', '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (157, 4, 1, 20, 2, 286, '0020401', NULL, '1/4\'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4P', '8', '1.85', '3.6', '83.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (158, 4, 1, 20, 3, 287, '0080401', NULL, '1/4\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4P', '0.3', '1.3', '4.21', '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (159, 4, 1, 20, 4, 288, '0080402', NULL, '1/7\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4P', '1.2', '2', '3.9', '102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (160, 4, 1, 20, 5, 289, '0080501', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4P', '13', '2.2', '4.33', '76.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (161, 4, 1, 20, 6, 290, '0080502', NULL, '1/4\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '8', '2.2', '4.3', '105', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (162, 4, 1, 20, 7, 291, '0120501', NULL, '1/2.7\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '12', '2.2', '4.5', '78.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (163, 4, 1, 20, 8, 292, '0120502', NULL, '1/2.8\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '12', '1.8', '4.8', '76.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (164, 4, 1, 20, 9, 293, '0130401', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2.2', '4.18', '78.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (165, 4, 1, 20, 10, 294, '0130502', NULL, '1/3\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2', '4.26', '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (166, 4, 1, 20, 11, 295, '0130503', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2.2', '3.9', '81.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (167, 4, 1, 20, 12, 296, '0130504', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2', '4.18', '78.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (168, 4, 1, 20, 13, 297, '0130505', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2.2', '3.95', '81.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (169, 4, 1, 20, 14, 298, '0130506', NULL, '1/3\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '2.4', '6', '46.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (170, 4, 1, 20, 15, 299, '0130507', NULL, '1/3\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '16', '2.2', '3.5', '86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (171, 4, 1, 20, 16, 300, '0130508', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '16', '2.05', '4.3', '78', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (172, 4, 1, 20, 17, 301, '0160501', NULL, '1/2.8\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '16', '1.8', '4.8', '76.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (173, 4, 1, 20, 18, 302, '0160502', NULL, '1/4\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '8', '2.2', '4.6', '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (174, 4, 1, 20, 19, 303, '0160503', NULL, '1/3.06\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5P', '13', '1.85', '4.3', '76.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (175, 4, 1, 20, 20, 304, '0480601', NULL, '1/2.3\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6P', '48', '1.79', '5.4', '79.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (177, 4, 1, 22, 1, 305, '0021401', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1G4P', '2', '1.8', '6.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (178, 4, 1, 22, 2, 306, '0481501', NULL, '1/2.25\"', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1G5P', '48', '1.65', '5.7', '79.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (179, 4, 1, 22, 3, 307, '1081601', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1G5P', '108', '1.54', '7.89', '82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (180, 4, 1, 23, 1, 308, '0014001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4G', '1', '2.4', '9.95', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (181, 4, 1, 23, 2, 309, '0036001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6G', '2.3', '1.8', '24.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (182, 4, 1, 24, 1, 310, 'M1P VCM', NULL, '10.8*10.8*2.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.23g (Max)(M8.5 P0.2)', '-110um~220um', '±100 mA', '22 ± 3 Ω', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (183, 4, 1, 24, 2, 311, '8M3X', NULL, '10.2*10.2*3.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.13g (Max)', 'AF：-50um~200um，OIS：-110um~110um', 'AF:±90 mA，OIS: ±160 mA', '18 ± 3 Ω', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (184, 4, 1, 27, 1, 312, 'FZL1棱镜模组', NULL, '6.79*12.5*5.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.655g', '/', '±1°', '/', '+3.5°/-4.5°', '100mA', '17.2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (185, 4, 1, 27, 2, 313, 'FZL1镜头模组', NULL, '16.43*12.5*5.7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.26g', '±0.17', '±0.32', '±0.27', '±0.42', '100mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (186, 4, 1, 27, 3, 314, 'FZL2棱镜模组', NULL, '6.69*10.95*5.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.33g', '/', '±1°', '/', '+3.5°/-5°', '100mA', '10.28', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (187, 4, 1, 27, 4, 315, 'FZL2镜头模组', NULL, '9.98*10.95*5.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.66g', '±0.12', '±0.22', '±0.22\r\n±0.22', '±0.32', '100mA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (188, 5, 1, 30, 1, 316, 'WCNMRC19001', '接收端', '56x51x0.4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '84% @EPP', '4', '<1.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (189, 5, 1, 30, 2, 317, 'WCNMRC19002', '接收端', '56x51x0.3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '83% @EPP', '4', '<1.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (190, 5, 1, 34, 1, 318, 'CF001', '2.6G(2515-2675M)', '43x22x6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '平均≤1\n最大≤1.8', '≥20', '≥27dBc@2484MHz~2500MHz ≥27dBc@2700MHz~2745MHz ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (191, 5, 1, 34, 2, 319, 'CF002', '3.5G(3400-3600M)', '28x15x5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '平均≤1\n最大≤1.8', '≥20', '≥20dBc@3300MHz~3350MHz ≥20dBc@3650MHz~3700MHz', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (192, 5, 1, 35, 1, 320, 'SM003（PCB微带）', '3.5G', '720x375x14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', '25.1dBi（3.5GHz）', 'PCB工艺振子，低剖面', NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (193, 5, 1, 35, 2, 321, 'SM002(PCB半波)', '3.5G', '720x375x25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', '25.2dBi（3.5GHz）', 'PCB工艺传统半波振子结构天线', NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (194, 5, 1, 35, 3, 322, 'SM001(LDS)', '3.5G', '720x375x14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', '未知', 'LDS塑料振子，易组装，无焊点，高一致性', NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (195, 5, 1, 35, 4, 323, 'SM004（缝隙阵列）', '2.6G', '938x449x20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '64', '未知', '冲压金属片振子，无焊点，高隔离，高性能', NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (196, 5, 1, 36, 1, 324, 'MM005', '24.25-27.5G', '300x250x60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '256', '27.3dBi（@26GHz V0° H 0°）', NULL, 'LDS天线罩方案', NULL, NULL);
INSERT INTO `product_detail` VALUES (197, 5, 1, 36, 2, 325, 'MM002', '24.25-27.5G', '300x250x60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '256', '27.3dBi（@26GHz V0° H 0°）', NULL, 'AOB', NULL, NULL);

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search`  (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `col1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `col7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`search_id`) USING BTREE,
  UNIQUE INDEX `menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES (1, 7, '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');
INSERT INTO `search` VALUES (2, 8, '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');
INSERT INTO `search` VALUES (3, 9, '型号', '尺寸(长×宽)', '输出类型', '出口位置\r\n出口位置', '灵敏度', '信噪比', 'AOP（THD=10%）');
INSERT INTO `search` VALUES (4, 10, '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES (5, 11, '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES (6, 12, '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES (7, 13, '型号', '尺寸（长×宽）', '固有频率', '加速度Grms', 'BL', '阻抗', '额定电压');
INSERT INTO `search` VALUES (8, 14, '型号', '电机长度', '电机直径', '额定电压', '工作频率', '步矩角', '单相电阻');
INSERT INTO `search` VALUES (9, 15, '型号', '尺寸（长×宽）', 'SPL', 'F0', 'BL', '阻抗', '额定电压');
INSERT INTO `search` VALUES (10, 6, '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');

-- ----------------------------
-- Table structure for silm_micro
-- ----------------------------
DROP TABLE IF EXISTS `silm_micro`;
CREATE TABLE `silm_micro`  (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sm_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sm_dimension` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sm_sensitive` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sm_signal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sm_aop` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sm_way` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of silm_micro
-- ----------------------------
INSERT INTO `silm_micro` VALUES (1, 'SM0802L-S421-M02', '3.76x2.95x1.10', '-42±1', 'typ 57', '130', '顶部');
INSERT INTO `silm_micro` VALUES (2, 'SM0401BL-RFS381-M02', '3.76x2.95x1.10', '-38±1', 'typ 65', '125', '底部');
INSERT INTO `silm_micro` VALUES (3, 'SM0401L-RS321-G02', '3.76x2.95x1.10', '-32±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES (4, 'SM0401L-RS381-G02', '3.76x2.95x1.10', '-38±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES (5, 'AM0502B-RS381-M02', '3.50x2.65x0.98', '-38±1', 'typ 66', '125', '底部');
INSERT INTO `silm_micro` VALUES (6, 'AM0502-RS381-G03', '3.50x2.65x1.0', '-38±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES (7, 'SM0103B-RFS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES (8, 'SM0103B-RIS421-M02', '2.75x1.85x0.90', '-42±1', 'typ 64', '134', '底部');
INSERT INTO `silm_micro` VALUES (9, 'AM0502B-RHS381-M02', '3.50x2.65x0.98', '-38±1', 'typ 68', '125', '底部');
INSERT INTO `silm_micro` VALUES (10, 'SM0103B-RLS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES (11, 'SM0401B-RDS381-M02', '4.00x3.00x1.2', '-38±1', 'typ 70', '130', '底部');
INSERT INTO `silm_micro` VALUES (12, 'SM0103B-U381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES (13, 'SM0102B-FDS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 65', '135', '底部');

-- ----------------------------
-- Table structure for switch
-- ----------------------------
DROP TABLE IF EXISTS `switch`;
CREATE TABLE `switch`  (
  `sw_id` int(11) NOT NULL AUTO_INCREMENT,
  `sw_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_size` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_stype` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_power` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_voltage` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_resistance` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sw_capacity` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sw_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of switch
-- ----------------------------
INSERT INTO `switch` VALUES (1, 'WS5200', '<2mm2', 'SP4T', '39', '120', '1', '10');
INSERT INTO `switch` VALUES (2, 'WCS', '<2mm2', 'SP4T', '39', '130', '0.5', '10');

-- ----------------------------
-- Table structure for tuner
-- ----------------------------
DROP TABLE IF EXISTS `tuner`;
CREATE TABLE `tuner`  (
  `tun_id` int(11) NOT NULL AUTO_INCREMENT,
  `tun_type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tun_size` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tun_capno` int(11) NULL DEFAULT NULL,
  `tun_range` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tun_qvalue` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tun_screen` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tun_frequency` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tun_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuner
-- ----------------------------
INSERT INTO `tuner` VALUES (1, 'WS1040', '<5.7mm2', 4, '0.3 pF – 2.9 pF', '120', '0.1pF', '4.3G');
INSERT INTO `tuner` VALUES (2, 'WS1021.2', '<2mm2', 1, '0.25 pF – 3.0 pF', '294', 'Programmable', '11G');

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
delimiter ;;
CREATE FUNCTION `getChildLst`(rootId INT)
 RETURNS varchar(1000) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN 
        DECLARE sTemp VARCHAR(1000); 
        DECLARE sTempChd VARCHAR(1000); 
 
        SET sTemp = '^'; 
        SET sTempChd =cast(rootId as CHAR); 
 
        WHILE sTempChd is not null DO 
            SET sTemp = concat(sTemp,',',sTempChd); 
            SELECT group_concat(menu_id) INTO sTempChd FROM menu where FIND_IN_SET(parent_menu_id,sTempChd)>0; 
        END WHILE; 
        RETURN sTemp; 
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
