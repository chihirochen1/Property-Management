/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : property_management

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 19/09/2024 22:19:19
*/

create database if not exists property_management;
use property_management;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fee_park
-- ----------------------------
DROP TABLE IF EXISTS `fee_park`;
CREATE TABLE `fee_park`  (
  `park_fee_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `park_id` int NULL DEFAULT NULL COMMENT '车位id',
  `pay_park_month` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '缴费年月',
  `pay_park_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '缴费金额',
  `pay_park_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_park_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`park_fee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_park
-- ----------------------------
INSERT INTO `fee_park` VALUES (1, 1, 1, '2024-03', 120.00, '1', NULL);
INSERT INTO `fee_park` VALUES (2, 2, 2, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (3, 3, 3, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (4, 4, 4, '2024-03', 120.00, '1', NULL);
INSERT INTO `fee_park` VALUES (5, 5, 5, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (6, 6, 6, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (7, 7, 7, '2024-03', 120.00, '1', NULL);
INSERT INTO `fee_park` VALUES (9, 8, 8, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (10, 9, 9, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (11, 10, 10, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (12, 12, 11, '2024-03', 120.00, '0', NULL);
INSERT INTO `fee_park` VALUES (13, 12, 11, '2024-03', 120.00, '0', NULL);

-- ----------------------------
-- Table structure for fee_power
-- ----------------------------
DROP TABLE IF EXISTS `fee_power`;
CREATE TABLE `fee_power`  (
  `power_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `house_id` int NULL DEFAULT NULL COMMENT '房屋id',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `pay_power_month` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '缴费年月',
  `pay_power_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '缴费金额',
  `power_num` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表显',
  `pay_power_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_power_time` datetime NULL DEFAULT NULL COMMENT '缴费时间',
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_power
-- ----------------------------
INSERT INTO `fee_power` VALUES (1, 1, 1, '2024-03', 100.00, '100', '0', NULL);
INSERT INTO `fee_power` VALUES (2, 2, 2, '2024-03', 120.00, '120', '1', NULL);
INSERT INTO `fee_power` VALUES (3, 3, 3, '2024-03', 123.00, '123', '1', NULL);
INSERT INTO `fee_power` VALUES (4, 4, 4, '2024-03', 112.00, '112', '0', NULL);
INSERT INTO `fee_power` VALUES (5, 5, 5, '2024-03', 80.00, '80', '0', NULL);
INSERT INTO `fee_power` VALUES (6, 6, 7, '2024-03', 55.00, '55', '0', NULL);
INSERT INTO `fee_power` VALUES (7, 45, 22, '2024-03', 44.00, '44', '0', NULL);
INSERT INTO `fee_power` VALUES (8, 7, 6, '2024-03', 76.00, '76', '0', NULL);
INSERT INTO `fee_power` VALUES (9, 8, 8, '2024-03', 55.00, '55', '0', NULL);
INSERT INTO `fee_power` VALUES (10, 9, 9, '2024-03', 76.00, '76', '0', NULL);
INSERT INTO `fee_power` VALUES (11, 10, 10, '2024-03', 44.00, '44', '0', NULL);
INSERT INTO `fee_power` VALUES (13, 1, 1, '2024-08', 111.00, '111', '1', NULL);
INSERT INTO `fee_power` VALUES (14, 21, 51, '2024-05', 123.00, '13', '0', NULL);

-- ----------------------------
-- Table structure for fee_water
-- ----------------------------
DROP TABLE IF EXISTS `fee_water`;
CREATE TABLE `fee_water`  (
  `water_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `house_id` int NULL DEFAULT NULL COMMENT '房屋id',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `pay_water_month` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '缴费年月',
  `pay_water_money` decimal(18, 2) NULL DEFAULT NULL COMMENT '缴费金额',
  `waterr_num` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '表显',
  `pay_water_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_water_time` datetime NULL DEFAULT NULL COMMENT '缴费时间',
  PRIMARY KEY (`water_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fee_water
-- ----------------------------
INSERT INTO `fee_water` VALUES (1, 1, 1, '2024-03', 30.00, '30', '1', '2024-04-19 22:41:53');
INSERT INTO `fee_water` VALUES (2, 2, 2, '2024-03', 40.00, '40', '0', NULL);
INSERT INTO `fee_water` VALUES (3, 3, 3, '2024-03', 50.00, '50', '0', NULL);
INSERT INTO `fee_water` VALUES (4, 4, 4, '2024-03', 20.00, '20', '1', '2024-04-19 22:41:48');
INSERT INTO `fee_water` VALUES (5, 5, 5, '2024-03', 40.00, '40', '0', NULL);
INSERT INTO `fee_water` VALUES (6, 45, 22, '2024-03', 90.00, '90', '0', NULL);
INSERT INTO `fee_water` VALUES (7, 6, 7, '2024-03', 34.00, '34', '1', '2024-04-19 22:41:56');
INSERT INTO `fee_water` VALUES (8, 7, 6, '2024-03', 43.00, '43', '0', NULL);
INSERT INTO `fee_water` VALUES (9, 8, 8, '2024-03', 55.00, '55', '1', '2024-04-19 22:41:58');
INSERT INTO `fee_water` VALUES (10, 10, 10, '2024-03', 66.00, '66', '0', NULL);
INSERT INTO `fee_water` VALUES (13, 9, 9, '2024-03', 90.00, '90', '0', NULL);
INSERT INTO `fee_water` VALUES (14, 10, 10, '2024-03', 90.00, '90', '0', NULL);
INSERT INTO `fee_water` VALUES (15, 11, 11, '2024-03', 90.00, '90', '0', NULL);
INSERT INTO `fee_water` VALUES (16, 12, 12, '2024-03', 90.00, '90', '0', NULL);

-- ----------------------------
-- Table structure for house_building
-- ----------------------------
DROP TABLE IF EXISTS `house_building`;
CREATE TABLE `house_building`  (
  `build_id` int NOT NULL AUTO_INCREMENT COMMENT '栋数id',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '栋数类型 0：普通房 1：电梯房',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '栋数名称',
  `order_num` int NULL DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`build_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house_building
-- ----------------------------
INSERT INTO `house_building` VALUES (1, '0', '一栋', 1);
INSERT INTO `house_building` VALUES (2, '0', '二栋', 2);
INSERT INTO `house_building` VALUES (3, '0', '三栋', 3);
INSERT INTO `house_building` VALUES (4, '1', '四栋', 4);
INSERT INTO `house_building` VALUES (5, '1', '五栋', 5);
INSERT INTO `house_building` VALUES (6, '1', '六栋', 6);
INSERT INTO `house_building` VALUES (13, '0', '七栋', NULL);

-- ----------------------------
-- Table structure for house_list
-- ----------------------------
DROP TABLE IF EXISTS `house_list`;
CREATE TABLE `house_list`  (
  `house_id` int NOT NULL AUTO_INCREMENT COMMENT '房屋id',
  `unit_id` int NULL DEFAULT NULL COMMENT '单元id',
  `house_num` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '房屋编号',
  `house_area` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '房屋面积',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '使用状态 0:未使用 1：已使用',
  PRIMARY KEY (`house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 266 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house_list
-- ----------------------------
INSERT INTO `house_list` VALUES (1, 1, '101', '100', '1');
INSERT INTO `house_list` VALUES (2, 1, '102', '100', '1');
INSERT INTO `house_list` VALUES (3, 1, '201', '100', '1');
INSERT INTO `house_list` VALUES (4, 1, '202', '100', '1');
INSERT INTO `house_list` VALUES (5, 1, '301', '100', '1');
INSERT INTO `house_list` VALUES (6, 1, '302', '100', '1');
INSERT INTO `house_list` VALUES (7, 1, '401', '100', '1');
INSERT INTO `house_list` VALUES (8, 1, '402', '100', '1');
INSERT INTO `house_list` VALUES (9, 1, '501', '100', '1');
INSERT INTO `house_list` VALUES (10, 1, '502', '100', '1');
INSERT INTO `house_list` VALUES (11, 1, '601', '100', '1');
INSERT INTO `house_list` VALUES (12, 1, '602', '100', '1');
INSERT INTO `house_list` VALUES (13, 1, '701', '100', '1');
INSERT INTO `house_list` VALUES (14, 1, '702', '100', '1');
INSERT INTO `house_list` VALUES (15, 1, '801', '100', '1');
INSERT INTO `house_list` VALUES (16, 1, '802', '100', '1');
INSERT INTO `house_list` VALUES (17, 1, '901', '100', '1');
INSERT INTO `house_list` VALUES (18, 1, '902', '100', '1');
INSERT INTO `house_list` VALUES (19, 1, '1001', '100', '1');
INSERT INTO `house_list` VALUES (20, 1, '1002', '100', '1');
INSERT INTO `house_list` VALUES (21, 1, '1101', '100', '1');
INSERT INTO `house_list` VALUES (22, 1, '1102', '100', '0');
INSERT INTO `house_list` VALUES (23, 2, '101', '100', '0');
INSERT INTO `house_list` VALUES (24, 2, '102', '100', '0');
INSERT INTO `house_list` VALUES (25, 2, '201', '100', '0');
INSERT INTO `house_list` VALUES (26, 2, '202', '100', '0');
INSERT INTO `house_list` VALUES (27, 2, '301', '100', '0');
INSERT INTO `house_list` VALUES (28, 2, '302', '100', '0');
INSERT INTO `house_list` VALUES (29, 2, '401', '100', '0');
INSERT INTO `house_list` VALUES (30, 2, '402', '100', '0');
INSERT INTO `house_list` VALUES (31, 2, '501', '100', '0');
INSERT INTO `house_list` VALUES (32, 2, '502', '100', '0');
INSERT INTO `house_list` VALUES (33, 2, '601', '100', '0');
INSERT INTO `house_list` VALUES (34, 2, '602', '100', '0');
INSERT INTO `house_list` VALUES (35, 2, '701', '100', '0');
INSERT INTO `house_list` VALUES (36, 2, '702', '100', '0');
INSERT INTO `house_list` VALUES (37, 2, '801', '100', '0');
INSERT INTO `house_list` VALUES (38, 2, '802', '100', '0');
INSERT INTO `house_list` VALUES (39, 2, '901', '100', '0');
INSERT INTO `house_list` VALUES (40, 2, '902', '100', '0');
INSERT INTO `house_list` VALUES (41, 2, '1001', '100', '0');
INSERT INTO `house_list` VALUES (42, 2, '1002', '100', '0');
INSERT INTO `house_list` VALUES (43, 2, '1101', '100', '0');
INSERT INTO `house_list` VALUES (44, 2, '1102', '100', '0');
INSERT INTO `house_list` VALUES (45, 3, '101', '100', '1');
INSERT INTO `house_list` VALUES (46, 3, '102', '100', '1');
INSERT INTO `house_list` VALUES (47, 3, '201', '100', '1');
INSERT INTO `house_list` VALUES (48, 3, '202', '100', '1');
INSERT INTO `house_list` VALUES (49, 3, '301', '100', '1');
INSERT INTO `house_list` VALUES (50, 3, '302', '100', '1');
INSERT INTO `house_list` VALUES (51, 3, '401', '100', '0');
INSERT INTO `house_list` VALUES (52, 3, '402', '100', '0');
INSERT INTO `house_list` VALUES (53, 3, '501', '100', '0');
INSERT INTO `house_list` VALUES (54, 3, '502', '100', '0');
INSERT INTO `house_list` VALUES (55, 3, '601', '100', '0');
INSERT INTO `house_list` VALUES (56, 3, '602', '100', '0');
INSERT INTO `house_list` VALUES (57, 3, '701', '100', '1');
INSERT INTO `house_list` VALUES (58, 3, '702', '100', '0');
INSERT INTO `house_list` VALUES (59, 3, '801', '100', '0');
INSERT INTO `house_list` VALUES (60, 3, '802', '100', '0');
INSERT INTO `house_list` VALUES (61, 3, '901', '100', '0');
INSERT INTO `house_list` VALUES (62, 3, '902', '100', '0');
INSERT INTO `house_list` VALUES (63, 3, '1001', '100', '0');
INSERT INTO `house_list` VALUES (64, 3, '1002', '100', '0');
INSERT INTO `house_list` VALUES (65, 3, '1101', '100', '0');
INSERT INTO `house_list` VALUES (66, 3, '1102', '100', '0');
INSERT INTO `house_list` VALUES (67, 4, '101', '100', '0');
INSERT INTO `house_list` VALUES (68, 4, '102', '100', '0');
INSERT INTO `house_list` VALUES (69, 4, '201', '100', '0');
INSERT INTO `house_list` VALUES (70, 4, '202', '100', '0');
INSERT INTO `house_list` VALUES (71, 4, '301', '100', '0');
INSERT INTO `house_list` VALUES (72, 4, '302', '100', '0');
INSERT INTO `house_list` VALUES (73, 4, '401', '100', '0');
INSERT INTO `house_list` VALUES (74, 4, '402', '100', '0');
INSERT INTO `house_list` VALUES (75, 4, '501', '100', '0');
INSERT INTO `house_list` VALUES (76, 4, '502', '100', '0');
INSERT INTO `house_list` VALUES (77, 4, '601', '100', '0');
INSERT INTO `house_list` VALUES (78, 4, '602', '100', '0');
INSERT INTO `house_list` VALUES (79, 4, '701', '100', '0');
INSERT INTO `house_list` VALUES (80, 4, '702', '100', '0');
INSERT INTO `house_list` VALUES (81, 4, '801', '100', '0');
INSERT INTO `house_list` VALUES (82, 4, '802', '100', '0');
INSERT INTO `house_list` VALUES (83, 4, '901', '100', '0');
INSERT INTO `house_list` VALUES (84, 4, '902', '100', '0');
INSERT INTO `house_list` VALUES (85, 4, '1001', '100', '0');
INSERT INTO `house_list` VALUES (86, 4, '1002', '100', '0');
INSERT INTO `house_list` VALUES (87, 4, '1101', '100', '0');
INSERT INTO `house_list` VALUES (88, 4, '1102', '100', '0');
INSERT INTO `house_list` VALUES (89, 5, '101', '100', '0');
INSERT INTO `house_list` VALUES (90, 5, '102', '100', '0');
INSERT INTO `house_list` VALUES (91, 5, '201', '100', '0');
INSERT INTO `house_list` VALUES (92, 5, '202', '100', '0');
INSERT INTO `house_list` VALUES (93, 5, '301', '100', '0');
INSERT INTO `house_list` VALUES (94, 5, '302', '100', '0');
INSERT INTO `house_list` VALUES (95, 5, '401', '100', '0');
INSERT INTO `house_list` VALUES (96, 5, '402', '100', '0');
INSERT INTO `house_list` VALUES (97, 5, '501', '100', '0');
INSERT INTO `house_list` VALUES (98, 5, '502', '100', '0');
INSERT INTO `house_list` VALUES (99, 5, '601', '100', '0');
INSERT INTO `house_list` VALUES (100, 5, '602', '100', '0');
INSERT INTO `house_list` VALUES (101, 5, '701', '100', '0');
INSERT INTO `house_list` VALUES (102, 5, '702', '100', '0');
INSERT INTO `house_list` VALUES (103, 5, '801', '100', '0');
INSERT INTO `house_list` VALUES (104, 5, '802', '100', '0');
INSERT INTO `house_list` VALUES (105, 5, '901', '100', '0');
INSERT INTO `house_list` VALUES (106, 5, '902', '100', '0');
INSERT INTO `house_list` VALUES (107, 5, '1001', '100', '0');
INSERT INTO `house_list` VALUES (108, 5, '1002', '100', '0');
INSERT INTO `house_list` VALUES (109, 5, '1101', '100', '0');
INSERT INTO `house_list` VALUES (110, 5, '1102', '100', '0');
INSERT INTO `house_list` VALUES (111, 6, '101', '100', '0');
INSERT INTO `house_list` VALUES (112, 6, '102', '100', '0');
INSERT INTO `house_list` VALUES (113, 6, '201', '100', '0');
INSERT INTO `house_list` VALUES (114, 6, '202', '100', '0');
INSERT INTO `house_list` VALUES (115, 6, '301', '100', '0');
INSERT INTO `house_list` VALUES (116, 6, '302', '100', '0');
INSERT INTO `house_list` VALUES (117, 6, '401', '100', '0');
INSERT INTO `house_list` VALUES (118, 6, '402', '100', '0');
INSERT INTO `house_list` VALUES (119, 6, '501', '100', '0');
INSERT INTO `house_list` VALUES (120, 6, '502', '100', '0');
INSERT INTO `house_list` VALUES (121, 6, '601', '100', '0');
INSERT INTO `house_list` VALUES (122, 6, '602', '100', '0');
INSERT INTO `house_list` VALUES (123, 6, '701', '100', '0');
INSERT INTO `house_list` VALUES (124, 6, '702', '100', '0');
INSERT INTO `house_list` VALUES (125, 6, '801', '100', '0');
INSERT INTO `house_list` VALUES (126, 6, '802', '100', '0');
INSERT INTO `house_list` VALUES (127, 6, '901', '100', '0');
INSERT INTO `house_list` VALUES (128, 6, '902', '100', '0');
INSERT INTO `house_list` VALUES (129, 6, '1001', '100', '0');
INSERT INTO `house_list` VALUES (130, 6, '1002', '100', '0');
INSERT INTO `house_list` VALUES (131, 6, '1101', '100', '0');
INSERT INTO `house_list` VALUES (132, 6, '1102', '100', '0');
INSERT INTO `house_list` VALUES (133, 7, '101', '100', '0');
INSERT INTO `house_list` VALUES (134, 7, '102', '100', '0');
INSERT INTO `house_list` VALUES (135, 7, '201', '100', '0');
INSERT INTO `house_list` VALUES (136, 7, '202', '100', '0');
INSERT INTO `house_list` VALUES (137, 7, '301', '100', '0');
INSERT INTO `house_list` VALUES (138, 7, '302', '100', '0');
INSERT INTO `house_list` VALUES (139, 7, '401', '100', '0');
INSERT INTO `house_list` VALUES (140, 7, '402', '100', '0');
INSERT INTO `house_list` VALUES (141, 7, '501', '100', '0');
INSERT INTO `house_list` VALUES (142, 7, '502', '100', '0');
INSERT INTO `house_list` VALUES (143, 7, '601', '100', '0');
INSERT INTO `house_list` VALUES (144, 7, '602', '100', '0');
INSERT INTO `house_list` VALUES (145, 7, '701', '100', '0');
INSERT INTO `house_list` VALUES (146, 7, '702', '100', '0');
INSERT INTO `house_list` VALUES (147, 7, '801', '100', '0');
INSERT INTO `house_list` VALUES (148, 7, '802', '100', '0');
INSERT INTO `house_list` VALUES (149, 7, '901', '100', '0');
INSERT INTO `house_list` VALUES (150, 7, '902', '100', '0');
INSERT INTO `house_list` VALUES (151, 7, '1001', '100', '0');
INSERT INTO `house_list` VALUES (152, 7, '1002', '100', '0');
INSERT INTO `house_list` VALUES (153, 7, '1101', '100', '0');
INSERT INTO `house_list` VALUES (154, 7, '1102', '100', '0');
INSERT INTO `house_list` VALUES (155, 8, '101', '100', '0');
INSERT INTO `house_list` VALUES (156, 8, '102', '100', '0');
INSERT INTO `house_list` VALUES (157, 8, '201', '100', '0');
INSERT INTO `house_list` VALUES (158, 8, '202', '100', '0');
INSERT INTO `house_list` VALUES (159, 8, '301', '100', '0');
INSERT INTO `house_list` VALUES (160, 8, '302', '100', '0');
INSERT INTO `house_list` VALUES (161, 8, '401', '100', '0');
INSERT INTO `house_list` VALUES (162, 8, '402', '100', '0');
INSERT INTO `house_list` VALUES (163, 8, '501', '100', '0');
INSERT INTO `house_list` VALUES (164, 8, '502', '100', '0');
INSERT INTO `house_list` VALUES (165, 8, '601', '100', '0');
INSERT INTO `house_list` VALUES (166, 8, '602', '100', '0');
INSERT INTO `house_list` VALUES (167, 8, '701', '100', '0');
INSERT INTO `house_list` VALUES (168, 8, '702', '100', '0');
INSERT INTO `house_list` VALUES (169, 8, '801', '100', '0');
INSERT INTO `house_list` VALUES (170, 8, '802', '100', '0');
INSERT INTO `house_list` VALUES (171, 8, '901', '100', '0');
INSERT INTO `house_list` VALUES (172, 8, '902', '100', '0');
INSERT INTO `house_list` VALUES (173, 8, '1001', '100', '0');
INSERT INTO `house_list` VALUES (174, 8, '1002', '100', '0');
INSERT INTO `house_list` VALUES (175, 8, '1101', '100', '0');
INSERT INTO `house_list` VALUES (176, 8, '1102', '100', '0');
INSERT INTO `house_list` VALUES (177, 9, '101', '100', '0');
INSERT INTO `house_list` VALUES (178, 9, '102', '100', '0');
INSERT INTO `house_list` VALUES (179, 9, '201', '100', '0');
INSERT INTO `house_list` VALUES (180, 9, '202', '100', '0');
INSERT INTO `house_list` VALUES (181, 9, '301', '100', '0');
INSERT INTO `house_list` VALUES (182, 9, '302', '100', '0');
INSERT INTO `house_list` VALUES (183, 9, '401', '100', '0');
INSERT INTO `house_list` VALUES (184, 9, '402', '100', '0');
INSERT INTO `house_list` VALUES (185, 9, '501', '100', '0');
INSERT INTO `house_list` VALUES (186, 9, '502', '100', '0');
INSERT INTO `house_list` VALUES (187, 9, '601', '100', '0');
INSERT INTO `house_list` VALUES (188, 9, '602', '100', '0');
INSERT INTO `house_list` VALUES (189, 9, '701', '100', '0');
INSERT INTO `house_list` VALUES (190, 9, '702', '100', '0');
INSERT INTO `house_list` VALUES (191, 9, '801', '100', '0');
INSERT INTO `house_list` VALUES (192, 9, '802', '100', '0');
INSERT INTO `house_list` VALUES (193, 9, '901', '100', '0');
INSERT INTO `house_list` VALUES (194, 9, '902', '100', '0');
INSERT INTO `house_list` VALUES (195, 9, '1001', '100', '0');
INSERT INTO `house_list` VALUES (196, 9, '1002', '100', '0');
INSERT INTO `house_list` VALUES (197, 9, '1101', '100', '0');
INSERT INTO `house_list` VALUES (198, 9, '1102', '100', '0');
INSERT INTO `house_list` VALUES (199, 10, '101', '100', '0');
INSERT INTO `house_list` VALUES (200, 10, '102', '100', '0');
INSERT INTO `house_list` VALUES (201, 10, '201', '100', '0');
INSERT INTO `house_list` VALUES (202, 10, '202', '100', '0');
INSERT INTO `house_list` VALUES (203, 10, '301', '100', '0');
INSERT INTO `house_list` VALUES (204, 10, '302', '100', '0');
INSERT INTO `house_list` VALUES (205, 10, '401', '100', '0');
INSERT INTO `house_list` VALUES (206, 10, '402', '100', '0');
INSERT INTO `house_list` VALUES (207, 10, '501', '100', '0');
INSERT INTO `house_list` VALUES (208, 10, '502', '100', '0');
INSERT INTO `house_list` VALUES (209, 10, '601', '100', '0');
INSERT INTO `house_list` VALUES (210, 10, '602', '100', '0');
INSERT INTO `house_list` VALUES (211, 10, '701', '100', '0');
INSERT INTO `house_list` VALUES (212, 10, '702', '100', '0');
INSERT INTO `house_list` VALUES (213, 10, '801', '100', '0');
INSERT INTO `house_list` VALUES (214, 10, '802', '100', '0');
INSERT INTO `house_list` VALUES (215, 10, '901', '100', '0');
INSERT INTO `house_list` VALUES (216, 10, '902', '100', '0');
INSERT INTO `house_list` VALUES (217, 10, '1001', '100', '0');
INSERT INTO `house_list` VALUES (218, 10, '1002', '100', '0');
INSERT INTO `house_list` VALUES (219, 10, '1101', '100', '0');
INSERT INTO `house_list` VALUES (220, 10, '1102', '100', '0');
INSERT INTO `house_list` VALUES (221, 11, '101', '100', '0');
INSERT INTO `house_list` VALUES (222, 11, '102', '100', '0');
INSERT INTO `house_list` VALUES (223, 11, '201', '100', '0');
INSERT INTO `house_list` VALUES (224, 11, '202', '100', '0');
INSERT INTO `house_list` VALUES (225, 11, '301', '100', '0');
INSERT INTO `house_list` VALUES (226, 11, '302', '100', '0');
INSERT INTO `house_list` VALUES (227, 11, '401', '100', '0');
INSERT INTO `house_list` VALUES (228, 11, '402', '100', '0');
INSERT INTO `house_list` VALUES (229, 11, '501', '100', '0');
INSERT INTO `house_list` VALUES (230, 11, '502', '100', '0');
INSERT INTO `house_list` VALUES (231, 11, '601', '100', '0');
INSERT INTO `house_list` VALUES (232, 11, '602', '100', '0');
INSERT INTO `house_list` VALUES (233, 11, '701', '100', '0');
INSERT INTO `house_list` VALUES (234, 11, '702', '100', '0');
INSERT INTO `house_list` VALUES (235, 11, '801', '100', '0');
INSERT INTO `house_list` VALUES (236, 11, '802', '100', '0');
INSERT INTO `house_list` VALUES (237, 11, '901', '100', '0');
INSERT INTO `house_list` VALUES (238, 11, '902', '100', '0');
INSERT INTO `house_list` VALUES (239, 11, '1001', '100', '0');
INSERT INTO `house_list` VALUES (240, 11, '1002', '100', '0');
INSERT INTO `house_list` VALUES (241, 11, '1101', '100', '0');
INSERT INTO `house_list` VALUES (242, 11, '1102', '100', '0');
INSERT INTO `house_list` VALUES (243, 12, '101', '100', '0');
INSERT INTO `house_list` VALUES (244, 12, '102', '100', '0');
INSERT INTO `house_list` VALUES (245, 12, '201', '100', '0');
INSERT INTO `house_list` VALUES (246, 12, '202', '100', '0');
INSERT INTO `house_list` VALUES (247, 12, '301', '100', '0');
INSERT INTO `house_list` VALUES (248, 12, '302', '100', '0');
INSERT INTO `house_list` VALUES (249, 12, '401', '100', '0');
INSERT INTO `house_list` VALUES (250, 12, '402', '100', '0');
INSERT INTO `house_list` VALUES (251, 12, '501', '100', '0');
INSERT INTO `house_list` VALUES (252, 12, '502', '100', '0');
INSERT INTO `house_list` VALUES (253, 12, '601', '100', '0');
INSERT INTO `house_list` VALUES (254, 12, '602', '100', '0');
INSERT INTO `house_list` VALUES (255, 12, '701', '100', '0');
INSERT INTO `house_list` VALUES (256, 12, '702', '100', '0');
INSERT INTO `house_list` VALUES (257, 12, '801', '100', '0');
INSERT INTO `house_list` VALUES (258, 12, '802', '100', '0');
INSERT INTO `house_list` VALUES (259, 12, '901', '100', '0');
INSERT INTO `house_list` VALUES (260, 12, '902', '100', '0');
INSERT INTO `house_list` VALUES (261, 12, '1001', '100', '0');
INSERT INTO `house_list` VALUES (262, 12, '1002', '100', '0');
INSERT INTO `house_list` VALUES (263, 12, '1101', '100', '0');
INSERT INTO `house_list` VALUES (264, 12, '1102', '100', '0');
INSERT INTO `house_list` VALUES (265, 25, '101', '122', '0');

-- ----------------------------
-- Table structure for house_unit
-- ----------------------------
DROP TABLE IF EXISTS `house_unit`;
CREATE TABLE `house_unit`  (
  `unit_id` int NOT NULL AUTO_INCREMENT COMMENT '单元id',
  `build_id` int NULL DEFAULT NULL COMMENT '栋数id',
  `unit_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '单元名称',
  PRIMARY KEY (`unit_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of house_unit
-- ----------------------------
INSERT INTO `house_unit` VALUES (1, 1, '一单元');
INSERT INTO `house_unit` VALUES (2, 1, '二单元');
INSERT INTO `house_unit` VALUES (3, 2, '一单元');
INSERT INTO `house_unit` VALUES (4, 2, '二单元');
INSERT INTO `house_unit` VALUES (5, 3, '一单元');
INSERT INTO `house_unit` VALUES (6, 3, '二单元');
INSERT INTO `house_unit` VALUES (7, 4, '一单元');
INSERT INTO `house_unit` VALUES (8, 4, '二单元');
INSERT INTO `house_unit` VALUES (9, 5, '一单元');
INSERT INTO `house_unit` VALUES (10, 5, '二单元');
INSERT INTO `house_unit` VALUES (11, 6, '一单元');
INSERT INTO `house_unit` VALUES (12, 6, '二单元');

-- ----------------------------
-- Table structure for live_house
-- ----------------------------
DROP TABLE IF EXISTS `live_house`;
CREATE TABLE `live_house`  (
  `live_house_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `house_id` int NULL DEFAULT NULL COMMENT '房屋id',
  `use_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:使用中 1： 解绑、退房',
  PRIMARY KEY (`live_house_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live_house
-- ----------------------------
INSERT INTO `live_house` VALUES (1, 1, 1, '1');
INSERT INTO `live_house` VALUES (2, 1, 1, '0');
INSERT INTO `live_house` VALUES (3, 2, 2, '0');
INSERT INTO `live_house` VALUES (4, 3, 3, '0');
INSERT INTO `live_house` VALUES (5, 4, 4, '0');
INSERT INTO `live_house` VALUES (6, 5, 5, '0');
INSERT INTO `live_house` VALUES (7, 7, 6, '0');
INSERT INTO `live_house` VALUES (8, 6, 7, '0');
INSERT INTO `live_house` VALUES (9, 8, 8, '0');
INSERT INTO `live_house` VALUES (10, 9, 9, '0');
INSERT INTO `live_house` VALUES (11, 10, 10, '0');
INSERT INTO `live_house` VALUES (12, 11, 11, '0');
INSERT INTO `live_house` VALUES (13, 12, 12, '0');
INSERT INTO `live_house` VALUES (14, 13, 13, '0');
INSERT INTO `live_house` VALUES (15, 14, 14, '0');
INSERT INTO `live_house` VALUES (16, 15, 15, '0');
INSERT INTO `live_house` VALUES (17, 16, 16, '0');
INSERT INTO `live_house` VALUES (18, 17, 17, '0');
INSERT INTO `live_house` VALUES (19, 18, 18, '0');
INSERT INTO `live_house` VALUES (20, 19, 19, '0');
INSERT INTO `live_house` VALUES (21, 20, 20, '0');
INSERT INTO `live_house` VALUES (22, 22, 45, '0');
INSERT INTO `live_house` VALUES (23, 21, 46, '0');
INSERT INTO `live_house` VALUES (24, 23, 57, '0');
INSERT INTO `live_house` VALUES (25, 24, 47, '0');
INSERT INTO `live_house` VALUES (26, 25, 48, '0');
INSERT INTO `live_house` VALUES (27, 26, 49, '0');
INSERT INTO `live_house` VALUES (28, 27, 50, '0');
INSERT INTO `live_house` VALUES (29, 51, 21, '1');
INSERT INTO `live_house` VALUES (30, 51, 21, '0');

-- ----------------------------
-- Table structure for live_park
-- ----------------------------
DROP TABLE IF EXISTS `live_park`;
CREATE TABLE `live_park`  (
  `live_park_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `park_id` int NULL DEFAULT NULL COMMENT '车位id',
  `live_statue` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0:使用 1：解绑、退车位状态',
  PRIMARY KEY (`live_park_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live_park
-- ----------------------------
INSERT INTO `live_park` VALUES (1, 1, 1, '0');
INSERT INTO `live_park` VALUES (2, 2, 2, '0');
INSERT INTO `live_park` VALUES (3, 3, 3, '0');
INSERT INTO `live_park` VALUES (4, 4, 4, '0');
INSERT INTO `live_park` VALUES (5, 5, 5, '0');
INSERT INTO `live_park` VALUES (6, 6, 6, '0');
INSERT INTO `live_park` VALUES (7, 7, 7, '0');
INSERT INTO `live_park` VALUES (8, 8, 8, '0');
INSERT INTO `live_park` VALUES (9, 9, 9, '0');
INSERT INTO `live_park` VALUES (10, 10, 10, '0');
INSERT INTO `live_park` VALUES (11, 12, 11, '0');
INSERT INTO `live_park` VALUES (12, 13, 12, '0');
INSERT INTO `live_park` VALUES (13, 14, 13, '0');
INSERT INTO `live_park` VALUES (14, 15, 14, '0');
INSERT INTO `live_park` VALUES (15, 16, 15, '0');
INSERT INTO `live_park` VALUES (16, 17, 16, '0');
INSERT INTO `live_park` VALUES (17, 18, 17, '0');
INSERT INTO `live_park` VALUES (18, 19, 18, '0');
INSERT INTO `live_park` VALUES (19, 20, 19, '0');
INSERT INTO `live_park` VALUES (20, 11, 20, '0');
INSERT INTO `live_park` VALUES (21, 22, 21, '0');
INSERT INTO `live_park` VALUES (22, 23, 22, '0');
INSERT INTO `live_park` VALUES (23, 24, 23, '0');
INSERT INTO `live_park` VALUES (24, 25, 24, '0');
INSERT INTO `live_park` VALUES (25, 26, 25, '0');
INSERT INTO `live_park` VALUES (26, 27, 26, '0');
INSERT INTO `live_park` VALUES (27, 51, 31, '0');

-- ----------------------------
-- Table structure for live_role
-- ----------------------------
DROP TABLE IF EXISTS `live_role`;
CREATE TABLE `live_role`  (
  `liv_role_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  PRIMARY KEY (`liv_role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live_role
-- ----------------------------
INSERT INTO `live_role` VALUES (2, 8, 2);
INSERT INTO `live_role` VALUES (3, 8, 3);
INSERT INTO `live_role` VALUES (4, 8, 4);
INSERT INTO `live_role` VALUES (5, 8, 5);
INSERT INTO `live_role` VALUES (6, 8, 6);
INSERT INTO `live_role` VALUES (7, 8, 7);
INSERT INTO `live_role` VALUES (8, 8, 8);
INSERT INTO `live_role` VALUES (9, 8, 9);
INSERT INTO `live_role` VALUES (10, 8, 10);
INSERT INTO `live_role` VALUES (11, 8, 11);
INSERT INTO `live_role` VALUES (12, 8, 12);
INSERT INTO `live_role` VALUES (13, 8, 13);
INSERT INTO `live_role` VALUES (14, 8, 14);
INSERT INTO `live_role` VALUES (15, 8, 15);
INSERT INTO `live_role` VALUES (16, 8, 16);
INSERT INTO `live_role` VALUES (17, 8, 17);
INSERT INTO `live_role` VALUES (18, 8, 18);
INSERT INTO `live_role` VALUES (19, 8, 19);
INSERT INTO `live_role` VALUES (20, 8, 20);
INSERT INTO `live_role` VALUES (21, 8, 21);
INSERT INTO `live_role` VALUES (22, 8, 22);
INSERT INTO `live_role` VALUES (23, 8, 23);
INSERT INTO `live_role` VALUES (24, 8, 24);
INSERT INTO `live_role` VALUES (25, 8, 25);
INSERT INTO `live_role` VALUES (26, 8, 26);
INSERT INTO `live_role` VALUES (27, 8, 27);
INSERT INTO `live_role` VALUES (28, 8, 28);
INSERT INTO `live_role` VALUES (29, 8, 29);
INSERT INTO `live_role` VALUES (30, 8, 30);
INSERT INTO `live_role` VALUES (31, 8, 31);
INSERT INTO `live_role` VALUES (32, 8, 32);
INSERT INTO `live_role` VALUES (33, 8, 33);
INSERT INTO `live_role` VALUES (34, 8, 34);
INSERT INTO `live_role` VALUES (35, 8, 35);
INSERT INTO `live_role` VALUES (36, 8, 36);
INSERT INTO `live_role` VALUES (37, 8, 37);
INSERT INTO `live_role` VALUES (38, 8, 38);
INSERT INTO `live_role` VALUES (39, 8, 39);
INSERT INTO `live_role` VALUES (40, 8, 40);
INSERT INTO `live_role` VALUES (41, 8, 41);
INSERT INTO `live_role` VALUES (42, 8, 42);
INSERT INTO `live_role` VALUES (43, 8, 43);
INSERT INTO `live_role` VALUES (44, 8, 44);
INSERT INTO `live_role` VALUES (45, 8, 45);
INSERT INTO `live_role` VALUES (46, 8, 46);
INSERT INTO `live_role` VALUES (47, 8, 47);
INSERT INTO `live_role` VALUES (48, 8, 48);
INSERT INTO `live_role` VALUES (49, 8, 49);
INSERT INTO `live_role` VALUES (50, 8, 50);
INSERT INTO `live_role` VALUES (51, 8, 1);
INSERT INTO `live_role` VALUES (52, 8, 51);

-- ----------------------------
-- Table structure for live_user
-- ----------------------------
DROP TABLE IF EXISTS `live_user`;
CREATE TABLE `live_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '业主id',
  `username` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录账号',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '业主电话',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别 0：男 1：女',
  `login_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录密码',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT ' 0：启用 1：禁用',
  `is_account_non_expired` int NULL DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)	',
  `is_account_non_locked` int NULL DEFAULT NULL COMMENT ' 帐户是否被锁定(1 未过期，0已过期)	',
  `is_credentials_non_expired` int NULL DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)	',
  `is_enabled` int NULL DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)	',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of live_user
-- ----------------------------
INSERT INTO `live_user` VALUES (1, 'zhangsan', '15259910265', '0', '张三', '$2a$10$I2ySrhavMsno2qRrMlp6C.NVKvI9BvAMX3wLAW7aZa6tGy013drNi', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (2, 'wangxiaohong', '15581960942', '1', '王小红', '$2a$10$qQ7Y8Ydb/Grw5jaH0sIhF.DFUd6.zalf3wuMcf7GtYvmpYBm.3Gqa', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (3, 'zhangweidong', '14916567772', '0', '张伟东', '$2a$10$cf3J9PFbCCAxpxx.gPxf5.oUH84XWv7dWIYAUWBbkvt1dfEhDiPBC', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (4, 'liuxiaoyu', '13065786191', '1', '刘晓雨', '$2a$10$3HdxFUXOEzvGVnP7qY/1/eJ..P6IidDOxafAgGGbn9onDL62PAzn2', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (5, 'chendongxue', '13296630907', '0', '陈冬雪', '$2a$10$U.tDXRIKjmkVsch0j8jf0OGTnNwpyDGk5/S8UWy3Tx8uKQEkIPqiO', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (6, 'yangjingfeng', '17544803677', '0', '杨静峰', '$2a$10$lDNjD/tsDBS/VgfI7RpbZ.OCfeCmTAG/QOyaEJgvIRmyNWqVuLwfu', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (7, 'huangjialin', '15606674431', '0', '黄佳琳', '$2a$10$1HVVoNmkniBywZaUkrSDHu9m5FIq5BeKYxfudnpVkgUZcjiaSPp0W', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (8, 'zhaoyuhang', '18603019618', '1', '赵宇航', '$2a$10$j48jO7XceZ5bH46bRDIR/esifv3xXEOwNWndha80TReOB.ZDFLQg.', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (9, 'zhouyangfeng', '18087439898', '1', '周阳风', '$2a$10$lYcTfBPeyPOu0qVTMsqjNucL0Zfin/TyEB1/0uuxam0c4ueD/hbTy', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (10, 'wumeihua', '18818569494', '0', '吴美华', '$2a$10$V3VHt7JRm528jocSULDQKuPLKmemQRu1vTzy/w4U28ncWSgOCNOES', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (11, 'zhengwenhui', '18576578659', '0', '郑文慧', '$2a$10$HcI5Vo1Ju4HTnwZ6YjSuHOG5vLWlYgSGLLmFbKHhGvfTDsLZ1NHJe', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (12, 'sunzhongliang', '15125529592', '0', '孙忠良', '$2a$10$o1QBJ0F8Ddh8L7lfNAMvyOKtXUqihKvkcaG7o00MxgY57o12iBpNy', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (13, 'qianyuxin', '13596061377', '0', '钱雨馨', '$2a$10$xJvLAU.VHVJB5f1WcKIVSOx.sjCuYIKcusk8R6GMQ/NavrHfA8FjS', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (14, 'zhushiya', '17585030781', '1', '朱诗雅', '$2a$10$meFW146gHMlVrl1YCOjG8ubrFvKfoMuEmOfCAMbS/WzmgmB96CS0W', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (15, 'dumingjie', '13296731500', '1', '杜明杰', '$2a$10$5SNTc.kn/Q4shXUUj0wC3uGZRWAOE1PRaG2QdEoVzWeiZ1dw/EIGi', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (16, 'xuxinyi', '13230376202', '0', '许心怡', '$2a$10$QYBsJhSdZK1BZ.z9OY.Ase9tG23tTkJnIyE86vfBxlnl4AooMEMq.', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (17, 'fengsiqi', '15299831169', '1', '冯思琪', '$2a$10$2cRFK9ELWrTVvdjmFWiDyuuC3e2vBkjBmDv/4aRdIxnm92nckl0zW', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (18, 'caozeyu', '15943927504', '0', '曹泽宇', '$2a$10$5T9X3PK05qypYIg7NxYL6OYMLNjNTjf6lqr35h5gc4kA.QG2.F/Ly', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (19, 'guoxueer', '17328016276', '0', '郭雪儿', '$2a$10$ji.hx.8Y61o3HtbU2qjDhOTToVmVeYlumgm.21VVFSnlntHa5KqFS', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (20, 'dongyuntian', '19977893606', '1', '董云天', '$2a$10$GxMQrMwZty7a2ONmR8V6rOMNfgul6hJBbL0xCLGs/4u6pNbspy5xi', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (21, 'liangyanghua', '18085674421', '1', '梁阳华', '$2a$10$zWbIz2EZCLOTc4jzXxt.uO9dlEyI7qK/Klpkd1oeGejKJmAVrokVG', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (22, 'xieyuxuan', '13585607331', '0', '谢宇轩', '$2a$10$gv7asjYGH/ggEGtZjSeG9Or.zLhZzSglhFC67xXZ1q0I90Z3px9my', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (23, 'cuixinyue', '15375324238', '0', '崔欣悦', '$2a$10$CvfEAHJBJDRKwuYu2VUBCeQe5KYvcbE4R7MnL2ZvV/4Eb88weGIEG', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (24, 'linwenbo', '15372250704', '0', '林文博', '$2a$10$7SZqgTjmf.IBY4xMW1EEtOM/Y/T6fVYyqLYKH73PGm53QkHHHXwXC', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (25, 'renxinyuan', '13441733790', '0', '任心愿', '$2a$10$GLZOgaKCYNvdM2TfmDASQOXZ3Hk0FSKMHV6aIg29nAgxtpKRKaEui', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (26, 'yuanziyi', '17579384701', '1', '袁子怡', '$2a$10$Ut3pEsF8D.t/JPt2dhWvLOncsGAgN47xY5m5HQuQ7dMWh7e.P/7sa', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (27, 'hongkaiwen', '13997162709', '1', '洪凯文', '$2a$10$s2DZOwc9JjDggAAeuSQCJOaHayNGpfxxZOQ60m99c8hg0V5WrUWN6', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (28, 'lusimin', '17543445907', '0', '卢思敏', '$2a$10$SfNU3vWAOVWwL1jh0hhqdeH1t/ZDBHZv.2YKbIchxWPZeXELdaIiC', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (29, 'chuchenxi', '13209115029', '0', '褚晨曦', '$2a$10$wZSkVSGbM5BZTth6plauHugXTvNba4oOeC4Br9453gJSD29iROyZO', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (30, 'tanjiabao', '17726730023', '0', '谭嘉宝', '$2a$10$fw1MuK8XSL8jtbE89enhuuV/NqIqHIApgD.Wf4Xyt6e1xZt1ZGfji', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (31, 'daiyiming', '15197080718', '1', '戴一鸣', '$2a$10$7WCvOVvRezLa/BCncH/YGe2KAf.erUhJbdr2lx/pf9EscnFYPIUyi', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (32, 'yantianyou', '18118773628', '0', '阎天佑', '$2a$10$F4BRMcevN3e.q6Ex7TYvNOyWcMZkAbuZ.wtjAN8YwScTCtrLrMUky', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (33, 'fuyuxuan', '18244475044', '1', '傅雨轩', '$2a$10$XcsaEvKA53ufSdwSVIDeR.Kpu4aQZe0jFZqaHUmXh5gPOIJnldRfi', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (34, 'lulexin', '18540435457', '1', '陆乐心', '$2a$10$fgkpShcOrMv5di4aIuFGSeFNsrQMYz2j.z99j/Ztc3oFSPA15NXae', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (35, 'zhanzixuan', '13045291585', '0', '詹梓轩', '$2a$10$6gqnTDt64.hJfPX9KpliSextikY2XyzzTBLzSBKQwuvW69Pa/QH3S', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (36, 'xiongyifan', '13429709583', '1', '熊一凡', '$2a$10$CHuxfyeRYQdtf9WuGyJLtes/UasjzyPgwpwmeqDqtVFa5E08t1BXS', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (37, 'haoruolin', '17591551607', '0', '郝若琳', '$2a$10$xau/sZuRKtp2nHMByiCftO33lXZuPGznyQyybq7iLjplzC7Ozbrz6', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (38, 'mengzhipeng', '13191465403', '1', '孟志鹏', '$2a$10$hjPGsUl5P8ScW7KGAfPQDuVmKRtu5iT6pTB40t67lm05EGh05w1Ga', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (39, 'qinxuemei', '15121822023', '0', '秦雪梅', '$2a$10$H./MnN6SS5SO99l2xMOeCu/AlcQWWBgqWaPh4wd9UNBGIQr.K1PVm', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (40, 'zhongyixuan', '13380294098', '0', '钟艺萱', '$2a$10$7hQH62hvNulKLq/hZ8HI8uEJdztUSYgXYIrvGr1vB4YuPbICdfFBa', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (41, 'lizeyang', '15934234484', '1', '黎泽洋', '$2a$10$OpdiRNNlAgEGGn2uIgEMOulV7Bbxm6FyYzMpyjcbb30zIwJRBxtyC', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (42, 'dengqianye', '13010462774', '1', '邓千叶', '$2a$10$KvpGn6MYosv//Xo9HbipveEHH/p29JyvTypFiAoCVR4/IOamHH47S', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (43, 'panxuehua', '13413083086', '1', '潘雪华', '$2a$10$ICwTvjGLjkGh1HFfK7NBIOTLTUNVWX6.i7lnISgB9WWd6NGWgIZYW', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (44, 'guanxinyu', '18092213993', '1', '管心宇', '$2a$10$8wMS8Ya9coaqqLfLBLMtoe2K84/rR5qjhrd5xAFngQPTJ.sBga1xC', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (45, 'jinxintong', '15874775982', '1', '金鑫彤', '$2a$10$fGMYDdwqQ7tHNMu3deazLOgv0iPwbtfIIVsqtoudf.rSuklZcRz0e', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (46, 'qiuchenxi', '13819138051', '1', '邱晨曦', '$2a$10$VgdfyjORaqBxWlx6utnC2uWHUvxt7/60qPjD8MRhecZ4gMCbdPBC6', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (47, 'kangyiran', '15503206545', '1', '康忆然', '$2a$10$VG2uTJDPXlT5qUk7RM9FBedySMEH1R86CiU7ZLoUdMRVyoZxW5Mwq', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (48, 'biqingsong', '14563254650', '0', '毕青松', '$2a$10$V41vxPBsiO96eKVZSzOWC.zuJpbazfDNO3StoslJyYkRxDhTnfUTe', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (49, 'weichenguang', '17841784034', '0', '卫晨光', '$2a$10$.emUzNWQCAbOWpZJOKJf/Okr5EpvVn3buN3FcIQ1qcaNr0ucHEhQG', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (50, 'shenjiayue', '13154026218', '1', '沈嘉悦', '$2a$10$11WFYj8ZT/cw5H4M1cjKWOW2UVZYFkBIQ2Mz.OEA3YhcEabJB7guW', '0', 1, 1, 1, 1);
INSERT INTO `live_user` VALUES (51, 'wangwu', '13', '0', '王五', '$2a$10$HctMmCYnMmYhzA4GxK4dVe5mJ113uSApkDsZSbEpMO4eFAWEg9fxm', '0', 1, 1, 1, 1);

-- ----------------------------
-- Table structure for parking_list
-- ----------------------------
DROP TABLE IF EXISTS `parking_list`;
CREATE TABLE `parking_list`  (
  `park_id` int NOT NULL AUTO_INCREMENT COMMENT '车位id',
  `park_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车位类型 0:地上 1：地下',
  `park_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车位名称',
  `park_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '车位使用状态 0：未使用 1：已使用',
  `park_num` int NULL DEFAULT NULL COMMENT '车位序号',
  PRIMARY KEY (`park_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of parking_list
-- ----------------------------
INSERT INTO `parking_list` VALUES (1, '0', 'A01', '1', NULL);
INSERT INTO `parking_list` VALUES (2, '0', 'A02', '1', NULL);
INSERT INTO `parking_list` VALUES (3, '0', 'A03', '1', NULL);
INSERT INTO `parking_list` VALUES (4, '0', 'A04', '1', NULL);
INSERT INTO `parking_list` VALUES (5, '0', 'A05', '1', NULL);
INSERT INTO `parking_list` VALUES (6, '0', 'A06', '1', NULL);
INSERT INTO `parking_list` VALUES (7, '0', 'A07', '1', NULL);
INSERT INTO `parking_list` VALUES (8, '0', 'A08', '1', NULL);
INSERT INTO `parking_list` VALUES (9, '0', 'A09', '1', NULL);
INSERT INTO `parking_list` VALUES (10, '0', 'A10', '1', NULL);
INSERT INTO `parking_list` VALUES (11, '0', 'B01', '1', NULL);
INSERT INTO `parking_list` VALUES (12, '0', 'B02', '1', NULL);
INSERT INTO `parking_list` VALUES (13, '0', 'B03', '1', NULL);
INSERT INTO `parking_list` VALUES (14, '0', 'B04', '1', NULL);
INSERT INTO `parking_list` VALUES (15, '0', 'B05', '1', NULL);
INSERT INTO `parking_list` VALUES (16, '0', 'B06', '1', NULL);
INSERT INTO `parking_list` VALUES (17, '0', 'B07', '1', NULL);
INSERT INTO `parking_list` VALUES (18, '0', 'B08', '1', NULL);
INSERT INTO `parking_list` VALUES (19, '0', 'B09', '1', NULL);
INSERT INTO `parking_list` VALUES (20, '0', 'B10', '1', NULL);
INSERT INTO `parking_list` VALUES (21, '1', 'C01', '1', NULL);
INSERT INTO `parking_list` VALUES (22, '1', 'C02', '1', NULL);
INSERT INTO `parking_list` VALUES (23, '1', 'C03', '1', NULL);
INSERT INTO `parking_list` VALUES (24, '1', 'C04', '1', NULL);
INSERT INTO `parking_list` VALUES (25, '1', 'C05', '1', NULL);
INSERT INTO `parking_list` VALUES (26, '1', 'C06', '1', NULL);
INSERT INTO `parking_list` VALUES (27, '1', 'C07', '0', NULL);
INSERT INTO `parking_list` VALUES (28, '1', 'C08', '0', NULL);
INSERT INTO `parking_list` VALUES (29, '1', 'C09', '0', NULL);
INSERT INTO `parking_list` VALUES (30, '1', 'C10', '0', NULL);
INSERT INTO `parking_list` VALUES (31, '1', 'D01', '1', NULL);
INSERT INTO `parking_list` VALUES (32, '1', 'D02', '0', NULL);
INSERT INTO `parking_list` VALUES (33, '1', 'D03', '0', NULL);
INSERT INTO `parking_list` VALUES (34, '1', 'D04', '0', NULL);
INSERT INTO `parking_list` VALUES (35, '1', 'D05', '0', NULL);
INSERT INTO `parking_list` VALUES (36, '1', 'D06', '0', NULL);
INSERT INTO `parking_list` VALUES (37, '1', 'D07', '0', NULL);
INSERT INTO `parking_list` VALUES (38, '1', 'D08', '0', NULL);
INSERT INTO `parking_list` VALUES (39, '1', 'D09', '0', NULL);
INSERT INTO `parking_list` VALUES (40, '1', 'D10', '0', NULL);
INSERT INTO `parking_list` VALUES (41, '1', 'E01', '0', NULL);
INSERT INTO `parking_list` VALUES (42, '1', 'E02', '0', NULL);
INSERT INTO `parking_list` VALUES (43, '1', 'E03', '0', NULL);
INSERT INTO `parking_list` VALUES (44, '1', 'E04', '0', NULL);
INSERT INTO `parking_list` VALUES (45, '1', 'E05', '0', NULL);
INSERT INTO `parking_list` VALUES (46, '1', 'E06', '0', NULL);
INSERT INTO `parking_list` VALUES (47, '1', 'E07', '0', NULL);
INSERT INTO `parking_list` VALUES (48, '1', 'E08', '0', NULL);
INSERT INTO `parking_list` VALUES (49, '1', 'E09', '0', NULL);
INSERT INTO `parking_list` VALUES (50, '1', 'E10', '0', NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `parent_id` int NULL DEFAULT NULL COMMENT '父级菜单id',
  `menu_label` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '菜单名称',
  `menu_code` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '权限字段',
  `name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由名称',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '路由地址',
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '组件路由',
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '类型 0：目录 1：菜单 2：按钮',
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图标',
  `order_num` int NULL DEFAULT NULL COMMENT '序号',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  `parent_name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '上级菜单名称',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (3, 0, '系统管理', 'sys:system', '', '/system', '', '0', 'el-icon-menu', 1, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (4, 3, '员工管理', 'sys:sysUserList', 'sys:user:index', '/sysUserList', '/system/sysUserList', '1', 'el-icon-s-custom', 1, '', '系统管理');
INSERT INTO `sys_menu` VALUES (5, 3, '角色管理', 'sys:sysRoleList', 'sysRoleList', '/sysRoleList', '/system/sysRoleList', '1', 'el-icon-date', 2, '', '系统管理');
INSERT INTO `sys_menu` VALUES (6, 3, '权限管理', 'sys:sysMenuList', 'sysMenuList', '/sysMenuList', '/system/sysMenuList', '1', 'el-icon-school', 3, '', '系统管理');
INSERT INTO `sys_menu` VALUES (7, 4, '新增', 'sys:user:add', '', '', '', '2', '', 1, '', '员工管理');
INSERT INTO `sys_menu` VALUES (8, 4, '编辑', 'sys:user:edit', '', '', '', '2', '', 2, '', '员工管理');
INSERT INTO `sys_menu` VALUES (9, 4, '删除', 'sys:user:delete', '', '', '', '2', '', 3, '', '员工管理');
INSERT INTO `sys_menu` VALUES (10, 5, '新增', 'sys:role:add', '', '', '', '2', '', 1, '', '角色管理');
INSERT INTO `sys_menu` VALUES (11, 5, '编辑', 'sys:role:edit', '', '', '', '2', '', 2, '', '角色管理');
INSERT INTO `sys_menu` VALUES (12, 5, '删除', 'sys:role:delete', '', '', '', '2', '', 3, '', '角色管理');
INSERT INTO `sys_menu` VALUES (13, 6, '新增', 'sys:menu:add', '', '', '', '2', '', 1, '', '权限管理');
INSERT INTO `sys_menu` VALUES (14, 6, '编辑', 'sys:menu:edit', '', '', '', '2', '', 2, '', '权限管理');
INSERT INTO `sys_menu` VALUES (15, 6, '删除', 'sys:menu:delete', '', '', '', '2', '', 3, '', '权限管理');
INSERT INTO `sys_menu` VALUES (16, 0, '房屋管理', 'sys:home:index', '', '/sysHouse', '', '0', 'el-icon-s-help', 2, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (17, 16, '房屋列表', 'sys:house:list', 'sysHouseList', '/sysHouseList', '/house/houseList', '1', 'el-icon-mobile', 3, '', '房屋管理');
INSERT INTO `sys_menu` VALUES (18, 17, '新增', 'sys:house:add', '', '', '', '2', '', 1, '', '房屋列表');
INSERT INTO `sys_menu` VALUES (19, 17, '编辑', 'sys:house:edit', '', '', '', '2', '', 2, '', '房屋列表');
INSERT INTO `sys_menu` VALUES (20, 17, '删除', 'sys:house:delete', '', '', '', '2', '', 3, '', '房屋列表');
INSERT INTO `sys_menu` VALUES (21, 16, '单元管理', 'sys:houseUnit', 'houseUnit', '/houseUnit', '/house/houseUnit', '1', 'table', 2, '', '房屋管理');
INSERT INTO `sys_menu` VALUES (22, 16, '楼栋管理', 'sys:houseBuilding', 'houseBuilding', '/houseBuilding', '/house/houseBuilding', '1', 'table', 1, '', '房屋管理');
INSERT INTO `sys_menu` VALUES (23, 22, '新增', 'sys:houseBuilding:add', '', '', '', '2', '', 1, '', '楼栋管理');
INSERT INTO `sys_menu` VALUES (24, 22, '编辑', 'sys:houseBuilding:edit', '', '', '', '2', '', 2, '', '楼栋管理');
INSERT INTO `sys_menu` VALUES (25, 22, '删除', 'sys:houseBuilding:delete', '', '', '', '2', '', 3, '', '楼栋管理');
INSERT INTO `sys_menu` VALUES (26, 21, '新增', 'sys:houseUnit:add', '', '', '', '2', '', 1, '', '单元管理');
INSERT INTO `sys_menu` VALUES (27, 21, '编辑', 'sys:houseUnit:edit', '', '', '', '2', '', 2, '', '单元管理');
INSERT INTO `sys_menu` VALUES (28, 21, '删除', 'sys:houseUnit:delete', '', '', '', '2', '', 3, '', '单元管理');
INSERT INTO `sys_menu` VALUES (29, 0, '车位管理', 'sys:sysPark', '', '/sysPark', '', '0', 'el-icon-money', 3, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (30, 29, '车位管理', 'sys:parkList', 'parkList', '/parkList', '/park/parkList', '1', 'el-icon-money', 1, '', '车位管理');
INSERT INTO `sys_menu` VALUES (31, 30, '新增', 'sys:parkList:add', '', '', '', '2', '', 1, '', '车位管理');
INSERT INTO `sys_menu` VALUES (32, 30, '编辑', 'sys:parkList:edit', '', '', '', '2', '', 2, '', '车位管理');
INSERT INTO `sys_menu` VALUES (33, 30, '删除', 'sys:parkList:delete', '', '', '', '2', '', 3, '', '车位管理');
INSERT INTO `sys_menu` VALUES (34, 0, '业主管理', 'sys:live', '', '/live', '', '0', 'el-icon-s-grid', 4, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (35, 34, '业主列表', 'sys:liveUser', 'liveUser', '/liveUser', '/live/liveUser', '1', 'el-icon-s-data', 1, '', '业主管理');
INSERT INTO `sys_menu` VALUES (36, 35, '新增', 'sys:liveUser:add', '', '', '', '2', '', 1, '', '业主列表');
INSERT INTO `sys_menu` VALUES (37, 35, '编辑', 'sys:liveUser:edit', '', '', '', '2', '', 2, '', '业主列表');
INSERT INTO `sys_menu` VALUES (38, 35, '删除', 'sys:liveUser:delete', '', '', '', '2', '', 3, '', '业主列表');
INSERT INTO `sys_menu` VALUES (39, 35, '分配房屋', 'sys:liveUser:assignHome', '', '', '', '2', '', 4, '', '业主列表');
INSERT INTO `sys_menu` VALUES (40, 35, '分配车位', 'sys:liveUser:assignCar', '', '', '', '2', '', 6, '', '业主列表');
INSERT INTO `sys_menu` VALUES (41, 35, '退房', 'sys:liveUser:returnHome', '', '', '', '2', '', 7, '', '业主列表');
INSERT INTO `sys_menu` VALUES (42, 35, '退车位', 'sys:liveUser:returnCar', '', '', '', '2', '', 8, '', '业主列表');
INSERT INTO `sys_menu` VALUES (43, 0, '收费管理', 'sys:fee', '', '/fee', '', '0', 'el-icon-s-open', 5, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (44, 43, '电费管理', 'sys:feePower', 'feePower', '/feePower', '/fee/feePower', '1', 'el-icon-picture', 1, '', '收费管理');
INSERT INTO `sys_menu` VALUES (45, 43, '水费管理', 'sys:feeWater', 'feeWater', '/feeWater', '/fee/feeWater', '1', 'el-icon-s-data', 2, '', '收费管理');
INSERT INTO `sys_menu` VALUES (46, 43, '停车管理', 'sys:feePark', 'feePark', '/feePark', '/fee/feePark', '1', 'el-icon-s-order', 3, '', '收费管理');
INSERT INTO `sys_menu` VALUES (47, 44, '新增', 'sys:feePower:add', '', '', '', '2', '', 1, '', '电费管理');
INSERT INTO `sys_menu` VALUES (48, 44, '编辑', 'sys:feePower:edit', '', '', '', '2', '', 2, '', '电费管理');
INSERT INTO `sys_menu` VALUES (49, 44, '删除', 'sys:feePower:delete', '', '', '', '2', '', 3, '', '电费管理');
INSERT INTO `sys_menu` VALUES (50, 45, '新增', 'sys:feeWater:add', '', '', '', '2', '', 1, '', '水费管理');
INSERT INTO `sys_menu` VALUES (51, 45, '编辑', 'sys:feeWater:edit', '', '', '', '2', '', 2, '', '水费管理');
INSERT INTO `sys_menu` VALUES (52, 45, '删除', 'sys:feeWater:delete', '', '', '', '2', '', 3, '', '水费管理');
INSERT INTO `sys_menu` VALUES (53, 46, '新增', 'sys:feePark:add', '', '', '', '2', '', 1, '', '停车管理');
INSERT INTO `sys_menu` VALUES (54, 46, '编辑', 'sys:feePark:edit', '', '', '', '2', '', 2, '', '停车管理');
INSERT INTO `sys_menu` VALUES (55, 46, '删除', 'sys:feePark:delete', '', '', '', '2', '', 3, '', '停车管理');
INSERT INTO `sys_menu` VALUES (56, 0, '反馈管理', 'sys:userComplaint', '', '/userComplaint', '', '0', 'el-icon-date', 6, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (57, 56, '反馈列表', 'sys:userComplaintList', 'userComplaintList', '/userComplaintList', '/userComplaint/userComplaint', '1', 'el-icon-edit-outline', 1, '', '反馈管理');
INSERT INTO `sys_menu` VALUES (58, 56, '我的反馈', 'sys:myUserComplaint', 'myUserComplaint', '/myUserComplaint', '/userComplaint/myUserComplaint', '1', 'el-icon-menu', 2, '', '反馈管理');
INSERT INTO `sys_menu` VALUES (62, 58, '新增', 'sys:myUserComplaint:add', '', '', '', '2', '', 1, '', '我的反馈');
INSERT INTO `sys_menu` VALUES (63, 58, '编辑', 'sys:myUserComplaint:edit', '', '', '', '2', '', 2, '', '我的反馈');
INSERT INTO `sys_menu` VALUES (64, 58, '删除', 'sys:myUserComplaint:delete', '', '', '', '2', '', 3, '', '我的反馈');
INSERT INTO `sys_menu` VALUES (65, 0, '维修管理', 'sys:repairModel', '', '/repairModel', '', '0', 'el-icon-picture-outline', 7, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (66, 65, '维修列表', 'sys:repairList', 'repairList', '/repairList', '/repair/repairList', '1', 'el-icon-s-marketing', 1, '', '维修管理');
INSERT INTO `sys_menu` VALUES (67, 65, '我的维修', 'sys:myRepair', 'myRepair', '/myRepair', '/repair/myRepair', '1', 'el-icon-picture-outline', 2, '', '维修管理');
INSERT INTO `sys_menu` VALUES (68, 67, '新增', 'sys:myRepair:add', '', '', '', '2', '', 1, '', '我的维修');
INSERT INTO `sys_menu` VALUES (69, 67, '编辑', 'sys:myRepair:edit', '', '', '', '2', '', 2, '', '我的维修');
INSERT INTO `sys_menu` VALUES (70, 67, '删除', 'sys:myRepair:delete', '', '', '', '2', '', 3, '', '我的维修');
INSERT INTO `sys_menu` VALUES (71, 0, '公告管理', 'sys:notice', '', '/notice', '', '0', 'el-icon-document-copy', 8, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (72, 71, '公告列表', 'sys:noticeList', 'noticeList', '/noticeList', '/notice/noticeList', '1', 'el-icon-s-marketing', 1, '', '公告管理');
INSERT INTO `sys_menu` VALUES (73, 72, '新增', 'sys:noticeList:add', '', '', '', '2', '', 1, '', '公告列表');
INSERT INTO `sys_menu` VALUES (74, 72, '编辑', 'sys:noticeList:edit', '', '', '', '2', '', 2, '', '公告列表');
INSERT INTO `sys_menu` VALUES (75, 72, '删除', 'sys:noticeList:delete', '', '', '', '2', '', 3, '', '公告列表');
INSERT INTO `sys_menu` VALUES (76, 72, '查看', 'sys:notice:look', '', '', '', '2', '', 4, '', '公告列表');
INSERT INTO `sys_menu` VALUES (77, 4, '分配角色', 'sys:user:assignRole', '', '', '', '2', '', 5, '', '员工管理');
INSERT INTO `sys_menu` VALUES (78, 5, '分配权限', 'sys:role:assignMenu', '', '', '', '2', '', 4, '', '角色管理');
INSERT INTO `sys_menu` VALUES (79, 66, '处理', 'sys:repairList:do', '', '', '', '2', '', 1, '', '维修列表');
INSERT INTO `sys_menu` VALUES (80, 57, '处理', 'sys:myUserComplaint:do', '', '', '', '2', '', 1, '', '我的反馈');
INSERT INTO `sys_menu` VALUES (81, 44, '缴费', 'sys:feePower:pay', '', '', '', '2', '', 4, '', '电费管理');
INSERT INTO `sys_menu` VALUES (82, 46, '缴费', 'sys:feePark:pay', '', '', '', '2', '', 4, '', '停车管理');
INSERT INTO `sys_menu` VALUES (83, 45, '缴费', 'sys:feeWater:pay', '', '', '', '2', '', 4, '', '水费管理');
INSERT INTO `sys_menu` VALUES (84, 0, '缴费记录', 'sys:feeList', '', '/feeList', '', '0', 'el-icon-c-scale-to-original', 6, '', '顶级菜单');
INSERT INTO `sys_menu` VALUES (85, 84, '我的电费', 'sys:myPowerFee', 'myPowerFee', '/myPowerFee', '/feeList/myPowerFee', '1', 'el-icon-date', 1, '', '缴费记录');
INSERT INTO `sys_menu` VALUES (86, 84, '我的水费', 'sys:myWaterFee', 'myWaterFee', '/myWaterFee', '/feeList/myWaterFee', '1', 'el-icon-s-shop', 2, '', '缴费记录');
INSERT INTO `sys_menu` VALUES (87, 84, '我的停车费', 'sys:myParkFee', 'myParkFee', '/myParkFee', '/feeList/myParkFee', '1', 'el-icon-s-finance', 3, '', '缴费记录');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `notice_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (5, NULL, '环境卫生', '请大家不要随地乱扔垃圾', '2024-04-15 16:47:55');
INSERT INTO `sys_notice` VALUES (6, NULL, '关于清明节假期的值班安排', '- 4月3日（清明节当天）： \n  - 上午8点至12点：张先生，负责处理物业报修和紧急事务，联系电话：13800009999\n  - 下午12点至4点：王小姐，负责巡视小区环境和安全，联系电话：13900009999 \n  - 晚上4点至8点：李先生，负责处理居民投诉和突发事件，联系电话：13700009999\n \n- 4月4日至4月5日： \n  - 白天轮班制度，每人每天8小时 \n  - 值班人员包括： \n    - 早班（8点至12点）：刘先生，负责小区门卫和接待工作，联系电话：13600009999\n    - 中班（12点至4点）：陈小姐，负责处理物业费缴纳和业主咨询，联系电话：13500009999\n    - 晚班（4点至8点）：赵先生，负责巡逻小区安全和处理突发事件，联系电话：13400009999\n    - 夜班（8点至次日8点）：杨小姐，负责监控小区安全和应对紧急情况，联系电话：13300009999', '2024-04-15 16:49:39');
INSERT INTO `sys_notice` VALUES (7, NULL, '小区停电通知', '亲爱的业主们，由于电力设施维护，我们小区将于本周六（日期）进行停电维修。停电时间为上午9点至下午5点。给您带来的不便，敬请谅解，谢谢！', '2024-04-20 17:38:08');
INSERT INTO `sys_notice` VALUES (11, NULL, '小区健身房装修通知', '亲爱的居民们，我们小区的健身房将于下周一（日期）开始进行装修工程，预计装修时间为两周。在此期间，健身房将暂停使用，请您提前做好健身安排，如有不便，敬请谅解，感谢您的配合！', '2024-04-20 18:59:26');
INSERT INTO `sys_notice` VALUES (12, NULL, '小区停车位调整通知', '尊敬的业主们，由于小区停车位有限，为了更好地管理停车资源，我们计划对小区停车位进行重新调整。请您在调整期间配合，如有任何疑问，请与物业联系。感谢您的理解与支持！', '2024-04-20 18:59:38');
INSERT INTO `sys_notice` VALUES (13, NULL, '小区安全防范提示', '亲爱的居民们，近期小区内发生了一些入室盗窃案件，请大家注意加强家门、车辆等财物的安全防范意识。如发现可疑情况，请及时报警，并与物业联系。让我们一起为小区的安全努力，共同营造一个安宁的生活环境。', '2024-04-20 18:59:48');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(56) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (5, '管理员角色', '管理员角色');
INSERT INTO `sys_role` VALUES (6, '收费员', '负责收取费用');
INSERT INTO `sys_role` VALUES (8, '业主', '房屋主人');
INSERT INTO `sys_role` VALUES (9, '维修人员', '维修管理');
INSERT INTO `sys_role` VALUES (11, '业主信息管理员', '管理业主信息');
INSERT INTO `sys_role` VALUES (12, '业主', '业主信息');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_menu_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  `menu_id` int NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1546 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1286, 5, 3);
INSERT INTO `sys_role_menu` VALUES (1287, 5, 4);
INSERT INTO `sys_role_menu` VALUES (1288, 5, 7);
INSERT INTO `sys_role_menu` VALUES (1289, 5, 8);
INSERT INTO `sys_role_menu` VALUES (1290, 5, 9);
INSERT INTO `sys_role_menu` VALUES (1291, 5, 77);
INSERT INTO `sys_role_menu` VALUES (1292, 5, 5);
INSERT INTO `sys_role_menu` VALUES (1293, 5, 10);
INSERT INTO `sys_role_menu` VALUES (1294, 5, 11);
INSERT INTO `sys_role_menu` VALUES (1295, 5, 12);
INSERT INTO `sys_role_menu` VALUES (1296, 5, 78);
INSERT INTO `sys_role_menu` VALUES (1297, 5, 6);
INSERT INTO `sys_role_menu` VALUES (1298, 5, 13);
INSERT INTO `sys_role_menu` VALUES (1299, 5, 14);
INSERT INTO `sys_role_menu` VALUES (1300, 5, 15);
INSERT INTO `sys_role_menu` VALUES (1301, 5, 16);
INSERT INTO `sys_role_menu` VALUES (1302, 5, 17);
INSERT INTO `sys_role_menu` VALUES (1303, 5, 18);
INSERT INTO `sys_role_menu` VALUES (1304, 5, 19);
INSERT INTO `sys_role_menu` VALUES (1305, 5, 20);
INSERT INTO `sys_role_menu` VALUES (1306, 5, 21);
INSERT INTO `sys_role_menu` VALUES (1307, 5, 26);
INSERT INTO `sys_role_menu` VALUES (1308, 5, 27);
INSERT INTO `sys_role_menu` VALUES (1309, 5, 28);
INSERT INTO `sys_role_menu` VALUES (1310, 5, 22);
INSERT INTO `sys_role_menu` VALUES (1311, 5, 23);
INSERT INTO `sys_role_menu` VALUES (1312, 5, 24);
INSERT INTO `sys_role_menu` VALUES (1313, 5, 25);
INSERT INTO `sys_role_menu` VALUES (1314, 5, 29);
INSERT INTO `sys_role_menu` VALUES (1315, 5, 30);
INSERT INTO `sys_role_menu` VALUES (1316, 5, 31);
INSERT INTO `sys_role_menu` VALUES (1317, 5, 32);
INSERT INTO `sys_role_menu` VALUES (1318, 5, 33);
INSERT INTO `sys_role_menu` VALUES (1319, 5, 34);
INSERT INTO `sys_role_menu` VALUES (1320, 5, 35);
INSERT INTO `sys_role_menu` VALUES (1321, 5, 36);
INSERT INTO `sys_role_menu` VALUES (1322, 5, 37);
INSERT INTO `sys_role_menu` VALUES (1323, 5, 38);
INSERT INTO `sys_role_menu` VALUES (1324, 5, 39);
INSERT INTO `sys_role_menu` VALUES (1325, 5, 40);
INSERT INTO `sys_role_menu` VALUES (1326, 5, 41);
INSERT INTO `sys_role_menu` VALUES (1327, 5, 42);
INSERT INTO `sys_role_menu` VALUES (1328, 5, 43);
INSERT INTO `sys_role_menu` VALUES (1329, 5, 44);
INSERT INTO `sys_role_menu` VALUES (1330, 5, 47);
INSERT INTO `sys_role_menu` VALUES (1331, 5, 48);
INSERT INTO `sys_role_menu` VALUES (1332, 5, 49);
INSERT INTO `sys_role_menu` VALUES (1333, 5, 81);
INSERT INTO `sys_role_menu` VALUES (1334, 5, 45);
INSERT INTO `sys_role_menu` VALUES (1335, 5, 50);
INSERT INTO `sys_role_menu` VALUES (1336, 5, 51);
INSERT INTO `sys_role_menu` VALUES (1337, 5, 52);
INSERT INTO `sys_role_menu` VALUES (1338, 5, 83);
INSERT INTO `sys_role_menu` VALUES (1339, 5, 46);
INSERT INTO `sys_role_menu` VALUES (1340, 5, 53);
INSERT INTO `sys_role_menu` VALUES (1341, 5, 54);
INSERT INTO `sys_role_menu` VALUES (1342, 5, 55);
INSERT INTO `sys_role_menu` VALUES (1343, 5, 82);
INSERT INTO `sys_role_menu` VALUES (1344, 5, 57);
INSERT INTO `sys_role_menu` VALUES (1345, 5, 80);
INSERT INTO `sys_role_menu` VALUES (1346, 5, 66);
INSERT INTO `sys_role_menu` VALUES (1347, 5, 79);
INSERT INTO `sys_role_menu` VALUES (1348, 5, 71);
INSERT INTO `sys_role_menu` VALUES (1349, 5, 72);
INSERT INTO `sys_role_menu` VALUES (1350, 5, 73);
INSERT INTO `sys_role_menu` VALUES (1351, 5, 74);
INSERT INTO `sys_role_menu` VALUES (1352, 5, 75);
INSERT INTO `sys_role_menu` VALUES (1353, 5, 76);
INSERT INTO `sys_role_menu` VALUES (1354, 5, 56);
INSERT INTO `sys_role_menu` VALUES (1355, 5, 65);
INSERT INTO `sys_role_menu` VALUES (1419, 9, 66);
INSERT INTO `sys_role_menu` VALUES (1420, 9, 79);
INSERT INTO `sys_role_menu` VALUES (1421, 9, 76);
INSERT INTO `sys_role_menu` VALUES (1422, 9, 65);
INSERT INTO `sys_role_menu` VALUES (1423, 9, 71);
INSERT INTO `sys_role_menu` VALUES (1424, 9, 72);
INSERT INTO `sys_role_menu` VALUES (1450, 10, 34);
INSERT INTO `sys_role_menu` VALUES (1451, 10, 35);
INSERT INTO `sys_role_menu` VALUES (1452, 10, 36);
INSERT INTO `sys_role_menu` VALUES (1453, 10, 37);
INSERT INTO `sys_role_menu` VALUES (1454, 10, 38);
INSERT INTO `sys_role_menu` VALUES (1455, 10, 39);
INSERT INTO `sys_role_menu` VALUES (1456, 10, 40);
INSERT INTO `sys_role_menu` VALUES (1457, 10, 41);
INSERT INTO `sys_role_menu` VALUES (1458, 10, 42);
INSERT INTO `sys_role_menu` VALUES (1483, 8, 58);
INSERT INTO `sys_role_menu` VALUES (1484, 8, 62);
INSERT INTO `sys_role_menu` VALUES (1485, 8, 63);
INSERT INTO `sys_role_menu` VALUES (1486, 8, 64);
INSERT INTO `sys_role_menu` VALUES (1487, 8, 67);
INSERT INTO `sys_role_menu` VALUES (1488, 8, 68);
INSERT INTO `sys_role_menu` VALUES (1489, 8, 69);
INSERT INTO `sys_role_menu` VALUES (1490, 8, 70);
INSERT INTO `sys_role_menu` VALUES (1491, 8, 76);
INSERT INTO `sys_role_menu` VALUES (1492, 8, 84);
INSERT INTO `sys_role_menu` VALUES (1493, 8, 85);
INSERT INTO `sys_role_menu` VALUES (1494, 8, 86);
INSERT INTO `sys_role_menu` VALUES (1495, 8, 87);
INSERT INTO `sys_role_menu` VALUES (1496, 8, 56);
INSERT INTO `sys_role_menu` VALUES (1497, 8, 65);
INSERT INTO `sys_role_menu` VALUES (1498, 8, 71);
INSERT INTO `sys_role_menu` VALUES (1499, 8, 72);
INSERT INTO `sys_role_menu` VALUES (1500, 11, 34);
INSERT INTO `sys_role_menu` VALUES (1501, 11, 35);
INSERT INTO `sys_role_menu` VALUES (1502, 11, 36);
INSERT INTO `sys_role_menu` VALUES (1503, 11, 37);
INSERT INTO `sys_role_menu` VALUES (1504, 11, 38);
INSERT INTO `sys_role_menu` VALUES (1505, 11, 39);
INSERT INTO `sys_role_menu` VALUES (1506, 11, 40);
INSERT INTO `sys_role_menu` VALUES (1507, 11, 41);
INSERT INTO `sys_role_menu` VALUES (1508, 11, 42);
INSERT INTO `sys_role_menu` VALUES (1509, 11, 71);
INSERT INTO `sys_role_menu` VALUES (1510, 11, 72);
INSERT INTO `sys_role_menu` VALUES (1511, 11, 73);
INSERT INTO `sys_role_menu` VALUES (1512, 11, 74);
INSERT INTO `sys_role_menu` VALUES (1513, 11, 75);
INSERT INTO `sys_role_menu` VALUES (1514, 11, 76);
INSERT INTO `sys_role_menu` VALUES (1515, 6, 43);
INSERT INTO `sys_role_menu` VALUES (1516, 6, 44);
INSERT INTO `sys_role_menu` VALUES (1517, 6, 47);
INSERT INTO `sys_role_menu` VALUES (1518, 6, 48);
INSERT INTO `sys_role_menu` VALUES (1519, 6, 49);
INSERT INTO `sys_role_menu` VALUES (1520, 6, 81);
INSERT INTO `sys_role_menu` VALUES (1521, 6, 45);
INSERT INTO `sys_role_menu` VALUES (1522, 6, 50);
INSERT INTO `sys_role_menu` VALUES (1523, 6, 51);
INSERT INTO `sys_role_menu` VALUES (1524, 6, 52);
INSERT INTO `sys_role_menu` VALUES (1525, 6, 83);
INSERT INTO `sys_role_menu` VALUES (1526, 6, 46);
INSERT INTO `sys_role_menu` VALUES (1527, 6, 53);
INSERT INTO `sys_role_menu` VALUES (1528, 6, 54);
INSERT INTO `sys_role_menu` VALUES (1529, 6, 55);
INSERT INTO `sys_role_menu` VALUES (1530, 6, 82);
INSERT INTO `sys_role_menu` VALUES (1531, 6, 71);
INSERT INTO `sys_role_menu` VALUES (1532, 6, 72);
INSERT INTO `sys_role_menu` VALUES (1533, 6, 73);
INSERT INTO `sys_role_menu` VALUES (1534, 6, 74);
INSERT INTO `sys_role_menu` VALUES (1535, 6, 75);
INSERT INTO `sys_role_menu` VALUES (1536, 6, 76);
INSERT INTO `sys_role_menu` VALUES (1537, 12, 34);
INSERT INTO `sys_role_menu` VALUES (1538, 12, 35);
INSERT INTO `sys_role_menu` VALUES (1539, 12, 36);
INSERT INTO `sys_role_menu` VALUES (1540, 12, 37);
INSERT INTO `sys_role_menu` VALUES (1541, 12, 38);
INSERT INTO `sys_role_menu` VALUES (1542, 12, 39);
INSERT INTO `sys_role_menu` VALUES (1543, 12, 40);
INSERT INTO `sys_role_menu` VALUES (1544, 12, 41);
INSERT INTO `sys_role_menu` VALUES (1545, 12, 42);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `login_name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录密码',
  `username` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '登录账号',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '性别 0：女 1：男',
  `id_card` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '身份证号码',
  `is_admin` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '是否是管理员 0：不是 1：是',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0：在职  1：离职',
  `is_used` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '0：启用 1：禁用',
  `is_account_non_expired` int NULL DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)	',
  `is_account_non_locked` int NULL DEFAULT NULL COMMENT ' 帐户是否被锁定(1 未过期，0已过期)	',
  `is_credentials_non_expired` int NULL DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)	',
  `is_enabled` int NULL DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)	',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (4, 'admin', '$2a$10$/mDcuIn2la6FmjaC6lJfEeOV9ZORcHpuxT3O1yJwh6I6KHyt6YrBO', 'admin', '0791 67896789', '1', '123123123123123123', '1', '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (13, '收费张', '$2a$10$rC3XamFeeH6eUa0uTnjf7.fVj.hI/M2z/VVu/GDRKCY5yIvuQNPlS', 'shoufeizhang', '13300009999', '1', '456456456456456456', NULL, '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (15, '维修员老刘', '$2a$10$dYSwCoN/1T7Bis8rWHm70eDpsnogdS.A8PvqiAfriLhWH2V13TGZC', 'weixiuliu', '66667777', '1', '167167167167167167', NULL, '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (17, '业主管理员王', '$2a$10$rV9vTi8NCI0pLSJLgxIFh.fLFylgYfBpvG60BO3WJzOyYxA58GPg2', 'yezhuwang', '123123', '1', '1231231231', NULL, '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (18, 'lisi', '$2a$10$xp/yxis9v4Ma1KM8zdaUTe1jjwMtj9/BedwJaNomzmegwmmSBtEAW', 'lisi', '123', '1', '123', NULL, '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (19, 'test', '123', 'test', '111', '1', '123123123123', NULL, '0', '0', 1, 1, 1, 1);
INSERT INTO `sys_user` VALUES (21, 'ttt', '$2b$12$g7J9/n1707/tv6//yZOln.Pgkw/i2BSzwAJgH8EV.7CITSZI.OEIK', 'aaa', '123', '1', '123', NULL, '0', '0', 1, 1, 1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_role_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (10, 5, 4);
INSERT INTO `sys_user_role` VALUES (11, 6, 13);
INSERT INTO `sys_user_role` VALUES (13, 8, 14);
INSERT INTO `sys_user_role` VALUES (14, 9, 15);
INSERT INTO `sys_user_role` VALUES (16, 11, 16);
INSERT INTO `sys_user_role` VALUES (20, 11, 17);
INSERT INTO `sys_user_role` VALUES (21, 12, 18);

-- ----------------------------
-- Table structure for user_complaint
-- ----------------------------
DROP TABLE IF EXISTS `user_complaint`;
CREATE TABLE `user_complaint`  (
  `complaint_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '标题',
  `complaint_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '投诉内容',
  `create_time` datetime NULL DEFAULT NULL COMMENT '投诉时间',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '处理状态 0：未处理 1：已处理',
  PRIMARY KEY (`complaint_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_complaint
-- ----------------------------
INSERT INTO `user_complaint` VALUES (10, 1, '维修修进度太慢了', '一栋一单元门口下水道井盖坏了，已经好多天了，能不能尽快修一下\n', '2024-04-20 10:52:14', '0');
INSERT INTO `user_complaint` VALUES (11, 1, '半夜总是有狗叫', '一栋一单元每天半夜都能听到狗叫，本来睡眠就不好，天天狗叫都会被吵死', '2024-04-20 11:37:28', '1');
INSERT INTO `user_complaint` VALUES (12, 1, '消防设备要过期', '一栋一单元楼梯间灭火器快要过期了，要及时更换', '2024-04-20 11:39:33', '0');
INSERT INTO `user_complaint` VALUES (13, 1, '楼上经常发出异响', '一栋一单元201晚上经常蹦来蹦去，特别吵', '2024-04-20 11:42:06', '0');
INSERT INTO `user_complaint` VALUES (14, 2, '绿化带维护', '小区内的绿化带最近有些杂乱，希望物业能够加强维护和修剪。', '2024-04-20 11:58:19', '1');
INSERT INTO `user_complaint` VALUES (15, 2, '垃圾处理不及时', '小区内的垃圾清运不够及时，垃圾桶经常满溢，希望能增加清运频次。', '2024-04-20 11:58:34', '0');
INSERT INTO `user_complaint` VALUES (16, 2, '路灯不够亮', '最近晚上小区内的路灯有些不亮，导致夜间行走不便，请物业尽快维修。', '2024-04-20 11:58:58', '1');
INSERT INTO `user_complaint` VALUES (17, 3, '健身器材损坏', '小区内的公共健身器材有些损坏，希望物业能够检查和维修，确保居民安全使用。', '2024-04-20 12:00:09', '1');
INSERT INTO `user_complaint` VALUES (18, 3, '车辆乱停放', '最近发现小区内有些车辆乱停乱放，影响了交通和居民出行，请物业加强管理和规范停车。', '2024-04-20 12:00:31', '0');
INSERT INTO `user_complaint` VALUES (19, 3, '电梯不稳定', '一栋一单元的电梯运行有时会有些不稳定，担心存在安全隐患，请物业安排专业人员进行检查和维修。', '2024-04-20 12:00:58', '0');
INSERT INTO `user_complaint` VALUES (20, 4, '绿化建议', '建议在小区角落放些花盆或者种点小草，让小区更有生气。', '2024-04-20 14:37:04', '0');
INSERT INTO `user_complaint` VALUES (21, 4, '安全建议', '如果能装几个摄像头，监控下小区出入口，那就更安全了。', '2024-04-20 14:37:18', '1');
INSERT INTO `user_complaint` VALUES (22, 4, '维护建议', '物业大哥，能不能修下那个小区大门，看着有点破破烂烂的。', '2024-04-20 14:37:32', '0');
INSERT INTO `user_complaint` VALUES (23, 5, '虫害防治', '一栋二单元后面绿化带出现了一些害虫，可能影响居民的健康，能够进行一下防治吗？', '2024-04-20 14:49:28', '1');
INSERT INTO `user_complaint` VALUES (24, 5, '门禁系统安全性太低', '建议升级一下东门门口门禁系统的识别功能，随便一个人都能通过人脸识别，太不安全了', '2024-04-20 14:50:58', '0');
INSERT INTO `user_complaint` VALUES (25, 5, '卫生清理不及时', '建议定期对小区卫生进行检查，确保公共区域的整洁和卫生。', '2024-04-20 14:51:27', '0');
INSERT INTO `user_complaint` VALUES (26, 1, '停车位太少', '小区停车位越来越紧张，经常出现停车位被非业主车辆占用的情况。这不仅给业主出行带来了不便，也增加了小区的安全隐患。', '2024-05-06 13:36:08', '0');
INSERT INTO `user_complaint` VALUES (27, 51, '123', '123', '2024-05-30 10:08:49', '0');

-- ----------------------------
-- Table structure for user_repair
-- ----------------------------
DROP TABLE IF EXISTS `user_repair`;
CREATE TABLE `user_repair`  (
  `repair_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NULL DEFAULT NULL COMMENT '业主id',
  `phone` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `repair_address` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '维修地址',
  `repair_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '维修内容',
  `commit_time` datetime NULL DEFAULT NULL COMMENT '报修时间',
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '维修状态 0：未维修 1：已维修',
  PRIMARY KEY (`repair_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_repair
-- ----------------------------
INSERT INTO `user_repair` VALUES (1, 4, '15600009999', '一栋一单元202', '天然气阀门漏气', '2024-01-27 16:51:47', '1');
INSERT INTO `user_repair` VALUES (7, 2, '14700009999', '一栋一单元102楼梯口', '你们物业怎么搞的，家门口楼梯间的灯泡老是坏，已经申请维修好几次了到底能不能修好', '2024-04-15 15:28:44', '1');
INSERT INTO `user_repair` VALUES (8, 1, '15600009999', '一栋一单元', '一栋一单元门口下水道井盖坏了，关不上', '2024-04-20 11:51:58', '0');
INSERT INTO `user_repair` VALUES (9, 1, '15600009999', '一栋一单元', '一栋一单元一楼楼梯口灯泡坏了', '2024-04-20 11:55:00', '0');
INSERT INTO `user_repair` VALUES (10, 4, '15600009999', '一栋一单元2楼', '发现一栋一单元2楼楼梯扶手松动，可能存在安全隐患，请尽快处理。', '2024-04-20 14:43:26', '1');
INSERT INTO `user_repair` VALUES (11, 4, '15600009999', '一栋一单元2楼202', '一栋一单元2楼202门口墙面开裂，需要维修', '2024-04-20 14:44:08', '0');
INSERT INTO `user_repair` VALUES (12, 5, '15600009999', '地下停车场A区', '停车场的地面有些坑坑洼洼，希望能够修平一下，以免损坏车辆。', '2024-04-20 14:48:10', '0');
INSERT INTO `user_repair` VALUES (13, 5, '15800009999', '东门门禁', '小区门禁系统出现故障，无法正常使用，希望能够尽快修复。', '2024-04-20 14:48:35', '1');
INSERT INTO `user_repair` VALUES (14, 51, '123', '123', '123', '2024-05-30 10:10:23', '1');

SET FOREIGN_KEY_CHECKS = 1;
