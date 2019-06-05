/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2019-04-22 16:01:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(32) NOT NULL,
  `typeid` varchar(32) DEFAULT NULL COMMENT '商品种类id（外键）',
  `good_name` varchar(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL COMMENT '图片引用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1', '刺客信条：大革命', '育碧大型.......', '118.00', '2019-04-22 15:06:30', '/upload/timg.jpg');
INSERT INTO `goods` VALUES ('2', '1', '刺客信条2：大革命', '育碧大型.......', '118.00', '2019-04-22 15:06:30', '/upload/timg.jpg');
INSERT INTO `goods` VALUES ('3', '1', '刺客信条2：大革命', '育碧大型.......', '118.00', '2019-04-22 15:06:30', '/upload/timg.jpg');
INSERT INTO `goods` VALUES ('4', '1', '刺客信条3：大革命', '育碧大型.......', '118.00', '2019-04-22 15:06:30', '/upload/timg.jpg');
INSERT INTO `goods` VALUES ('5', '1', '刺客信条3：大革命', '育碧大型.......', '500.00', '2019-04-22 15:06:30', '/upload/timg.jpg');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype` (
  `id` varchar(32) NOT NULL COMMENT '种类id',
  `name` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES ('1', '游戏', '2019-04-22 15:04:53');
INSERT INTO `goodstype` VALUES ('2', '水果', '2019-04-22 15:05:09');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(32) NOT NULL,
  `goods_id` varchar(32) DEFAULT NULL COMMENT '商品id',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `status` int(2) DEFAULT NULL COMMENT '状态',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL COMMENT '用户id',
  `account` varchar(18) DEFAULT NULL COMMENT '帐号',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名称',
  `pwd` varchar(16) DEFAULT NULL COMMENT '密码',
  `sex` int(1) DEFAULT NULL COMMENT '性别',
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `birth` datetime DEFAULT NULL COMMENT '生日',
  `power` int(1) DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '123', '5', '10086', '123', '2019-04-15 09:08:14', '1');
INSERT INTO `user` VALUES ('4', '张三', '张傲2', '123', '1', '10086', '123', '2019-04-15 09:08:16', '2');
INSERT INTO `user` VALUES ('db233c03eff54d76b551f766eb2f8354', 'aa', 'tom', '123', '1', null, '123213', null, null);
