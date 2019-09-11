/*
Navicat MySQL Data Transfer

Source Server         : myDataBase
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2019-09-11 11:09:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `tradePassword` varchar(255) DEFAULT NULL,
  `usableAmount` decimal(18,4) NOT NULL,
  `freezedAmount` decimal(18,4) NOT NULL,
  `borrowLimit` decimal(18,4) NOT NULL,
  `version` int(11) NOT NULL,
  `unReceiveInterest` decimal(18,4) NOT NULL,
  `unReceivePrincipal` decimal(18,4) NOT NULL,
  `unReturnAmount` decimal(18,4) NOT NULL,
  `remainBorrowLimit` decimal(18,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('4', null, '1140.0000', '0.0000', '2000.0000', '1', '0.0000', '0.0000', '1253.0434', '800.0000');
INSERT INTO `account` VALUES ('6', null, '0.0000', '0.0000', '2000.0000', '0', '0.0000', '0.0000', '0.0000', '2000.0000');
INSERT INTO `account` VALUES ('7', null, '9500.0000', '0.0000', '2000.0000', '3', '22.1014', '500.0000', '0.0000', '2000.0000');
INSERT INTO `account` VALUES ('10', null, '9300.0000', '0.0000', '2000.0000', '4', '30.9420', '700.0000', '0.0000', '2000.0000');
INSERT INTO `account` VALUES ('53', null, '0.0000', '0.0000', '5000.0000', '0', '0.0000', '0.0000', '0.0000', '5000.0000');
INSERT INTO `account` VALUES ('56', null, '0.0000', '0.0000', '5000.0000', '0', '0.0000', '0.0000', '0.0000', '5000.0000');
INSERT INTO `account` VALUES ('57', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('66', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('67', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('68', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('69', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('70', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('71', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('72', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('73', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('75', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('76', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('77', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('78', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');
INSERT INTO `account` VALUES ('79', null, '1000000.0000', '1000000.0000', '5000.0000', '0', '1000000.0000', '1000000.0000', '1000000.0000', '1000000.0000');

-- ----------------------------
-- Table structure for bidrequest
-- ----------------------------
DROP TABLE IF EXISTS `bidrequest`;
CREATE TABLE `bidrequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL,
  `bidRequestType` tinyint(4) NOT NULL,
  `bidRequestState` tinyint(4) NOT NULL,
  `bidRequestAmount` decimal(18,4) NOT NULL,
  `currentRate` decimal(8,4) NOT NULL,
  `monthes2Return` tinyint(4) NOT NULL,
  `bidCount` int(11) NOT NULL,
  `totalRewardAmount` decimal(18,4) NOT NULL,
  `currentSum` decimal(18,4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `disableDate` datetime DEFAULT NULL,
  `createuser_id` bigint(20) NOT NULL,
  `disableDays` tinyint(4) NOT NULL,
  `minBidAmount` decimal(18,4) NOT NULL,
  `applyTime` datetime NOT NULL,
  `publishTime` datetime DEFAULT NULL,
  `returnType` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bidrequest
-- ----------------------------
INSERT INTO `bidrequest` VALUES ('7', '0', '0', '10', '3000.0000', '10.0000', '1', '0', '25.0000', '0.0000', '1111', '12345', '12', '2019-09-25 18:04:10', '4', '1', '50.0000', '2019-08-24 21:12:23', '2019-08-25 18:04:10', '0');
INSERT INTO `bidrequest` VALUES ('8', '1', '0', '1', '3000.0000', '10.0000', '1', '0', '25.0000', '0.0000', '2222', '54321', 'aaaaaa', '2019-09-25 18:04:10', '4', '1', '50.0000', '2019-08-24 21:15:12', '2019-08-25 18:04:10', '0');
INSERT INTO `bidrequest` VALUES ('9', '1', '0', '1', '3000.0000', '8.0000', '3', '0', '60.0000', '0.0000', 'qrqerwerrr', 'rqrqrqwrqwer', 'gsgsdfgfg', '2019-11-26 09:34:54', '4', '3', '50.0000', '2019-08-26 09:31:53', '2019-08-26 09:34:54', '1');
INSERT INTO `bidrequest` VALUES ('10', '1', '0', '1', '666.0000', '8.0000', '1', '0', '4.4400', '0.0000', '666', '6666', '666', '2019-09-27 09:27:20', '4', '1', '50.0000', '2019-08-27 09:23:09', '2019-08-27 09:27:20', '1');
INSERT INTO `bidrequest` VALUES ('11', '0', '0', '1', '800.0000', '10.0000', '1', '0', '6.6667', '0.0000', '我很帅', '对', 'gf', '2019-10-04 10:51:19', '4', '1', '100.0000', '2019-08-30 19:30:41', '2019-09-04 10:51:19', '0');
INSERT INTO `bidrequest` VALUES ('12', '0', '0', '1', '1000.0000', '10.0000', '1', '0', '8.3333', '0.0000', '瓦胡同', '嗯', null, '2019-10-04 10:53:38', '4', '1', '100.0000', '2019-08-30 20:00:03', '2019-09-04 10:53:38', '0');
INSERT INTO `bidrequest` VALUES ('13', '0', '0', '1', '800.0000', '10.0000', '1', '0', '20.0001', '0.0000', 'hhhh', 'dsagfdgf', 'gh', '2019-09-14 11:05:44', '7', '10', '60.0000', '2019-09-02 00:20:49', '2019-09-04 11:05:44', '0');
INSERT INTO `bidrequest` VALUES ('14', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', 'hgh', '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:55:14', '2019-09-04 11:06:04', '0');
INSERT INTO `bidrequest` VALUES ('15', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', 'jh', '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:06:55', '0');
INSERT INTO `bidrequest` VALUES ('16', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', 'hj', '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:10:37', '0');
INSERT INTO `bidrequest` VALUES ('17', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', '5', '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:15:25', '0');
INSERT INTO `bidrequest` VALUES ('18', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:17:55', '0');
INSERT INTO `bidrequest` VALUES ('19', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:24:49', '0');
INSERT INTO `bidrequest` VALUES ('20', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:27:32', '0');
INSERT INTO `bidrequest` VALUES ('21', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:29:32', '0');
INSERT INTO `bidrequest` VALUES ('22', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 11:31:02', '0');
INSERT INTO `bidrequest` VALUES ('23', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', '555', '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:31:45', '0');
INSERT INTO `bidrequest` VALUES ('24', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:43:32', '0');
INSERT INTO `bidrequest` VALUES ('25', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:44:48', '0');
INSERT INTO `bidrequest` VALUES ('26', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:49:44', '0');
INSERT INTO `bidrequest` VALUES ('27', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:52:12', '0');
INSERT INTO `bidrequest` VALUES ('28', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 13:00:40', '0');
INSERT INTO `bidrequest` VALUES ('29', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 13:03:49', '0');
INSERT INTO `bidrequest` VALUES ('30', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 12:47:08', '0');
INSERT INTO `bidrequest` VALUES ('31', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-09 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-04 13:05:08', '0');
INSERT INTO `bidrequest` VALUES ('32', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-10 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-05 08:53:03', '0');
INSERT INTO `bidrequest` VALUES ('33', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-10 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-05 08:55:45', '0');
INSERT INTO `bidrequest` VALUES ('34', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, '2019-09-10 11:06:04', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-05 08:59:53', '0');
INSERT INTO `bidrequest` VALUES ('35', '0', '0', '1', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', 'hhh', '2019-09-11 16:46:53', '4', '5', '60.0000', '2019-09-04 10:57:40', '2019-09-06 16:46:53', '1');
INSERT INTO `bidrequest` VALUES ('36', '0', '0', '0', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, null, '4', '5', '60.0000', '2019-09-04 10:57:40', null, '1');
INSERT INTO `bidrequest` VALUES ('37', '0', '0', '0', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, null, '4', '5', '60.0000', '2019-09-04 10:57:40', null, '1');
INSERT INTO `bidrequest` VALUES ('38', '0', '0', '0', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, null, '4', '5', '60.0000', '2019-09-04 10:57:40', null, '1');
INSERT INTO `bidrequest` VALUES ('39', '0', '0', '0', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, null, '4', '5', '60.0000', '2019-09-04 10:57:40', null, '1');
INSERT INTO `bidrequest` VALUES ('40', '0', '0', '0', '600.0000', '20.0000', '1', '0', '10.0000', '0.0000', 'hjg', 'gtfh', null, null, '4', '5', '60.0000', '2019-09-04 10:57:40', null, '1');
INSERT INTO `bidrequest` VALUES ('41', '0', '0', '1', '1000.0000', '10.0000', '1', '0', '8.3333', '0.0000', '哈哈', '哈哈', '通过', '2019-10-06 14:20:04', '4', '1', '1000.0000', '2019-09-06 14:16:42', '2019-09-06 14:20:04', '0');

-- ----------------------------
-- Table structure for bidrequestaudithistory
-- ----------------------------
DROP TABLE IF EXISTS `bidrequestaudithistory`;
CREATE TABLE `bidrequestaudithistory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `applyTime` datetime NOT NULL,
  `auditor_id` bigint(20) DEFAULT NULL,
  `applier_id` bigint(20) NOT NULL,
  `bidRequestId` bigint(20) NOT NULL,
  `auditType` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bidrequestaudithistory
-- ----------------------------
INSERT INTO `bidrequestaudithistory` VALUES ('1', '2', '1111', '2019-12-17 15:47:52', '2019-12-17 14:52:46', '5', '4', '1', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('2', '1', '2222', '2019-12-17 15:49:39', '2019-12-17 15:49:24', '5', '4', '2', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('3', '1', '3333', '2019-12-24 10:03:31', '2019-12-17 15:49:24', '5', '4', '2', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('4', '1', '4444', '2019-12-24 10:06:18', '2019-12-17 15:49:24', '5', '4', '2', '1');
INSERT INTO `bidrequestaudithistory` VALUES ('5', '1', '5555', '2019-12-24 15:59:07', '2019-12-17 15:49:24', '5', '4', '2', '2');
INSERT INTO `bidrequestaudithistory` VALUES ('6', '1', 'aaaaaa', '2019-08-25 18:04:10', '2019-08-24 21:15:12', '5', '4', '8', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('7', '1', 'gsgsdfgfg', '2019-08-26 09:34:54', '2019-08-26 09:31:53', '5', '4', '9', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('8', '1', '666', '2019-08-27 09:27:20', '2019-08-27 09:23:09', '5', '4', '10', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('9', '2', '12', '2019-09-04 10:43:31', '2019-08-24 21:12:23', '6', '4', '7', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('10', '1', 'gf', '2019-09-04 10:51:19', '2019-08-30 19:30:41', '6', '4', '11', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('11', '1', '', '2019-09-04 10:53:38', '2019-08-30 20:00:03', '6', '4', '12', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('12', '1', 'gh', '2019-09-04 11:05:44', '2019-09-02 00:20:49', '6', '7', '13', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('13', '1', 'hgh', '2019-09-04 11:06:04', '2019-09-04 10:55:14', '6', '4', '14', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('14', '1', 'jh', '2019-09-04 11:06:55', '2019-09-04 10:57:40', '6', '4', '15', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('15', '1', 'hj', '2019-09-04 11:10:37', '2019-09-04 10:57:40', '6', '4', '16', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('16', '1', '5', '2019-09-04 11:15:25', '2019-09-04 10:57:40', '6', '4', '17', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('17', '1', '', '2019-09-04 11:17:55', '2019-09-04 10:57:40', '6', '4', '18', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('18', '1', '', '2019-09-04 11:24:49', '2019-09-04 10:57:40', '6', '4', '19', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('19', '1', '', '2019-09-04 11:26:42', '2019-09-04 10:57:40', '6', '4', '20', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('20', '1', '', '2019-09-04 11:27:32', '2019-09-04 10:57:40', '6', '4', '20', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('21', '1', '', '2019-09-04 11:29:32', '2019-09-04 10:57:40', '6', '4', '21', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('22', '1', '', '2019-09-04 11:31:02', '2019-09-04 10:57:40', '6', '4', '22', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('23', '1', '555', '2019-09-04 12:31:45', '2019-09-04 10:57:40', '6', '4', '23', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('24', '1', '', '2019-09-04 12:43:32', '2019-09-04 10:57:40', '6', '4', '24', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('25', '1', '', '2019-09-04 12:44:48', '2019-09-04 10:57:40', '6', '4', '25', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('26', '1', '', '2019-09-04 12:47:08', '2019-09-04 10:57:40', '6', '4', '30', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('27', '1', '', '2019-09-04 12:49:44', '2019-09-04 10:57:40', '6', '4', '26', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('28', '1', '', '2019-09-04 12:52:12', '2019-09-04 10:57:40', '6', '4', '27', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('29', '1', '', '2019-09-04 13:00:40', '2019-09-04 10:57:40', '6', '4', '28', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('30', '1', '', '2019-09-04 13:03:49', '2019-09-04 10:57:40', '6', '4', '29', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('31', '1', '', '2019-09-04 13:05:08', '2019-09-04 10:57:40', '6', '4', '31', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('32', '1', '', '2019-09-05 08:53:03', '2019-09-04 10:57:40', '6', '4', '32', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('33', '1', '', '2019-09-05 08:55:45', '2019-09-04 10:57:40', '6', '4', '33', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('34', '1', '', '2019-09-05 08:59:53', '2019-09-04 10:57:40', '6', '4', '34', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('35', '1', '通过', '2019-09-06 14:20:04', '2019-09-06 14:16:42', '6', '4', '41', '0');
INSERT INTO `bidrequestaudithistory` VALUES ('36', '1', 'hhh', '2019-09-06 16:46:53', '2019-09-04 10:57:40', '6', '4', '35', '0');

-- ----------------------------
-- Table structure for iplog
-- ----------------------------
DROP TABLE IF EXISTS `iplog`;
CREATE TABLE `iplog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `loginInfoId` bigint(20) DEFAULT NULL,
  `userType` tinyint(4) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iplog
-- ----------------------------
INSERT INTO `iplog` VALUES ('154', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 09:09:09');
INSERT INTO `iplog` VALUES ('155', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 09:09:16');
INSERT INTO `iplog` VALUES ('156', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 09:09:24');
INSERT INTO `iplog` VALUES ('157', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2019-08-05 09:11:18');
INSERT INTO `iplog` VALUES ('158', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 09:12:29');
INSERT INTO `iplog` VALUES ('159', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2019-08-05 09:12:37');
INSERT INTO `iplog` VALUES ('160', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 09:18:38');
INSERT INTO `iplog` VALUES ('161', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2019-08-05 09:18:46');
INSERT INTO `iplog` VALUES ('162', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 09:23:14');
INSERT INTO `iplog` VALUES ('163', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 09:24:49');
INSERT INTO `iplog` VALUES ('164', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 09:26:16');
INSERT INTO `iplog` VALUES ('165', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 09:29:19');
INSERT INTO `iplog` VALUES ('166', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-05 09:29:32');
INSERT INTO `iplog` VALUES ('167', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-05 09:29:41');
INSERT INTO `iplog` VALUES ('168', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-05 09:29:45');
INSERT INTO `iplog` VALUES ('169', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 09:29:53');
INSERT INTO `iplog` VALUES ('170', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-05 11:32:15');
INSERT INTO `iplog` VALUES ('171', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2019-08-05 11:32:20');
INSERT INTO `iplog` VALUES ('172', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-05 11:37:53');
INSERT INTO `iplog` VALUES ('173', '0:0:0:0:0:0:0:1', '0', 'admin', null, '0', '2019-08-06 08:57:15');
INSERT INTO `iplog` VALUES ('174', '0:0:0:0:0:0:0:1', '1', 'admin', null, '0', '2019-08-06 08:57:20');
INSERT INTO `iplog` VALUES ('175', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:23:44');
INSERT INTO `iplog` VALUES ('176', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:25:49');
INSERT INTO `iplog` VALUES ('177', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:28:12');
INSERT INTO `iplog` VALUES ('178', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:30:27');
INSERT INTO `iplog` VALUES ('179', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:35:51');
INSERT INTO `iplog` VALUES ('180', '0:0:0:0:0:0:0:1', '1', 'novo9', '43', '1', '2019-08-09 11:40:15');
INSERT INTO `iplog` VALUES ('181', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 11:45:57');
INSERT INTO `iplog` VALUES ('182', '0:0:0:0:0:0:0:1', '0', 'novo9', null, '1', '2019-08-09 11:46:22');
INSERT INTO `iplog` VALUES ('183', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 15:10:06');
INSERT INTO `iplog` VALUES ('184', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 15:44:38');
INSERT INTO `iplog` VALUES ('185', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 16:13:29');
INSERT INTO `iplog` VALUES ('186', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 16:32:38');
INSERT INTO `iplog` VALUES ('187', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-09 16:47:01');
INSERT INTO `iplog` VALUES ('188', '127.0.0.1', '0', 'novo9', null, '1', '2019-08-09 16:52:31');
INSERT INTO `iplog` VALUES ('189', '127.0.0.1', '1', 'novo9', null, '1', '2019-08-09 16:52:36');
INSERT INTO `iplog` VALUES ('190', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-10 11:01:48');
INSERT INTO `iplog` VALUES ('191', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-10 11:10:45');
INSERT INTO `iplog` VALUES ('192', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-10 11:58:04');
INSERT INTO `iplog` VALUES ('193', '0:0:0:0:0:0:0:1', '1', 'novo9', null, '1', '2019-08-10 12:02:06');
INSERT INTO `iplog` VALUES ('194', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-10 18:42:11');
INSERT INTO `iplog` VALUES ('195', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-10 18:42:16');
INSERT INTO `iplog` VALUES ('196', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-10 18:49:40');
INSERT INTO `iplog` VALUES ('197', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-10 18:50:11');
INSERT INTO `iplog` VALUES ('198', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 18:50:58');
INSERT INTO `iplog` VALUES ('199', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 21:21:59');
INSERT INTO `iplog` VALUES ('200', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 21:22:02');
INSERT INTO `iplog` VALUES ('201', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 21:38:43');
INSERT INTO `iplog` VALUES ('202', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 21:42:18');
INSERT INTO `iplog` VALUES ('203', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 21:50:12');
INSERT INTO `iplog` VALUES ('204', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 22:13:16');
INSERT INTO `iplog` VALUES ('205', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 22:20:41');
INSERT INTO `iplog` VALUES ('206', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:12:12');
INSERT INTO `iplog` VALUES ('207', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:17:53');
INSERT INTO `iplog` VALUES ('208', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:24:18');
INSERT INTO `iplog` VALUES ('209', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:28:43');
INSERT INTO `iplog` VALUES ('210', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:32:57');
INSERT INTO `iplog` VALUES ('211', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:37:02');
INSERT INTO `iplog` VALUES ('212', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:40:17');
INSERT INTO `iplog` VALUES ('213', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:48:17');
INSERT INTO `iplog` VALUES ('214', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:50:30');
INSERT INTO `iplog` VALUES ('215', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-10 23:52:48');
INSERT INTO `iplog` VALUES ('216', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:03:22');
INSERT INTO `iplog` VALUES ('217', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:10:44');
INSERT INTO `iplog` VALUES ('218', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:32:46');
INSERT INTO `iplog` VALUES ('219', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:38:31');
INSERT INTO `iplog` VALUES ('220', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:39:26');
INSERT INTO `iplog` VALUES ('221', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:43:02');
INSERT INTO `iplog` VALUES ('222', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:45:46');
INSERT INTO `iplog` VALUES ('223', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 00:48:34');
INSERT INTO `iplog` VALUES ('224', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-11 17:50:59');
INSERT INTO `iplog` VALUES ('225', '0:0:0:0:0:0:0:1', '0', 'novo10', null, '1', '2019-08-11 18:53:09');
INSERT INTO `iplog` VALUES ('226', '0:0:0:0:0:0:0:1', '0', 'novo10', null, '1', '2019-08-11 18:53:46');
INSERT INTO `iplog` VALUES ('227', '0:0:0:0:0:0:0:1', '1', 'novo10', null, '1', '2019-08-11 18:55:19');
INSERT INTO `iplog` VALUES ('228', '0:0:0:0:0:0:0:1', '1', 'novo10', null, '1', '2019-08-11 18:55:57');
INSERT INTO `iplog` VALUES ('229', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-11 20:07:38');
INSERT INTO `iplog` VALUES ('230', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-11 20:17:42');
INSERT INTO `iplog` VALUES ('231', '0:0:0:0:0:0:0:1', '1', 'novo10', null, '1', '2019-08-11 20:40:10');
INSERT INTO `iplog` VALUES ('232', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-11 20:48:46');
INSERT INTO `iplog` VALUES ('233', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-12 08:44:24');
INSERT INTO `iplog` VALUES ('234', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-12 10:51:52');
INSERT INTO `iplog` VALUES ('235', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-12 11:12:23');
INSERT INTO `iplog` VALUES ('236', '0:0:0:0:0:0:0:1', '1', 'novo', null, null, '2019-08-12 13:17:54');
INSERT INTO `iplog` VALUES ('237', '0:0:0:0:0:0:0:1', '0', 'novo10', null, null, '2019-08-12 13:28:30');
INSERT INTO `iplog` VALUES ('238', '0:0:0:0:0:0:0:1', '1', 'novo9', null, null, '2019-08-12 13:28:39');
INSERT INTO `iplog` VALUES ('239', '0:0:0:0:0:0:0:1', '1', 'novo9', null, null, '2019-08-12 13:33:48');
INSERT INTO `iplog` VALUES ('240', '0:0:0:0:0:0:0:1', '1', 'novo9', null, null, '2019-08-12 13:38:44');
INSERT INTO `iplog` VALUES ('241', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-12 13:41:35');
INSERT INTO `iplog` VALUES ('242', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-12 19:05:46');
INSERT INTO `iplog` VALUES ('243', '0:0:0:0:0:0:0:1', '1', 'novo9', null, null, '2019-08-12 21:51:17');
INSERT INTO `iplog` VALUES ('244', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-12 21:52:05');
INSERT INTO `iplog` VALUES ('245', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-12 22:26:51');
INSERT INTO `iplog` VALUES ('246', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:00:08');
INSERT INTO `iplog` VALUES ('247', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:01:04');
INSERT INTO `iplog` VALUES ('248', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:41:50');
INSERT INTO `iplog` VALUES ('249', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:46:34');
INSERT INTO `iplog` VALUES ('250', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:47:25');
INSERT INTO `iplog` VALUES ('251', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:53:46');
INSERT INTO `iplog` VALUES ('252', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 18:55:57');
INSERT INTO `iplog` VALUES ('253', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:28:18');
INSERT INTO `iplog` VALUES ('254', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:30:24');
INSERT INTO `iplog` VALUES ('255', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:31:38');
INSERT INTO `iplog` VALUES ('256', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:32:21');
INSERT INTO `iplog` VALUES ('257', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:34:28');
INSERT INTO `iplog` VALUES ('258', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:35:31');
INSERT INTO `iplog` VALUES ('259', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-13 19:36:27');
INSERT INTO `iplog` VALUES ('260', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-14 23:05:32');
INSERT INTO `iplog` VALUES ('261', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-14 23:14:01');
INSERT INTO `iplog` VALUES ('262', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-14 23:14:56');
INSERT INTO `iplog` VALUES ('263', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 20:29:57');
INSERT INTO `iplog` VALUES ('264', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 20:40:21');
INSERT INTO `iplog` VALUES ('265', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 20:41:54');
INSERT INTO `iplog` VALUES ('266', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 20:48:30');
INSERT INTO `iplog` VALUES ('267', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 20:53:57');
INSERT INTO `iplog` VALUES ('268', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 21:04:03');
INSERT INTO `iplog` VALUES ('269', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 21:15:30');
INSERT INTO `iplog` VALUES ('270', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-15 21:26:38');
INSERT INTO `iplog` VALUES ('271', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 15:24:41');
INSERT INTO `iplog` VALUES ('272', '127.0.0.1', '1', 'stef', null, null, '2019-08-18 15:25:31');
INSERT INTO `iplog` VALUES ('273', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 16:17:29');
INSERT INTO `iplog` VALUES ('274', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:22:43');
INSERT INTO `iplog` VALUES ('275', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 16:26:35');
INSERT INTO `iplog` VALUES ('276', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-18 16:26:40');
INSERT INTO `iplog` VALUES ('277', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:27:37');
INSERT INTO `iplog` VALUES ('278', '0:0:0:0:0:0:0:1', '0', null, null, null, '2019-08-18 16:28:26');
INSERT INTO `iplog` VALUES ('279', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:33:02');
INSERT INTO `iplog` VALUES ('280', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 16:33:05');
INSERT INTO `iplog` VALUES ('281', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:33:15');
INSERT INTO `iplog` VALUES ('282', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:33:18');
INSERT INTO `iplog` VALUES ('283', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 16:34:50');
INSERT INTO `iplog` VALUES ('284', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-18 16:34:57');
INSERT INTO `iplog` VALUES ('285', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-18 16:38:29');
INSERT INTO `iplog` VALUES ('286', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 16:38:33');
INSERT INTO `iplog` VALUES ('287', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:39:35');
INSERT INTO `iplog` VALUES ('288', '0:0:0:0:0:0:0:1', '0', null, null, null, '2019-08-18 16:40:24');
INSERT INTO `iplog` VALUES ('289', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:43:17');
INSERT INTO `iplog` VALUES ('290', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:50:02');
INSERT INTO `iplog` VALUES ('291', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 16:50:11');
INSERT INTO `iplog` VALUES ('292', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 16:53:45');
INSERT INTO `iplog` VALUES ('293', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 16:53:50');
INSERT INTO `iplog` VALUES ('294', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 17:55:53');
INSERT INTO `iplog` VALUES ('295', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 17:55:57');
INSERT INTO `iplog` VALUES ('296', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 17:57:53');
INSERT INTO `iplog` VALUES ('297', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 18:03:05');
INSERT INTO `iplog` VALUES ('298', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-18 18:04:16');
INSERT INTO `iplog` VALUES ('299', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-18 21:08:01');
INSERT INTO `iplog` VALUES ('300', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-18 21:08:05');
INSERT INTO `iplog` VALUES ('301', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 12:30:02');
INSERT INTO `iplog` VALUES ('302', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 21:59:26');
INSERT INTO `iplog` VALUES ('303', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:00:19');
INSERT INTO `iplog` VALUES ('304', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:03:32');
INSERT INTO `iplog` VALUES ('305', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:06:03');
INSERT INTO `iplog` VALUES ('306', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:08:45');
INSERT INTO `iplog` VALUES ('307', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:10:20');
INSERT INTO `iplog` VALUES ('308', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:18:40');
INSERT INTO `iplog` VALUES ('309', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:50:34');
INSERT INTO `iplog` VALUES ('310', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:51:04');
INSERT INTO `iplog` VALUES ('311', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 22:54:38');
INSERT INTO `iplog` VALUES ('312', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:10:38');
INSERT INTO `iplog` VALUES ('313', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:15:41');
INSERT INTO `iplog` VALUES ('314', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:16:51');
INSERT INTO `iplog` VALUES ('315', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:18:44');
INSERT INTO `iplog` VALUES ('316', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:18:50');
INSERT INTO `iplog` VALUES ('317', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:18:57');
INSERT INTO `iplog` VALUES ('318', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:19:08');
INSERT INTO `iplog` VALUES ('319', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:19:37');
INSERT INTO `iplog` VALUES ('320', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-19 23:19:47');
INSERT INTO `iplog` VALUES ('321', '0:0:0:0:0:0:0:1', '1', 'novo', null, null, '2019-08-19 23:19:58');
INSERT INTO `iplog` VALUES ('322', '0:0:0:0:0:0:0:1', '1', 'novo', null, null, '2019-08-19 23:21:42');
INSERT INTO `iplog` VALUES ('323', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:22:27');
INSERT INTO `iplog` VALUES ('324', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:24:23');
INSERT INTO `iplog` VALUES ('325', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-19 23:28:46');
INSERT INTO `iplog` VALUES ('326', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 10:30:20');
INSERT INTO `iplog` VALUES ('327', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 10:34:00');
INSERT INTO `iplog` VALUES ('328', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 10:36:19');
INSERT INTO `iplog` VALUES ('329', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 10:37:37');
INSERT INTO `iplog` VALUES ('330', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:17:01');
INSERT INTO `iplog` VALUES ('331', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:29:56');
INSERT INTO `iplog` VALUES ('332', '0:0:0:0:0:0:0:1', '0', 'novo2', null, null, '2019-08-20 14:30:34');
INSERT INTO `iplog` VALUES ('333', '0:0:0:0:0:0:0:1', '1', 'novo2', null, null, '2019-08-20 14:31:12');
INSERT INTO `iplog` VALUES ('334', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:31:51');
INSERT INTO `iplog` VALUES ('335', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:34:41');
INSERT INTO `iplog` VALUES ('336', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:35:27');
INSERT INTO `iplog` VALUES ('337', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:47:27');
INSERT INTO `iplog` VALUES ('338', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 14:48:34');
INSERT INTO `iplog` VALUES ('339', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 23:11:06');
INSERT INTO `iplog` VALUES ('340', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 23:12:45');
INSERT INTO `iplog` VALUES ('341', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-20 23:13:28');
INSERT INTO `iplog` VALUES ('342', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 16:04:23');
INSERT INTO `iplog` VALUES ('343', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 16:34:52');
INSERT INTO `iplog` VALUES ('344', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 16:39:32');
INSERT INTO `iplog` VALUES ('345', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 19:57:22');
INSERT INTO `iplog` VALUES ('346', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 21:43:25');
INSERT INTO `iplog` VALUES ('347', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-21 21:58:18');
INSERT INTO `iplog` VALUES ('348', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 10:58:12');
INSERT INTO `iplog` VALUES ('349', '0:0:0:0:0:0:0:1', '0', 'stef', null, null, '2019-08-22 15:35:13');
INSERT INTO `iplog` VALUES ('350', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-22 15:35:50');
INSERT INTO `iplog` VALUES ('351', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-22 15:35:54');
INSERT INTO `iplog` VALUES ('352', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-22 16:53:21');
INSERT INTO `iplog` VALUES ('353', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-22 16:55:36');
INSERT INTO `iplog` VALUES ('354', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-22 17:02:24');
INSERT INTO `iplog` VALUES ('355', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 20:29:17');
INSERT INTO `iplog` VALUES ('356', '0:0:0:0:0:0:0:1', '0', 'bill', null, null, '2019-08-22 21:19:14');
INSERT INTO `iplog` VALUES ('357', '0:0:0:0:0:0:0:1', '0', 'bill', null, null, '2019-08-22 21:19:25');
INSERT INTO `iplog` VALUES ('358', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:19:32');
INSERT INTO `iplog` VALUES ('359', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:39:13');
INSERT INTO `iplog` VALUES ('360', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:40:46');
INSERT INTO `iplog` VALUES ('361', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:41:28');
INSERT INTO `iplog` VALUES ('362', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:47:23');
INSERT INTO `iplog` VALUES ('363', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 21:55:34');
INSERT INTO `iplog` VALUES ('364', '0:0:0:0:0:0:0:1', '0', 'bill', null, null, '2019-08-22 22:01:14');
INSERT INTO `iplog` VALUES ('365', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 22:01:18');
INSERT INTO `iplog` VALUES ('366', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 22:02:49');
INSERT INTO `iplog` VALUES ('367', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 22:09:24');
INSERT INTO `iplog` VALUES ('368', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 22:44:07');
INSERT INTO `iplog` VALUES ('369', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-22 22:45:24');
INSERT INTO `iplog` VALUES ('370', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-23 09:05:43');
INSERT INTO `iplog` VALUES ('371', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-23 09:05:49');
INSERT INTO `iplog` VALUES ('372', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-23 09:19:17');
INSERT INTO `iplog` VALUES ('373', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-23 09:19:22');
INSERT INTO `iplog` VALUES ('374', '0:0:0:0:0:0:0:1', '1', 'stef', null, null, '2019-08-23 09:20:53');
INSERT INTO `iplog` VALUES ('375', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-23 09:29:11');
INSERT INTO `iplog` VALUES ('376', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-23 14:20:07');
INSERT INTO `iplog` VALUES ('377', '0:0:0:0:0:0:0:1', '0', 'admin', null, null, '2019-08-23 14:20:37');
INSERT INTO `iplog` VALUES ('378', '0:0:0:0:0:0:0:1', '1', 'admin', null, null, '2019-08-23 14:20:43');
INSERT INTO `iplog` VALUES ('379', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 13:24:40');
INSERT INTO `iplog` VALUES ('380', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 14:27:56');
INSERT INTO `iplog` VALUES ('381', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 16:40:06');
INSERT INTO `iplog` VALUES ('382', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 16:42:21');
INSERT INTO `iplog` VALUES ('383', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 18:47:27');
INSERT INTO `iplog` VALUES ('384', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-24 21:44:01');
INSERT INTO `iplog` VALUES ('385', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 00:44:43');
INSERT INTO `iplog` VALUES ('386', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 01:43:56');
INSERT INTO `iplog` VALUES ('387', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 11:28:06');
INSERT INTO `iplog` VALUES ('388', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 15:53:05');
INSERT INTO `iplog` VALUES ('389', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 17:19:39');
INSERT INTO `iplog` VALUES ('390', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 17:43:36');
INSERT INTO `iplog` VALUES ('391', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 17:45:25');
INSERT INTO `iplog` VALUES ('392', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 17:50:39');
INSERT INTO `iplog` VALUES ('393', '0:0:0:0:0:0:0:1', '1', 'admin', null, '1', '2019-08-25 18:22:10');
INSERT INTO `iplog` VALUES ('394', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-25 20:28:39');
INSERT INTO `iplog` VALUES ('395', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-26 08:56:20');
INSERT INTO `iplog` VALUES ('396', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-26 16:44:01');
INSERT INTO `iplog` VALUES ('397', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 08:54:06');
INSERT INTO `iplog` VALUES ('398', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 08:54:13');
INSERT INTO `iplog` VALUES ('399', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 14:55:12');
INSERT INTO `iplog` VALUES ('400', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 14:55:16');
INSERT INTO `iplog` VALUES ('401', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 15:17:42');
INSERT INTO `iplog` VALUES ('402', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 15:42:38');
INSERT INTO `iplog` VALUES ('403', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-08-27 15:42:53');
INSERT INTO `iplog` VALUES ('404', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 15:43:18');
INSERT INTO `iplog` VALUES ('405', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:05:45');
INSERT INTO `iplog` VALUES ('406', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:15:40');
INSERT INTO `iplog` VALUES ('407', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:26:45');
INSERT INTO `iplog` VALUES ('408', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:31:13');
INSERT INTO `iplog` VALUES ('409', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:35:02');
INSERT INTO `iplog` VALUES ('410', '0:0:0:0:0:0:0:1', '0', 'stef', null, '1', '2019-08-27 19:45:44');
INSERT INTO `iplog` VALUES ('411', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:46:02');
INSERT INTO `iplog` VALUES ('412', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:49:05');
INSERT INTO `iplog` VALUES ('413', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 19:51:30');
INSERT INTO `iplog` VALUES ('414', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:02:59');
INSERT INTO `iplog` VALUES ('415', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:09:53');
INSERT INTO `iplog` VALUES ('416', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:24:14');
INSERT INTO `iplog` VALUES ('417', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:31:12');
INSERT INTO `iplog` VALUES ('418', '0:0:0:0:0:0:0:1', '1', 'stea', null, '1', '2019-08-27 20:39:25');
INSERT INTO `iplog` VALUES ('419', '0:0:0:0:0:0:0:1', '1', 'stea', null, '1', '2019-08-27 20:43:18');
INSERT INTO `iplog` VALUES ('420', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:51:24');
INSERT INTO `iplog` VALUES ('421', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:51:43');
INSERT INTO `iplog` VALUES ('422', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 20:54:33');
INSERT INTO `iplog` VALUES ('423', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 21:00:03');
INSERT INTO `iplog` VALUES ('424', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 21:02:25');
INSERT INTO `iplog` VALUES ('425', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-27 21:06:15');
INSERT INTO `iplog` VALUES ('426', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 08:52:14');
INSERT INTO `iplog` VALUES ('427', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 09:23:32');
INSERT INTO `iplog` VALUES ('428', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:03:01');
INSERT INTO `iplog` VALUES ('429', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:24:23');
INSERT INTO `iplog` VALUES ('430', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:24:32');
INSERT INTO `iplog` VALUES ('431', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:28:10');
INSERT INTO `iplog` VALUES ('432', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:30:32');
INSERT INTO `iplog` VALUES ('433', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:31:37');
INSERT INTO `iplog` VALUES ('434', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 10:35:07');
INSERT INTO `iplog` VALUES ('435', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-28 15:40:37');
INSERT INTO `iplog` VALUES ('436', '0:0:0:0:0:0:0:1', '1', 'stea', null, '1', '2019-08-28 15:43:23');
INSERT INTO `iplog` VALUES ('437', '0:0:0:0:0:0:0:1', '1', 'stea', null, '1', '2019-08-28 16:18:04');
INSERT INTO `iplog` VALUES ('438', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-29 10:10:05');
INSERT INTO `iplog` VALUES ('439', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-29 10:18:56');
INSERT INTO `iplog` VALUES ('440', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-29 19:27:38');
INSERT INTO `iplog` VALUES ('441', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-29 20:59:48');
INSERT INTO `iplog` VALUES ('442', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 08:39:38');
INSERT INTO `iplog` VALUES ('443', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 10:42:24');
INSERT INTO `iplog` VALUES ('444', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 13:40:38');
INSERT INTO `iplog` VALUES ('445', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 18:21:42');
INSERT INTO `iplog` VALUES ('446', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 19:24:19');
INSERT INTO `iplog` VALUES ('447', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 19:33:05');
INSERT INTO `iplog` VALUES ('448', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 19:42:50');
INSERT INTO `iplog` VALUES ('449', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 19:51:23');
INSERT INTO `iplog` VALUES ('450', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-30 19:57:26');
INSERT INTO `iplog` VALUES ('451', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-08-31 09:32:44');
INSERT INTO `iplog` VALUES ('452', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-09-01 14:08:57');
INSERT INTO `iplog` VALUES ('453', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-01 20:14:50');
INSERT INTO `iplog` VALUES ('454', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-01 21:46:31');
INSERT INTO `iplog` VALUES ('455', '0:0:0:0:0:0:0:1', '0', 'daiqun1', null, '1', '2019-09-01 21:51:15');
INSERT INTO `iplog` VALUES ('456', '0:0:0:0:0:0:0:1', '1', 'daiqun2', null, '1', '2019-09-01 22:02:05');
INSERT INTO `iplog` VALUES ('457', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-01 22:03:59');
INSERT INTO `iplog` VALUES ('458', '0:0:0:0:0:0:0:1', '1', 'daiqun2', null, '1', '2019-09-01 22:52:50');
INSERT INTO `iplog` VALUES ('459', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-01 22:53:52');
INSERT INTO `iplog` VALUES ('460', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-01 22:55:02');
INSERT INTO `iplog` VALUES ('461', '0:0:0:0:0:0:0:1', '1', 'daiqun2', null, '1', '2019-09-02 00:13:31');
INSERT INTO `iplog` VALUES ('462', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-02 00:14:23');
INSERT INTO `iplog` VALUES ('463', '0:0:0:0:0:0:0:1', '1', 'stea', null, '1', '2019-09-02 00:17:50');
INSERT INTO `iplog` VALUES ('464', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-09-02 00:30:30');
INSERT INTO `iplog` VALUES ('465', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-02 21:58:33');
INSERT INTO `iplog` VALUES ('466', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-02 22:00:28');
INSERT INTO `iplog` VALUES ('467', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-03 10:17:57');
INSERT INTO `iplog` VALUES ('468', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-03 14:45:51');
INSERT INTO `iplog` VALUES ('469', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-09-04 10:21:02');
INSERT INTO `iplog` VALUES ('470', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-04 10:54:34');
INSERT INTO `iplog` VALUES ('471', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-04 14:39:19');
INSERT INTO `iplog` VALUES ('472', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-04 14:53:57');
INSERT INTO `iplog` VALUES ('473', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-04 15:14:32');
INSERT INTO `iplog` VALUES ('474', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-05 11:37:07');
INSERT INTO `iplog` VALUES ('475', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-05 12:33:34');
INSERT INTO `iplog` VALUES ('476', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-05 13:29:16');
INSERT INTO `iplog` VALUES ('477', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-05 16:08:16');
INSERT INTO `iplog` VALUES ('478', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-05 22:57:59');
INSERT INTO `iplog` VALUES ('479', '0:0:0:0:0:0:0:1', '0', 'admin', null, '1', '2019-09-06 14:02:28');
INSERT INTO `iplog` VALUES ('480', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 14:02:42');
INSERT INTO `iplog` VALUES ('481', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 14:29:43');
INSERT INTO `iplog` VALUES ('482', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 14:41:29');
INSERT INTO `iplog` VALUES ('483', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 14:56:59');
INSERT INTO `iplog` VALUES ('484', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 15:07:23');
INSERT INTO `iplog` VALUES ('485', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 16:12:37');
INSERT INTO `iplog` VALUES ('486', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 16:47:08');
INSERT INTO `iplog` VALUES ('487', '0:0:0:0:0:0:0:1', '1', 'stef', null, '1', '2019-09-06 18:38:55');

-- ----------------------------
-- Table structure for logininfo
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `state` int(4) DEFAULT NULL,
  `usertype` int(4) DEFAULT NULL,
  `admin` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logininfo
-- ----------------------------
INSERT INTO `logininfo` VALUES ('4', 'stef', '1111', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('6', 'admin', '1111', '0', '0', '0');
INSERT INTO `logininfo` VALUES ('7', 'stea', '1111', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('10', 'stee', '1111', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('53', 'novo', '1111', '0', '0', '0');
INSERT INTO `logininfo` VALUES ('73', '1234', '1234', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('75', 'daiqun1', 'daiqun1', '0', '0', '0');
INSERT INTO `logininfo` VALUES ('76', 'daiqun2', 'daiqun2', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('77', 'daiqun3', 'daiqun3', '0', '0', '0');
INSERT INTO `logininfo` VALUES ('78', 'daiqun4', 'daiqun4', '0', '1', '0');
INSERT INTO `logininfo` VALUES ('79', 'daiqun5', 'daiqun5', '0', '1', '0');

-- ----------------------------
-- Table structure for mailverify
-- ----------------------------
DROP TABLE IF EXISTS `mailverify`;
CREATE TABLE `mailverify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logininfo_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sendTime` datetime NOT NULL,
  `uuid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mailverify
-- ----------------------------
INSERT INTO `mailverify` VALUES ('1', '4', 'stef@xmg.com', '2019-08-20 17:14:06', 'a1392275-a29c-4624-95b0-02233ec30ff9');
INSERT INTO `mailverify` VALUES ('3', '4', '23686028@qq.com', '2019-08-21 21:54:03', '91b4fd7ec57a4b319dc6ee41416c632d');
INSERT INTO `mailverify` VALUES ('4', '4', '23686028@qq.com', '2019-08-21 21:58:56', 'd304829622ce4e97bd7fd29796962aa9');
INSERT INTO `mailverify` VALUES ('5', '4', '23686028@qq.com', '2019-08-26 09:39:07', 'ea4498ea0df34c81bdea4e423188b63e');
INSERT INTO `mailverify` VALUES ('6', '4', '196188926@qq.com', '2019-08-27 20:35:06', '5e93c52469d64a1fb89f103f53f00fff');
INSERT INTO `mailverify` VALUES ('7', '4', '196188926@qq.com', '2019-08-27 20:35:09', '8df98cd3f00c4066bfa1b5f7831fd6d0');
INSERT INTO `mailverify` VALUES ('8', '7', '196188926@qq.com', '2019-08-28 15:44:25', 'a6744f8f4ada49a589eac976dc9c439d');
INSERT INTO `mailverify` VALUES ('9', '7', '196188926@qq.com', '2019-08-28 15:48:54', 'bf7511c4617947cc87f843bda7b90ef2');

-- ----------------------------
-- Table structure for systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionary`;
CREATE TABLE `systemdictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionary
-- ----------------------------
INSERT INTO `systemdictionary` VALUES ('1', 'incomeGrade', '月收入', null);
INSERT INTO `systemdictionary` VALUES ('2', 'educationBackground', '学历', null);
INSERT INTO `systemdictionary` VALUES ('3', 'marriage', '婚姻', null);
INSERT INTO `systemdictionary` VALUES ('4', 'kidCount', '子女', null);
INSERT INTO `systemdictionary` VALUES ('5', 'houseCondition', '住房条件', null);
INSERT INTO `systemdictionary` VALUES ('6', 'userFileType', '风控资料类型', null);

-- ----------------------------
-- Table structure for systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `systemdictionaryitem`;
CREATE TABLE `systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parentId` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `tvalue` varchar(50) DEFAULT NULL,
  `sequence` tinyint(4) NOT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdictionaryitem
-- ----------------------------
INSERT INTO `systemdictionaryitem` VALUES ('1', '1', '3000以下', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('2', '1', '3000~5000', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('3', '2', '大专以下', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('4', '2', '大专', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('5', '3', '已婚', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('6', '3', '未婚', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('7', '4', '有子女', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('8', '4', '无子女', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('9', '5', '有自有房', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('10', '5', '无自有房', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('11', '5', '租房', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('12', '6', '房产证正面', null, '1', null);
INSERT INTO `systemdictionaryitem` VALUES ('13', '6', '房产证反面', null, '2', null);
INSERT INTO `systemdictionaryitem` VALUES ('14', '6', '户口本', null, '3', null);
INSERT INTO `systemdictionaryitem` VALUES ('15', '6', '结婚证', null, '4', null);
INSERT INTO `systemdictionaryitem` VALUES ('16', '6', '银行流水证明', null, '5', null);
INSERT INTO `systemdictionaryitem` VALUES ('17', '6', '学位证', null, '6', null);
INSERT INTO `systemdictionaryitem` VALUES ('18', '6', '毕业证', null, '7', null);
INSERT INTO `systemdictionaryitem` VALUES ('19', '6', '电话记录', null, '7', null);

-- ----------------------------
-- Table structure for temp
-- ----------------------------
DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temp
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('4', '111', '111', '111111');
INSERT INTO `user` VALUES ('6', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('9', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('12', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('15', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('16', '111', '111', '111111');
INSERT INTO `user` VALUES ('18', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('19', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('21', '111', '111', '111111');
INSERT INTO `user` VALUES ('22', '111', '111', '111111');
INSERT INTO `user` VALUES ('23', '111', '111', '111111');
INSERT INTO `user` VALUES ('24', '111', '111', '111111');
INSERT INTO `user` VALUES ('25', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('26', '111', '111', '111111');
INSERT INTO `user` VALUES ('30', '改', '改改改', '改改改改改改');
INSERT INTO `user` VALUES ('31', '111', '111', '111111');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` bigint(20) NOT NULL,
  `version` int(11) NOT NULL,
  `bitState` bigint(20) NOT NULL,
  `realName` varchar(30) DEFAULT NULL,
  `idNumber` varchar(30) DEFAULT NULL,
  `phoneNumber` varchar(30) DEFAULT NULL,
  `incomeGrade_id` bigint(20) DEFAULT NULL,
  `marriage_id` bigint(20) DEFAULT NULL,
  `kidCount_id` bigint(20) DEFAULT NULL,
  `educationBackground_id` bigint(20) DEFAULT NULL,
  `authScore` int(11) DEFAULT NULL,
  `houseCondition_id` bigint(20) DEFAULT NULL,
  `realauthid` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('4', '22', '7', '??', '510108000000000000', '13008159751', '1', '5', '8', '4', '33', '9', '2', '196188926@qq.com');
INSERT INTO `userinfo` VALUES ('6', '0', '4', null, null, '13912345678', '2', '6', '8', '4', '0', '9', null, null);
INSERT INTO `userinfo` VALUES ('7', '4', '39', '哈哈哈', '510108111111111112', '13008159751', '2', '6', '8', '4', '30', '10', '3', '196188926@qq.com');
INSERT INTO `userinfo` VALUES ('10', '0', '4', null, null, '13912345678', '2', '6', '8', '4', '0', '10', null, null);
INSERT INTO `userinfo` VALUES ('53', '0', '4', null, null, '13912345678', '2', '6', '8', '4', null, '10', null, null);
INSERT INTO `userinfo` VALUES ('73', '0', '4', '1234', null, '13912345678', '2', '6', '8', '4', null, '10', null, null);
INSERT INTO `userinfo` VALUES ('75', '0', '0', 'daiqun1', null, null, '0', '0', '0', '0', null, '0', null, null);
INSERT INTO `userinfo` VALUES ('76', '0', '0', 'daiqun2', null, null, '0', '0', '0', '0', null, '0', null, null);
INSERT INTO `userinfo` VALUES ('77', '0', '0', 'daiqun3', null, null, '0', '0', '0', '0', null, '0', null, null);
INSERT INTO `userinfo` VALUES ('78', '0', '0', 'daiqun4', null, null, '0', '0', '0', '0', null, '0', null, null);
INSERT INTO `userinfo` VALUES ('79', '0', '4', 'daiqun5', null, null, '1', '5', '7', '3', null, '9', null, null);
