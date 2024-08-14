/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t347`;
CREATE DATABASE IF NOT EXISTS `t347` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t347`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 4, 'hhhhh', '2023-03-27 08:53:50', NULL, NULL, 2, 1, '2023-03-27 08:53:50'),
	(2, 4, NULL, NULL, 'ghhh', '2023-03-27 08:54:11', NULL, 2, '2023-03-27 08:54:11'),
	(3, 4, NULL, NULL, '和何方神圣', '2023-03-27 08:54:14', NULL, 2, '2023-03-27 08:54:15');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-27 08:32:17'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-27 08:32:17'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(5, 'zhengce_types', '政策类型', 1, '政策类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(6, 'zhengce_types', '政策类型', 2, '政策类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(7, 'jihua_types', '计划类型', 1, '计划类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(8, 'jihua_types', '计划类型', 2, '计划类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(9, 'single_seach_types', '单页数据类型', 1, '专业介绍', NULL, NULL, '2023-03-27 08:32:18'),
	(10, 'single_seach_types', '单页数据类型', 2, '师资力量', NULL, NULL, '2023-03-27 08:32:18'),
	(11, 'single_seach_types', '单页数据类型', 3, '联系方式', NULL, NULL, '2023-03-27 08:32:18'),
	(12, 'single_seach_types', '单页数据类型', 4, '校训校徽', NULL, NULL, '2023-03-27 08:32:18'),
	(13, 'xinxi_types', '信息公开类型', 1, '信息公开类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(14, 'xinxi_types', '信息公开类型', 2, '信息公开类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(15, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-03-27 08:32:18'),
	(16, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-03-27 08:32:18'),
	(17, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-03-27 08:32:18'),
	(18, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-03-27 08:32:18'),
	(19, 'wuzi_types', '物资类型', 1, '物资类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(20, 'wuzi_types', '物资类型', 2, '物资类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(21, 'wuzi_types', '物资类型', 3, '物资类型3', NULL, NULL, '2023-03-27 08:32:18'),
	(22, 'wuzi_types', '物资类型', 4, '物资类型4', NULL, NULL, '2023-03-27 08:32:18'),
	(23, 'wuzi_xiaohao_types', '物资消耗类型', 1, '物资消耗类型1', NULL, NULL, '2023-03-27 08:32:18'),
	(24, 'wuzi_xiaohao_types', '物资消耗类型', 2, '物资消耗类型2', NULL, NULL, '2023-03-27 08:32:18'),
	(25, 'wuzi_xiaohao_types', '物资消耗类型', 3, '物资消耗类型3', NULL, NULL, '2023-03-27 08:32:18'),
	(26, 'wuzi_xiaohao_types', '物资消耗类型', 4, '物资消耗类型4', NULL, NULL, '2023-03-27 08:32:18'),
	(27, 'zixunjilu_fangshi_types', '咨询方式', 1, '网站客服咨询', NULL, NULL, '2023-03-27 08:32:18'),
	(28, 'zixunjilu_fangshi_types', '咨询方式', 2, '电话咨询', NULL, NULL, '2023-03-27 08:32:18'),
	(29, 'zixunjilu_zhongdian_types', '咨询重点', 1, '专业', NULL, NULL, '2023-03-27 08:32:18'),
	(30, 'zixunjilu_zhongdian_types', '咨询重点', 2, '学费', NULL, NULL, '2023-03-27 08:32:18'),
	(31, 'zixunjilu_zhongdian_types', '咨询重点', 3, '宿舍', NULL, NULL, '2023-03-27 08:32:18'),
	(32, 'zixunjilu_zhongdian_types', '咨询重点', 4, '师资', NULL, NULL, '2023-03-27 08:32:18'),
	(33, 'wuzi_types', '物资类型', 5, '物资类型5', NULL, '', '2023-03-27 08:54:50');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-27 08:36:49', '公告详情1', '2023-03-27 08:36:49'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-03-27 08:36:49', '公告详情2', '2023-03-27 08:36:49'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-03-27 08:36:49', '公告详情3', '2023-03-27 08:36:49'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-27 08:36:49', '公告详情4', '2023-03-27 08:36:49'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-27 08:36:49', '公告详情5', '2023-03-27 08:36:49'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 2, '2023-03-27 08:36:49', '公告详情6', '2023-03-27 08:36:49'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-27 08:36:49', '公告详情7', '2023-03-27 08:36:49'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-03-27 08:36:49', '公告详情8', '2023-03-27 08:36:49'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-27 08:36:49', '公告详情9', '2023-03-27 08:36:49'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-03-27 08:36:49', '公告详情10', '2023-03-27 08:36:49'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-27 08:36:49', '公告详情11', '2023-03-27 08:36:49'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-27 08:36:49', '公告详情12', '2023-03-27 08:36:49'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-27 08:36:49', '公告详情13', '2023-03-27 08:36:49'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-27 08:36:49', '公告详情14', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `jihua`;
CREATE TABLE IF NOT EXISTS `jihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jihua_name` varchar(200) DEFAULT NULL COMMENT '计划标题 Search111  ',
  `jihua_photo` varchar(200) DEFAULT NULL COMMENT '计划图片 ',
  `jihua_types` int NOT NULL COMMENT '计划类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '计划发布时间 ',
  `jihua_content` longtext COMMENT '计划详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='招生计划';

DELETE FROM `jihua`;
INSERT INTO `jihua` (`id`, `jihua_name`, `jihua_photo`, `jihua_types`, `insert_time`, `jihua_content`, `create_time`) VALUES
	(1, '计划标题1', 'upload/jihua1.jpg', 2, '2023-03-27 08:36:49', '计划详情1', '2023-03-27 08:36:49'),
	(2, '计划标题2', 'upload/jihua2.jpg', 1, '2023-03-27 08:36:49', '计划详情2', '2023-03-27 08:36:49'),
	(3, '计划标题3', 'upload/jihua3.jpg', 1, '2023-03-27 08:36:49', '计划详情3', '2023-03-27 08:36:49'),
	(4, '计划标题4', 'upload/jihua4.jpg', 2, '2023-03-27 08:36:49', '计划详情4', '2023-03-27 08:36:49'),
	(5, '计划标题5', 'upload/jihua5.jpg', 1, '2023-03-27 08:36:49', '计划详情5', '2023-03-27 08:36:49'),
	(6, '计划标题6', 'upload/jihua6.jpg', 1, '2023-03-27 08:36:49', '计划详情6', '2023-03-27 08:36:49'),
	(7, '计划标题7', 'upload/jihua7.jpg', 2, '2023-03-27 08:36:49', '计划详情7', '2023-03-27 08:36:49'),
	(8, '计划标题8', 'upload/jihua8.jpg', 2, '2023-03-27 08:36:49', '计划详情8', '2023-03-27 08:36:49'),
	(9, '计划标题9', 'upload/jihua9.jpg', 1, '2023-03-27 08:36:49', '计划详情9', '2023-03-27 08:36:49'),
	(10, '计划标题10', 'upload/jihua10.jpg', 2, '2023-03-27 08:36:49', '计划详情10', '2023-03-27 08:36:49'),
	(11, '计划标题11', 'upload/jihua11.jpg', 1, '2023-03-27 08:36:49', '计划详情11', '2023-03-27 08:36:49'),
	(12, '计划标题12', 'upload/jihua12.jpg', 2, '2023-03-27 08:36:49', '计划详情12', '2023-03-27 08:36:49'),
	(13, '计划标题13', 'upload/jihua13.jpg', 1, '2023-03-27 08:36:49', '计划详情13', '2023-03-27 08:36:49'),
	(14, '计划标题14', 'upload/jihua14.jpg', 1, '2023-03-27 08:36:49', '计划详情14', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` longtext COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '专业介绍', 1, 'upload/yonghu2.jpg', '专业介绍1', '2023-03-27 08:46:11'),
	(2, '师资力量', 2, 'upload/yonghu2.jpg', '师资力量1', '2023-03-27 08:46:31'),
	(3, '联系方式', 3, 'upload/yonghu2.jpg', '联系方式1', '2023-03-27 08:46:40'),
	(4, '校训校徽', 4, 'upload/yonghu2.jpg', '校训校徽1', '2023-03-27 08:46:55');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6xybxsma21je179exj0hl9tz19xjm381', '2023-03-27 08:41:18', '2024-08-04 06:43:33'),
	(2, 1, 'a1', 'yonghu', '用户', 'x6wnl9sklkn1n0n9wrln4hggykzo56xn', '2023-03-27 08:47:24', '2024-08-04 06:45:01'),
	(3, 4, 'a5', 'yonghu', '用户', 'jn05ag56pe7pn66wko022yt9vsokkslh', '2023-03-27 08:53:02', '2023-03-27 09:53:03'),
	(4, 1, 'a1', 'zhaoshengrenyuan', '招生人员', '7q8j8nl9ztsnfxumctbd192gs7e0p4m6', '2023-03-27 08:59:35', '2024-08-04 06:44:47');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-27 08:32:17');

DROP TABLE IF EXISTS `wuzi`;
CREATE TABLE IF NOT EXISTS `wuzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `wuzi_types` int DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_kucun_number` int DEFAULT NULL COMMENT '物资数量',
  `wuzi_yuzhi` int DEFAULT NULL COMMENT '阈值',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='物资';

DELETE FROM `wuzi`;
INSERT INTO `wuzi` (`id`, `wuzi_uuid_number`, `wuzi_name`, `wuzi_photo`, `wuzi_danwei`, `wuzi_types`, `wuzi_kucun_number`, `wuzi_yuzhi`, `wuzi_content`, `insert_time`, `create_time`) VALUES
	(1, '1679906209354', '物资名称1', 'upload/wuzi1.jpg', '个', 3, 101, 10, '物资介绍1', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(2, '1679906209356', '物资名称2', 'upload/wuzi2.jpg', '个', 3, 102, 10, '物资介绍2', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(3, '1679906209320', '物资名称3', 'upload/wuzi3.jpg', '个', 4, 103, 10, '物资介绍3', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(4, '1679906209347', '物资名称4', 'upload/wuzi4.jpg', '个', 2, 104, 10, '物资介绍4', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(5, '1679906209361', '物资名称5', 'upload/wuzi5.jpg', '个', 1, 105, 10, '物资介绍5', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(6, '1679906209374', '物资名称6', 'upload/wuzi6.jpg', '个', 3, 106, 10, '物资介绍6', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(7, '1679906209297', '物资名称7', 'upload/wuzi7.jpg', '个', 3, 107, 10, '物资介绍7', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(8, '1679906209370', '物资名称8', 'upload/wuzi8.jpg', '个', 4, 10, 10, '物资介绍8', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(9, '1679906209322', '物资名称9', 'upload/wuzi9.jpg', '个', 2, 109, 10, '物资介绍9', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(10, '1679906209296', '物资名称10', 'upload/wuzi10.jpg', '个', 4, 1010, 10, '物资介绍10', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(11, '1679906209367', '物资名称11', 'upload/wuzi11.jpg', '个', 4, 1011, 10, '物资介绍11', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(12, '1679906209343', '物资名称12', 'upload/wuzi12.jpg', '个', 1, 1012, 10, '物资介绍12', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(13, '1679906209311', '物资名称13', 'upload/wuzi13.jpg', '个', 1, 1013, 10, '物资介绍13', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(14, '1679906209327', '物资名称14', 'upload/wuzi14.jpg', '个', 3, 1013, 10, '物资介绍14', '2023-03-27 08:36:49', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `wuzi_xiaohao`;
CREATE TABLE IF NOT EXISTS `wuzi_xiaohao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int DEFAULT NULL COMMENT '物资',
  `zhaoshengrenyuan_id` int DEFAULT NULL COMMENT '招生人员',
  `wuzi_xiaohao_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资消耗编号',
  `wuzi_xiaohao_name` varchar(200) DEFAULT NULL COMMENT '物资消耗标题  Search111 ',
  `wuzi_xiaohao_address` varchar(200) DEFAULT NULL COMMENT '消耗地点',
  `wuzi_xiaohao_time` timestamp NULL DEFAULT NULL COMMENT '消耗时间',
  `wuzi_xiaohao_types` int DEFAULT NULL COMMENT '物资消耗类型 Search111',
  `wuzi_xiaohao_kucun_number` int DEFAULT NULL COMMENT '消耗数量',
  `wuzi_xiaohao_content` longtext COMMENT '消耗备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='物资消耗';

DELETE FROM `wuzi_xiaohao`;
INSERT INTO `wuzi_xiaohao` (`id`, `wuzi_id`, `zhaoshengrenyuan_id`, `wuzi_xiaohao_uuid_number`, `wuzi_xiaohao_name`, `wuzi_xiaohao_address`, `wuzi_xiaohao_time`, `wuzi_xiaohao_types`, `wuzi_xiaohao_kucun_number`, `wuzi_xiaohao_content`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, '1679906209359', '物资消耗标题1', '消耗地点1', '2023-03-27 08:36:49', 1, 101, '消耗备注1', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(2, 2, 1, '1679906209370', '物资消耗标题2', '消耗地点2', '2023-03-27 08:36:49', 4, 102, '消耗备注2', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(3, 3, 2, '1679906209292', '物资消耗标题3', '消耗地点3', '2023-03-27 08:36:49', 4, 103, '消耗备注3', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(4, 4, 2, '1679906209336', '物资消耗标题4', '消耗地点4', '2023-03-27 08:36:49', 1, 104, '消耗备注4', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(5, 5, 2, '1679906209280', '物资消耗标题5', '消耗地点5', '2023-03-27 08:36:49', 3, 105, '消耗备注5', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(6, 6, 3, '1679906209336', '物资消耗标题6', '消耗地点6', '2023-03-27 08:36:49', 3, 106, '消耗备注6', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(7, 7, 3, '1679906209315', '物资消耗标题7', '消耗地点7', '2023-03-27 08:36:49', 3, 107, '消耗备注7', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(8, 8, 1, '1679906209298', '物资消耗标题8', '消耗地点8', '2023-03-27 08:36:49', 4, 108, '消耗备注8', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(9, 9, 2, '1679906209336', '物资消耗标题9', '消耗地点9', '2023-03-27 08:36:49', 2, 109, '消耗备注9', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(10, 10, 3, '1679906209303', '物资消耗标题10', '消耗地点10', '2023-03-27 08:36:49', 4, 1010, '消耗备注10', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(11, 11, 3, '1679906209324', '物资消耗标题11', '消耗地点11', '2023-03-27 08:36:49', 3, 1011, '消耗备注11', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(12, 12, 1, '1679906209313', '物资消耗标题12', '消耗地点12', '2023-03-27 08:36:49', 4, 1012, '消耗备注12', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(13, 13, 1, '1679906209336', '物资消耗标题13', '消耗地点13', '2023-03-27 08:36:49', 1, 1013, '消耗备注13', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(14, 14, 2, '1679906209363', '物资消耗标题14', '消耗地点14', '2023-03-27 08:36:49', 2, 1014, '消耗备注14', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(15, 14, 1, '1679907587429', '消耗标题111', '地点1111', '2023-03-27 08:59:59', 3, 1, '<p>个哈哈哈或</p>', '2023-03-27 09:00:09', '2023-03-27 09:00:09');

DROP TABLE IF EXISTS `xinxi`;
CREATE TABLE IF NOT EXISTS `xinxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xinxi_name` varchar(200) DEFAULT NULL COMMENT '信息公开名称 Search111  ',
  `xinxi_photo` varchar(200) DEFAULT NULL COMMENT '信息公开图片 ',
  `xinxi_types` int NOT NULL COMMENT '信息公开类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '信息公开发布时间 ',
  `xinxi_content` longtext COMMENT '信息公开详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='信息公开';

DELETE FROM `xinxi`;
INSERT INTO `xinxi` (`id`, `xinxi_name`, `xinxi_photo`, `xinxi_types`, `insert_time`, `xinxi_content`, `create_time`) VALUES
	(1, '信息公开名称1', 'upload/xinxi1.jpg', 1, '2023-03-27 08:36:49', '信息公开详情1', '2023-03-27 08:36:49'),
	(2, '信息公开名称2', 'upload/xinxi2.jpg', 2, '2023-03-27 08:36:49', '信息公开详情2', '2023-03-27 08:36:49'),
	(3, '信息公开名称3', 'upload/xinxi3.jpg', 1, '2023-03-27 08:36:49', '信息公开详情3', '2023-03-27 08:36:49'),
	(4, '信息公开名称4', 'upload/xinxi4.jpg', 1, '2023-03-27 08:36:49', '信息公开详情4', '2023-03-27 08:36:49'),
	(5, '信息公开名称5', 'upload/xinxi5.jpg', 2, '2023-03-27 08:36:49', '信息公开详情5', '2023-03-27 08:36:49'),
	(6, '信息公开名称6', 'upload/xinxi6.jpg', 1, '2023-03-27 08:36:49', '信息公开详情6', '2023-03-27 08:36:49'),
	(7, '信息公开名称7', 'upload/xinxi7.jpg', 2, '2023-03-27 08:36:49', '信息公开详情7', '2023-03-27 08:36:49'),
	(8, '信息公开名称8', 'upload/xinxi8.jpg', 2, '2023-03-27 08:36:49', '信息公开详情8', '2023-03-27 08:36:49'),
	(9, '信息公开名称9', 'upload/xinxi9.jpg', 1, '2023-03-27 08:36:49', '信息公开详情9', '2023-03-27 08:36:49'),
	(10, '信息公开名称10', 'upload/xinxi10.jpg', 1, '2023-03-27 08:36:49', '信息公开详情10', '2023-03-27 08:36:49'),
	(11, '信息公开名称11', 'upload/xinxi11.jpg', 1, '2023-03-27 08:36:49', '信息公开详情11', '2023-03-27 08:36:49'),
	(12, '信息公开名称12', 'upload/xinxi12.jpg', 1, '2023-03-27 08:36:49', '信息公开详情12', '2023-03-27 08:36:49'),
	(13, '信息公开名称13', 'upload/xinxi13.jpg', 1, '2023-03-27 08:36:49', '信息公开详情13', '2023-03-27 08:36:49'),
	(14, '信息公开名称14', 'upload/xinxi14.jpg', 1, '2023-03-27 08:36:49', '信息公开详情14', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', '2023-03-27 08:36:49'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-03-27 08:36:49'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', '2023-03-27 08:36:49'),
	(4, '用户4', '123456', '张5', '17788889999', '444888999999999999', 'upload/1679907223316.jpg', 2, '5@qq.com', '2023-03-27 08:52:57');

DROP TABLE IF EXISTS `zhaoshengrenyuan`;
CREATE TABLE IF NOT EXISTS `zhaoshengrenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhaoshengrenyuan_name` varchar(200) DEFAULT NULL COMMENT '招生人员姓名 Search111 ',
  `zhaoshengrenyuan_phone` varchar(200) DEFAULT NULL COMMENT '招生人员手机号',
  `zhaoshengrenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '招生人员身份证号',
  `zhaoshengrenyuan_photo` varchar(200) DEFAULT NULL COMMENT '招生人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `zhaoshengrenyuan_email` varchar(200) DEFAULT NULL COMMENT '招生人员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='招生人员';

DELETE FROM `zhaoshengrenyuan`;
INSERT INTO `zhaoshengrenyuan` (`id`, `username`, `password`, `zhaoshengrenyuan_name`, `zhaoshengrenyuan_phone`, `zhaoshengrenyuan_id_number`, `zhaoshengrenyuan_photo`, `sex_types`, `zhaoshengrenyuan_email`, `create_time`) VALUES
	(1, '招生人员1', '123456', '招生人员姓名1', '17703786901', '410224199010102001', 'upload/zhaoshengrenyuan1.jpg', 2, '1@qq.com', '2023-03-27 08:36:49'),
	(2, '招生人员2', '123456', '招生人员姓名2', '17703786902', '410224199010102002', 'upload/zhaoshengrenyuan2.jpg', 2, '2@qq.com', '2023-03-27 08:36:49'),
	(3, '招生人员3', '123456', '招生人员姓名3', '17703786903', '410224199010102003', 'upload/zhaoshengrenyuan3.jpg', 2, '3@qq.com', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `zhengce`;
CREATE TABLE IF NOT EXISTS `zhengce` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhengce_name` varchar(200) DEFAULT NULL COMMENT '政策名称 Search111  ',
  `zhengce_photo` varchar(200) DEFAULT NULL COMMENT '政策图片 ',
  `zhengce_types` int NOT NULL COMMENT '政策类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '政策发布时间 ',
  `zhengce_content` longtext COMMENT '政策详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='招生政策';

DELETE FROM `zhengce`;
INSERT INTO `zhengce` (`id`, `zhengce_name`, `zhengce_photo`, `zhengce_types`, `insert_time`, `zhengce_content`, `create_time`) VALUES
	(1, '政策名称1', 'upload/zhengce1.jpg', 1, '2023-03-27 08:36:49', '政策详情1', '2023-03-27 08:36:49'),
	(2, '政策名称2', 'upload/zhengce2.jpg', 2, '2023-03-27 08:36:49', '政策详情2', '2023-03-27 08:36:49'),
	(3, '政策名称3', 'upload/zhengce3.jpg', 1, '2023-03-27 08:36:49', '政策详情3', '2023-03-27 08:36:49'),
	(4, '政策名称4', 'upload/zhengce4.jpg', 1, '2023-03-27 08:36:49', '政策详情4', '2023-03-27 08:36:49'),
	(5, '政策名称5', 'upload/zhengce5.jpg', 2, '2023-03-27 08:36:49', '政策详情5', '2023-03-27 08:36:49'),
	(6, '政策名称6', 'upload/zhengce6.jpg', 2, '2023-03-27 08:36:49', '政策详情6', '2023-03-27 08:36:49'),
	(7, '政策名称7', 'upload/zhengce7.jpg', 1, '2023-03-27 08:36:49', '政策详情7', '2023-03-27 08:36:49'),
	(8, '政策名称8', 'upload/zhengce8.jpg', 1, '2023-03-27 08:36:49', '政策详情8', '2023-03-27 08:36:49'),
	(9, '政策名称9', 'upload/zhengce9.jpg', 2, '2023-03-27 08:36:49', '政策详情9', '2023-03-27 08:36:49'),
	(10, '政策名称10', 'upload/zhengce10.jpg', 2, '2023-03-27 08:36:49', '政策详情10', '2023-03-27 08:36:49'),
	(11, '政策名称11', 'upload/zhengce11.jpg', 2, '2023-03-27 08:36:49', '政策详情11', '2023-03-27 08:36:49'),
	(12, '政策名称12', 'upload/zhengce12.jpg', 1, '2023-03-27 08:36:49', '政策详情12', '2023-03-27 08:36:49'),
	(13, '政策名称13', 'upload/zhengce13.jpg', 2, '2023-03-27 08:36:49', '政策详情13', '2023-03-27 08:36:49'),
	(14, '政策名称14', 'upload/zhengce14.jpg', 2, '2023-03-27 08:36:49', '<p>政策详情14哈哈哈哈</p>', '2023-03-27 08:36:49');

DROP TABLE IF EXISTS `zixunjilu`;
CREATE TABLE IF NOT EXISTS `zixunjilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhaoshengrenyuan_id` int DEFAULT NULL COMMENT '招生人员',
  `zixunjilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '咨询记录编号',
  `zixunjilu_fangshi_types` int DEFAULT NULL COMMENT '咨询方式 Search111',
  `zixunjilu_zhongdian_types` int DEFAULT NULL COMMENT '咨询重点 Search111',
  `zixun_time` timestamp NULL DEFAULT NULL COMMENT '咨询时间',
  `zixunjilu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `zixunjilu_content` longtext COMMENT '咨询记录备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='咨询记录';

DELETE FROM `zixunjilu`;
INSERT INTO `zixunjilu` (`id`, `zhaoshengrenyuan_id`, `zixunjilu_uuid_number`, `zixunjilu_fangshi_types`, `zixunjilu_zhongdian_types`, `zixun_time`, `zixunjilu_file`, `zixunjilu_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '1679906209359', 2, 3, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注1', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(2, 2, '1679906209302', 2, 3, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注2', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(3, 1, '1679906209382', 2, 4, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注3', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(4, 3, '1679906209384', 1, 4, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注4', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(5, 3, '1679906209376', 2, 2, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注5', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(6, 1, '1679906209359', 1, 1, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注6', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(7, 2, '1679906209302', 1, 1, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注7', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(8, 3, '1679906209341', 1, 1, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注8', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(9, 3, '1679906209300', 2, 1, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注9', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(10, 3, '1679906209322', 1, 3, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注10', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(11, 1, '1679906209292', 1, 1, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注11', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(12, 1, '1679906209330', 1, 2, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注12', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(13, 1, '1679906209350', 2, 4, '2023-03-27 08:36:49', 'upload/file.rar', '咨询记录备注13', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(14, 1, '1679906209289', 1, 2, '2023-03-27 08:36:49', 'upload/file.rar', '<p>咨询记录备注14哈哈哈</p>', '2023-03-27 08:36:49', '2023-03-27 08:36:49'),
	(15, 1, '1679907618604', 1, 3, '2023-03-27 09:00:22', '/upload/1679907628743.doc', '<p>哈哈哈哈</p>', '2023-03-27 09:00:31', '2023-03-27 09:00:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
