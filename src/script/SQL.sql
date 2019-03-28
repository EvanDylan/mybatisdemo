SET FOREIGN_KEY_CHECKS=0;

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


-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `keyword` varchar(20) NOT NULL COMMENT '搜索关键字',
  `floor_price` float NOT NULL COMMENT '最低价',
  `ceiling_price` float NOT NULL COMMENT '最高价',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '任务状态',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES ('1', '蔻赛', '0', '999', '1', '1','2018-05-10 20:17:57');

-- ----------------------------
-- Table structure for job_data
-- ----------------------------
DROP TABLE IF EXISTS `job_data`;
CREATE TABLE `job_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `job_id` int(10) unsigned NOT NULL COMMENT '关联id',
  `title` varchar(100) NOT NULL COMMENT '商品名称',
  `url` varchar(100) NOT NULL COMMENT '链接地址',
  `price` float NOT NULL COMMENT '价格',
  `province` varchar(100) DEFAULT '',
  `sales` int(11) NOT NULL DEFAULT '0' COMMENT '销量',
  `sellerName` varchar(100) DEFAULT '',
  `sellerLevel` varchar(100) DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17384 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_data
-- ----------------------------
INSERT INTO `job_data` VALUES ('326', '1', '【艾咪艾咪】风系列夏季超薄干爽透气拉拉裤纸尿裤尿不湿', 'http://mobile.yangkeduo.com/goods.html?goods_id=2878565480', '29.9', null, '0', '艾咪艾咪官方旗舰店', null, '2018-10-14 22:24:28');
INSERT INTO `job_data` VALUES ('327', '1', '安迪艾米柔纸巾干湿两用原木浆婴儿抽纸巾6包/袋，60抽/包', 'http://mobile.yangkeduo.com/goods.html?goods_id=1763282121', '50.4', null, '81', '多里', null, '2018-10-14 22:24:31');
INSERT INTO `job_data` VALUES ('328', '1', '安迪艾米 纸尿裤弹性腰围超薄干爽尿不湿NB/S/M/L/XL男女通用透气', 'http://mobile.yangkeduo.com/goods.html?goods_id=47152977', '38', null, '1584', '小小萌店铺', null, '2018-10-14 22:24:33');
INSERT INTO `job_data` VALUES ('329', '1', '正品安迪艾米纸尿裤拉拉裤婴儿尿不湿男女通用送试用超薄干爽透气', 'http://mobile.yangkeduo.com/goods.html?goods_id=79495477', '49', null, '3693', '呵护育儿', null, '2018-10-14 22:24:35');
INSERT INTO `job_data` VALUES ('330', '1', '安迪艾米纸尿裤拉拉裤超强弹力大腰围不勒宝宝肚子和大腿超薄棉柔超强吸水S/M/L/XL/xxl/XXXL', 'http://mobile.yangkeduo.com/goods.html?goods_id=9150644', '108', null, '2196', '龙猫母婴用品屋', null, '2018-10-14 22:24:39');
INSERT INTO `job_data` VALUES ('331', '1', '安迪艾米臻享系列超薄纸尿裤S/M/L/XL男女宝宝新生婴儿尿不湿', 'http://mobile.yangkeduo.com/goods.html?goods_id=3324861308', '120.8', null, '1', '娜姐母婴店', null, '2018-10-14 22:24:43');