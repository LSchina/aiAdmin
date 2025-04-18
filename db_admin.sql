/*
 Navicat Premium Data Transfer

 Source Server         : ds
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : db_admin

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/04/2025 00:30:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `de_id` int NOT NULL COMMENT '部门id',
  `user_id` int NULL DEFAULT NULL COMMENT '岗位人员id',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '人员姓名',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称||岗位名称',
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int NULL DEFAULT NULL COMMENT '父级id，部门与岗位之间的关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_department
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单主键ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `parent_id` bigint NULL DEFAULT NULL COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 'system', 0, 1, '/sys', '', 'M', '', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '业务管理', 'monitor', 0, 2, '/bsns', '', 'M', '', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '业务管理目录');
INSERT INTO `sys_menu` VALUES (3, '用户管理', 'user', 1, 1, '/sys/user', 'sys/user/index', 'C', 'system:user:list', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (4, '角色管理', 'peoples', 1, 2, '/sys/role', 'sys/role/index', 'C', 'system:role:list', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (5, '菜单管理', 'tree-table', 1, 3, '/sys/menu', 'sys/menu/index', 'C', 'system:menu:list', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (6, '部门管理', 'tree', 2, 1, '/bsns/department', 'bsns/Department', 'C', '', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (7, '岗位管理', 'post', 2, 2, '/bsns/post', 'bsns/Post', 'C', '', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (8, '用户新增', '#', 3, 2, '', '', 'F', 'system:user:add', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '添加用户按钮');
INSERT INTO `sys_menu` VALUES (9, '用户修改', '#', 3, 3, '', '', 'F', 'system:user:edit', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '修改用户按钮');
INSERT INTO `sys_menu` VALUES (10, '用户删除', '#', 3, 4, '', '', 'F', 'system:user:delete', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '删除用户按钮');
INSERT INTO `sys_menu` VALUES (11, '分配角色', '#', 3, 5, '', '', 'F', 'system:user:role', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '分配角色按钮');
INSERT INTO `sys_menu` VALUES (12, '重置密码', '#', 3, 6, '', '', 'F', 'system:user:resetPwd', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '重置密码按钮');
INSERT INTO `sys_menu` VALUES (13, '角色新增', '#', 4, 2, '', '', 'F', 'system:role:add', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '添加用户按钮');
INSERT INTO `sys_menu` VALUES (14, '角色修改', '#', 4, 3, '', '', 'F', 'system:role:edit', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '修改用户按钮');
INSERT INTO `sys_menu` VALUES (15, '角色删除', '#', 4, 4, '', NULL, 'F', 'system:role:delete', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '删除用户按钮');
INSERT INTO `sys_menu` VALUES (16, '分配权限', '#', 4, 5, '', '', 'F', 'system:role:menu', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '分配权限按钮');
INSERT INTO `sys_menu` VALUES (17, '菜单新增', '#', 5, 2, '', NULL, 'F', 'system:menu:add', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '添加菜单按钮');
INSERT INTO `sys_menu` VALUES (18, '菜单修改', '#', 5, 3, '', NULL, 'F', 'system:menu:edit', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '修改菜单按钮');
INSERT INTO `sys_menu` VALUES (19, '菜单删除', '#', 5, 4, '', NULL, 'F', 'system:menu:delete', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '删除菜单按钮');
INSERT INTO `sys_menu` VALUES (20, '用户查询', '#', 3, 1, '', NULL, 'F', 'system:user:query', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '用户查询按钮');
INSERT INTO `sys_menu` VALUES (21, '角色查询', '#', 4, 1, '', NULL, 'F', 'system:role:query', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '角色查询按钮');
INSERT INTO `sys_menu` VALUES (22, '菜单查询', '#', 5, 1, '', NULL, 'F', 'system:menu:query', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '菜单查询按钮');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色主键ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色权限字符串',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '拥有系统最高权限');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '普通角色');
INSERT INTO `sys_role` VALUES (3, '测试角色', 'test', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '测试角色');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色菜单主键ID',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 252 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (21, 7, 1);
INSERT INTO `sys_role_menu` VALUES (22, 7, 2);
INSERT INTO `sys_role_menu` VALUES (23, 7, 6);
INSERT INTO `sys_role_menu` VALUES (24, 7, 7);
INSERT INTO `sys_role_menu` VALUES (25, 6, 1);
INSERT INTO `sys_role_menu` VALUES (26, 6, 3);
INSERT INTO `sys_role_menu` VALUES (27, 6, 9);
INSERT INTO `sys_role_menu` VALUES (28, 6, 10);
INSERT INTO `sys_role_menu` VALUES (29, 19, 1);
INSERT INTO `sys_role_menu` VALUES (30, 19, 3);
INSERT INTO `sys_role_menu` VALUES (31, 19, 2);
INSERT INTO `sys_role_menu` VALUES (32, 19, 6);
INSERT INTO `sys_role_menu` VALUES (33, 1, 1);
INSERT INTO `sys_role_menu` VALUES (34, 1, 3);
INSERT INTO `sys_role_menu` VALUES (35, 1, 20);
INSERT INTO `sys_role_menu` VALUES (36, 1, 8);
INSERT INTO `sys_role_menu` VALUES (37, 1, 9);
INSERT INTO `sys_role_menu` VALUES (38, 1, 10);
INSERT INTO `sys_role_menu` VALUES (39, 1, 11);
INSERT INTO `sys_role_menu` VALUES (40, 1, 12);
INSERT INTO `sys_role_menu` VALUES (41, 1, 4);
INSERT INTO `sys_role_menu` VALUES (42, 1, 21);
INSERT INTO `sys_role_menu` VALUES (43, 1, 13);
INSERT INTO `sys_role_menu` VALUES (44, 1, 14);
INSERT INTO `sys_role_menu` VALUES (45, 1, 15);
INSERT INTO `sys_role_menu` VALUES (46, 1, 16);
INSERT INTO `sys_role_menu` VALUES (47, 1, 23);
INSERT INTO `sys_role_menu` VALUES (48, 1, 5);
INSERT INTO `sys_role_menu` VALUES (49, 1, 22);
INSERT INTO `sys_role_menu` VALUES (50, 1, 17);
INSERT INTO `sys_role_menu` VALUES (51, 1, 18);
INSERT INTO `sys_role_menu` VALUES (52, 1, 19);
INSERT INTO `sys_role_menu` VALUES (53, 1, 2);
INSERT INTO `sys_role_menu` VALUES (54, 1, 6);
INSERT INTO `sys_role_menu` VALUES (55, 1, 7);
INSERT INTO `sys_role_menu` VALUES (208, 20, 1);
INSERT INTO `sys_role_menu` VALUES (209, 20, 3);
INSERT INTO `sys_role_menu` VALUES (210, 20, 20);
INSERT INTO `sys_role_menu` VALUES (211, 20, 8);
INSERT INTO `sys_role_menu` VALUES (212, 20, 9);
INSERT INTO `sys_role_menu` VALUES (213, 20, 33);
INSERT INTO `sys_role_menu` VALUES (214, 20, 10);
INSERT INTO `sys_role_menu` VALUES (215, 20, 11);
INSERT INTO `sys_role_menu` VALUES (216, 20, 4);
INSERT INTO `sys_role_menu` VALUES (217, 20, 21);
INSERT INTO `sys_role_menu` VALUES (218, 20, 13);
INSERT INTO `sys_role_menu` VALUES (219, 20, 5);
INSERT INTO `sys_role_menu` VALUES (220, 20, 22);
INSERT INTO `sys_role_menu` VALUES (221, 20, 17);
INSERT INTO `sys_role_menu` VALUES (222, 20, 18);
INSERT INTO `sys_role_menu` VALUES (223, 20, 2);
INSERT INTO `sys_role_menu` VALUES (224, 20, 6);
INSERT INTO `sys_role_menu` VALUES (225, 20, 7);
INSERT INTO `sys_role_menu` VALUES (232, 21, 1);
INSERT INTO `sys_role_menu` VALUES (233, 21, 9);
INSERT INTO `sys_role_menu` VALUES (234, 21, 4);
INSERT INTO `sys_role_menu` VALUES (235, 21, 21);
INSERT INTO `sys_role_menu` VALUES (236, 21, 2);
INSERT INTO `sys_role_menu` VALUES (237, 21, 6);
INSERT INTO `sys_role_menu` VALUES (238, 21, 7);
INSERT INTO `sys_role_menu` VALUES (239, 3, 3);
INSERT INTO `sys_role_menu` VALUES (240, 3, 2);
INSERT INTO `sys_role_menu` VALUES (241, 3, 6);
INSERT INTO `sys_role_menu` VALUES (242, 3, 7);
INSERT INTO `sys_role_menu` VALUES (243, 2, 1);
INSERT INTO `sys_role_menu` VALUES (244, 2, 3);
INSERT INTO `sys_role_menu` VALUES (245, 2, 4);
INSERT INTO `sys_role_menu` VALUES (246, 2, 5);
INSERT INTO `sys_role_menu` VALUES (247, 2, 22);
INSERT INTO `sys_role_menu` VALUES (248, 2, 17);
INSERT INTO `sys_role_menu` VALUES (249, 2, 2);
INSERT INTO `sys_role_menu` VALUES (250, 2, 6);
INSERT INTO `sys_role_menu` VALUES (251, 2, 7);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'default.jpg' COMMENT '用户头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$Kib4zuVhTzg3I1CoqJfd0unuY9G9ysI7cfbhyT3fi7k7Z/4pr3bGW', 'https://img.shetu66.com/2023/07/14/1689302077000124.png', 'caofeng4017@126.com', '18862857417', '2025-04-18 23:48:15', '0', '2025-04-17 08:47:52', '2025-04-17 08:47:52', '备注');
INSERT INTO `sys_user` VALUES (4, '1', '$2a$10$lD0Fx7oMsFFmX9hVkmYy7eJteH8pBaXXro1X9DEMP5sbM.Z6Co55m', 'https://img.shetu66.com/2023/07/14/1689302077000124.png', '', '', NULL, '1', NULL, NULL, NULL);
INSERT INTO `sys_user` VALUES (31, 'mdd', '$2a$10$gmsBck1XTKsUeg/eXuOxY.Cy5omFXR2fJfVJrufNJNbiXLYqlZyqi', 'https://img.shetu66.com/2023/07/14/1689302077000124.png', '202120164114@zut.edu.cn', '15139471712', '2025-04-17 08:47:52', '0', '2025-04-17 08:47:52', NULL, 'niubi');
INSERT INTO `sys_user` VALUES (32, 'lishuo', '$2a$10$D4qEevV4H4Ih.QEfaZ0T5ebs7c6OEas2i9L3n1doq5iLWwQaXEPW6', 'https://img.shetu66.com/2023/07/14/1689302077000124.png', '2420497331@qq.com', '15139471712', '2025-04-17 08:47:52', '0', '2025-04-17 08:47:52', NULL, '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户角色主键ID',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1, 1);
INSERT INTO `sys_user_role` VALUES (4, 1, 2);
INSERT INTO `sys_user_role` VALUES (9, 4, 3);
INSERT INTO `sys_user_role` VALUES (23, 31, 2);
INSERT INTO `sys_user_role` VALUES (24, 32, 2);

SET FOREIGN_KEY_CHECKS = 1;
