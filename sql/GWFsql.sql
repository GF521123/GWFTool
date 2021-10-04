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

 Date: 03/10/2021 15:04:58
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
INSERT INTO `t_role` VALUES (1, '系统管理员 最高权限', '管理员', NULL);
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
INSERT INTO `t_user` VALUES (1, '管理员', 'admin', 'admin', 'admin', '1');
INSERT INTO `t_user` VALUES (2, '主管', '123', '王大锤', 'jack', '2');
INSERT INTO `t_user` VALUES (3, '销售经理', '123', '玛丽', 'marry', '33');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1, 1);
INSERT INTO `t_user_role` VALUES (19, 2, 2);
INSERT INTO `t_user_role` VALUES (20, 4, 2);
INSERT INTO `t_user_role` VALUES (21, 5, 2);
INSERT INTO `t_user_role` VALUES (28, 2, 3);
INSERT INTO `t_user_role` VALUES (29, 4, 3);
INSERT INTO `t_user_role` VALUES (30, 5, 3);
INSERT INTO `t_user_role` VALUES (31, 7, 3);
INSERT INTO `t_user_role` VALUES (49, 15, 5);
INSERT INTO `t_user_role` VALUES (50, 1, 5);

SET FOREIGN_KEY_CHECKS = 1;
