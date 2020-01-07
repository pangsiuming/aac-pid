/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : pid

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2020-01-07 23:13:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for digital_micro
-- ----------------------------
DROP TABLE IF EXISTS `digital_micro`;
CREATE TABLE `digital_micro` (
  `dm_id` int(11) NOT NULL AUTO_INCREMENT,
  `dm_type` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dm_dimension` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dm_sensitive` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dm_signal` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dm_aop` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `dm_way` char(20) DEFAULT NULL,
  PRIMARY KEY (`dm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of digital_micro
-- ----------------------------
INSERT INTO `digital_micro` VALUES ('1', 'SDM0401-RS261-G04', '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部');
INSERT INTO `digital_micro` VALUES ('2', 'SDM0401B-RS261-M02', '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '底部');
INSERT INTO `digital_micro` VALUES ('3', 'SDM0502-RFS261-G02', '3.50x2.65x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部');
INSERT INTO `digital_micro` VALUES ('4', 'SDM0502B-RS261-M02', '3.50x2.65x0.98', '-26±1', 'typ 65', 'AOP=120', '底部');
INSERT INTO `digital_micro` VALUES ('5', 'SDM0502B-FDS371-M02', '3.35x2.50x0.98', '-37±1', 'typ 65', 'AOP=132.5', '底部');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_menu_id` int(11) DEFAULT NULL,
  `menu_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'MEME类器件', '0', null);
INSERT INTO `menu` VALUES ('2', '电声类器件', '0', null);
INSERT INTO `menu` VALUES ('3', '电磁转动类', '0', null);
INSERT INTO `menu` VALUES ('4', '光学', '0', null);
INSERT INTO `menu` VALUES ('5', '精密器件', '0', null);
INSERT INTO `menu` VALUES ('6', '模拟麦克风', '1', 'search');
INSERT INTO `menu` VALUES ('7', '数字麦克风', '1', 'search');
INSERT INTO `menu` VALUES ('8', '压电麦克风', '1', 'search');
INSERT INTO `menu` VALUES ('9', '气压&麦克风二合一传感器', '1', 'search');
INSERT INTO `menu` VALUES ('10', '天线调谐器（Tuner）', '1', 'search');
INSERT INTO `menu` VALUES ('11', '天线开关（Switch）', '1', 'search');
INSERT INTO `menu` VALUES ('12', '微型扬声器', '2', 'search');
INSERT INTO `menu` VALUES ('13', '受话器', '2', 'search');
INSERT INTO `menu` VALUES ('14', '扬声器&受话器二合一', '2', 'search');
INSERT INTO `menu` VALUES ('15', '中型扬声器', '2', 'search');
INSERT INTO `menu` VALUES ('16', '耳机芯', '2', 'search');
INSERT INTO `menu` VALUES ('17', '触感器', '3', 'search');
INSERT INTO `menu` VALUES ('18', '激励器', '3', 'search');
INSERT INTO `menu` VALUES ('19', '步进电机模组', '3', 'search');
INSERT INTO `menu` VALUES ('20', '塑胶镜头', '4', 'search');
INSERT INTO `menu` VALUES ('21', 'WLG镜片\r', '4', 'search');
INSERT INTO `menu` VALUES ('22', '混合镜头', '4', 'search');
INSERT INTO `menu` VALUES ('23', '玻璃镜头', '4', 'search');
INSERT INTO `menu` VALUES ('24', '音圈马达', '4', 'search');
INSERT INTO `menu` VALUES ('25', 'SMA驱动器', '4', 'search');
INSERT INTO `menu` VALUES ('26', '常规镜头模组', '4', 'search');
INSERT INTO `menu` VALUES ('27', '潜望式镜头模组', '4', 'search');
INSERT INTO `menu` VALUES ('28', 'LCP天线/传输线及模组', '5', 'search');
INSERT INTO `menu` VALUES ('29', 'LDS天线/电磁屏蔽件', '5', 'search');
INSERT INTO `menu` VALUES ('30', '无线充电', '5', 'search');
INSERT INTO `menu` VALUES ('31', '散热产品', '5', 'search');
INSERT INTO `menu` VALUES ('32', '3D玻璃', '5', 'search');
INSERT INTO `menu` VALUES ('33', '金属结构件', '5', 'search');
INSERT INTO `menu` VALUES ('34', '基站陶瓷滤波器', '5', 'search');
INSERT INTO `menu` VALUES ('35', '基站天线', '5', 'search');
INSERT INTO `menu` VALUES ('36', '毫米波天线', '5', 'search');
INSERT INTO `menu` VALUES ('37', '全部', '6', 'detail');
INSERT INTO `menu` VALUES ('38', '系列一', '6', 'detail');
INSERT INTO `menu` VALUES ('39', '系列二', '6', 'detail');
INSERT INTO `menu` VALUES ('40', '全部', '7', 'detail');
INSERT INTO `menu` VALUES ('41', '系列一', '7', 'detail');
INSERT INTO `menu` VALUES ('42', '系列二', '7', 'detail');
INSERT INTO `menu` VALUES ('43', '全部', '8', 'detail');
INSERT INTO `menu` VALUES ('44', '系列一', '8', 'detail');
INSERT INTO `menu` VALUES ('45', '系列二', '8', 'detail');
INSERT INTO `menu` VALUES ('46', '全部', '9', 'detail');
INSERT INTO `menu` VALUES ('47', '系列一', '9', 'detail');
INSERT INTO `menu` VALUES ('48', '系列二', '9', 'detail');
INSERT INTO `menu` VALUES ('49', '全部', '10', 'detail');
INSERT INTO `menu` VALUES ('50', '系列一', '10', 'detail');
INSERT INTO `menu` VALUES ('51', '系列二', '10', 'detail');
INSERT INTO `menu` VALUES ('52', '全部', '11', 'detail');
INSERT INTO `menu` VALUES ('53', '系列一', '11', 'detail');
INSERT INTO `menu` VALUES ('54', '系列二', '11', 'detail');
INSERT INTO `menu` VALUES ('55', '全部', '12', 'detail');
INSERT INTO `menu` VALUES ('56', '系列一', '12', 'detail');
INSERT INTO `menu` VALUES ('57', '系列二', '12', 'detail');
INSERT INTO `menu` VALUES ('100', 'SM0802L-S421-M02', '37', 'end');
INSERT INTO `menu` VALUES ('101', 'SM0401BL-RFS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('102', 'SM0401L-RS321-G02', '37', 'end');
INSERT INTO `menu` VALUES ('103', 'SM0401L-RS381-G02', '37', 'end');
INSERT INTO `menu` VALUES ('104', 'AM0502B-RS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('105', 'AM0502-RS381-G03', '37', 'end');
INSERT INTO `menu` VALUES ('106', 'SM0103B-RFS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('107', 'SM0103B-RIS421-M02', '37', 'end');
INSERT INTO `menu` VALUES ('108', 'AM0502B-RHS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('109', 'SM0103B-RLS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('110', 'SM0401B-RDS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('111', 'SM0103B-U381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('112', 'SM0102B-FDS381-M02', '37', 'end');
INSERT INTO `menu` VALUES ('113', 'SDM0401-RS261-G04', '40', 'end');
INSERT INTO `menu` VALUES ('114', 'SDM0401B-RS261-M02', '40', 'end');
INSERT INTO `menu` VALUES ('115', 'SDM0502-RFS261-G02', '40', 'end');
INSERT INTO `menu` VALUES ('116', 'SDM0502B-RS261-M02', '40', 'end');
INSERT INTO `menu` VALUES ('117', 'SDM0502B-FDS371-M02', '40', 'end');
INSERT INTO `menu` VALUES ('118', 'AM0502B-PA381-M02', '43', 'end');
INSERT INTO `menu` VALUES ('119', 'MC0401B-RFS381-M02', '46', 'end');
INSERT INTO `menu` VALUES ('120', 'WS1040', '49', 'end');
INSERT INTO `menu` VALUES ('121', 'WS1021.2', '49', 'end');
INSERT INTO `menu` VALUES ('122', 'WS5200', '52', 'end');
INSERT INTO `menu` VALUES ('123', 'WCS', '52', 'end');

-- ----------------------------
-- Table structure for pie_micro
-- ----------------------------
DROP TABLE IF EXISTS `pie_micro`;
CREATE TABLE `pie_micro` (
  `pi_id` int(11) NOT NULL AUTO_INCREMENT,
  `pi_type` varchar(255) DEFAULT NULL,
  `pi_dimension` varchar(255) DEFAULT NULL,
  `pi_sensitive` varchar(255) DEFAULT NULL,
  `pi_signal` varchar(255) DEFAULT NULL,
  `pi_aop` varchar(255) DEFAULT NULL,
  `pi_way` char(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pie_micro
-- ----------------------------
INSERT INTO `pie_micro` VALUES ('1', 'AM0502B-PA381-M02', '3.50x2.65x0.98', '-38±1dB', 'typ 62dB', 'AOP=125dBSPL', '底部');

-- ----------------------------
-- Table structure for pre_micro
-- ----------------------------
DROP TABLE IF EXISTS `pre_micro`;
CREATE TABLE `pre_micro` (
  `pre_id` int(11) NOT NULL AUTO_INCREMENT,
  `pre_type` varchar(255) DEFAULT NULL,
  `pre_dimension` varchar(255) DEFAULT NULL,
  `pre_sensitive` varchar(255) DEFAULT NULL,
  `pre_signal` varchar(255) DEFAULT NULL,
  `pre_aop` varchar(255) DEFAULT NULL,
  `pre_way` char(20) CHARACTER SET utf8 DEFAULT NULL,
  `pre_relerror` varchar(255) DEFAULT NULL,
  `pre_abserror` varchar(255) DEFAULT NULL,
  `pre_noise` varchar(255) DEFAULT NULL,
  `pre_current` char(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`pre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pre_micro
-- ----------------------------
INSERT INTO `pre_micro` VALUES ('1', 'MC0401B-RFS381-M02', '4.0x3.0x1.0', '-38±1', 'typ 62', 'AOP=125', '底部', '±0.06hPa', '±1hPa', '0.5Pa RMS', '<400μA');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `product_icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '声学', null, 'thumb_声学.jpg', '声学.jpg');
INSERT INTO `product` VALUES ('2', '光学', null, 'thumb_光学.jpg', '光学.jpg');
INSERT INTO `product` VALUES ('3', '电磁传动', null, 'thumb_电磁传动.jpg', '电磁传动.jpg');
INSERT INTO `product` VALUES ('4', '精密加工', null, 'thumb_精密加工.jpg', '精密加工.jpg');
INSERT INTO `product` VALUES ('5', '射频', null, 'thumb_射频.jpg', '射频.jpg');
INSERT INTO `product` VALUES ('6', '高速传输', null, 'thumb_高速传输.jpg', '高速传输.jpg');

-- ----------------------------
-- Table structure for product_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `detail_pid` int(11) DEFAULT NULL,
  `detail_did` int(11) DEFAULT NULL,
  `detail_mid` int(11) DEFAULT NULL,
  `detail_mmid` int(11) DEFAULT NULL,
  `detail_pn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_ap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_di` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_po` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_dc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_ac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_se` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_th` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_frg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_thg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_hog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_co` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_wa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_st` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_lt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_al` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_sto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_spec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_opt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_xmax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_snr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_trc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_th10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_adv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_sf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_str` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_res` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fno` int(11) DEFAULT NULL,
  `detail_ttl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_bl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_nf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_tlen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_tdim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_vol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_pace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rsis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_tcf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rfip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_mrfv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_onr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_offc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_esd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_ce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_is` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_stuff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_wire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_master` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fov` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_cra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_tvd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_mic` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_bst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_maxv` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_maxp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_maxc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_acc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_bt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_rt50` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_bt50` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_vd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_am` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_fen` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of product_detail
-- ----------------------------
INSERT INTO `product_detail` VALUES ('62', '6', '1', '37', '100', 'SM0802L-S421-M02', null, '3.76x2.95x1.10', '-42±1', 'typ 57', '130', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('63', '6', '1', '37', '101', 'SM0401BL-RFS381-M02', null, '3.76x2.95x1.10', '-38±1', 'typ 65', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('64', '6', '1', '37', '102', 'SM0401L-RS321-G02', null, '3.76x2.95x1.10', '-32±1', 'typ 66', '125', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('65', '6', '1', '37', '103', 'SM0401L-RS381-G02', null, '3.76x2.95x1.10', '-38±1', 'typ 66', '125', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('66', '6', '1', '37', '104', 'AM0502B-RS381-M02', null, '3.50x2.65x0.98', '-38±1', 'typ 66', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('67', '6', '1', '37', '105', 'AM0502-RS381-G03', null, '3.50x2.65x1.0', '-38±1', 'typ 66', '125', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('68', '6', '1', '37', '106', 'SM0103B-RFS381-M02', null, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('69', '6', '1', '37', '107', 'SM0103B-RIS421-M02', null, '2.75x1.85x0.90', '-42±1', 'typ 64', '134', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('70', '6', '1', '37', '108', 'AM0502B-RHS381-M02', null, '3.50x2.65x0.98', '-38±1', 'typ 68', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('71', '6', '1', '37', '109', 'SM0103B-RLS381-M02', null, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('72', '6', '1', '37', '110', 'SM0401B-RDS381-M02', null, '4.00x3.00x1.2', '-38±1', 'typ 70', '130', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('73', '6', '1', '37', '111', 'SM0103B-U381-M02', null, '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('74', '6', '1', '37', '112', 'SM0102B-FDS381-M02', null, '2.75x1.85x0.90', '-38±1', 'typ 65', '135', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('75', '7', '1', '40', '113', 'SDM0401-RS261-G04', null, '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('76', '7', '1', '40', '114', 'SDM0401B-RS261-M02', null, '4.00x3.00x1.0', '-26±1', 'typ 65', 'AOP=120', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('77', '7', '1', '40', '115', 'SDM0502-RFS261-G02', null, '3.50x2.65x1.0', '-26±1', 'typ 65', 'AOP=120', '顶部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('78', '7', '1', '40', '116', 'SDM0502B-RS261-M02', null, '3.50x2.65x0.98', '-26±1', 'typ 65', 'AOP=120', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('79', '7', '1', '40', '117', 'SDM0502B-FDS371-M02', null, '3.35x2.50x0.98', '-37±1', 'typ 65', 'AOP=132.5', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('80', '8', '1', '43', '118', 'AM0502B-PA381-M02', null, '3.50x2.65x0.98', '-38±1dB', 'typ 62dB', 'AOP=125dBSPL', '底部', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('81', '9', '1', '46', '119', 'MC0401B-RFS381-M02', '', '4.0x3.0x1.0', '-38±1', 'typ 62', 'AOP=125', '底部', '±0.06hPa', '±1hPa', '0.5Pa RMS', '<400μA', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('82', '10', '1', '49', '120', 'WS1040\r\n', '<5.7mm2', '', null, null, null, null, null, null, null, null, '4', '0.3 pF – 2.9 pF', '120', '0.1pF', '4.3G', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('83', '10', '1', '49', '121', 'WS1021.2', '<2mm2', null, null, null, null, null, null, null, null, null, '1', '0.25 pF – 3.0 pF', '294', 'Programmable', '11G', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('84', '11', '1', '52', '122', 'WS5200', '<2mm2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'SP4T', '39', '120', '1', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `product_detail` VALUES ('85', '11', '1', '52', '123', 'WCS', '<2mm2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'SP4T', '39', '130', '0.5', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `search_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `col1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `col7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`search_id`) USING BTREE,
  UNIQUE KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('1', '7', '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');
INSERT INTO `search` VALUES ('2', '8', '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');
INSERT INTO `search` VALUES ('3', '9', '型号', '尺寸(长×宽)', '输出类型', '出口位置\r\n出口位置', '灵敏度', '信噪比', 'AOP（THD=10%）');
INSERT INTO `search` VALUES ('4', '10', '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES ('5', '11', '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES ('6', '12', '型号', 'F/No.', 'TTL', 'FOV', '像素', '镜片数', '小头尺寸');
INSERT INTO `search` VALUES ('7', '13', '型号', '尺寸（长×宽）', '固有频率', '加速度Grms', 'BL', '阻抗', '额定电压');
INSERT INTO `search` VALUES ('8', '14', '型号', '电机长度', '电机直径', '额定电压', '工作频率', '步矩角', '单相电阻');
INSERT INTO `search` VALUES ('9', '15', '型号', '尺寸（长×宽）', 'SPL', 'F0', 'BL', '阻抗', '额定电压');
INSERT INTO `search` VALUES ('10', '6', '型号', '尺寸(长×宽)', 'SPL', 'F0', 'THD', '阻抗', '功率');

-- ----------------------------
-- Table structure for silm_micro
-- ----------------------------
DROP TABLE IF EXISTS `silm_micro`;
CREATE TABLE `silm_micro` (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT,
  `sm_type` varchar(255) DEFAULT NULL,
  `sm_dimension` varchar(255) DEFAULT NULL,
  `sm_sensitive` varchar(255) DEFAULT NULL,
  `sm_signal` varchar(255) DEFAULT NULL,
  `sm_aop` varchar(255) DEFAULT NULL,
  `sm_way` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`sm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of silm_micro
-- ----------------------------
INSERT INTO `silm_micro` VALUES ('1', 'SM0802L-S421-M02', '3.76x2.95x1.10', '-42±1', 'typ 57', '130', '顶部');
INSERT INTO `silm_micro` VALUES ('2', 'SM0401BL-RFS381-M02', '3.76x2.95x1.10', '-38±1', 'typ 65', '125', '底部');
INSERT INTO `silm_micro` VALUES ('3', 'SM0401L-RS321-G02', '3.76x2.95x1.10', '-32±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES ('4', 'SM0401L-RS381-G02', '3.76x2.95x1.10', '-38±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES ('5', 'AM0502B-RS381-M02', '3.50x2.65x0.98', '-38±1', 'typ 66', '125', '底部');
INSERT INTO `silm_micro` VALUES ('6', 'AM0502-RS381-G03', '3.50x2.65x1.0', '-38±1', 'typ 66', '125', '顶部');
INSERT INTO `silm_micro` VALUES ('7', 'SM0103B-RFS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES ('8', 'SM0103B-RIS421-M02', '2.75x1.85x0.90', '-42±1', 'typ 64', '134', '底部');
INSERT INTO `silm_micro` VALUES ('9', 'AM0502B-RHS381-M02', '3.50x2.65x0.98', '-38±1', 'typ 68', '125', '底部');
INSERT INTO `silm_micro` VALUES ('10', 'SM0103B-RLS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES ('11', 'SM0401B-RDS381-M02', '4.00x3.00x1.2', '-38±1', 'typ 70', '130', '底部');
INSERT INTO `silm_micro` VALUES ('12', 'SM0103B-U381-M02', '2.75x1.85x0.90', '-38±1', 'typ 63', '125', '底部');
INSERT INTO `silm_micro` VALUES ('13', 'SM0102B-FDS381-M02', '2.75x1.85x0.90', '-38±1', 'typ 65', '135', '底部');

-- ----------------------------
-- Table structure for switch
-- ----------------------------
DROP TABLE IF EXISTS `switch`;
CREATE TABLE `switch` (
  `sw_id` int(11) NOT NULL AUTO_INCREMENT,
  `sw_type` varchar(255) DEFAULT NULL,
  `sw_size` varchar(255) DEFAULT NULL,
  `sw_stype` varchar(255) DEFAULT NULL,
  `sw_power` varchar(255) DEFAULT NULL,
  `sw_voltage` varchar(255) DEFAULT NULL,
  `sw_resistance` varchar(255) DEFAULT NULL,
  `sw_capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of switch
-- ----------------------------
INSERT INTO `switch` VALUES ('1', 'WS5200', '<2mm2', 'SP4T', '39', '120', '1', '10');
INSERT INTO `switch` VALUES ('2', 'WCS', '<2mm2', 'SP4T', '39', '130', '0.5', '10');

-- ----------------------------
-- Table structure for tuner
-- ----------------------------
DROP TABLE IF EXISTS `tuner`;
CREATE TABLE `tuner` (
  `tun_id` int(11) NOT NULL AUTO_INCREMENT,
  `tun_type` varchar(255) DEFAULT NULL,
  `tun_size` varchar(255) DEFAULT NULL,
  `tun_capno` int(11) DEFAULT NULL,
  `tun_range` varchar(255) DEFAULT NULL,
  `tun_qvalue` varchar(255) DEFAULT NULL,
  `tun_screen` varchar(255) DEFAULT NULL,
  `tun_frequency` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tuner
-- ----------------------------
INSERT INTO `tuner` VALUES ('1', 'WS1040', '<5.7mm2', '4', '0.3 pF – 2.9 pF', '120', '0.1pF', '4.3G');
INSERT INTO `tuner` VALUES ('2', 'WS1021.2', '<2mm2', '1', '0.25 pF – 3.0 pF', '294', 'Programmable', '11G');

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildLst`(rootId INT) RETURNS varchar(1000) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
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
DELIMITER ;
