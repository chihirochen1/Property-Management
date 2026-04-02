-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2026-04-02 08:41:17
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `property_management`
--

-- --------------------------------------------------------

--
-- 表的结构 `fee_park`
--

CREATE TABLE `fee_park` (
  `park_fee_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `park_id` int(11) DEFAULT NULL COMMENT '车位id',
  `pay_park_month` varchar(16) DEFAULT NULL COMMENT '缴费年月',
  `pay_park_money` decimal(18,2) DEFAULT NULL COMMENT '缴费金额',
  `pay_park_status` varchar(2) DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_park_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fee_park`
--

INSERT INTO `fee_park` (`park_fee_id`, `user_id`, `park_id`, `pay_park_month`, `pay_park_money`, `pay_park_status`, `pay_park_time`) VALUES
(1, 1, 1, '2026-03', 120.00, '1', NULL),
(2, 2, 2, '2026-03', 120.00, '0', NULL),
(3, 3, 3, '2026-03', 120.00, '0', NULL),
(4, 4, 4, '2026-03', 120.00, '1', NULL),
(5, 5, 5, '2026-03', 120.00, '0', NULL),
(6, 6, 6, '2026-03', 120.00, '0', NULL),
(7, 7, 7, '2026-03', 120.00, '1', NULL),
(9, 8, 8, '2026-03', 120.00, '0', NULL),
(10, 9, 9, '2026-03', 120.00, '0', NULL),
(12, 12, 11, '2026-03', 120.00, '0', NULL),
(13, 12, 11, '2026-03', 120.00, '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fee_power`
--

CREATE TABLE `fee_power` (
  `power_id` int(11) NOT NULL COMMENT '主键',
  `house_id` int(11) DEFAULT NULL COMMENT '房屋id',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `pay_power_month` varchar(16) DEFAULT NULL COMMENT '缴费年月',
  `pay_power_money` decimal(18,2) DEFAULT NULL COMMENT '缴费金额',
  `power_num` varchar(16) DEFAULT NULL COMMENT '表显',
  `pay_power_status` varchar(2) DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_power_time` datetime DEFAULT NULL COMMENT '缴费时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fee_power`
--

INSERT INTO `fee_power` (`power_id`, `house_id`, `user_id`, `pay_power_month`, `pay_power_money`, `power_num`, `pay_power_status`, `pay_power_time`) VALUES
(1, 1, 1, '2026-03', 100.00, '100', '0', NULL),
(2, 2, 2, '2026-03', 120.00, '120', '1', NULL),
(3, 3, 3, '2026-03', 123.00, '123', '1', NULL),
(4, 4, 4, '2026-03', 112.00, '112', '0', NULL),
(5, 5, 5, '2026-03', 80.00, '80', '1', NULL),
(6, 6, 7, '2026-03', 55.00, '55', '0', NULL),
(7, 45, 22, '2026-03', 44.00, '44', '0', NULL),
(8, 7, 6, '2026-03', 76.00, '76', '0', NULL),
(9, 8, 8, '2026-03', 55.00, '55', '0', NULL),
(10, 9, 9, '2026-03', 76.00, '76', '0', NULL),
(11, 10, 10, '2026-03', 44.00, '44', '0', NULL),
(13, 1, 1, '2026-02', 111.00, '111', '1', NULL),
(14, 21, 51, '2026-02', 123.00, '13', '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `fee_water`
--

CREATE TABLE `fee_water` (
  `water_id` int(11) NOT NULL COMMENT '主键',
  `house_id` int(11) DEFAULT NULL COMMENT '房屋id',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `pay_water_month` varchar(16) DEFAULT NULL COMMENT '缴费年月',
  `pay_water_money` decimal(18,2) DEFAULT NULL COMMENT '缴费金额',
  `waterr_num` varchar(16) DEFAULT NULL COMMENT '表显',
  `pay_water_status` varchar(2) DEFAULT NULL COMMENT '0:未缴费  1：已缴费',
  `pay_water_time` datetime DEFAULT NULL COMMENT '缴费时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `fee_water`
--

INSERT INTO `fee_water` (`water_id`, `house_id`, `user_id`, `pay_water_month`, `pay_water_money`, `waterr_num`, `pay_water_status`, `pay_water_time`) VALUES
(1, 1, 1, '2026-03', 30.00, '30', '1', '2026-03-17 22:41:53'),
(2, 2, 2, '2026-03', 40.00, '40', '0', NULL),
(3, 3, 3, '2026-03', 50.00, '50', '0', NULL),
(4, 4, 4, '2026-03', 20.00, '20', '1', '2026-03-17 22:41:48'),
(5, 5, 5, '2026-03', 40.00, '40', '1', '2026-03-17 18:13:33'),
(6, 45, 22, '2026-03', 90.00, '90', '0', NULL),
(7, 6, 7, '2026-03', 34.00, '34', '1', '2026-03-17 22:41:56'),
(8, 7, 6, '2026-03', 43.00, '43', '0', NULL),
(9, 8, 8, '2026-03', 55.00, '55', '1', '2026-03-17 22:41:58'),
(10, 10, 10, '2026-03', 66.00, '66', '0', NULL),
(13, 9, 9, '2026-03', 90.00, '90', '0', NULL),
(14, 10, 10, '2026-03', 90.00, '90', '0', NULL),
(15, 11, 11, '2026-03', 90.00, '90', '0', NULL),
(16, 12, 12, '2026-03', 90.00, '90', '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `house_building`
--

CREATE TABLE `house_building` (
  `build_id` int(11) NOT NULL COMMENT '栋数id',
  `type` varchar(2) DEFAULT NULL COMMENT '栋数类型 0：普通房 1：电梯房',
  `name` varchar(64) DEFAULT NULL COMMENT '栋数名称',
  `order_num` int(11) DEFAULT NULL COMMENT '序号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `house_building`
--

INSERT INTO `house_building` (`build_id`, `type`, `name`, `order_num`) VALUES
(1, '0', '一栋', 1),
(2, '0', '二栋', 2),
(3, '0', '三栋', 3),
(4, '1', '四栋', 4),
(5, '1', '五栋', 5),
(6, '1', '六栋', 6),
(13, '0', '七栋', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `house_list`
--

CREATE TABLE `house_list` (
  `house_id` int(11) NOT NULL COMMENT '房屋id',
  `unit_id` int(11) DEFAULT NULL COMMENT '单元id',
  `house_num` varchar(64) DEFAULT NULL COMMENT '房屋编号',
  `house_area` varchar(128) DEFAULT NULL COMMENT '房屋面积',
  `status` varchar(2) DEFAULT NULL COMMENT '使用状态 0:未使用 1：已使用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `house_list`
--

INSERT INTO `house_list` (`house_id`, `unit_id`, `house_num`, `house_area`, `status`) VALUES
(1, 1, '101', '100', '1'),
(2, 1, '102', '100', '1'),
(3, 1, '201', '100', '1'),
(4, 1, '202', '100', '1'),
(5, 1, '301', '100', '1'),
(6, 1, '302', '100', '1'),
(7, 1, '401', '100', '1'),
(8, 1, '402', '100', '1'),
(9, 1, '501', '100', '1'),
(10, 1, '502', '100', '1'),
(11, 1, '601', '100', '1'),
(12, 1, '602', '100', '1'),
(13, 1, '701', '100', '1'),
(14, 1, '702', '100', '1'),
(15, 1, '801', '100', '1'),
(16, 1, '802', '100', '1'),
(17, 1, '901', '100', '1'),
(18, 1, '902', '100', '1'),
(19, 1, '1001', '100', '1'),
(20, 1, '1002', '100', '1'),
(21, 1, '1101', '100', '1'),
(22, 1, '1102', '100', '1'),
(23, 2, '101', '100', '0'),
(24, 2, '102', '100', '0'),
(25, 2, '201', '100', '0'),
(26, 2, '202', '100', '0'),
(27, 2, '301', '100', '0'),
(28, 2, '302', '100', '0'),
(29, 2, '401', '100', '0'),
(30, 2, '402', '100', '0'),
(31, 2, '501', '100', '0'),
(32, 2, '502', '100', '0'),
(33, 2, '601', '100', '0'),
(34, 2, '602', '100', '0'),
(35, 2, '701', '100', '0'),
(36, 2, '702', '100', '0'),
(37, 2, '801', '100', '0'),
(38, 2, '802', '100', '0'),
(39, 2, '901', '100', '0'),
(40, 2, '902', '100', '0'),
(41, 2, '1001', '100', '0'),
(42, 2, '1002', '100', '0'),
(43, 2, '1101', '100', '0'),
(44, 2, '1102', '100', '0'),
(45, 3, '101', '100', '1'),
(46, 3, '102', '100', '1'),
(47, 3, '201', '100', '1'),
(48, 3, '202', '100', '1'),
(49, 3, '301', '100', '1'),
(50, 3, '302', '100', '1'),
(51, 3, '401', '100', '0'),
(52, 3, '402', '100', '0'),
(53, 3, '501', '100', '0'),
(54, 3, '502', '100', '0'),
(55, 3, '601', '100', '0'),
(56, 3, '602', '100', '0'),
(57, 3, '701', '100', '1'),
(58, 3, '702', '100', '0'),
(59, 3, '801', '100', '0'),
(60, 3, '802', '100', '0'),
(61, 3, '901', '100', '0'),
(62, 3, '902', '100', '0'),
(63, 3, '1001', '100', '0'),
(64, 3, '1002', '100', '0'),
(65, 3, '1101', '100', '0'),
(66, 3, '1102', '100', '0'),
(67, 4, '101', '100', '0'),
(68, 4, '102', '100', '0'),
(69, 4, '201', '100', '0'),
(70, 4, '202', '100', '0'),
(71, 4, '301', '100', '0'),
(72, 4, '302', '100', '0'),
(73, 4, '401', '100', '0'),
(74, 4, '402', '100', '0'),
(75, 4, '501', '100', '0'),
(76, 4, '502', '100', '0'),
(77, 4, '601', '100', '0'),
(78, 4, '602', '100', '0'),
(79, 4, '701', '100', '0'),
(80, 4, '702', '100', '0'),
(81, 4, '801', '100', '0'),
(82, 4, '802', '100', '0'),
(83, 4, '901', '100', '0'),
(84, 4, '902', '100', '0'),
(85, 4, '1001', '100', '0'),
(86, 4, '1002', '100', '0'),
(87, 4, '1101', '100', '0'),
(88, 4, '1102', '100', '0'),
(89, 5, '101', '100', '0'),
(90, 5, '102', '100', '0'),
(91, 5, '201', '100', '0'),
(92, 5, '202', '100', '0'),
(93, 5, '301', '100', '0'),
(94, 5, '302', '100', '0'),
(95, 5, '401', '100', '0'),
(96, 5, '402', '100', '0'),
(97, 5, '501', '100', '0'),
(98, 5, '502', '100', '0'),
(99, 5, '601', '100', '0'),
(100, 5, '602', '100', '0'),
(101, 5, '701', '100', '0'),
(102, 5, '702', '100', '0'),
(103, 5, '801', '100', '0'),
(104, 5, '802', '100', '0'),
(105, 5, '901', '100', '0'),
(106, 5, '902', '100', '0'),
(107, 5, '1001', '100', '0'),
(108, 5, '1002', '100', '0'),
(109, 5, '1101', '100', '0'),
(110, 5, '1102', '100', '0'),
(111, 6, '101', '100', '0'),
(112, 6, '102', '100', '0'),
(113, 6, '201', '100', '0'),
(114, 6, '202', '100', '0'),
(115, 6, '301', '100', '0'),
(116, 6, '302', '100', '0'),
(117, 6, '401', '100', '0'),
(118, 6, '402', '100', '0'),
(119, 6, '501', '100', '0'),
(120, 6, '502', '100', '0'),
(121, 6, '601', '100', '0'),
(122, 6, '602', '100', '0'),
(123, 6, '701', '100', '0'),
(124, 6, '702', '100', '0'),
(125, 6, '801', '100', '0'),
(126, 6, '802', '100', '0'),
(127, 6, '901', '100', '0'),
(128, 6, '902', '100', '0'),
(129, 6, '1001', '100', '0'),
(130, 6, '1002', '100', '0'),
(131, 6, '1101', '100', '0'),
(132, 6, '1102', '100', '0'),
(133, 7, '101', '100', '0'),
(134, 7, '102', '100', '0'),
(135, 7, '201', '100', '0'),
(136, 7, '202', '100', '0'),
(137, 7, '301', '100', '0'),
(138, 7, '302', '100', '0'),
(139, 7, '401', '100', '0'),
(140, 7, '402', '100', '0'),
(141, 7, '501', '100', '0'),
(142, 7, '502', '100', '0'),
(143, 7, '601', '100', '0'),
(144, 7, '602', '100', '0'),
(145, 7, '701', '100', '0'),
(146, 7, '702', '100', '0'),
(147, 7, '801', '100', '0'),
(148, 7, '802', '100', '0'),
(149, 7, '901', '100', '0'),
(150, 7, '902', '100', '0'),
(151, 7, '1001', '100', '0'),
(152, 7, '1002', '100', '0'),
(153, 7, '1101', '100', '0'),
(154, 7, '1102', '100', '0'),
(155, 8, '101', '100', '0'),
(156, 8, '102', '100', '0'),
(157, 8, '201', '100', '0'),
(158, 8, '202', '100', '0'),
(159, 8, '301', '100', '0'),
(160, 8, '302', '100', '0'),
(161, 8, '401', '100', '0'),
(162, 8, '402', '100', '0'),
(163, 8, '501', '100', '0'),
(164, 8, '502', '100', '0'),
(165, 8, '601', '100', '0'),
(166, 8, '602', '100', '0'),
(167, 8, '701', '100', '0'),
(168, 8, '702', '100', '0'),
(169, 8, '801', '100', '0'),
(170, 8, '802', '100', '0'),
(171, 8, '901', '100', '0'),
(172, 8, '902', '100', '0'),
(173, 8, '1001', '100', '0'),
(174, 8, '1002', '100', '0'),
(175, 8, '1101', '100', '0'),
(176, 8, '1102', '100', '0'),
(177, 9, '101', '100', '0'),
(178, 9, '102', '100', '0'),
(179, 9, '201', '100', '0'),
(180, 9, '202', '100', '0'),
(181, 9, '301', '100', '0'),
(182, 9, '302', '100', '0'),
(183, 9, '401', '100', '0'),
(184, 9, '402', '100', '0'),
(185, 9, '501', '100', '0'),
(186, 9, '502', '100', '0'),
(187, 9, '601', '100', '0'),
(188, 9, '602', '100', '0'),
(189, 9, '701', '100', '0'),
(190, 9, '702', '100', '0'),
(191, 9, '801', '100', '0'),
(192, 9, '802', '100', '0'),
(193, 9, '901', '100', '0'),
(194, 9, '902', '100', '0'),
(195, 9, '1001', '100', '0'),
(196, 9, '1002', '100', '0'),
(197, 9, '1101', '100', '0'),
(198, 9, '1102', '100', '0'),
(199, 10, '101', '100', '0'),
(200, 10, '102', '100', '0'),
(201, 10, '201', '100', '0'),
(202, 10, '202', '100', '0'),
(203, 10, '301', '100', '0'),
(204, 10, '302', '100', '0'),
(205, 10, '401', '100', '0'),
(206, 10, '402', '100', '0'),
(207, 10, '501', '100', '0'),
(208, 10, '502', '100', '0'),
(209, 10, '601', '100', '0'),
(210, 10, '602', '100', '0'),
(211, 10, '701', '100', '0'),
(212, 10, '702', '100', '0'),
(213, 10, '801', '100', '0'),
(214, 10, '802', '100', '0'),
(215, 10, '901', '100', '0'),
(216, 10, '902', '100', '0'),
(217, 10, '1001', '100', '0'),
(218, 10, '1002', '100', '0'),
(219, 10, '1101', '100', '0'),
(220, 10, '1102', '100', '0'),
(221, 11, '101', '100', '0'),
(222, 11, '102', '100', '0'),
(223, 11, '201', '100', '0'),
(224, 11, '202', '100', '0'),
(225, 11, '301', '100', '0'),
(226, 11, '302', '100', '0'),
(227, 11, '401', '100', '0'),
(228, 11, '402', '100', '0'),
(229, 11, '501', '100', '0'),
(230, 11, '502', '100', '0'),
(231, 11, '601', '100', '0'),
(232, 11, '602', '100', '0'),
(233, 11, '701', '100', '0'),
(234, 11, '702', '100', '0'),
(235, 11, '801', '100', '0'),
(236, 11, '802', '100', '0'),
(237, 11, '901', '100', '0'),
(238, 11, '902', '100', '0'),
(239, 11, '1001', '100', '0'),
(240, 11, '1002', '100', '0'),
(241, 11, '1101', '100', '0'),
(242, 11, '1102', '100', '0'),
(243, 12, '101', '100', '0'),
(244, 12, '102', '100', '0'),
(245, 12, '201', '100', '0'),
(246, 12, '202', '100', '0'),
(247, 12, '301', '100', '0'),
(248, 12, '302', '100', '0'),
(249, 12, '401', '100', '0'),
(250, 12, '402', '100', '0'),
(251, 12, '501', '100', '0'),
(252, 12, '502', '100', '0'),
(253, 12, '601', '100', '0'),
(254, 12, '602', '100', '0'),
(255, 12, '701', '100', '0'),
(256, 12, '702', '100', '0'),
(257, 12, '801', '100', '0'),
(258, 12, '802', '100', '0'),
(259, 12, '901', '100', '0'),
(260, 12, '902', '100', '0'),
(261, 12, '1001', '100', '0'),
(262, 12, '1002', '100', '0'),
(263, 12, '1101', '100', '0'),
(264, 12, '1102', '100', '0'),
(265, 25, '101', '122', '0');

-- --------------------------------------------------------

--
-- 表的结构 `house_unit`
--

CREATE TABLE `house_unit` (
  `unit_id` int(11) NOT NULL COMMENT '单元id',
  `build_id` int(11) DEFAULT NULL COMMENT '栋数id',
  `unit_name` varchar(64) DEFAULT NULL COMMENT '单元名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `house_unit`
--

INSERT INTO `house_unit` (`unit_id`, `build_id`, `unit_name`) VALUES
(1, 1, '一单元'),
(2, 1, '二单元'),
(3, 2, '一单元'),
(4, 2, '二单元'),
(5, 3, '一单元'),
(6, 3, '二单元'),
(7, 4, '一单元'),
(8, 4, '二单元'),
(9, 5, '一单元'),
(10, 5, '二单元'),
(11, 6, '一单元'),
(12, 6, '二单元');

-- --------------------------------------------------------

--
-- 表的结构 `live_house`
--

CREATE TABLE `live_house` (
  `live_house_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `house_id` int(11) DEFAULT NULL COMMENT '房屋id',
  `use_status` varchar(2) DEFAULT NULL COMMENT '0:使用中 1： 解绑、退房'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `live_house`
--

INSERT INTO `live_house` (`live_house_id`, `user_id`, `house_id`, `use_status`) VALUES
(1, 1, 1, '1'),
(2, 1, 1, '0'),
(3, 2, 2, '0'),
(4, 3, 3, '0'),
(5, 4, 4, '0'),
(6, 5, 5, '0'),
(7, 7, 6, '0'),
(8, 6, 7, '0'),
(9, 8, 8, '0'),
(10, 9, 9, '0'),
(11, 10, 10, '0'),
(12, 11, 11, '0'),
(13, 12, 12, '0'),
(14, 13, 13, '0'),
(15, 14, 14, '0'),
(16, 15, 15, '0'),
(17, 16, 16, '0'),
(18, 17, 17, '0'),
(19, 18, 18, '0'),
(20, 19, 19, '0'),
(21, 20, 20, '0'),
(22, 22, 45, '0'),
(23, 21, 46, '0'),
(24, 23, 57, '0'),
(25, 24, 47, '0'),
(26, 25, 48, '0'),
(27, 26, 49, '0'),
(28, 27, 50, '0'),
(29, 51, 21, '1'),
(30, 51, 21, '0'),
(31, 28, 22, '0');

-- --------------------------------------------------------

--
-- 表的结构 `live_park`
--

CREATE TABLE `live_park` (
  `live_park_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `park_id` int(11) DEFAULT NULL COMMENT '车位id',
  `live_statue` varchar(2) DEFAULT NULL COMMENT '0:使用 1：解绑、退车位状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `live_park`
--

INSERT INTO `live_park` (`live_park_id`, `user_id`, `park_id`, `live_statue`) VALUES
(1, 1, 1, '1'),
(2, 2, 2, '0'),
(3, 3, 3, '0'),
(4, 4, 4, '0'),
(5, 5, 5, '0'),
(6, 6, 6, '0'),
(7, 7, 7, '0'),
(8, 8, 8, '0'),
(9, 9, 9, '0'),
(10, 10, 10, '0'),
(11, 12, 11, '0'),
(12, 13, 12, '0'),
(13, 14, 13, '0'),
(14, 15, 14, '0'),
(15, 16, 15, '0'),
(16, 17, 16, '0'),
(17, 18, 17, '0'),
(18, 19, 18, '0'),
(19, 20, 19, '0'),
(20, 11, 20, '0'),
(21, 22, 21, '0'),
(22, 23, 22, '0'),
(23, 24, 23, '0'),
(24, 25, 24, '0'),
(25, 26, 25, '0'),
(26, 27, 26, '0'),
(27, 51, 31, '0'),
(28, 1, 27, '1'),
(29, 1, 27, '0'),
(30, 28, 32, '0');

-- --------------------------------------------------------

--
-- 表的结构 `live_role`
--

CREATE TABLE `live_role` (
  `liv_role_id` int(11) NOT NULL COMMENT '主键',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `live_role`
--

INSERT INTO `live_role` (`liv_role_id`, `role_id`, `user_id`) VALUES
(2, 8, 2),
(3, 8, 3),
(4, 8, 4),
(5, 8, 5),
(6, 8, 6),
(7, 8, 7),
(8, 8, 8),
(9, 8, 9),
(10, 8, 10),
(11, 8, 11),
(12, 8, 12),
(13, 8, 13),
(14, 8, 14),
(15, 8, 15),
(16, 8, 16),
(17, 8, 17),
(18, 8, 18),
(19, 8, 19),
(20, 8, 20),
(21, 8, 21),
(22, 8, 22),
(23, 8, 23),
(24, 8, 24),
(25, 8, 25),
(26, 8, 26),
(27, 8, 27),
(28, 8, 28),
(29, 8, 29),
(30, 8, 30),
(31, 8, 31),
(32, 8, 32),
(33, 8, 33),
(34, 8, 34),
(35, 8, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 8, 41),
(42, 8, 42),
(43, 8, 43),
(44, 8, 44),
(45, 8, 45),
(46, 8, 46),
(47, 8, 47),
(48, 8, 48),
(49, 8, 49),
(50, 8, 50),
(51, 8, 1),
(52, 8, 51);

-- --------------------------------------------------------

--
-- 表的结构 `live_user`
--

CREATE TABLE `live_user` (
  `user_id` int(11) NOT NULL COMMENT '业主id',
  `username` varchar(36) DEFAULT NULL COMMENT '登录账号',
  `phone` varchar(16) DEFAULT NULL COMMENT '业主电话',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 0：男 1：女',
  `login_name` varchar(36) DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) DEFAULT NULL COMMENT '登录密码',
  `status` varchar(2) DEFAULT NULL COMMENT ' 0：启用 1：禁用',
  `is_account_non_expired` int(11) DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)	',
  `is_account_non_locked` int(11) DEFAULT NULL COMMENT ' 帐户是否被锁定(1 未过期，0已过期)	',
  `is_credentials_non_expired` int(11) DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)	',
  `is_enabled` int(11) DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `live_user`
--

INSERT INTO `live_user` (`user_id`, `username`, `phone`, `sex`, `login_name`, `password`, `status`, `is_account_non_expired`, `is_account_non_locked`, `is_credentials_non_expired`, `is_enabled`) VALUES
(1, 'zhangsan', '15259910265', '0', '张三', '$2a$10$I2ySrhavMsno2qRrMlp6C.NVKvI9BvAMX3wLAW7aZa6tGy013drNi', '0', 1, 1, 1, 1),
(2, 'wangxiaohong', '15581960942', '1', '王小红', '$2a$10$qQ7Y8Ydb/Grw5jaH0sIhF.DFUd6.zalf3wuMcf7GtYvmpYBm.3Gqa', '0', 1, 1, 1, 1),
(3, 'zhangweidong', '14916567772', '0', '张伟东', '$2a$10$cf3J9PFbCCAxpxx.gPxf5.oUH84XWv7dWIYAUWBbkvt1dfEhDiPBC', '0', 1, 1, 1, 1),
(4, 'liuxiaoyu', '13065786191', '1', '刘晓雨', '$2a$10$3HdxFUXOEzvGVnP7qY/1/eJ..P6IidDOxafAgGGbn9onDL62PAzn2', '0', 1, 1, 1, 1),
(5, 'chendongxue', '13296630907', '0', '陈冬雪', '$2a$10$U.tDXRIKjmkVsch0j8jf0OGTnNwpyDGk5/S8UWy3Tx8uKQEkIPqiO', '0', 1, 1, 1, 1),
(6, 'yangjingfeng', '17544803677', '0', '杨静峰', '$2a$10$lDNjD/tsDBS/VgfI7RpbZ.OCfeCmTAG/QOyaEJgvIRmyNWqVuLwfu', '0', 1, 1, 1, 1),
(7, 'huangjialin', '15606674431', '0', '黄佳琳', '$2a$10$1HVVoNmkniBywZaUkrSDHu9m5FIq5BeKYxfudnpVkgUZcjiaSPp0W', '0', 1, 1, 1, 1),
(8, 'zhaoyuhang', '18603019618', '1', '赵宇航', '$2a$10$j48jO7XceZ5bH46bRDIR/esifv3xXEOwNWndha80TReOB.ZDFLQg.', '0', 1, 1, 1, 1),
(9, 'zhouyangfeng', '18087439898', '1', '周阳风', '$2a$10$lYcTfBPeyPOu0qVTMsqjNucL0Zfin/TyEB1/0uuxam0c4ueD/hbTy', '0', 1, 1, 1, 1),
(10, 'wumeihua', '18818569494', '0', '吴美华', '$2a$10$V3VHt7JRm528jocSULDQKuPLKmemQRu1vTzy/w4U28ncWSgOCNOES', '0', 1, 1, 1, 1),
(11, 'zhengwenhui', '18576578659', '0', '郑文慧', '$2a$10$HcI5Vo1Ju4HTnwZ6YjSuHOG5vLWlYgSGLLmFbKHhGvfTDsLZ1NHJe', '0', 1, 1, 1, 1),
(12, 'sunzhongliang', '15125529592', '0', '孙忠良', '$2a$10$o1QBJ0F8Ddh8L7lfNAMvyOKtXUqihKvkcaG7o00MxgY57o12iBpNy', '0', 1, 1, 1, 1),
(13, 'qianyuxin', '13596061377', '0', '钱雨馨', '$2a$10$xJvLAU.VHVJB5f1WcKIVSOx.sjCuYIKcusk8R6GMQ/NavrHfA8FjS', '0', 1, 1, 1, 1),
(14, 'zhushiya', '17585030781', '1', '朱诗雅', '$2a$10$meFW146gHMlVrl1YCOjG8ubrFvKfoMuEmOfCAMbS/WzmgmB96CS0W', '0', 1, 1, 1, 1),
(15, 'dumingjie', '13296731500', '1', '杜明杰', '$2a$10$5SNTc.kn/Q4shXUUj0wC3uGZRWAOE1PRaG2QdEoVzWeiZ1dw/EIGi', '0', 1, 1, 1, 1),
(16, 'xuxinyi', '13230376202', '0', '许心怡', '$2a$10$QYBsJhSdZK1BZ.z9OY.Ase9tG23tTkJnIyE86vfBxlnl4AooMEMq.', '0', 1, 1, 1, 1),
(17, 'fengsiqi', '15299831169', '1', '冯思琪', '$2a$10$2cRFK9ELWrTVvdjmFWiDyuuC3e2vBkjBmDv/4aRdIxnm92nckl0zW', '0', 1, 1, 1, 1),
(18, 'caozeyu', '15943927504', '0', '曹泽宇', '$2a$10$5T9X3PK05qypYIg7NxYL6OYMLNjNTjf6lqr35h5gc4kA.QG2.F/Ly', '0', 1, 1, 1, 1),
(19, 'guoxueer', '17328016276', '0', '郭雪儿', '$2a$10$ji.hx.8Y61o3HtbU2qjDhOTToVmVeYlumgm.21VVFSnlntHa5KqFS', '0', 1, 1, 1, 1),
(20, 'dongyuntian', '19977893606', '1', '董云天', '$2a$10$GxMQrMwZty7a2ONmR8V6rOMNfgul6hJBbL0xCLGs/4u6pNbspy5xi', '0', 1, 1, 1, 1),
(21, 'liangyanghua', '18085674421', '1', '梁阳华', '$2a$10$zWbIz2EZCLOTc4jzXxt.uO9dlEyI7qK/Klpkd1oeGejKJmAVrokVG', '0', 1, 1, 1, 1),
(22, 'xieyuxuan', '13585607331', '0', '谢宇轩', '$2a$10$gv7asjYGH/ggEGtZjSeG9Or.zLhZzSglhFC67xXZ1q0I90Z3px9my', '0', 1, 1, 1, 1),
(23, 'cuixinyue', '15375324238', '0', '崔欣悦', '$2a$10$CvfEAHJBJDRKwuYu2VUBCeQe5KYvcbE4R7MnL2ZvV/4Eb88weGIEG', '0', 1, 1, 1, 1),
(24, 'linwenbo', '15372250704', '0', '林文博', '$2a$10$7SZqgTjmf.IBY4xMW1EEtOM/Y/T6fVYyqLYKH73PGm53QkHHHXwXC', '0', 1, 1, 1, 1),
(25, 'renxinyuan', '13441733790', '0', '任心愿', '$2a$10$GLZOgaKCYNvdM2TfmDASQOXZ3Hk0FSKMHV6aIg29nAgxtpKRKaEui', '0', 1, 1, 1, 1),
(26, 'yuanziyi', '17579384701', '1', '袁子怡', '$2a$10$Ut3pEsF8D.t/JPt2dhWvLOncsGAgN47xY5m5HQuQ7dMWh7e.P/7sa', '0', 1, 1, 1, 1),
(27, 'hongkaiwen', '13997162709', '1', '洪凯文', '$2a$10$s2DZOwc9JjDggAAeuSQCJOaHayNGpfxxZOQ60m99c8hg0V5WrUWN6', '0', 1, 1, 1, 1),
(28, 'lusimin', '17543445907', '0', '卢思敏', '$2a$10$SfNU3vWAOVWwL1jh0hhqdeH1t/ZDBHZv.2YKbIchxWPZeXELdaIiC', '0', 1, 1, 1, 1),
(29, 'chuchenxi', '13209115029', '0', '褚晨曦', '$2a$10$wZSkVSGbM5BZTth6plauHugXTvNba4oOeC4Br9453gJSD29iROyZO', '0', 1, 1, 1, 1),
(30, 'tanjiabao', '17726730023', '0', '谭嘉宝', '$2a$10$fw1MuK8XSL8jtbE89enhuuV/NqIqHIApgD.Wf4Xyt6e1xZt1ZGfji', '0', 1, 1, 1, 1),
(31, 'daiyiming', '15197080718', '1', '戴一鸣', '$2a$10$7WCvOVvRezLa/BCncH/YGe2KAf.erUhJbdr2lx/pf9EscnFYPIUyi', '0', 1, 1, 1, 1),
(32, 'yantianyou', '18118773628', '0', '阎天佑', '$2a$10$F4BRMcevN3e.q6Ex7TYvNOyWcMZkAbuZ.wtjAN8YwScTCtrLrMUky', '0', 1, 1, 1, 1),
(33, 'fuyuxuan', '18244475044', '1', '傅雨轩', '$2a$10$XcsaEvKA53ufSdwSVIDeR.Kpu4aQZe0jFZqaHUmXh5gPOIJnldRfi', '0', 1, 1, 1, 1),
(34, 'lulexin', '18540435457', '1', '陆乐心', '$2a$10$fgkpShcOrMv5di4aIuFGSeFNsrQMYz2j.z99j/Ztc3oFSPA15NXae', '0', 1, 1, 1, 1),
(35, 'zhanzixuan', '13045291585', '0', '詹梓轩', '$2a$10$6gqnTDt64.hJfPX9KpliSextikY2XyzzTBLzSBKQwuvW69Pa/QH3S', '0', 1, 1, 1, 1),
(36, 'xiongyifan', '13429709583', '1', '熊一凡', '$2a$10$CHuxfyeRYQdtf9WuGyJLtes/UasjzyPgwpwmeqDqtVFa5E08t1BXS', '0', 1, 1, 1, 1),
(37, 'haoruolin', '17591551607', '0', '郝若琳', '$2a$10$xau/sZuRKtp2nHMByiCftO33lXZuPGznyQyybq7iLjplzC7Ozbrz6', '0', 1, 1, 1, 1),
(38, 'mengzhipeng', '13191465403', '1', '孟志鹏', '$2a$10$hjPGsUl5P8ScW7KGAfPQDuVmKRtu5iT6pTB40t67lm05EGh05w1Ga', '0', 1, 1, 1, 1),
(39, 'qinxuemei', '15121822023', '0', '秦雪梅', '$2a$10$H./MnN6SS5SO99l2xMOeCu/AlcQWWBgqWaPh4wd9UNBGIQr.K1PVm', '0', 1, 1, 1, 1),
(40, 'zhongyixuan', '13380294098', '0', '钟艺萱', '$2a$10$7hQH62hvNulKLq/hZ8HI8uEJdztUSYgXYIrvGr1vB4YuPbICdfFBa', '0', 1, 1, 1, 1),
(41, 'lizeyang', '15934234484', '1', '黎泽洋', '$2a$10$OpdiRNNlAgEGGn2uIgEMOulV7Bbxm6FyYzMpyjcbb30zIwJRBxtyC', '0', 1, 1, 1, 1),
(42, 'dengqianye', '13010462774', '1', '邓千叶', '$2a$10$KvpGn6MYosv//Xo9HbipveEHH/p29JyvTypFiAoCVR4/IOamHH47S', '0', 1, 1, 1, 1),
(43, 'panxuehua', '13413083086', '1', '潘雪华', '$2a$10$ICwTvjGLjkGh1HFfK7NBIOTLTUNVWX6.i7lnISgB9WWd6NGWgIZYW', '0', 1, 1, 1, 1),
(44, 'guanxinyu', '18092213993', '1', '管心宇', '$2a$10$8wMS8Ya9coaqqLfLBLMtoe2K84/rR5qjhrd5xAFngQPTJ.sBga1xC', '0', 1, 1, 1, 1),
(45, 'jinxintong', '15874775982', '1', '金鑫彤', '$2a$10$fGMYDdwqQ7tHNMu3deazLOgv0iPwbtfIIVsqtoudf.rSuklZcRz0e', '0', 1, 1, 1, 1),
(46, 'qiuchenxi', '13819138051', '1', '邱晨曦', '$2a$10$VgdfyjORaqBxWlx6utnC2uWHUvxt7/60qPjD8MRhecZ4gMCbdPBC6', '0', 1, 1, 1, 1),
(47, 'kangyiran', '15503206545', '1', '康忆然', '$2a$10$VG2uTJDPXlT5qUk7RM9FBedySMEH1R86CiU7ZLoUdMRVyoZxW5Mwq', '0', 1, 1, 1, 1),
(48, 'biqingsong', '14563254650', '0', '毕青松', '$2a$10$V41vxPBsiO96eKVZSzOWC.zuJpbazfDNO3StoslJyYkRxDhTnfUTe', '0', 1, 1, 1, 1),
(49, 'weichenguang', '17841784034', '0', '卫晨光', '$2a$10$.emUzNWQCAbOWpZJOKJf/Okr5EpvVn3buN3FcIQ1qcaNr0ucHEhQG', '0', 1, 1, 1, 1),
(50, 'shenjiayue', '13154026218', '1', '沈嘉悦', '$2a$10$11WFYj8ZT/cw5H4M1cjKWOW2UVZYFkBIQ2Mz.OEA3YhcEabJB7guW', '0', 1, 1, 1, 1),
(51, 'wangwu', '13', '0', '王五', '$2a$10$HctMmCYnMmYhzA4GxK4dVe5mJ113uSApkDsZSbEpMO4eFAWEg9fxm', '0', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `parking_list`
--

CREATE TABLE `parking_list` (
  `park_id` int(11) NOT NULL COMMENT '车位id',
  `park_type` varchar(2) DEFAULT NULL COMMENT '车位类型 0:地上 1：地下',
  `park_name` varchar(36) DEFAULT NULL COMMENT '车位名称',
  `park_status` varchar(2) DEFAULT NULL COMMENT '车位使用状态 0：未使用 1：已使用',
  `park_num` int(11) DEFAULT NULL COMMENT '车位序号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `parking_list`
--

INSERT INTO `parking_list` (`park_id`, `park_type`, `park_name`, `park_status`, `park_num`) VALUES
(1, '0', 'A01', '0', NULL),
(2, '0', 'A02', '1', NULL),
(3, '0', 'A03', '1', NULL),
(4, '0', 'A04', '1', NULL),
(5, '0', 'A05', '1', NULL),
(6, '0', 'A06', '1', NULL),
(7, '0', 'A07', '1', NULL),
(8, '0', 'A08', '1', NULL),
(9, '0', 'A09', '1', NULL),
(10, '0', 'A10', '1', NULL),
(11, '0', 'B01', '1', NULL),
(12, '0', 'B02', '1', NULL),
(13, '0', 'B03', '1', NULL),
(14, '0', 'B04', '1', NULL),
(15, '0', 'B05', '1', NULL),
(16, '0', 'B06', '1', NULL),
(17, '0', 'B07', '1', NULL),
(18, '0', 'B08', '1', NULL),
(19, '0', 'B09', '1', NULL),
(20, '0', 'B10', '1', NULL),
(21, '1', 'C01', '1', NULL),
(22, '1', 'C02', '1', NULL),
(23, '1', 'C03', '1', NULL),
(24, '1', 'C04', '1', NULL),
(25, '1', 'C05', '1', NULL),
(26, '1', 'C06', '1', NULL),
(27, '1', 'C07', '1', NULL),
(28, '1', 'C08', '0', NULL),
(29, '1', 'C09', '0', NULL),
(30, '1', 'C10', '0', NULL),
(31, '1', 'D01', '1', NULL),
(32, '1', 'D02', '1', NULL),
(33, '1', 'D03', '0', NULL),
(34, '1', 'D04', '0', NULL),
(35, '1', 'D05', '0', NULL),
(36, '1', 'D06', '0', NULL),
(37, '1', 'D07', '0', NULL),
(38, '1', 'D08', '0', NULL),
(39, '1', 'D09', '0', NULL),
(40, '1', 'D10', '0', NULL),
(41, '1', 'E01', '0', NULL),
(42, '1', 'E02', '0', NULL),
(43, '1', 'E03', '0', NULL),
(44, '1', 'E04', '0', NULL),
(45, '1', 'E05', '0', NULL),
(46, '1', 'E06', '0', NULL),
(47, '1', 'E07', '0', NULL),
(48, '1', 'E08', '0', NULL),
(49, '1', 'E09', '0', NULL),
(50, '1', 'E10', '0', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sys_menu`
--

CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级菜单id',
  `menu_label` varchar(56) DEFAULT NULL COMMENT '菜单名称',
  `menu_code` varchar(56) DEFAULT NULL COMMENT '权限字段',
  `name` varchar(56) DEFAULT NULL COMMENT '路由名称',
  `path` varchar(64) DEFAULT NULL COMMENT '路由地址',
  `url` varchar(128) DEFAULT NULL COMMENT '组件路由',
  `type` varchar(2) DEFAULT NULL COMMENT '类型 0：目录 1：菜单 2：按钮',
  `icon` varchar(64) DEFAULT NULL COMMENT '图标',
  `order_num` int(11) DEFAULT NULL COMMENT '序号',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `parent_name` varchar(56) DEFAULT NULL COMMENT '上级菜单名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_menu`
--

INSERT INTO `sys_menu` (`menu_id`, `parent_id`, `menu_label`, `menu_code`, `name`, `path`, `url`, `type`, `icon`, `order_num`, `remark`, `parent_name`) VALUES
(3, 0, '系统管理', 'sys:system', '', '/system', '', '0', 'el-icon-menu', 1, '', '顶级菜单'),
(4, 3, '员工管理', 'sys:sysUserList', 'sys:user:index', '/sysUserList', '/system/sysUserList', '1', 'el-icon-s-custom', 1, '', '系统管理'),
(5, 3, '角色管理', 'sys:sysRoleList', 'sysRoleList', '/sysRoleList', '/system/sysRoleList', '1', 'el-icon-date', 2, '', '系统管理'),
(6, 3, '权限管理', 'sys:sysMenuList', 'sysMenuList', '/sysMenuList', '/system/sysMenuList', '1', 'el-icon-school', 3, '', '系统管理'),
(7, 4, '新增', 'sys:user:add', '', '', '', '2', '', 1, '', '员工管理'),
(8, 4, '编辑', 'sys:user:edit', '', '', '', '2', '', 2, '', '员工管理'),
(9, 4, '删除', 'sys:user:delete', '', '', '', '2', '', 3, '', '员工管理'),
(10, 5, '新增', 'sys:role:add', '', '', '', '2', '', 1, '', '角色管理'),
(11, 5, '编辑', 'sys:role:edit', '', '', '', '2', '', 2, '', '角色管理'),
(12, 5, '删除', 'sys:role:delete', '', '', '', '2', '', 3, '', '角色管理'),
(13, 6, '新增', 'sys:menu:add', '', '', '', '2', '', 1, '', '权限管理'),
(14, 6, '编辑', 'sys:menu:edit', '', '', '', '2', '', 2, '', '权限管理'),
(15, 6, '删除', 'sys:menu:delete', '', '', '', '2', '', 3, '', '权限管理'),
(16, 0, '房屋管理', 'sys:home:index', '', '/sysHouse', '', '0', 'el-icon-s-help', 2, '', '顶级菜单'),
(17, 16, '房屋列表', 'sys:house:list', 'sysHouseList', '/sysHouseList', '/house/houseList', '1', 'el-icon-mobile', 3, '', '房屋管理'),
(18, 17, '新增', 'sys:house:add', '', '', '', '2', '', 1, '', '房屋列表'),
(19, 17, '编辑', 'sys:house:edit', '', '', '', '2', '', 2, '', '房屋列表'),
(20, 17, '删除', 'sys:house:delete', '', '', '', '2', '', 3, '', '房屋列表'),
(21, 16, '单元管理', 'sys:houseUnit', 'houseUnit', '/houseUnit', '/house/houseUnit', '1', 'table', 2, '', '房屋管理'),
(22, 16, '楼栋管理', 'sys:houseBuilding', 'houseBuilding', '/houseBuilding', '/house/houseBuilding', '1', 'table', 1, '', '房屋管理'),
(23, 22, '新增', 'sys:houseBuilding:add', '', '', '', '2', '', 1, '', '楼栋管理'),
(24, 22, '编辑', 'sys:houseBuilding:edit', '', '', '', '2', '', 2, '', '楼栋管理'),
(25, 22, '删除', 'sys:houseBuilding:delete', '', '', '', '2', '', 3, '', '楼栋管理'),
(26, 21, '新增', 'sys:houseUnit:add', '', '', '', '2', '', 1, '', '单元管理'),
(27, 21, '编辑', 'sys:houseUnit:edit', '', '', '', '2', '', 2, '', '单元管理'),
(28, 21, '删除', 'sys:houseUnit:delete', '', '', '', '2', '', 3, '', '单元管理'),
(29, 0, '车位管理', 'sys:sysPark', '', '/sysPark', '', '0', 'el-icon-money', 3, '', '顶级菜单'),
(30, 29, '车位管理', 'sys:parkList', 'parkList', '/parkList', '/park/parkList', '1', 'el-icon-money', 1, '', '车位管理'),
(31, 30, '新增', 'sys:parkList:add', '', '', '', '2', '', 1, '', '车位管理'),
(32, 30, '编辑', 'sys:parkList:edit', '', '', '', '2', '', 2, '', '车位管理'),
(33, 30, '删除', 'sys:parkList:delete', '', '', '', '2', '', 3, '', '车位管理'),
(34, 0, '业主管理', 'sys:live', '', '/live', '', '0', 'el-icon-s-grid', 4, '', '顶级菜单'),
(35, 34, '业主列表', 'sys:liveUser', 'liveUser', '/liveUser', '/live/liveUser', '1', 'el-icon-s-data', 1, '', '业主管理'),
(36, 35, '新增', 'sys:liveUser:add', '', '', '', '2', '', 1, '', '业主列表'),
(37, 35, '编辑', 'sys:liveUser:edit', '', '', '', '2', '', 2, '', '业主列表'),
(38, 35, '删除', 'sys:liveUser:delete', '', '', '', '2', '', 3, '', '业主列表'),
(39, 35, '分配房屋', 'sys:liveUser:assignHome', '', '', '', '2', '', 4, '', '业主列表'),
(40, 35, '分配车位', 'sys:liveUser:assignCar', '', '', '', '2', '', 6, '', '业主列表'),
(41, 35, '退房', 'sys:liveUser:returnHome', '', '', '', '2', '', 7, '', '业主列表'),
(42, 35, '退车位', 'sys:liveUser:returnCar', '', '', '', '2', '', 8, '', '业主列表'),
(43, 0, '收费管理', 'sys:fee', '', '/fee', '', '0', 'el-icon-s-open', 5, '', '顶级菜单'),
(44, 43, '电费管理', 'sys:feePower', 'feePower', '/feePower', '/fee/feePower', '1', 'el-icon-picture', 1, '', '收费管理'),
(45, 43, '水费管理', 'sys:feeWater', 'feeWater', '/feeWater', '/fee/feeWater', '1', 'el-icon-s-data', 2, '', '收费管理'),
(46, 43, '停车管理', 'sys:feePark', 'feePark', '/feePark', '/fee/feePark', '1', 'el-icon-s-order', 3, '', '收费管理'),
(47, 44, '新增', 'sys:feePower:add', '', '', '', '2', '', 1, '', '电费管理'),
(48, 44, '编辑', 'sys:feePower:edit', '', '', '', '2', '', 2, '', '电费管理'),
(49, 44, '删除', 'sys:feePower:delete', '', '', '', '2', '', 3, '', '电费管理'),
(50, 45, '新增', 'sys:feeWater:add', '', '', '', '2', '', 1, '', '水费管理'),
(51, 45, '编辑', 'sys:feeWater:edit', '', '', '', '2', '', 2, '', '水费管理'),
(52, 45, '删除', 'sys:feeWater:delete', '', '', '', '2', '', 3, '', '水费管理'),
(53, 46, '新增', 'sys:feePark:add', '', '', '', '2', '', 1, '', '停车管理'),
(54, 46, '编辑', 'sys:feePark:edit', '', '', '', '2', '', 2, '', '停车管理'),
(55, 46, '删除', 'sys:feePark:delete', '', '', '', '2', '', 3, '', '停车管理'),
(56, 0, '反馈管理', 'sys:userComplaint', '', '/userComplaint', '', '0', 'el-icon-date', 6, '', '顶级菜单'),
(57, 56, '反馈列表', 'sys:userComplaintList', 'userComplaintList', '/userComplaintList', '/userComplaint/userComplaint', '1', 'el-icon-edit-outline', 1, '', '反馈管理'),
(58, 56, '我的反馈', 'sys:myUserComplaint', 'myUserComplaint', '/myUserComplaint', '/userComplaint/myUserComplaint', '1', 'el-icon-menu', 2, '', '反馈管理'),
(62, 58, '新增', 'sys:myUserComplaint:add', '', '', '', '2', '', 1, '', '我的反馈'),
(63, 58, '编辑', 'sys:myUserComplaint:edit', '', '', '', '2', '', 2, '', '我的反馈'),
(64, 58, '删除', 'sys:myUserComplaint:delete', '', '', '', '2', '', 3, '', '我的反馈'),
(65, 0, '维修管理', 'sys:repairModel', '', '/repairModel', '', '0', 'el-icon-picture-outline', 7, '', '顶级菜单'),
(66, 65, '维修列表', 'sys:repairList', 'repairList', '/repairList', '/repair/repairList', '1', 'el-icon-s-marketing', 1, '', '维修管理'),
(67, 65, '我的维修', 'sys:myRepair', 'myRepair', '/myRepair', '/repair/myRepair', '1', 'el-icon-picture-outline', 2, '', '维修管理'),
(68, 67, '新增', 'sys:myRepair:add', '', '', '', '2', '', 1, '', '我的维修'),
(69, 67, '编辑', 'sys:myRepair:edit', '', '', '', '2', '', 2, '', '我的维修'),
(70, 67, '删除', 'sys:myRepair:delete', '', '', '', '2', '', 3, '', '我的维修'),
(71, 0, '公告管理', 'sys:notice', '', '/notice', '', '0', 'el-icon-document-copy', 8, '', '顶级菜单'),
(72, 71, '公告列表', 'sys:noticeList', 'noticeList', '/noticeList', '/notice/noticeList', '1', 'el-icon-s-marketing', 1, '', '公告管理'),
(73, 72, '新增', 'sys:noticeList:add', '', '', '', '2', '', 1, '', '公告列表'),
(74, 72, '编辑', 'sys:noticeList:edit', '', '', '', '2', '', 2, '', '公告列表'),
(75, 72, '删除', 'sys:noticeList:delete', '', '', '', '2', '', 3, '', '公告列表'),
(76, 72, '查看', 'sys:notice:look', '', '', '', '2', '', 4, '', '公告列表'),
(77, 4, '分配角色', 'sys:user:assignRole', '', '', '', '2', '', 5, '', '员工管理'),
(78, 5, '分配权限', 'sys:role:assignMenu', '', '', '', '2', '', 4, '', '角色管理'),
(79, 66, '处理', 'sys:repairList:do', '', '', '', '2', '', 1, '', '维修列表'),
(80, 57, '处理', 'sys:myUserComplaint:do', '', '', '', '2', '', 1, '', '我的反馈'),
(81, 44, '缴费', 'sys:feePower:pay', '', '', '', '2', '', 4, '', '电费管理'),
(82, 46, '缴费', 'sys:feePark:pay', '', '', '', '2', '', 4, '', '停车管理'),
(83, 45, '缴费', 'sys:feeWater:pay', '', '', '', '2', '', 4, '', '水费管理'),
(84, 0, '缴费记录', 'sys:feeList', '', '/feeList', '', '0', 'el-icon-c-scale-to-original', 6, '', '顶级菜单'),
(85, 84, '我的电费', 'sys:myPowerFee', 'myPowerFee', '/myPowerFee', '/feeList/myPowerFee', '1', 'el-icon-date', 1, '', '缴费记录'),
(86, 84, '我的水费', 'sys:myWaterFee', 'myWaterFee', '/myWaterFee', '/feeList/myWaterFee', '1', 'el-icon-s-shop', 2, '', '缴费记录'),
(87, 84, '我的停车费', 'sys:myParkFee', 'myParkFee', '/myParkFee', '/feeList/myParkFee', '1', 'el-icon-s-finance', 3, '', '缴费记录');

-- --------------------------------------------------------

--
-- 表的结构 `sys_notice`
--

CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `notice_content` text DEFAULT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_notice`
--

INSERT INTO `sys_notice` (`notice_id`, `user_id`, `title`, `notice_content`, `create_time`) VALUES
(5, NULL, '环境卫生', '请大家不要随地乱扔垃圾', '2026-03-17 16:47:55'),
(6, NULL, '关于清明节假期的值班安排', '- 4月3日（清明节当天）： \n  - 上午8点至12点：张先生，负责处理物业报修和紧急事务，联系电话：13800009999\n  - 下午12点至4点：王小姐，负责巡视小区环境和安全，联系电话：13900009999 \n  - 晚上4点至8点：李先生，负责处理居民投诉和突发事件，联系电话：13700009999\n \n- 4月4日至4月5日： \n  - 白天轮班制度，每人每天8小时 \n  - 值班人员包括： \n    - 早班（8点至12点）：刘先生，负责小区门卫和接待工作，联系电话：13600009999\n    - 中班（12点至4点）：陈小姐，负责处理物业费缴纳和业主咨询，联系电话：13500009999\n    - 晚班（4点至8点）：赵先生，负责巡逻小区安全和处理突发事件，联系电话：13400009999\n    - 夜班（8点至次日8点）：杨小姐，负责监控小区安全和应对紧急情况，联系电话：13300009999', '2026-03-17 16:55:39'),
(7, NULL, '小区停电通知', '亲爱的业主们，由于电力设施维护，我们小区将于本周六（日期）进行停电维修。停电时间为上午9点至下午5点。给您带来的不便，敬请谅解，谢谢！', '2026-03-17 17:38:08'),
(11, NULL, '小区健身房装修通知', '亲爱的居民们，我们小区的健身房将于下周一（日期）开始进行装修工程，预计装修时间为两周。在此期间，健身房将暂停使用，请您提前做好健身安排，如有不便，敬请谅解，感谢您的配合！', '2026-03-17 18:59:26'),
(12, NULL, '小区停车位调整通知', '尊敬的业主们，由于小区停车位有限，为了更好地管理停车资源，我们计划对小区停车位进行重新调整。请您在调整期间配合，如有任何疑问，请与物业联系。感谢您的理解与支持！', '2026-03-17 19:29:38'),
(13, NULL, '小区安全防范提示', '亲爱的居民们，近期小区内发生了一些入室盗窃案件，请大家注意加强家门、车辆等财物的安全防范意识。如发现可疑情况，请及时报警，并与物业联系。让我们一起为小区的安全努力，共同营造一个安宁的生活环境。', '2026-03-18 10:59:48');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role`
--

CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `role_name` varchar(56) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(56) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_role`
--

INSERT INTO `sys_role` (`role_id`, `role_name`, `remark`) VALUES
(5, '管理员角色', '管理员角色'),
(6, '收费员', '负责收取费用'),
(8, '业主', '房屋主人'),
(9, '维修人员', '维修管理'),
(11, '业主信息管理员', '管理业主信息'),
(12, '业主', '业主信息');

-- --------------------------------------------------------

--
-- 表的结构 `sys_role_menu`
--

CREATE TABLE `sys_role_menu` (
  `role_menu_id` int(11) NOT NULL COMMENT '主键',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_role_menu`
--

INSERT INTO `sys_role_menu` (`role_menu_id`, `role_id`, `menu_id`) VALUES
(1286, 5, 3),
(1287, 5, 4),
(1288, 5, 7),
(1289, 5, 8),
(1290, 5, 9),
(1291, 5, 77),
(1292, 5, 5),
(1293, 5, 10),
(1294, 5, 11),
(1295, 5, 12),
(1296, 5, 78),
(1297, 5, 6),
(1298, 5, 13),
(1299, 5, 14),
(1300, 5, 15),
(1301, 5, 16),
(1302, 5, 17),
(1303, 5, 18),
(1304, 5, 19),
(1305, 5, 20),
(1306, 5, 21),
(1307, 5, 26),
(1308, 5, 27),
(1309, 5, 28),
(1310, 5, 22),
(1311, 5, 23),
(1312, 5, 24),
(1313, 5, 25),
(1314, 5, 29),
(1315, 5, 30),
(1316, 5, 31),
(1317, 5, 32),
(1318, 5, 33),
(1319, 5, 34),
(1320, 5, 35),
(1321, 5, 36),
(1322, 5, 37),
(1323, 5, 38),
(1324, 5, 39),
(1325, 5, 40),
(1326, 5, 41),
(1327, 5, 42),
(1328, 5, 43),
(1329, 5, 44),
(1330, 5, 47),
(1331, 5, 48),
(1332, 5, 49),
(1333, 5, 81),
(1334, 5, 45),
(1335, 5, 50),
(1336, 5, 51),
(1337, 5, 52),
(1338, 5, 83),
(1339, 5, 46),
(1340, 5, 53),
(1341, 5, 54),
(1342, 5, 55),
(1343, 5, 82),
(1344, 5, 57),
(1345, 5, 80),
(1346, 5, 66),
(1347, 5, 79),
(1348, 5, 71),
(1349, 5, 72),
(1350, 5, 73),
(1351, 5, 74),
(1352, 5, 75),
(1353, 5, 76),
(1354, 5, 56),
(1355, 5, 65),
(1419, 9, 66),
(1420, 9, 79),
(1421, 9, 76),
(1422, 9, 65),
(1423, 9, 71),
(1424, 9, 72),
(1450, 10, 34),
(1451, 10, 35),
(1452, 10, 36),
(1453, 10, 37),
(1454, 10, 38),
(1455, 10, 39),
(1456, 10, 40),
(1457, 10, 41),
(1458, 10, 42),
(1483, 8, 58),
(1484, 8, 62),
(1485, 8, 63),
(1486, 8, 64),
(1487, 8, 67),
(1488, 8, 68),
(1489, 8, 69),
(1490, 8, 70),
(1491, 8, 76),
(1492, 8, 84),
(1493, 8, 85),
(1494, 8, 86),
(1495, 8, 87),
(1496, 8, 56),
(1497, 8, 65),
(1498, 8, 71),
(1499, 8, 72),
(1500, 11, 34),
(1501, 11, 35),
(1502, 11, 36),
(1503, 11, 37),
(1504, 11, 38),
(1505, 11, 39),
(1506, 11, 40),
(1507, 11, 41),
(1508, 11, 42),
(1509, 11, 71),
(1510, 11, 72),
(1511, 11, 73),
(1512, 11, 74),
(1513, 11, 75),
(1514, 11, 76),
(1515, 6, 43),
(1516, 6, 44),
(1517, 6, 47),
(1518, 6, 48),
(1519, 6, 49),
(1520, 6, 81),
(1521, 6, 45),
(1522, 6, 50),
(1523, 6, 51),
(1524, 6, 52),
(1525, 6, 83),
(1526, 6, 46),
(1527, 6, 53),
(1528, 6, 54),
(1529, 6, 55),
(1530, 6, 82),
(1531, 6, 71),
(1532, 6, 72),
(1533, 6, 73),
(1534, 6, 74),
(1535, 6, 75),
(1536, 6, 76),
(1537, 12, 34),
(1538, 12, 35),
(1539, 12, 36),
(1540, 12, 37),
(1541, 12, 38),
(1542, 12, 39),
(1543, 12, 40),
(1544, 12, 41),
(1545, 12, 42);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user`
--

CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `login_name` varchar(36) DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) DEFAULT NULL COMMENT '登录密码',
  `username` varchar(36) DEFAULT NULL COMMENT '登录账号',
  `phone` varchar(16) DEFAULT NULL COMMENT '电话',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 0：女 1：男',
  `id_card` varchar(36) DEFAULT NULL COMMENT '身份证号码',
  `is_admin` varchar(2) DEFAULT NULL COMMENT '是否是管理员 0：不是 1：是',
  `status` varchar(2) DEFAULT NULL COMMENT '0：在职  1：离职',
  `is_used` varchar(2) DEFAULT NULL COMMENT '0：启用 1：禁用',
  `is_account_non_expired` int(11) DEFAULT NULL COMMENT '帐户是否过期(1 未过期，0已过期)	',
  `is_account_non_locked` int(11) DEFAULT NULL COMMENT ' 帐户是否被锁定(1 未过期，0已过期)	',
  `is_credentials_non_expired` int(11) DEFAULT NULL COMMENT '密码是否过期(1 未过期，0已过期)	',
  `is_enabled` int(11) DEFAULT NULL COMMENT '帐户是否可用(1 可用，0 删除用户)	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_user`
--

INSERT INTO `sys_user` (`user_id`, `login_name`, `password`, `username`, `phone`, `sex`, `id_card`, `is_admin`, `status`, `is_used`, `is_account_non_expired`, `is_account_non_locked`, `is_credentials_non_expired`, `is_enabled`) VALUES
(4, '系统管理员', '$2a$10$/mDcuIn2la6FmjaC6lJfEeOV9ZORcHpuxT3O1yJwh6I6KHyt6YrBO', 'admin', '0791 67896789', '1', '123123123123123123', '1', '0', '0', 1, 1, 1, 1),
(13, '收费员', '$2a$10$rC3XamFeeH6eUa0uTnjf7.fVj.hI/M2z/VVu/GDRKCY5yIvuQNPlS', 'shoufeizhang', '13300009999', '1', '456456456456456456', NULL, '0', '0', 1, 1, 1, 1),
(15, '维修员', '$2a$10$dYSwCoN/1T7Bis8rWHm70eDpsnogdS.A8PvqiAfriLhWH2V13TGZC', 'weixiuliu', '66667777', '1', '167167167167167167', NULL, '0', '0', 1, 1, 1, 1),
(17, '业主管理员', '$2a$10$rV9vTi8NCI0pLSJLgxIFh.fLFylgYfBpvG60BO3WJzOyYxA58GPg2', 'yezhuguanli', '123123', '1', '1231231231', NULL, '0', '0', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sys_user_role`
--

CREATE TABLE `sys_user_role` (
  `user_role_id` int(11) NOT NULL COMMENT '主键',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `sys_user_role`
--

INSERT INTO `sys_user_role` (`user_role_id`, `role_id`, `user_id`) VALUES
(10, 5, 4),
(11, 6, 13),
(13, 8, 14),
(14, 9, 15),
(16, 11, 16),
(20, 11, 17),
(21, 12, 18);

-- --------------------------------------------------------

--
-- 表的结构 `user_complaint`
--

CREATE TABLE `user_complaint` (
  `complaint_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `complaint_content` text DEFAULT NULL COMMENT '投诉内容',
  `create_time` datetime DEFAULT NULL COMMENT '投诉时间',
  `status` varchar(2) DEFAULT NULL COMMENT '处理状态 0：未处理 1：已处理'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user_complaint`
--

INSERT INTO `user_complaint` (`complaint_id`, `user_id`, `title`, `complaint_content`, `create_time`, `status`) VALUES
(10, 1, '维修修进度太慢了', '一栋一单元门口下水道井盖坏了，已经好多天了，能不能尽快修一下\n', '2026-03-17 10:52:14', '0'),
(11, 1, '半夜总是有狗叫', '一栋一单元每天半夜都能听到狗叫，本来睡眠就不好，天天狗叫都会被吵死', '2026-03-17 11:37:28', '1'),
(12, 1, '消防设备要过期', '一栋一单元楼梯间灭火器快要过期了，要及时更换', '2026-03-17 11:39:33', '0'),
(13, 1, '楼上经常发出异响', '一栋一单元201晚上经常蹦来蹦去，特别吵', '2026-03-17 11:42:06', '1'),
(14, 2, '绿化带维护', '小区内的绿化带最近有些杂乱，希望物业能够加强维护和修剪。', '2026-03-17 11:58:19', '1'),
(15, 2, '垃圾处理不及时', '小区内的垃圾清运不够及时，垃圾桶经常满溢，希望能增加清运频次。', '2026-03-17 11:58:34', '0'),
(16, 2, '路灯不够亮', '最近晚上小区内的路灯有些不亮，导致夜间行走不便，请物业尽快维修。', '2026-03-17 11:58:58', '1'),
(17, 3, '健身器材损坏', '小区内的公共健身器材有些损坏，希望物业能够检查和维修，确保居民安全使用。', '2026-03-17 12:00:09', '1'),
(18, 3, '车辆乱停放', '最近发现小区内有些车辆乱停乱放，影响了交通和居民出行，请物业加强管理和规范停车。', '2026-03-17 12:00:31', '0'),
(19, 3, '电梯不稳定', '一栋一单元的电梯运行有时会有些不稳定，担心存在安全隐患，请物业安排专业人员进行检查和维修。', '2026-03-17 12:00:58', '0'),
(20, 4, '绿化建议', '建议在小区角落放些花盆或者种点小草，让小区更有生气。', '2026-03-17 14:37:04', '0'),
(21, 4, '安全建议', '如果能装几个摄像头，监控下小区出入口，那就更安全了。', '2026-03-17 14:37:18', '1'),
(22, 4, '维护建议', '物业大哥，能不能修下那个小区大门，看着有点破破烂烂的。', '2026-03-17 14:37:32', '0'),
(23, 5, '虫害防治', '一栋二单元后面绿化带出现了一些害虫，可能影响居民的健康，能够进行一下防治吗？', '2026-03-17 14:49:28', '1'),
(24, 5, '门禁系统安全性太低', '建议升级一下东门门口门禁系统的识别功能，随便一个人都能通过人脸识别，太不安全了', '2026-03-17 14:50:58', '0'),
(25, 5, '卫生清理不及时', '建议定期对小区卫生进行检查，确保公共区域的整洁和卫生。', '2026-03-17 14:51:27', '0'),
(26, 1, '停车位太少', '小区停车位越来越紧张，经常出现停车位被非业主车辆占用的情况。这不仅给业主出行带来了不便，也增加了小区的安全隐患。', '2026-03-16 13:36:08', '0'),
(27, 5, '安全建议', '一栋一单元二楼墙板脱落，有危险', '2026-03-16 10:08:49', '0');

-- --------------------------------------------------------

--
-- 表的结构 `user_repair`
--

CREATE TABLE `user_repair` (
  `repair_id` int(11) NOT NULL COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '业主id',
  `phone` varchar(13) DEFAULT NULL COMMENT '联系电话',
  `repair_address` tinytext DEFAULT NULL COMMENT '维修地址',
  `repair_content` text DEFAULT NULL COMMENT '维修内容',
  `commit_time` datetime DEFAULT NULL COMMENT '报修时间',
  `status` varchar(2) DEFAULT NULL COMMENT '维修状态 0：未维修 1：已维修'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user_repair`
--

INSERT INTO `user_repair` (`repair_id`, `user_id`, `phone`, `repair_address`, `repair_content`, `commit_time`, `status`) VALUES
(1, 4, '15600009999', '一栋一单元202', '天然气阀门漏气', '2026-03-18 16:51:47', '1'),
(7, 2, '14700009999', '一栋一单元102楼梯口', '你们物业怎么搞的，家门口楼梯间的灯泡老是坏，已经申请维修好几次了到底能不能修好', '2026-03-18 15:28:44', '1'),
(8, 1, '15600009999', '一栋一单元', '一栋一单元门口下水道井盖坏了，关不上', '2026-03-18 11:51:58', '0'),
(9, 1, '15600009999', '一栋一单元', '一栋一单元一楼楼梯口灯泡坏了', '2026-03-18 11:55:00', '0'),
(10, 4, '15600009999', '一栋一单元2楼', '发现一栋一单元2楼楼梯扶手松动，可能存在安全隐患，请尽快处理。', '2026-03-18 14:43:26', '1'),
(11, 4, '15600009999', '一栋一单元2楼202', '一栋一单元2楼202门口墙面开裂，需要维修', '2026-03-18 14:44:08', '0'),
(12, 5, '15600009999', '地下停车场A区', '停车场的地面有些坑坑洼洼，希望能够修平一下，以免损坏车辆。', '2026-03-18 14:48:10', '0'),
(13, 5, '15800009999', '东门门禁', '小区门禁系统出现故障，无法正常使用，希望能够尽快修复。', '2026-03-18 14:48:35', '1'),
(14, 5, '12348857484', '一栋一单元楼', '墙板脱落，需尽快维修', '2026-03-18 10:10:23', '1');

--
-- 转储表的索引
--

--
-- 表的索引 `fee_park`
--
ALTER TABLE `fee_park`
  ADD PRIMARY KEY (`park_fee_id`) USING BTREE;

--
-- 表的索引 `fee_power`
--
ALTER TABLE `fee_power`
  ADD PRIMARY KEY (`power_id`) USING BTREE;

--
-- 表的索引 `fee_water`
--
ALTER TABLE `fee_water`
  ADD PRIMARY KEY (`water_id`) USING BTREE;

--
-- 表的索引 `house_building`
--
ALTER TABLE `house_building`
  ADD PRIMARY KEY (`build_id`) USING BTREE;

--
-- 表的索引 `house_list`
--
ALTER TABLE `house_list`
  ADD PRIMARY KEY (`house_id`) USING BTREE;

--
-- 表的索引 `house_unit`
--
ALTER TABLE `house_unit`
  ADD PRIMARY KEY (`unit_id`) USING BTREE;

--
-- 表的索引 `live_house`
--
ALTER TABLE `live_house`
  ADD PRIMARY KEY (`live_house_id`) USING BTREE;

--
-- 表的索引 `live_park`
--
ALTER TABLE `live_park`
  ADD PRIMARY KEY (`live_park_id`) USING BTREE;

--
-- 表的索引 `live_role`
--
ALTER TABLE `live_role`
  ADD PRIMARY KEY (`liv_role_id`) USING BTREE;

--
-- 表的索引 `live_user`
--
ALTER TABLE `live_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 表的索引 `parking_list`
--
ALTER TABLE `parking_list`
  ADD PRIMARY KEY (`park_id`) USING BTREE;

--
-- 表的索引 `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`menu_id`) USING BTREE;

--
-- 表的索引 `sys_notice`
--
ALTER TABLE `sys_notice`
  ADD PRIMARY KEY (`notice_id`) USING BTREE;

--
-- 表的索引 `sys_role`
--
ALTER TABLE `sys_role`
  ADD PRIMARY KEY (`role_id`) USING BTREE;

--
-- 表的索引 `sys_role_menu`
--
ALTER TABLE `sys_role_menu`
  ADD PRIMARY KEY (`role_menu_id`) USING BTREE;

--
-- 表的索引 `sys_user`
--
ALTER TABLE `sys_user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- 表的索引 `sys_user_role`
--
ALTER TABLE `sys_user_role`
  ADD PRIMARY KEY (`user_role_id`) USING BTREE;

--
-- 表的索引 `user_complaint`
--
ALTER TABLE `user_complaint`
  ADD PRIMARY KEY (`complaint_id`) USING BTREE;

--
-- 表的索引 `user_repair`
--
ALTER TABLE `user_repair`
  ADD PRIMARY KEY (`repair_id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fee_park`
--
ALTER TABLE `fee_park`
  MODIFY `park_fee_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=14;

--
-- 使用表AUTO_INCREMENT `fee_power`
--
ALTER TABLE `fee_power`
  MODIFY `power_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `fee_water`
--
ALTER TABLE `fee_water`
  MODIFY `water_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `house_building`
--
ALTER TABLE `house_building`
  MODIFY `build_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '栋数id', AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `house_list`
--
ALTER TABLE `house_list`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋id', AUTO_INCREMENT=266;

--
-- 使用表AUTO_INCREMENT `house_unit`
--
ALTER TABLE `house_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '单元id', AUTO_INCREMENT=50;

--
-- 使用表AUTO_INCREMENT `live_house`
--
ALTER TABLE `live_house`
  MODIFY `live_house_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=32;

--
-- 使用表AUTO_INCREMENT `live_park`
--
ALTER TABLE `live_park`
  MODIFY `live_park_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=31;

--
-- 使用表AUTO_INCREMENT `live_role`
--
ALTER TABLE `live_role`
  MODIFY `liv_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `live_user`
--
ALTER TABLE `live_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业主id', AUTO_INCREMENT=52;

--
-- 使用表AUTO_INCREMENT `parking_list`
--
ALTER TABLE `parking_list`
  MODIFY `park_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '车位id', AUTO_INCREMENT=51;

--
-- 使用表AUTO_INCREMENT `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id', AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `sys_notice`
--
ALTER TABLE `sys_notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `sys_role`
--
ALTER TABLE `sys_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id', AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `sys_role_menu`
--
ALTER TABLE `sys_role_menu`
  MODIFY `role_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=1546;

--
-- 使用表AUTO_INCREMENT `sys_user`
--
ALTER TABLE `sys_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `sys_user_role`
--
ALTER TABLE `sys_user_role`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=22;

--
-- 使用表AUTO_INCREMENT `user_complaint`
--
ALTER TABLE `user_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `user_repair`
--
ALTER TABLE `user_repair`
  MODIFY `repair_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
