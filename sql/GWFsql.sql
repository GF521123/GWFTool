/*
 Navicat Premium Data Transfer

 Source Server         : 521123
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : gwfcore

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 04/10/2021 15:27:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1705032705 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 'menu-plugin', '系统菜单', 1, NULL, -1);
INSERT INTO `t_menu` VALUES (10, '&#xe68e;', '首页', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (60, '&#xe631;', '系统管理', 1, NULL, 1);
INSERT INTO `t_menu` VALUES (61, '', '工具管理', 1, '', 1);
INSERT INTO `t_menu` VALUES (1000, 'icon-text', '测试', 2, 'https://www.hongxiu.com/', 10);
INSERT INTO `t_menu` VALUES (1001, '&#xe6b2;', 'Work', 2, '', 10);
INSERT INTO `t_menu` VALUES (6000, '&#xe631;', '菜单管理', 2, 'admin/menu/tomunemanage', 60);
INSERT INTO `t_menu` VALUES (6010, 'icon-icon10', '角色管理', 2, 'admin/role/torolemanage', 60);
INSERT INTO `t_menu` VALUES (6020, '&#xe612;', '用户管理', 2, 'admin/user/tousermanage', 60);
INSERT INTO `t_menu` VALUES (6030, '&#xe631;', 'sql监控', 2, 'druid/index.html', 60);
INSERT INTO `t_menu` VALUES (6040, 'icon-ziliao', '修改密码', 2, 'admin/user/toUpdatePassword', 60);
INSERT INTO `t_menu` VALUES (6050, 'icon-tuichu', '安全退出', 2, 'user/logout', 60);
INSERT INTO `t_menu` VALUES (100000, '', '测试1', 3, '', 1000);
INSERT INTO `t_menu` VALUES (100001, '', '测试2', 3, '', 1000);
INSERT INTO `t_menu` VALUES (100100, '&#xe705;', '公司编码', 3, 'work/company/page', 1001);
INSERT INTO `t_menu` VALUES (100101, '', '会所编码', 3, '', 1001);
INSERT INTO `t_menu` VALUES (200000, '44', '44', 3, '44', 2000);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员 最高权限', '超级管理员', NULL);
INSERT INTO `t_role` VALUES (2, '主管', '主管', NULL);
INSERT INTO `t_role` VALUES (4, '采购员', '采购员', NULL);
INSERT INTO `t_role` VALUES (5, '销售经理', '销售经理', '22');
INSERT INTO `t_role` VALUES (7, '仓库管理员', '仓库管理员', NULL);
INSERT INTO `t_role` VALUES (9, '总经理', '总经理', NULL);
INSERT INTO `t_role` VALUES (15, '111111', '111111', NULL);
INSERT INTO `t_role` VALUES (16, '222', '222222', NULL);
INSERT INTO `t_role` VALUES (17, '33', '333333', NULL);
INSERT INTO `t_role` VALUES (19, '555', '555555', NULL);
INSERT INTO `t_role` VALUES (20, '666666', '666666', NULL);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 342 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (36, 10, 2);
INSERT INTO `t_role_menu` VALUES (42, 1, 2);
INSERT INTO `t_role_menu` VALUES (45, 1, 4);
INSERT INTO `t_role_menu` VALUES (48, 1, 5);
INSERT INTO `t_role_menu` VALUES (55, 1, 9);
INSERT INTO `t_role_menu` VALUES (65, 1, 7);
INSERT INTO `t_role_menu` VALUES (66, 10, 7);
INSERT INTO `t_role_menu` VALUES (126, 60, 15);
INSERT INTO `t_role_menu` VALUES (127, 6010, 15);
INSERT INTO `t_role_menu` VALUES (128, 6020, 15);
INSERT INTO `t_role_menu` VALUES (129, 6030, 15);
INSERT INTO `t_role_menu` VALUES (130, 6040, 15);
INSERT INTO `t_role_menu` VALUES (131, 6050, 15);
INSERT INTO `t_role_menu` VALUES (248, 2000, 1);
INSERT INTO `t_role_menu` VALUES (313, 6100, 1);
INSERT INTO `t_role_menu` VALUES (327, 10, 1);
INSERT INTO `t_role_menu` VALUES (328, 1000, 1);
INSERT INTO `t_role_menu` VALUES (329, 100000, 1);
INSERT INTO `t_role_menu` VALUES (330, 100001, 1);
INSERT INTO `t_role_menu` VALUES (331, 1001, 1);
INSERT INTO `t_role_menu` VALUES (332, 100100, 1);
INSERT INTO `t_role_menu` VALUES (333, 100101, 1);
INSERT INTO `t_role_menu` VALUES (334, 60, 1);
INSERT INTO `t_role_menu` VALUES (335, 6000, 1);
INSERT INTO `t_role_menu` VALUES (336, 6010, 1);
INSERT INTO `t_role_menu` VALUES (337, 6020, 1);
INSERT INTO `t_role_menu` VALUES (338, 6030, 1);
INSERT INTO `t_role_menu` VALUES (339, 6040, 1);
INSERT INTO `t_role_menu` VALUES (340, 6050, 1);
INSERT INTO `t_role_menu` VALUES (341, 61, 1);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bz` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `true_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '超级管理员', 'admin', 'admin', 'admin', '1');
INSERT INTO `t_user` VALUES (2, '管理员', 'gwf', 'gwf', 'gwf', '2');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 1);
INSERT INTO `t_user_role` VALUES (28, 2, 3);
INSERT INTO `t_user_role` VALUES (29, 4, 3);
INSERT INTO `t_user_role` VALUES (30, 5, 3);
INSERT INTO `t_user_role` VALUES (31, 7, 3);
INSERT INTO `t_user_role` VALUES (49, 15, 5);
INSERT INTO `t_user_role` VALUES (50, 1, 5);
INSERT INTO `t_user_role` VALUES (51, 1, 2);

-- ----------------------------
-- Table structure for tableone
-- ----------------------------
DROP TABLE IF EXISTS `tableone`;
CREATE TABLE `tableone`  (
  `O_ID` int(11) NOT NULL AUTO_INCREMENT,
  `O_Uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统编码',
  `O_Uname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `O_text` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `O_leve` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省/市级',
  `O_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时间',
  `O_Tabout` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `inY` int(5) NULL DEFAULT NULL COMMENT '亿博士添加',
  `inJ` int(5) NULL DEFAULT NULL COMMENT '金蝶添加',
  PRIMARY KEY (`O_ID`, `O_Uid`, `O_leve`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tableone
-- ----------------------------
INSERT INTO `tableone` VALUES (1, '0101', '同芙健康产业有限公司', '深圳本部', '省级', '2017-09-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (2, '0102', '北京同芙健康科技有限公司', '北京公司', '省级', '2019-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (3, '0103', '天津同芙健康科技有限公司', '天津公司', '省级', '2019-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (4, '0104', '广东同芙生物科技有限公司', '广东公司', '省级', '2017-02-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (5, '0105', '湖南同芙健康产业有限公司', '湖南公司', '省级', '2018-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (6, '0106', '浙江同芙健康科技有限公司', '浙江公司', '省级', '2018-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (7, '0107', '湖北同芙健康产业有限公司', '湖北公司', '省级', '2018-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (8, '0108', '重庆同芙健康产业有限公司', '重庆公司', '省级', '2018-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (9, '0109', '四川同芙健康科技有限公司', '四川公司', '省级', '2018-07-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (10, '0110', '福建同芙健康产业有限公司', '福建公司', '省级', '2018-07-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (11, '0111', '广西同芙健康科技有限公司', '广西公司', '省级', '2019-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (12, '0112', '上海同芙健康科技有限公司', '上海公司', '省级', '2019-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (13, '0113', '山东同芙健康科技有限公司', '山东公司', '省级', '2019-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (14, '0114', '云南同芙健康产业有限公司', '云南公司', '省级', '2021-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (15, '0115', '贵州同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (16, '0116', '陕西同芙健康科技有限公司', '陕西公司', '省级', '2021-04-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (17, '0117', '新疆同芙健康产业有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (18, '0118', '内蒙古同芙健康产业有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (19, '0119', '河北同芙健康科技有限公司', '河北公司', '省级', '2021-04-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (20, '0120', '辽宁同芙健康产业有限公司', '辽宁公司', '省级', '2021-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (21, '0121', '吉林同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (22, '0122', '黑龙江同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (23, '0123', '江西同芙健康科技有限公司', '江西公司', '省级', '2021-04-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (24, '0124', '河南同芙健康科技有限公司', '河南公司', '省级', '2021-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (25, '0125', '山西同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (26, '0126', '台湾同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (27, '0127', '香港同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (28, '0128', '海南同芙健康科技有限公司', '海南公司', '省级', '2021-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (29, '0129', '澳门同芙健康科技有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (30, '0130', '安徽同芙健康产业有限公司', NULL, '省级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (31, '0131', '江苏同芙健康科技有限公司', '江苏公司', '省级', '2021-04-15', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (32, '0132', '广东同芙医疗集团有限公司', NULL, '', '2019-01-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (33, '0133', '广东同芙教育集团有限公司', NULL, '', '2019-01-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (34, '0134', '同芙旅游控股有限公司 ', NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (35, '0135', '同芙农业控股有限公司 ', NULL, '', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (36, '0119S01', '邢台同芙健康科技有限公司', '邢台公司', '市级', '2019-08-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (37, '0119S02', NULL, '廊坊公司', '市级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (38, '0104S01', '佛山同芙健康科技有限公司', '佛山公司', '市级', '2018-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (39, '0104S02', '中山同芙健康科技有限公司', '中山公司', '市级', '2017-06-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (40, '0104S03', '东莞同芙健康产业有限公司', '东莞公司', '市级', '2017-10-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (41, '0104S04', '惠州同芙健康科技有限公司', '惠州公司', '市级', '2017-10-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (42, '0104S05', '江门同芙健康科技有限公司', '江门公司', '市级', '2020-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (43, '0104S06', '珠海同芙健康产业有限公司', '珠海公司', '市级', '2017-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (44, '0106S01', '嘉兴同芙健康科技有限公司', '嘉兴公司', '市级', '2019-04-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (45, '0106S02', '绍兴同芙健康科技有限公司', '绍兴公司', '市级', '2019-07-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (46, '0110S01', '泉州同芙健康产业有限公司', '泉州公司', '市级', '2019-08-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (47, '0110S02', '厦门同芙健康科技有限公司', '厦门公司', '市级', '43159.0', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (48, '0110S03', '莆田同芙健康产业有限公司', '莆田公司', '市级', '2020-07-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (49, '0112S01', '上海同芙生物科技有限公司', '上海公司', '市级', '2020-03-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (50, '0105S01', '长沙同芙健康产业有限公司', '湖南公司', '市级', '2018-04-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (51, '0104S07', '广州同光美容科技有限公司', '广东公司', '市级', '2017-02-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (52, '0110S04', '漳州同芙健康科技有限公司', '漳州公司', '市级', '2021-04-15', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (53, '0106S03', NULL, '宁波公司', '市级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (54, '0106S04', NULL, '温州公司', '市级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (55, '0113S01', NULL, '青岛公司', '市级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (56, '0131S01', NULL, '无锡公司', '市级', NULL, NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (58, '0110S05', '福州同芙东区实业有限公司 ', '福建公司（福州）', '市级', '2018-07-01', NULL, NULL, NULL);
INSERT INTO `tableone` VALUES (800, '0120S0111111', '大连1', '大连公司1', '省级', '2021-09-15', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
