-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(10) NOT NULL COMMENT '用户密码',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '0', null, '2018-04-04 09:46:41');
INSERT INTO `user` VALUES ('2', 'xiaoqing', 'xiaoqing', '0', '2018-07-05 11:00:01', '2018-04-04 02:26:43');
INSERT INTO `user` VALUES ('3', 'kekekeke', '123456', '0', '2019-12-31 10:00:00', '2018-04-11 20:17:01');
INSERT INTO `user` VALUES ('4', 'hdwulin', '123456', '0', '2019-04-01 00:00:00', '2018-04-16 14:19:20');
INSERT INTO `user` VALUES ('5', 'taozongpu', '123456', '0', '2019-04-01 00:00:01', '2018-04-16 14:22:32');
INSERT INTO `user` VALUES ('6', 'huangshanhd', '123456', '0', '2020-02-01 00:00:00', '2018-04-18 22:14:47');
INSERT INTO `user` VALUES ('7', 'yitong', '123456', '0', '2019-01-01 00:00:00', '2018-04-24 15:34:57');
INSERT INTO `user` VALUES ('8', 'zhanglingzhi', '123456', '0', '2018-07-01 00:00:00', '2018-04-27 17:40:33');
INSERT INTO `user` VALUES ('9', 'liubin', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 17:44:53');
INSERT INTO `user` VALUES ('10', 'aishimin', '123456', '0', '2019-04-01 00:00:00', '2018-04-27 17:46:33');
INSERT INTO `user` VALUES ('13', 'zhanglinfei', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 17:49:34');
INSERT INTO `user` VALUES ('14', 'lizhenzhen', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 17:50:20');
INSERT INTO `user` VALUES ('15', 'liangxue', '123456', '0', '2019-04-01 00:00:00', '2018-04-27 17:51:49');
INSERT INTO `user` VALUES ('16', 'baogenyuan', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 17:55:04');
INSERT INTO `user` VALUES ('17', 'wutiantian', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 17:56:29');
INSERT INTO `user` VALUES ('18', 'zhuhoulin', '123456', '0', '2019-04-01 00:00:00', '2018-04-27 17:57:32');
INSERT INTO `user` VALUES ('19', 'zhubin', '123456', '0', '2019-04-01 00:00:00', '2018-04-27 17:58:42');
INSERT INTO `user` VALUES ('20', 'chengting', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 18:00:27');
INSERT INTO `user` VALUES ('21', 'chenghui', '123456', '0', '2019-04-01 00:00:00', '2018-04-27 18:02:10');
INSERT INTO `user` VALUES ('23', 'wangxuan', '123456', '0', '2019-04-01 00:00:01', '2018-04-27 18:07:47');
INSERT INTO `user` VALUES ('25', 'chengjie', '123456', '0', '2019-04-01 00:00:00', '2018-04-28 15:40:18');
INSERT INTO `user` VALUES ('26', 'yuanfan', '123456', '0', '2019-05-01 00:00:01', '2018-05-22 17:18:41');
INSERT INTO `user` VALUES ('27', 'likewhhd', '123456', '0', '2019-05-01 00:00:01', '2018-05-22 17:20:19');
INSERT INTO `user` VALUES ('28', 'weiranran', '123456', '0', '2019-05-01 00:00:01', '2018-05-22 17:21:09');
INSERT INTO `user` VALUES ('30', 'yangjing', '123456', '0', '2019-05-01 00:00:00', '2018-05-30 16:13:52');
INSERT INTO `user` VALUES ('33', 'xuhaohd', '123456', '0', '2019-07-19 00:00:00', '2018-07-18 13:48:24');
INSERT INTO `user` VALUES ('36', 'shenjia', '123456', '0', '2019-07-31 00:00:00', '2018-08-15 17:42:55');
INSERT INTO `user` VALUES ('37', 'shanshan', '123456', '0', '2019-08-15 00:00:01', '2018-08-15 17:43:27');
INSERT INTO `user` VALUES ('38', 'lingling', '123456', '0', '2020-09-10 00:01:00', '2018-09-11 19:23:46');
INSERT INTO `user` VALUES ('39', 'lanlan', '123456', '0', '2022-09-01 00:00:00', '2018-09-11 19:40:59');
INSERT INTO `user` VALUES ('40', 'guanwen', '123456', '0', '2020-09-01 00:00:01', '2018-09-11 19:47:30');
INSERT INTO `user` VALUES ('41', 'junlebao', '123456', '0', '2018-09-26 00:00:01', '2018-09-25 11:05:19');
INSERT INTO `user` VALUES ('42', 'xiaorui', '123456', '0', '2020-01-31 00:00:00', '2019-01-04 17:34:34');
INSERT INTO `user` VALUES ('43', 'heyuanjun', '123456', '0', '2020-01-31 00:00:01', '2019-01-04 17:36:00');
