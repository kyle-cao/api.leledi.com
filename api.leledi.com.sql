/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 127.0.0.1:3306
 Source Schema         : api.leledi.com

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 27/10/2021 17:49:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for le_district
-- ----------------------------
DROP TABLE IF EXISTS `le_district`;
CREATE TABLE `le_district` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid_path` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` char(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip_code` char(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `short_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of le_district
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for le_grade
-- ----------------------------
DROP TABLE IF EXISTS `le_grade`;
CREATE TABLE `le_grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='年级表';

-- ----------------------------
-- Records of le_grade
-- ----------------------------
BEGIN;
INSERT INTO `le_grade` VALUES (11, 0, '03212144-6b9b-a65b-e46f-8de47acd6015', '小学', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (12, 11, '94d95388-3599-6d2e-b753-c5fe7d224a20', '一年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (13, 11, '9af57dc1-e763-2bec-679e-faadb4e89ccc', '二年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (14, 11, '74e7ad52-0811-0517-999f-0dc5799fad4b', '三年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (15, 11, 'f7d706a9-ebb4-c41d-be40-90024574023e', '四年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (16, 11, '8a2b7d31-2c51-448b-626d-31c8955496a5', '五年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (17, 11, 'd79575a9-a6e0-3e92-0955-a5061672d9d1', '六年级', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (18, 0, 'c57a92b9-4bec-c072-3925-3c81e2ae0c1d', '初中', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (19, 18, '27946011-e88d-6c60-2ff4-b744df98cb92', '初一', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (20, 18, '132f9971-0341-009b-a872-b35dc3043939', '初二', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (21, 18, 'bef6782c-052b-6cc1-c1c2-afda19baea3b', '初三', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (22, 0, '3fa9e139-fa47-4345-f89d-53db04fac5a7', '高中', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (23, 22, '125722eb-2caa-84b0-ab31-6c85774688cc', '高一', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (24, 22, 'f796019d-270f-1cae-675b-30c68569c47b', '高二', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
INSERT INTO `le_grade` VALUES (25, 22, 'e9f2faba-3772-3b70-372f-30f8d648875e', '高三', 1, '2021-10-26 17:18:22', '2021-10-26 17:18:22', NULL);
COMMIT;

-- ----------------------------
-- Table structure for le_material
-- ----------------------------
DROP TABLE IF EXISTS `le_material`;
CREATE TABLE `le_material` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='教材';

-- ----------------------------
-- Records of le_material
-- ----------------------------
BEGIN;
INSERT INTO `le_material` VALUES (1, '7165a26e-ab16-ffd3-a968-90cf215341b1', '人教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (2, '6d1c8fa9-13d2-ef99-31b3-443cd6f43528', '苏教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (3, 'cce23088-8510-3c51-4920-886211f7a893', '冀教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (4, 'd2127d0c-886e-a80d-d7bf-5d1c84cb6153', '北师版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (5, '3973650b-663a-d267-0fc1-764e6b17318e', '西师版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (6, 'f7055055-651f-aa8d-afa5-d7c3a39e03bc', '沪教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (7, 'fccae3d4-d49f-df4d-eb12-ddc6e229eb98', '鲁教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (8, 'c0a3b432-e89b-239a-bd70-9311ae652f4f', '粤教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
INSERT INTO `le_material` VALUES (9, '08e6e3ec-07e7-0752-0842-afb0d3a6754d', '浙教版', 1, '2021-10-27 17:38:41', '2021-10-27 17:38:41', NULL);
COMMIT;

-- ----------------------------
-- Table structure for le_papers
-- ----------------------------
DROP TABLE IF EXISTS `le_papers`;
CREATE TABLE `le_papers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='试卷';

-- ----------------------------
-- Records of le_papers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for le_question
-- ----------------------------
DROP TABLE IF EXISTS `le_question`;
CREATE TABLE `le_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='试题';

-- ----------------------------
-- Records of le_question
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for le_subject
-- ----------------------------
DROP TABLE IF EXISTS `le_subject`;
CREATE TABLE `le_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='学科';

-- ----------------------------
-- Records of le_subject
-- ----------------------------
BEGIN;
INSERT INTO `le_subject` VALUES (13, 'd7c9d976-65bd-d62f-907c-46a0319b5619', '数学', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (14, '97cd1597-b1e2-38a6-4988-0c4d0d547f35', '语文', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (15, '271dcb4a-fbaa-e9b1-f9e7-231c413fe2c6', '英语', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (16, '0c07c9b5-8eb5-940b-3da5-4050f6634113', '物理', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (17, 'e13903d1-896b-3ab4-0c01-65c4c7ab6408', '化学', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (18, '42ae7d6f-fb3c-def6-5894-1a7bd6448cc7', '生物', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (19, '27b97b4a-6c1e-1cd9-7d02-d41fe3bd7958', '地理', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (20, '4249f143-24ef-a65a-fe37-848bbbe03f72', '历史', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (21, 'f089a93e-f697-2595-8127-386abfa9d140', '政治', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (22, '9f19191d-99a3-4b50-ab7c-c68d80bc144b', '信息', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (23, '9813db1d-8f17-7c68-926c-b31b7567cb58', '科学', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
INSERT INTO `le_subject` VALUES (24, 'c8b4a186-b0dc-aaf6-2152-b719410babe3', '品德与社会', 1, '2021-10-27 16:32:55', '2021-10-27 16:32:55', NULL);
COMMIT;

-- ----------------------------
-- Table structure for le_type
-- ----------------------------
DROP TABLE IF EXISTS `le_type`;
CREATE TABLE `le_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='类型';

-- ----------------------------
-- Records of le_type
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
