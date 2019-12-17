/*
 Navicat Premium Data Transfer

 Source Server         : Mysql（localhost）
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : pid

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 17/12/2019 19:00:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '声学', 0, NULL);
INSERT INTO `menu` VALUES (2, '光学', 0, NULL);
INSERT INTO `menu` VALUES (3, '电磁传动', 0, NULL);
INSERT INTO `menu` VALUES (4, '精密加工', 0, NULL);
INSERT INTO `menu` VALUES (5, '射频器件', 0, NULL);
INSERT INTO `menu` VALUES (6, '高速传输', 0, NULL);
INSERT INTO `menu` VALUES (7, '扬声器', 1, 'search');
INSERT INTO `menu` VALUES (8, '受话器', 1, 'search');
INSERT INTO `menu` VALUES (9, '麦克风', 1, 'search');
INSERT INTO `menu` VALUES (10, '手机镜头', 2, 'search');
INSERT INTO `menu` VALUES (11, '汽车镜头', 2, 'search');
INSERT INTO `menu` VALUES (12, '光学模组', 2, 'search');
INSERT INTO `menu` VALUES (13, '触感器', 3, 'search');
INSERT INTO `menu` VALUES (14, '传动器', 3, 'search');
INSERT INTO `menu` VALUES (15, '激励器', 3, 'search');
INSERT INTO `menu` VALUES (16, '金属结构件', 4, 'img');
INSERT INTO `menu` VALUES (17, 'LDS天线', 4, 'detail');
INSERT INTO `menu` VALUES (18, '散热', 4, 'detail');
INSERT INTO `menu` VALUES (19, '无线充电', 4, 'detail');
INSERT INTO `menu` VALUES (20, 'Tunner', 5, 'detail');
INSERT INTO `menu` VALUES (21, 'Switch', 5, 'detail');
INSERT INTO `menu` VALUES (22, 'LCP', 6, 'detail');
INSERT INTO `menu` VALUES (23, 'FPC', 6, 'detail');
INSERT INTO `menu` VALUES (24, 'PCB', 6, 'detail');
INSERT INTO `menu` VALUES (25, '15×27mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (26, '9×16mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (27, '10×20mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (28, '11×15mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (30, '12×16mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (31, '12×17mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (32, '13×18mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (33, '6×15mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (34, '8×12mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (35, '8×15mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (36, '5.5×12mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (37, '18×27mm系列', 7, 'detail');
INSERT INTO `menu` VALUES (38, '6×10mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (39, '6×12mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (40, '6×15mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (41, '7×10mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (42, '8×12mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (43, '8×15mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (44, '8×9mm系列', 8, 'detail');
INSERT INTO `menu` VALUES (45, '15×27mm系列', 9, 'detail');
INSERT INTO `menu` VALUES (46, '10×20mm系列', 9, 'detail');
INSERT INTO `menu` VALUES (47, '8×15mm系列', 9, 'detail');
INSERT INTO `menu` VALUES (48, '8×16mm系列', 9, 'detail');
INSERT INTO `menu` VALUES (49, '9×16mm系列', 9, 'detail');
INSERT INTO `menu` VALUES (50, '9×16mm系列', 10, 'detail');
INSERT INTO `menu` VALUES (51, '9×17mm系列', 10, 'detail');
INSERT INTO `menu` VALUES (52, '10×17mm系列', 10, 'detail');
INSERT INTO `menu` VALUES (53, '11×17mm系列', 10, 'detail');
INSERT INTO `menu` VALUES (54, '12×17mm系列', 10, 'detail');
INSERT INTO `menu` VALUES (55, '12×18mm系列', 11, 'detail');
INSERT INTO `menu` VALUES (56, '13×18mm系列', 11, 'detail');
INSERT INTO `menu` VALUES (57, '13×19mm系列', 11, 'detail');
INSERT INTO `menu` VALUES (58, '13×20mm系列', 11, 'detail');
INSERT INTO `menu` VALUES (59, '14×20mm系列', 12, 'detail');
INSERT INTO `menu` VALUES (60, '15×20mm系列', 12, 'detail');
INSERT INTO `menu` VALUES (61, '15×21mm系列', 12, 'detail');
INSERT INTO `menu` VALUES (62, '15×22mm系列', 12, 'detail');
INSERT INTO `menu` VALUES (63, '5×7mm系列', 13, 'detail');
INSERT INTO `menu` VALUES (64, '5×8mm系列', 13, 'detail');
INSERT INTO `menu` VALUES (65, '4×8mm系列', 13, 'detail');
INSERT INTO `menu` VALUES (66, '2×8mm系列', 13, 'detail');
INSERT INTO `menu` VALUES (67, '10×8mm系列', 13, 'detail');
INSERT INTO `menu` VALUES (68, '15×9mm系列', 14, 'detail');
INSERT INTO `menu` VALUES (69, '16×9mm系列', 14, 'detail');
INSERT INTO `menu` VALUES (70, '16×10mm系列', 14, 'detail');
INSERT INTO `menu` VALUES (71, '16×12mm系列', 14, 'detail');
INSERT INTO `menu` VALUES (72, '18×12mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (73, '18×10mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (74, '18×8mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (75, '18×9mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (76, '18×10mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (77, '18×12mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (78, '18×14mm系列', 15, 'detail');
INSERT INTO `menu` VALUES (79, 'SPS1527A-01', 25, 'end');
INSERT INTO `menu` VALUES (80, 'SPS1527A-02', 25, 'end');
INSERT INTO `menu` VALUES (84, 'DMSP0916S-01', 26, 'end');
INSERT INTO `menu` VALUES (85, 'DMSP0916S-02', 26, 'end');
INSERT INTO `menu` VALUES (86, 'EMSP0916S-01', 27, 'end');
INSERT INTO `menu` VALUES (87, 'EMSP0916S-02', 27, 'end');
INSERT INTO `menu` VALUES (88, 'AMSP0916S-01', 30, 'end');
INSERT INTO `menu` VALUES (89, 'AMSP0916S-02', 30, 'end');
INSERT INTO `menu` VALUES (90, 'GMSP0916S-01', 38, 'end');
INSERT INTO `menu` VALUES (91, 'GMSP0916S-02', 38, 'end');
INSERT INTO `menu` VALUES (92, 'ZMSP0916S-01', 39, 'end');
INSERT INTO `menu` VALUES (93, 'ZMSP0916S-02', 39, 'end');

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
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_detail
-- ----------------------------
INSERT INTO `product_detail` VALUES (1, 7, 1, 25, 79, 'SPS1527A-01', 'SPS1527A-02', '15*27', '2W', '5ohm', '5ohm', '840Hz', '101dB', '300Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (51, 7, 1, 25, 80, 'SPS1527A-02', 'AAA', '15*27', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (52, 7, 2, 26, 84, 'DMSP0916S-01', 'AAA', '9*16', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (53, 7, 2, 26, 85, 'DMSP0916S-02', 'AAA', '9*16', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (54, 7, 3, 27, 86, 'EMSP0916S-01', 'AAA', '10*20', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (55, 7, 3, 27, 87, 'EMSP0916S-02', 'AAA', '10*20', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (56, 8, 1, 38, 90, 'GMSP0916S-01', 'AAA', '6*10', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (57, 8, 1, 38, 91, 'GMSP0916S-02', 'AAA', '6*10', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (58, 8, 2, 39, 92, 'ZMSP0916S-01	', 'AAA', '6*12', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (59, 8, 2, 39, 93, 'ZMSP0916S-02	', 'AAA', '6*12', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (60, 7, 4, 30, 88, 'AMSP0916S-01	', 'AAA', '12*16', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product_detail` VALUES (61, 7, 4, 30, 89, 'AMSP0916S-02	', 'AAA', '12*16', '2W', '5ohm', '5ohm', '840Hz', '101dB', '400Hz', 'SPS1527A-01', 'SPS1527A-01', 'SPS1527A-01', '有', '焊盘', '不防水', 'N', '在产', NULL, 'N', '无库存', 'SPS1527A-01', NULL, '黄振', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
INSERT INTO `search` VALUES (10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
