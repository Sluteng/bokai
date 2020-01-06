/*
MySQL Database Backup Tools
Server:127.0.0.1:
Database:bokai
Data:2019-12-11 08:54:08
*/
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tp_about
-- ----------------------------
DROP TABLE IF EXISTS `tp_about`;
CREATE TABLE `tp_about` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '简介标题',
  `editorValue` text CHARACTER SET utf8 NOT NULL COMMENT '公司内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '编辑时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_about
-- ----------------------------
INSERT INTO `tp_about` (`id`,`img`,`name`,`editorValue`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','/tmp/picture/k3tqd5q8_4xsl0gcl6mg45de9ec289eb46.jpg','公司简介','&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑; font-size: 14px; letter-spacing: 3px; text-indent: 28px;&quot;&gt;保定博楷电子科技有限公司位于保定上谷大观，是一家从事太阳能组件及应用产品光伏发电系统、风电互补系统的设计、生产、销售及安装；城市道路照明工程安装；灯具制造；照明设备、太阳能灯具、LED设备及配件销售、安装；光伏设备及元器件、五金产品、电线电缆销售，新能源技术推广及咨询服务的专业化公司。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: 微软雅黑; font-size: 14px; letter-spacing: 3px; text-indent: 28px;&quot;&gt;保定博楷电子科技有限公司不仅拥有一支高学历、高素质、高技术的专业产品研发团队，而且还拥有一批一流的施工和售后队伍。公司根据用户自身环境量身设计设施技术方案，使用户利益更大化。&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;span style=&quot;font-family: 微软雅黑; font-size: 14px; letter-spacing: 3px; text-indent: 28px;&quot;&gt;保定博楷电子科技有限公司本着&ldquo;客户至上，服务周到，质量第一，科技领先&rdquo;的宗旨，与用户、员工共创未来&lt;/span&gt;&lt;/p&gt;','1575611459','1575611459','0','0','1');

-- ----------------------------
-- Table structure for tp_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_access`;
CREATE TABLE `tp_admin_access` (
  `role_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `node_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  KEY `groupId` (`role_id`) USING BTREE,
  KEY `nodeId` (`node_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_access
-- ----------------------------
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','107','3','105');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','182','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','181','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','180','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','179','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','178','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','177','4','106');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','106','3','105');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','105','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','70','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','69','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','66','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','65','3','64');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','64','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','1','1','0');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','183','4','107');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','184','4','107');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','185','4','107');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','186','4','107');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','71','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','72','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','73','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','74','3','71');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','75','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','76','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','77','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','78','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','79','3','75');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','80','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','129','3','80');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','130','3','80');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','131','3','80');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','132','3','80');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','81','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','133','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','134','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','135','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','136','3','81');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','82','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','141','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','142','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','143','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','144','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','145','3','82');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','83','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','146','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','147','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','149','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','150','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','151','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','152','3','83');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','84','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','153','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','154','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','155','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','156','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','157','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','158','3','84');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','85','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','159','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','160','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','161','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','162','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','163','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','164','3','85');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','86','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','165','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','166','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','167','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','168','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','169','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','170','3','86');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','87','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','171','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','172','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','173','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','174','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','175','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','176','3','87');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','88','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','98','3','88');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','187','4','98');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','188','4','98');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','189','4','98');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','190','4','98');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','100','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','104','3','100');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','191','4','104');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','192','4','104');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','193','4','104');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','194','4','104');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','103','3','100');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','195','4','103');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','196','4','103');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','197','4','103');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','198','4','103');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','102','3','100');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','199','4','102');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','200','4','102');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','201','4','102');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','202','4','102');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','101','3','100');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','203','4','101');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','204','4','101');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','205','4','101');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','206','4','101');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','108','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','207','3','108');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','208','3','108');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','209','3','108');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','210','3','108');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','109','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','211','3','109');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','212','3','109');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','213','3','109');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','214','3','109');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','215','3','109');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','110','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','216','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','217','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','218','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','219','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','220','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','221','3','110');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','111','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','115','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','116','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','117','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','118','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','119','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','120','3','111');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','112','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','121','3','112');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','122','3','112');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','123','3','112');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','124','3','112');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','113','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','125','3','113');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','126','3','113');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','127','3','113');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','128','3','113');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','114','2','1');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','137','3','114');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','138','3','114');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','139','3','114');
INSERT INTO `tp_admin_access` (`role_id`,`node_id`,`level`,`pid`) VALUES ('1','140','3','114');

-- ----------------------------
-- Table structure for tp_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_group`;
CREATE TABLE `tp_admin_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'icon小图标',
  `sort` int(11) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_group
-- ----------------------------
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('1','系统管理','&amp;#xe61d;','1','1','','0','1450752856','1575364199');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('2','工具','&amp;#xe616;','2','1','','0','1476016712','1575364194');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('3','导航栏目','','4','1','','0','1575265669','1575594650');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('4','轮播管理','','5','1','','0','1575268698','1575594654');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('5','产品中心','','7','1','','0','1575270715','1575617884');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('6','案例展示','','8','1','','0','1575332891','1575617890');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('7','新闻中心','','9','1','','0','1575364175','1575617896');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('8','关于博楷','','10','1','','0','1575505359','1575617900');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('9','联系我们','','11','1','','0','1575533138','1575617904');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('10','留言中心','','12','1','','0','1575534035','1575617908');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('11','招聘信息','','13','1','','0','1575537690','1575617912');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('12','基本信息','','3','1','','0','1575594446','1575594568');
INSERT INTO `tp_admin_group` (`id`,`name`,`icon`,`sort`,`status`,`remark`,`isdelete`,`create_time`,`update_time`) VALUES ('13','首页','','6','1','','0','1575611203','1575617867');

-- ----------------------------
-- Table structure for tp_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node`;
CREATE TABLE `tp_admin_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '节点类型，1-控制器 | 0-方法',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '50',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `isdelete` (`isdelete`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_node
-- ----------------------------
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('1','0','1','Admin','后台管理','后台管理，不可更改','1','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('2','1','1','AdminGroup','分组管理',' ','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('3','1','1','AdminNode','节点管理',' ','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('4','1','1','AdminRole','角色管理',' ','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('5','1','1','AdminUser','用户管理','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('6','1','0','Index','首页','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('7','6','0','welcome','欢迎页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('8','6','0','index','未定义','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('9','1','2','Generate','代码自动生成','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('10','1','2','Demo/excel','Excel一键导出','','2','0','15','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('11','1','2','Demo/download','下载','','2','0','14','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('12','1','2','Demo/downloadImage','远程图片下载','','2','0','8','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('13','1','2','Demo/mail','邮件发送','','2','0','13','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('14','1','2','Demo/qiniu','七牛上传','','2','0','12','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('15','1','2','Demo/hashids','ID加密','','2','0','11','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('16','1','2','Demo/layer','丰富弹层','','2','0','10','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('17','1','2','Demo/tableFixed','表格溢出','','2','0','9','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('18','1','2','Demo/ueditor','百度编辑器','','2','0','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('19','1','2','Demo/imageUpload','图片上传','','2','0','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('20','1','2','Demo/qrcode','二维码生成','','2','0','8','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('21','1','1','NodeMap','节点图','','2','1','5','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('22','1','1','WebLog','操作日志','','2','1','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('23','1','1','LoginLog','登录日志','','2','1','7','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('59','1','2','one.two.three.Four/index','多级节点','','2','0','16','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('24','23','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('25','22','0','index','列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('26','22','0','detail','详情','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('27','21','0','load','自动导入','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('28','21','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('29','5','0','add','添加','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('30','21','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('31','21','0','deleteForever','永久删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('32','9','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('33','9','0','generate','生成方法','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('34','5','0','password','修改密码','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('35','5','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('36','5','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('37','5','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('38','4','0','user','用户列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('39','4','0','access','授权','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('40','4','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('41','4','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('42','4','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('43','4','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('44','4','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('45','3','0','load','节点快速导入测试','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('46','3','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('47','3','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('48','3','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('49','3','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('50','3','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('51','2','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('52','2','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('53','2','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('54','2','0','forbid','默认禁用操作','','3','0','51','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('55','2','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('56','1','2','one','一级菜单','','2','1','17','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('60','56','2','two','二级','','3','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('61','60','2','three','三级菜单','','4','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('62','61','2','Four','四级菜单','','5','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('63','1','2','Demo/version','轻量版编辑器','','2','0','6','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('64','1','2','Upload','文件上传','','2','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('65','64','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('66','64','0','upload','文件上传','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('105','1','8','zizhi','荣誉资质','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('68','67','0','listImage','图片列表','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('69','64','0','remote','远程图片抓取','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('70','64','0','listImage','图片列表','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('71','1','2','Sql','备份数据库','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('72','71','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('73','71','0','mysql','数据库备份','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('74','71','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('75','1','2','Map','站点地图','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('76','75','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('77','75','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('78','75','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('79','75','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('80','1','3','Navber','导航列表','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('81','1','4','Banner','幻灯片','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('82','1','5','Main','产品分类','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('83','1','5','Product','产品内容','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('84','1','6','Maincase','案例分类','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('85','1','6','Cases','案例内容','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('86','1','7','News','新闻分类','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('87','1','7','Newsa','新闻内容','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('88','1','8','jianjie','公司简介','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('104','100','8','Value','核心价值','','3','1','4','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('103','100','8','Core','标题内容','','3','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('102','100','8','Tdkw','SEO配置','','3','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('101','100','8','Culture','企业文化','','3','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('100','1','8','Wenhua','企业文化','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('99','88','8','Tdk','SEO配置','','3','1','1','0','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('98','88','8','Company','公司简介','','3','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('106','105','8','Honor','荣誉资质','','3','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('107','105','8','Tdkz','SEO配置','','3','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('108','1','9','Contact','基本信息','','2','1','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('109','1','10','Center','留言内容','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('110','1','11','Infor','招聘信息','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('111','1','12','Links','友情链接','','2','1','2','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('112','1','12','Set','全局设置','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('113','1','12','Copy','版权所有','','2','1','3','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('114','1','13','About','关于公司','','2','1','1','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('115','111','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('116','111','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('117','111','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('118','111','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('119','111','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('120','111','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('121','112','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('122','112','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('123','112','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('124','112','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('125','113','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('126','113','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('127','113','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('128','113','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('129','80','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('130','80','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('131','80','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('132','80','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('133','81','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('134','81','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('135','81','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('136','81','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('137','114','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('138','114','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('139','114','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('140','114','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('141','82','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('142','82','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('143','82','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('144','82','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('145','82','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('146','83','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('147','83','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('148','145','0','edit','编辑','','4','0','50','1','1');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('149','83','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('150','83','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('151','83','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('152','83','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('153','84','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('154','84','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('155','84','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('156','84','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('157','84','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('158','84','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('159','85','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('160','85','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('161','85','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('162','85','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('163','85','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('164','85','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('165','86','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('166','86','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('167','86','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('168','86','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('169','86','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('170','86','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('171','87','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('172','87','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('173','87','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('174','87','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('175','87','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('176','87','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('177','106','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('178','106','0','add','添加','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('179','106','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('180','106','0','delete','删除','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('181','106','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('182','106','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('183','107','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('184','107','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('185','107','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('186','107','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('187','98','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('188','98','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('189','98','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('190','98','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('191','104','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('192','104','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('193','104','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('194','104','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('195','103','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('196','103','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('197','103','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('198','103','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('199','102','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('200','102','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('201','102','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('202','102','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('203','101','0','index','首页','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('204','101','0','edit','编辑','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('205','101','0','forbid','默认禁用操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('206','101','0','resume','默认恢复操作','','4','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('207','108','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('208','108','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('209','108','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('210','108','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('211','109','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('212','109','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('213','109','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('214','109','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('215','109','0','resume','默认恢复操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('216','110','0','index','首页','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('217','110','0','add','添加','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('218','110','0','edit','编辑','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('219','110','0','delete','删除','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('220','110','0','forbid','默认禁用操作','','3','0','50','1','0');
INSERT INTO `tp_admin_node` (`id`,`pid`,`group_id`,`name`,`title`,`remark`,`level`,`type`,`sort`,`status`,`isdelete`) VALUES ('221','110','0','resume','默认恢复操作','','3','0','50','1','0');

-- ----------------------------
-- Table structure for tp_admin_node_load
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_node_load`;
CREATE TABLE `tp_admin_node_load` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点快速导入';
-- ----------------------------
-- Records of tp_admin_node_load
-- ----------------------------
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('4','编辑','edit','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('5','添加','add','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('6','首页','index','1');
INSERT INTO `tp_admin_node_load` (`id`,`title`,`name`,`status`) VALUES ('7','删除','delete','1');

-- ----------------------------
-- Table structure for tp_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role`;
CREATE TABLE `tp_admin_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parentId` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `isdelete` (`isdelete`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_role
-- ----------------------------
INSERT INTO `tp_admin_role` (`id`,`pid`,`name`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','0','博楷电子','','1','0','1571640709','1575622885');

-- ----------------------------
-- Table structure for tp_admin_role_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_role_user`;
CREATE TABLE `tp_admin_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
-- ----------------------------
-- Records of tp_admin_role_user
-- ----------------------------
INSERT INTO `tp_admin_role_user` (`role_id`,`user_id`) VALUES ('1','2');

-- ----------------------------
-- Table structure for tp_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin_user`;
CREATE TABLE `tp_admin_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `account` char(32) NOT NULL DEFAULT '',
  `realname` varchar(255) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` char(15) NOT NULL DEFAULT '',
  `login_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `accountpassword` (`account`,`password`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_admin_user
-- ----------------------------
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','admin','超级管理员','e10adc3949ba59abbe56e057f20f883e','1576025636','127.0.0.1','23','tianpian0805@gmail.com','13121126169','我是超级管理员','1','0','1222907803','1451033528');
INSERT INTO `tp_admin_user` (`id`,`account`,`realname`,`password`,`last_login_time`,`last_login_ip`,`login_count`,`email`,`mobile`,`remark`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('2','demo','博楷电子','d41d8cd98f00b204e9800998ecf8427e','1575622972','127.0.0.1','4','2899826483@qq.com','17732268606','保定博楷电子科技有限公司
客户至上，服务周到
质量第一，科技领先','1','0','1476777133','1575623245');

-- ----------------------------
-- Table structure for tp_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_banner`;
CREATE TABLE `tp_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '轮播标题',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '轮播图片',
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_banner
-- ----------------------------
INSERT INTO `tp_banner` (`id`,`title`,`img`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','幻灯片1','/tmp/uploads/20191202\65cc70f66e74f4748f2daa8aade83319.jpg','0','1575269822','1575269822','','0','1');
INSERT INTO `tp_banner` (`id`,`title`,`img`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','幻灯片2','/tmp/uploads/20191202\f4dadc50cd20fea2db120ec13a40fca4.jpg','0','1575269838','1575269838','','0','1');
INSERT INTO `tp_banner` (`id`,`title`,`img`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','幻灯片3','/tmp/uploads/20191202\255644ce59aa0435f23effcb02d8137e.jpg','0','1575269855','1575270013','','0','1');

-- ----------------------------
-- Table structure for tp_cases
-- ----------------------------
DROP TABLE IF EXISTS `tp_cases`;
CREATE TABLE `tp_cases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `main` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '产品名称',
  `img` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片',
  `content` text COLLATE utf8_unicode_ci,
  `editorValue` text CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `home` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_cases
-- ----------------------------
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','道路工程','呼和浩特市风光互补路灯','/tmp/uploads/20191203\c6f513a70a2aa749aa871114ff71a50c.jpg','','','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575334161','1575610707','0','0','1');
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','道路工程','玉兰灯','/tmp/picture/k3p5ys00_6udlj69uf10c5de5b588dbed4.jpg','','','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575335311','1575610711','0','0','1');
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','亮化工程','河北张家口商业楼体亮化','/tmp/uploads/20191203\d783fba37ab2bd399f841ae4a4fc9baa.jpg','','','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575335363','1575610715','0','0','1');
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','亮化工程','2柳州市柳东新区太阳能路灯项目','/tmp/uploads/20191203\5a56c8ae273188ceb5fd10f2bafbbaa5.jpg','','','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575335385','1575610719','0','0','1');
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','发电工程','家庭自用光伏电站','/tmp/picture/k3p61btk_5hegzvow2kw85de5b5ffb034f.jpg','','','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575335428','1575610723','0','0','1');
INSERT INTO `tp_cases` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','发电工程','家庭自用光伏电站','/tmp/picture/k3p62dmo_3t4t33raamg45de5b6307a68f.jpg','&lt;p&gt;深圳市斯派克光电科技有限公司成功中标柳州市柳东新区花岭片区(纵一路、纵二路、纵四路、纵五路、横一路、横三路、横四路、横六路)工业园风光互补太阳能路灯项目并施工安装成功运行，本项目使用近千套风格互补太阳能路灯&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;table&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;p style=&quot;line-height: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;太阳能路灯安装地点:&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;h1 style=&quot;margin: 0px; padding: 0px; font-size: 16px; color: rgb(53, 53, 53); font-family: Arial, &amp;quot;Microsoft Yahei&amp;quot;, simsun, 宋体, sans-serif, Verdana, Helvetica; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;河北张家口商业楼体亮化&lt;/h1&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;7&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;p style=&quot;line-height: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-indent: 16px;&quot;&gt;黑龙江太阳能路灯配置方案:&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;p style=&quot;line-height: normal;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;灯杆高度：&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;6米，Q235钢热镀锌&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;LED路灯光源：&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;DC12V20W，大功率LED灯珠，光效：110-120LM/W，整体透镜二次配光，保证了光的最高利用率&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;太阳能电池板:&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;60w，高效多晶硅太阳能板，中国英利&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;储能蓄电池：&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;12V65AH密闭免维护胶体蓄电池&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;太阳能充放电控制器：&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;12V10A，具有光控启动+定时延时关闭，定时关闭时间可调整；使用晶体振荡器的高精度定时控制，具有过充、过放、&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot;&gt;&lt;br/&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;电子短路、过载保护、独特的防反接保护等全自动控制；高效的pwm充电方式&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;220&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; font-weight: 700; text-align: center;&quot;&gt;电源线：&lt;/span&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;word-break: break-all;&quot; rowspan=&quot;1&quot; colspan=&quot;6&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑; text-indent: 16px;&quot;&gt;2.5平方国标纯铜芯护套线&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;','1','0','家庭自用光伏电站-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575335477','1575610726','0','0','1');

-- ----------------------------
-- Table structure for tp_center
-- ----------------------------
DROP TABLE IF EXISTS `tp_center`;
CREATE TABLE `tp_center` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '姓名',
  `email` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'E-mail',
  `tellphon` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '电话',
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '留言主题',
  `content` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '留言內容',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_center
-- ----------------------------
INSERT INTO `tp_center` (`id`,`name`,`email`,`tellphon`,`subject`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','index','2389193245@qq.com','222','111','1去去去','1575534659','1575534659','0','0','1');
INSERT INTO `tp_center` (`id`,`name`,`email`,`tellphon`,`subject`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','index','2389193245@qq.com','18631988343','','','1575536371','1575536371','0','0','1');
INSERT INTO `tp_center` (`id`,`name`,`email`,`tellphon`,`subject`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','index','2389193245@qq.com','18631988343','','','1575536571','1575536571','0','0','1');

-- ----------------------------
-- Table structure for tp_contact
-- ----------------------------
DROP TABLE IF EXISTS `tp_contact`;
CREATE TABLE `tp_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话内容',
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '手机号码',
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系地址内容',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '关注我们的图片',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(11) DEFAULT '0',
  `status` tinyint(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_contact
-- ----------------------------
INSERT INTO `tp_contact` (`id`,`name`,`phone`,`email`,`url`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定博楷电子科技有限公司','0312-5858315','2899826483@qq.com','河北保定国家高新区朝阳北大街汇博上古大观','1575533263','1575533263','','0','1');

-- ----------------------------
-- Table structure for tp_copy
-- ----------------------------
DROP TABLE IF EXISTS `tp_copy`;
CREATE TABLE `tp_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `copyright` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `website` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `record` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `support` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `looks` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_copy
-- ----------------------------
INSERT INTO `tp_copy` (`id`,`copyright`,`website`,`record`,`support`,`looks`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定博楷电子科技有限公司','http://www.bokaidianzi.com ','冀ICP备19023692号-1','畅行网络','http://www.chxwluo.com/','1575598532','1575598532','0','0','1');

-- ----------------------------
-- Table structure for tp_file
-- ----------------------------
DROP TABLE IF EXISTS `tp_file`;
CREATE TABLE `tp_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文件类型，1-image | 2-file',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `original` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of tp_file
-- ----------------------------
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('1','3','/tmp/uploads/20191202\65cc70f66e74f4748f2daa8aade83319.jpg','banner.jpg','','image/jpeg','4150053','1575269821');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('2','3','/tmp/uploads/20191202\f4dadc50cd20fea2db120ec13a40fca4.jpg','banner1.jpg','','image/jpeg','845727','1575269837');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('4','3','/tmp/uploads/20191202\255644ce59aa0435f23effcb02d8137e.jpg','banner2.jpg','','image/jpeg','222083','1575270012');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('5','3','/tmp/uploads/20191202\8e59fd5766ff9283359e0269b3a694dd.jpg','ld1.jpg','','image/jpeg','92830','1575273442');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('6','3','/tmp/uploads/20191202\1a887477d8398f82e2d5f638c971b37a.jpg','ld1.jpg','','image/jpeg','92830','1575273623');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('7','3','/tmp/uploads/20191202\6bcd85e9bdd995a0e1cc85da58b0dd66.png','n.png','','image/png','112822','1575273693');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('8','3','/tmp/uploads/20191202\59ddbd45f13bb37a221f4633e7ba65f7.png','cp.png','','image/png','42619','1575273734');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('9','3','/tmp/uploads/20191202\4a82afb5370e826f5699e5c681a0ec08.jpg','ld3.jpg','','image/jpeg','39942','1575273760');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('10','3','/tmp/uploads/20191202\f80a274614c09053d309f25d74a8e63f.jpg','anlilianghua4.jpg','','image/jpeg','96187','1575273780');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('11','3','/tmp/uploads/20191203\c6f513a70a2aa749aa871114ff71a50c.jpg','ld.jpg','','image/jpeg','13563','1575334146');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('12','3','/tmp/uploads/20191203\d783fba37ab2bd399f841ae4a4fc9baa.jpg','anlilianghua1.jpg','','image/jpeg','96263','1575335361');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('13','3','/tmp/uploads/20191203\5a56c8ae273188ceb5fd10f2bafbbaa5.jpg','anlilianghua4.jpg','','image/jpeg','96187','1575335383');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('14','3','/tmp/uploads/20191204\07baa4a25d17ac15163c3bc360e8b0e7.jpg','xinwen1.jpg','','image/jpeg','58185','1575421716');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('15','3','/tmp/uploads/20191204\3a2c9a92f3fef8d536c18b7d33de8376.jpg','xinwen2.jpg','','image/jpeg','106050','1575421765');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('16','3','/tmp/uploads/20191204\5165f69f679757aa52f3c1ade7e5c2cd.jpg','xinwen3.jpg','','image/jpeg','61242','1575421794');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('17','3','/tmp/uploads/20191204\ba594e6de1f641e2bfd8626f79ef4f62.jpg','xinwen4.jpg','','image/jpeg','48646','1575421839');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('18','3','/tmp/uploads/20191204\d429b49b38e893cf24226ff22f17dfa2.jpg','xinwen5.jpg','','image/jpeg','41579','1575424652');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('19','3','/tmp/uploads/20191204\b14dd83694b962435a6c3d2d5e120cfe.jpg','xinwen6.jpg','','image/jpeg','8767','1575424682');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('20','3','/tmp/uploads/20191204\65bb74530195f9c82fcbefa5b29dfc51.jpg','xinwen7.jpg','','image/jpeg','9944','1575424702');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('21','3','/tmp/uploads/20191204\c6d8e0f0b5b1405e06b961e09948fc93.jpg','z.jpg','','image/jpeg','39216','1575424733');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('22','3','/tmp/uploads/20191204\8eef7a243bdb1e006c9eaf862e654f94.jpg','x.jpg','','image/jpeg','102904','1575424757');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('23','3','/tmp/uploads/20191204\fac3aaf0ee600d7bb1b8cfc735171a5b.jpg','tupians.jpg','','image/jpeg','4730','1575424783');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('24','3','/tmp/uploads/20191205\18a9fde0c87c3c3e1fd3b1133bbeed6f.jpg','ld3.jpg','','image/jpeg','39942','1575525410');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('25','3','/tmp/uploads/20191205\4507ba61f3776f4303598d810e5d7e7d.jpg','ld3.jpg','','image/jpeg','39942','1575525445');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('26','3','/tmp/uploads/20191205\942a05c45520f47390498c3ceb49e96a.jpg','light1.jpg','','image/jpeg','19401','1575526358');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('27','3','/tmp/uploads/20191205\b6b5d428796e0693664f5f62426eefc9.jpg','ry1.jpg','','image/jpeg','82614','1575528836');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('28','3','/tmp/uploads/20191205\7e0100656fe251d54f473b189db80035.jpg','ry2.jpg','','image/jpeg','44419','1575528872');
INSERT INTO `tp_file` (`id`,`cate`,`name`,`original`,`domain`,`type`,`size`,`mtime`) VALUES ('29','3','/tmp/uploads/20191205\95f7d597584499650502d978d3c5de5c.jpg','ry4.jpg','','image/jpeg','51937','1575528890');

-- ----------------------------
-- Table structure for tp_infor
-- ----------------------------
DROP TABLE IF EXISTS `tp_infor`;
CREATE TABLE `tp_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `position` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '职位',
  `telphon` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `work` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '工作地点',
  `post` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '岗位要求',
  `duty` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '岗位职责',
  `sort` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_infor
-- ----------------------------
INSERT INTO `tp_infor` (`id`,`position`,`telphon`,`work`,`post`,`duty`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','销售','17732268606','保定上谷大观A座','有责任心，大专学历，有采购经验者优先','负责公司的物品采购','0','1575538033','1575538033','0','0','1');
INSERT INTO `tp_infor` (`id`,`position`,`telphon`,`work`,`post`,`duty`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','技术人员','17732268606','保定上谷大观A座','快速的学习和研究能力及团队协作能力','负责技术部门的研发','0','1575538057','1575538057','0','0','1');
INSERT INTO `tp_infor` (`id`,`position`,`telphon`,`work`,`post`,`duty`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','网络推广专员','17732268606','保定上谷大观A座','1、负责网站数据分析，运营提升； 　　 2、负责搜索竞价平台的管理； 　　 3、协助部门经理建设网络营销的商业流程体系； 　　 4、负责公司网站的规划落地执行； 　　 5、协助部门经理筹划建立部门管理体系，协助员工招聘、考核、管理，协助部门规划、总结。','负责网站数据分析，运营提升；','0','1575538082','1575538082','0','0','1');
INSERT INTO `tp_infor` (`id`,`position`,`telphon`,`work`,`post`,`duty`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','销售','17732268606','保定上古谷大观A座','有较好的沟通能力；有较强的工作能力','负责收集、整理、归纳客户资料,对客户群进行透彻的分析。 确定销售策略,建立销售目标,制定销售计划。完成公司下达的销售任务。 .监督计划的执行情况,将销售进展情况及时反馈给总经理。','0','1575538111','1575538111','0','0','1');

-- ----------------------------
-- Table structure for tp_jianjie_company
-- ----------------------------
DROP TABLE IF EXISTS `tp_jianjie_company`;
CREATE TABLE `tp_jianjie_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_jianjie_company
-- ----------------------------
INSERT INTO `tp_jianjie_company` (`id`,`name`,`img`,`content`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司简介','/tmp/uploads/20191205\4507ba61f3776f4303598d810e5d7e7d.jpg','                                                                  &lt;p&gt;&amp;nbsp;保定博楷电子科技有限公司位于保定上古大观，是一家从事太阳能组件及应用产品光伏发电系统、风电互补系统的设计、生产、销售及安装；城市道路照明工程安装；灯具制造；照明设备、太阳能灯具、LED设备及配件销售、安装；光伏设备及元器件、五金产品、电线电缆销售，新能源技术推广及咨询服务的专业化公司&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;                    ','0','1575526304','1575526304','0','0','1');
INSERT INTO `tp_jianjie_company` (`id`,`name`,`img`,`content`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','公司简介','/tmp/uploads/20191205\942a05c45520f47390498c3ceb49e96a.jpg','                                           &lt;p&gt;保定博凯电气科技有限公司办公室地址位于有3000多年历史，清为直隶总督署--保定，保定 保定市韩村乡沈庄村，于2010年11月11日在新市区工商行政管理局注册成立，注册资本为50万人民币，在公司发展壮大的9年里，我们始终为客户提供好的产品和技术支持、健全的售后服务，我公司主要经营电气自动化系统研发（非研制），输配电及控制设备、仪器仪表、电线电缆、绝缘制品批发、零售（法律、行政法规或者国务院决定规定须报经批准的项目，未获批准前不准经营）。我们有好的产品和专业的销售和技术团队，我公司属于保定电气机械及器材厂。&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','0','1575526373','1575526373','0','0','1');

-- ----------------------------
-- Table structure for tp_jianjie_tdk
-- ----------------------------
DROP TABLE IF EXISTS `tp_jianjie_tdk`;
CREATE TABLE `tp_jianjie_tdk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_jianjie_tdk
-- ----------------------------
INSERT INTO `tp_jianjie_tdk` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司简介-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575527413','1575527413','0','0','1');

-- ----------------------------
-- Table structure for tp_links
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `look_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','江山之光','http://www.hnjsld.com/','0','1575595576','1575595576','0','0','1');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','现代照明','http://www.yz-xd.com/','0','1575595588','1575595588','0','0','1');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','德州东龙','http://www.dzdlxny.com/','0','1575595602','1575595602','0','0','1');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','鑫月光电','http://www.led-xy.com/','0','1575595613','1575595613','0','0','1');
INSERT INTO `tp_links` (`id`,`name`,`look_name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','源码','http://www.socreat.cn/','0','1575595623','1575595623','0','0','1');

-- ----------------------------
-- Table structure for tp_login_log
-- ----------------------------
DROP TABLE IF EXISTS `tp_login_log`;
CREATE TABLE `tp_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `login_ip` char(15) NOT NULL DEFAULT '',
  `login_location` varchar(255) NOT NULL DEFAULT '',
  `login_browser` varchar(255) NOT NULL DEFAULT '',
  `login_os` varchar(255) NOT NULL DEFAULT '',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
-- ----------------------------
-- Records of tp_login_log
-- ----------------------------
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('1','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-02 09:37:45');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('2','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-02 09:40:28');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('3','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-03 08:26:20');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('4','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-06 08:23:38');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('5','2','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-06 17:02:52');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('6','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-06 17:04:34');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('7','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-07 08:14:12');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('8','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-09 09:51:31');
INSERT INTO `tp_login_log` (`id`,`uid`,`login_ip`,`login_location`,`login_browser`,`login_os`,`login_time`) VALUES ('9','1','127.0.0.1','本机地址 本机地址  ','Chrome(75.0.3770.100)','Windows 10','2019-12-11 08:53:56');

-- ----------------------------
-- Table structure for tp_main
-- ----------------------------
DROP TABLE IF EXISTS `tp_main`;
CREATE TABLE `tp_main` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `home` int(11) NOT NULL DEFAULT '0' COMMENT '是否顶置',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_main
-- ----------------------------
INSERT INTO `tp_main` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','道路照明','1','0','保定太阳能路灯-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575271092','1575601639','0','0','1');
INSERT INTO `tp_main` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','光伏发电','1','0','保定太阳能路灯-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575271117','1575601643','0','0','1');
INSERT INTO `tp_main` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','城市亮化','1','0','保定太阳能路灯-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575271121','1575603349','0','0','1');

-- ----------------------------
-- Table structure for tp_maincase
-- ----------------------------
DROP TABLE IF EXISTS `tp_maincase`;
CREATE TABLE `tp_maincase` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_maincase
-- ----------------------------
INSERT INTO `tp_maincase` (`id`,`name`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','道路工程','0','道路工程-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575333356','1575333356','0','0','1');
INSERT INTO `tp_maincase` (`id`,`name`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','亮化工程','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575333378','1575333378','0','0','1');
INSERT INTO `tp_maincase` (`id`,`name`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','发电工程','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575333385','1575333385','0','0','1');

-- ----------------------------
-- Table structure for tp_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_map`;
CREATE TABLE `tp_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '编辑时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_navber
-- ----------------------------
DROP TABLE IF EXISTS `tp_navber`;
CREATE TABLE `tp_navber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '导航名字',
  `href` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '导航链接{PC端}',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_navber
-- ----------------------------
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','网站首页','index','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','保定博楷电子科技有限公司位于保定上古大观，是一家从事太阳能路灯的设计、生产、销售及安装新能源技术推广及咨询服务的专业化公司','保定太阳能路灯,太阳能路灯厂家','1575266289','1575271626','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','产品中心','product','0','产品中心-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266420','1575271634','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','案例展示','cases','0','案例展示-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266446','1575271641','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','新闻中心','news','0','新闻中心-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266463','1575271649','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','关于博楷','company','0','关于博楷-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266508','1575271658','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','联系我们','contact','0','联系我们-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266524','1575533588','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('7','留言中心','center','0','留言中心-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266543','1575271672','','0','1');
INSERT INTO `tp_navber` (`id`,`name`,`href`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('8','招聘信息','infor','0','招聘信息-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575266610','1575271679','','0','1');

-- ----------------------------
-- Table structure for tp_news
-- ----------------------------
DROP TABLE IF EXISTS `tp_news`;
CREATE TABLE `tp_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `home` tinyint(4) DEFAULT NULL,
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_news
-- ----------------------------
INSERT INTO `tp_news` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司新闻','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575364383','1575612476','0','0','1');
INSERT INTO `tp_news` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','行业动态','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575364408','1575612473','0','0','1');
INSERT INTO `tp_news` (`id`,`name`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','技术支持','0','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575364423','1575612481','0','0','1');

-- ----------------------------
-- Table structure for tp_newsa
-- ----------------------------
DROP TABLE IF EXISTS `tp_newsa`;
CREATE TABLE `tp_newsa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `main` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '产品名称',
  `img` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片',
  `editorValue` text CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `visit` int(11) NOT NULL COMMENT '访问量',
  `num` int(11) NOT NULL COMMENT '浏览量',
  `home` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_newsa
-- ----------------------------
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','公司新闻','芬兰赫尔辛基首个可调色温路灯出现','/tmp/uploads/20191204\07baa4a25d17ac15163c3bc360e8b0e7.jpg','&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;外媒消息，本周，Kruunuvurenranta郊区的一条2公里路段开启了45盏路灯 - 其色温从冰冷的5000K变为温暖的3000K。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em; text-align: center;&quot;&gt;&lt;img src=&quot;https://www.xianjichina.com/data/editer/20180910/image/840e802a43ef9809b2512f6eb5ab2a75.png&quot; alt=&quot;芬兰赫尔辛基首个可调色温路灯出现&quot; title=&quot;芬兰赫尔辛基首个可调色温路灯出现&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em; text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em; text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;如果下一批安装1000盏路灯的计划在未来12个月正常进行，这个项目将可能成为欧洲最大的可调色温街道照明项目。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;该项目背后的想法 - 包括复杂的调光方案 - 是为了帮助缓解漫长的冬夜对居民情绪的影响。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;这个概念是由伦敦照明设计工作室Speirs + Major在一个新住宅区的设计竞赛中提出的。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;在下午的早些时候，灯光设置为凉爽的5000K，在傍晚时变为温暖的3000K。更晚时候，天气变得凉爽起来，再调为4000K，晚上11点则上升到5000K。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;完整的时间表&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em; text-align: center;&quot;&gt;&lt;img src=&quot;https://www.xianjichina.com/data/editer/20180910/image/da36c90c9f1c0bcd9cae84eb54b61980.png&quot; alt=&quot;芬兰赫尔辛基首个可调色温路灯出现&quot; title=&quot;芬兰赫尔辛基首个可调色温路灯出现&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em; text-align: center;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;strong&gt;调光：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;strong&gt;人行道&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（23：00-00：00）：25％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（01：00-05：00）：50％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（05：00-07：00）：25％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;strong&gt;机动车道&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（23：00-00：00）：40％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（01：00-05：00）：60％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（05：00-07：00）：40％&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;strong&gt;调色：&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（14：30-17：00）：5000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（17：00-17：30）：逐渐转向3000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（17：30-21：00）：3000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（21：00-21：30）：逐渐转移到4000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（21：30-23：00）：4000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（23：00-23：30）：逐渐转变为5000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（23：30-05：30）：5000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（05：30-06：30）逐渐转移到4000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（06：30-08：00）：4000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;（08：00-10：00）：逐渐转移到5000K&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;制造商Orangetek改造了其现有产品Ignis 2，专门用于Kruunuvurenranta。控制管理系统调节两个LED阵列，一个3000K，一个5000K。&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&amp;amp;ldquo;对色温偏移的控制非常好，&amp;amp;rdquo;Orangetek负责人Nigel Parry说，&amp;amp;ldquo;眼睛可以很容易地看到整个晚上灯光颜色的变化。&amp;amp;rdquo;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 1.8; text-indent: 2em;&quot;&gt;本文来自：中国之光网&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; line-height: 40px; width: 380px; float: left; font-size: 14px; color: rgb(51, 51, 51);&quot;&gt;注：文章内的所有配图皆为网络转载图片，侵权即删！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','1','3','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575421725','1575612878','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','行业动态','太阳能路灯是逐渐影响我们的生活了','/tmp/uploads/20191204\3a2c9a92f3fef8d536c18b7d33de8376.jpg','&lt;p&gt;999999999999999999999999999999999&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575421767','1575617778','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','技术支持','一般家用太阳能发电安装多大的就可以带动家中的电器？','/tmp/uploads/20191204\5165f69f679757aa52f3c1ade7e5c2cd.jpg','&lt;p&gt;88888888888888888888888888&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575421796','1575617771','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','公司新闻','太阳能路灯优点显著','/tmp/uploads/20191204\ba594e6de1f641e2bfd8626f79ef4f62.jpg','&lt;p&gt;77777777777777777777777777777777777&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575421840','1575617764','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','公司新闻','太阳能电池组件采用英利多晶硅265电池板，逆变器采用固德威10KW并网三相逆变器。'','/tmp/uploads/20191204\d429b49b38e893cf24226ff22f17dfa2.jpg','&lt;p&gt;666666666666666666666666666666666666666666&lt;/p&gt;','0','55','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424654','1575617754','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','公司新闻','影响光伏电站发电量的十大因素','/tmp/uploads/20191204\b14dd83694b962435a6c3d2d5e120cfe.jpg','&lt;p&gt;5555555555555555555555555555555555555555&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424683','1575617742','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('7','公司新闻','太阳能路灯的维护问题有哪些？','/tmp/uploads/20191204\65bb74530195f9c82fcbefa5b29dfc51.jpg','&lt;p&gt;4444444444444444444444444444&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424704','1575617733','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('8','公司新闻','城市夜景亮化的意义是什么？看完你就明白了','/tmp/uploads/20191204\c6d8e0f0b5b1405e06b961e09948fc93.jpg','&lt;p&gt;333333333333333333333333333333&lt;/p&gt;','0','50','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424734','1575617727','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('9','行业动态','浅析LED太阳能路灯头优缺点','/tmp/uploads/20191204\8eef7a243bdb1e006c9eaf862e654f94.jpg','&lt;p&gt;222222222222222222222222222222222&lt;/p&gt;','0','52','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424758','1575617720','0','0','1');
INSERT INTO `tp_newsa` (`id`,`main`,`name`,`img`,`editorValue`,`visit`,`num`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('10','公司新闻','现在可以微信申请安装家庭电站啦！支付宝还可查询光伏电费啦！！！！','/tmp/uploads/20191204\fac3aaf0ee600d7bb1b8cfc735171a5b.jpg','&lt;p&gt;1111111111111111111111111111111111111111&lt;/p&gt;','5','100','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575424784','1575617713','0','0','1');

-- ----------------------------
-- Table structure for tp_node_map
-- ----------------------------
DROP TABLE IF EXISTS `tp_node_map`;
CREATE TABLE `tp_node_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT '节点图描述',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `map` (`method`,`module`,`controller`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='节点图';
-- ----------------------------
-- Records of tp_node_map
-- ----------------------------

-- ----------------------------
-- Table structure for tp_one_two_three_four
-- ----------------------------
DROP TABLE IF EXISTS `tp_one_two_three_four`;
CREATE TABLE `tp_one_two_three_four` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '四级控制器主键',
  `field1` varchar(255) DEFAULT NULL COMMENT '字段一',
  `option` varchar(255) DEFAULT NULL COMMENT '选填',
  `select` varchar(255) DEFAULT NULL COMMENT '下拉框',
  `radio` varchar(255) DEFAULT NULL COMMENT '单选',
  `checkbox` varchar(255) DEFAULT NULL COMMENT '复选框',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `textarea` varchar(255) DEFAULT NULL COMMENT '文本域',
  `date` varchar(255) DEFAULT NULL COMMENT '日期',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sort` smallint(5) DEFAULT '50' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态，1-正常 | 0-禁用',
  `isdelete` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态，1-删除 | 0-正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort` (`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='四级控制器';
-- ----------------------------
-- Records of tp_one_two_three_four
-- ----------------------------
INSERT INTO `tp_one_two_three_four` (`id`,`field1`,`option`,`select`,`radio`,`checkbox`,`password`,`textarea`,`date`,`mobile`,`email`,`sort`,`status`,`isdelete`,`create_time`,`update_time`) VALUES ('1','yuan1994','tpadmin','2','1','','2222','https://github.com/yuan1994/tpadmin','2016-12-07','13012345678','tianpian0805@gmail.com','50','1','0','1481947278','1481947353');

-- ----------------------------
-- Table structure for tp_product
-- ----------------------------
DROP TABLE IF EXISTS `tp_product`;
CREATE TABLE `tp_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `main` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '主标题',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '产品名称',
  `img` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '图片',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '副标题',
  `editorValue` text CHARACTER SET utf8 NOT NULL COMMENT '内容',
  `top` int(11) DEFAULT '0',
  `home` int(11) DEFAULT '0',
  `sort` int(11) NOT NULL COMMENT '排序',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_product
-- ----------------------------
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','道路照明','中华灯','/tmp/uploads/20191202\8e59fd5766ff9283359e0269b3a694dd.jpg','','','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273532','1575601654','0','0','1');
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','道路照明','高杆灯','/tmp/uploads/20191202\1a887477d8398f82e2d5f638c971b37a.jpg','','','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273626','1575601649','0','0','1');
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','光伏发电','太阳能发电系统','/tmp/uploads/20191202\6bcd85e9bdd995a0e1cc85da58b0dd66.png','','','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273696','1575601663','0','0','1');
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','光伏发电','LDR-TGD-008','/tmp/uploads/20191202\59ddbd45f13bb37a221f4633e7ba65f7.png','','','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273736','1575601666','0','0','1');
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('5','城市亮化','LDR&mdash;TGD&mdash;007','/tmp/uploads/20191202\4a82afb5370e826f5699e5c681a0ec08.jpg','','','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273762','1575603387','0','0','1');
INSERT INTO `tp_product` (`id`,`main`,`name`,`img`,`content`,`editorValue`,`top`,`home`,`sort`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('6','城市亮化','LDR&mdash;TGD&mdash;006','/tmp/uploads/20191202\f80a274614c09053d309f25d74a8e63f.jpg','&lt;p&gt;描述：压铸铝+钢化玻璃&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;table border=&quot;1&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;th style=&quot;width: 100px; height: 40px; word-break: break-all;&quot;&gt;&lt;span style=&quot;font-family: 微软雅黑;&quot;&gt;尺寸：&lt;/span&gt;&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;3M/3.5M/4M/&lt;/td&gt;&lt;th style=&quot;word-break: break-all;&quot;&gt;产品材质：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;压铸铝灯体+钢化玻璃&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th style=&quot;width: 100px; height: 40px; word-break: break-all;&quot;&gt;功率：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;&lt;p&gt;30W/50W&lt;/p&gt;&lt;/td&gt;&lt;th style=&quot;word-break: break-all;&quot;&gt;发光角度：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;60/90/120&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th style=&quot;width:100px; height: 40px;&quot;&gt;LED芯片：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;普瑞&lt;/td&gt;&lt;th style=&quot;word-break: break-all;&quot;&gt;防护等级：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;IP65&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th style=&quot;width:100px; height: 40px;&quot;&gt;产品光色：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;正白、暖白&lt;/td&gt;&lt;th&gt;使用寿命：&lt;/th&gt;&lt;td&gt;50000小时&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th style=&quot;width: 100px; height: 40px; word-break: break-all;&quot;&gt;控制方式：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;光控+遥控&lt;/td&gt;&lt;th style=&quot;word-break: break-all;&quot;&gt;适用范围：&lt;/th&gt;&lt;td style=&quot;word-break: break-all;&quot;&gt;&lt;p&gt;&amp;nbsp;球场、广场、公园、旅游景区等&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;','1','1','0','网站首页-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575273782','1575603383','0','0','1');

-- ----------------------------
-- Table structure for tp_set
-- ----------------------------
DROP TABLE IF EXISTS `tp_set`;
CREATE TABLE `tp_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hotline` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qq` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wechat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_set
-- ----------------------------
INSERT INTO `tp_set` (`id`,`name`,`logo`,`hotline`,`phone`,`qq`,`website`,`wechat`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','保定博楷电子科技有限公司','/tmp/picture/k3tgvqu0_npj9nytozcg5de9adef152a7.jpg','0312-5858315','17732268606','2899826483','/tmp/picture/k3tgw8kw_15bsu1u9uz285de9ae0624e46.png','/tmp/picture/k3tgwjds_79usaylbpjk85de9ae14e9bd0.jpg','1575595543','1575599203','0','0','1');

-- ----------------------------
-- Table structure for tp_sql
-- ----------------------------
DROP TABLE IF EXISTS `tp_sql`;
CREATE TABLE `tp_sql` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '标题',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '编辑时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci ROW_FORMAT=DYNAMIC;
-- ----------------------------
-- Records of tp_sql
-- ----------------------------

-- ----------------------------
-- Table structure for tp_web_log_all
-- ----------------------------
DROP TABLE IF EXISTS `tp_web_log_all`;
CREATE TABLE `tp_web_log_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `uid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '访客ip',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '访客地址',
  `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
  `browser` varchar(255) NOT NULL DEFAULT '' COMMENT '浏览器',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'url',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT '模块',
  `controller` varchar(255) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '方法',
  `method` char(6) NOT NULL DEFAULT '' COMMENT '请求方式',
  `data` text COMMENT '请求的param数据，serialize后的',
  `create_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `ip` (`ip`) USING BTREE,
  KEY `create_at` (`create_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='网站日志';
-- ----------------------------
-- Records of tp_web_log_all
-- ----------------------------
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('1','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575623264');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('2','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}','1575623265');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('3','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575623266');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('4','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/login_log/index.html','admin','LoginLog','index','GET','a:0:{}','1575623267');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('5','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/node_map/index.html','admin','NodeMap','index','GET','a:0:{}','1575623268');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('6','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_user/index.html','admin','AdminUser','index','GET','a:0:{}','1575623268');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('7','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}','1575623268');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('8','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575623269');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('9','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575623269');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('10','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575623269');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('11','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575623269');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('12','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin','admin','Index','index','GET','a:0:{}','1575624539');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('13','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575624539');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('14','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin','admin','Index','index','GET','a:0:{}','1575624635');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('15','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575624636');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('16','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin','admin','Index','index','GET','a:0:{}','1575677647');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('17','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1575677647');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('18','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1575677647');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('19','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:2:{s:7:"account";s:5:"admin";s:8:"password";s:6:"123456";}','1575677652');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('20','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1575677652');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('21','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575677653');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('22','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1575677654');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('23','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575677655');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('24','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1575677657');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('25','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575677657');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('26','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575677658');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('27','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677659');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('28','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677659');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('29','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677659');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('30','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677661');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('31','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677661');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('32','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677662');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('33','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677663');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('34','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575677664');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('35','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677665');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('36','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677665');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('37','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677665');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('38','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677667');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('39','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677668');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('40','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/sql/index.html','admin','Sql','index','GET','a:0:{}','1575677669');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('41','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677669');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('42','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677670');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('43','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575677672');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('44','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677673');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('45','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677673');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('46','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677673');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('47','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575677674');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('48','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677676');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('49','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677676');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('50','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/sql/index.html','admin','Sql','index','GET','a:0:{}','1575677677');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('51','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/map/index.html','admin','Map','index','GET','a:0:{}','1575677678');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('52','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/generate/index.html','admin','Generate','index','GET','a:0:{}','1575677678');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('53','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_group/index.html','admin','AdminGroup','index','GET','a:0:{}','1575677680');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('54','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677680');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('55','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677680');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('56','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677680');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('57','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"2";}','1575677683');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('58','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"0";}','1575677684');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('59','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677684');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('60','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"2";}','1575677686');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('61','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:2:"12";}','1575677686');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('62','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677687');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('63','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"0";}','1575677688');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('64','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1575677689');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('65','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575677690');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('66','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677694');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('67','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677694');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('68','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677694');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('69','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}','1575677695');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('70','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677695');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('71','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677695');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('72','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677696');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('73','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575677704');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('74','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575677704');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('75','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677705');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('76','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"2";}','1575677706');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('77','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575677706');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('78','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"2";}','1575677708');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('79','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin','admin','Index','index','GET','a:0:{}','1575856287');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('80','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1575856287');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('81','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:2:{s:7:"account";s:5:"admin";s:8:"password";s:6:"123456";}','1575856291');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('82','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1575856291');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('83','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1575856291');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('84','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1575856293');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('85','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1575856293');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('86','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1575856293');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('87','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856296');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('88','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856298');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('89','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856299');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('90','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856300');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('91','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856300');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('92','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856301');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('93','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/index.html','admin','WebLog','index','GET','a:0:{}','1575856302');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('94','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/detail/id/92.html','admin','WebLog','detail','GET','a:1:{s:2:"id";s:2:"92";}','1575856359');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('95','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/web_log/detail/id/92.html','admin','WebLog','detail','GET','a:1:{s:2:"id";s:2:"92";}','1575856368');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('96','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin','admin','Index','index','GET','a:0:{}','1576025626');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('97','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/login.html','admin','Pub','login','GET','a:0:{}','1576025626');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('98','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:2:{s:7:"account";s:5:"admin";s:8:"password";s:6:"111111";}','1576025631');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('99','0','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/pub/checklogin.html','admin','Pub','checklogin','POST','a:2:{s:7:"account";s:5:"admin";s:8:"password";s:6:"123456";}','1576025636');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('100','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/index.html','admin','Index','index','GET','a:0:{}','1576025636');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('101','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/index/welcome.html','admin','Index','welcome','GET','a:0:{}','1576025637');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('102','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/infor/index.html','admin','Infor','index','GET','a:0:{}','1576025639');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('103','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index.html','admin','AdminNode','index','GET','a:0:{}','1576025642');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('104','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:2:{s:4:"type";s:5:"group";s:9:"module_id";s:1:"1";}','1576025642');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('105','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_node/index','admin','AdminNode','index','POST','a:3:{s:4:"type";s:4:"node";s:9:"module_id";s:1:"1";s:8:"group_id";s:1:"1";}','1576025642');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('106','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/admin_role/index.html','admin','AdminRole','index','GET','a:0:{}','1576025642');
INSERT INTO `tp_web_log_all` (`id`,`uid`,`ip`,`location`,`os`,`browser`,`url`,`module`,`controller`,`action`,`method`,`data`,`create_at`) VALUES ('107','1','127.0.0.1','本机地址 本机地址  ','Windows 10','Chrome(75.0.3770.100)','http://bokai.local/admin/sql/index.html','admin','Sql','index','GET','a:0:{}','1576025645');

-- ----------------------------
-- Table structure for tp_wenhua_core
-- ----------------------------
DROP TABLE IF EXISTS `tp_wenhua_core`;
CREATE TABLE `tp_wenhua_core` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` int(255) DEFAULT '0',
  `status` int(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_wenhua_core
-- ----------------------------
INSERT INTO `tp_wenhua_core` (`id`,`img`,`title`,`content`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','/tmp/picture/k3sch3js_ds1iefcm3tk5de8a4d30c4d3.png','使命','为环保型社会建设而不断努力，不断创新。','0','1575527657','1575527657','','0','1');
INSERT INTO `tp_wenhua_core` (`id`,`img`,`title`,`content`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','/tmp/picture/k3schw3k_4x99w9dwnj8k5de8a4f89e3aa.png','愿景','未来的博楷应该是高科技的博楷、服务的博楷、可持续发展的博楷。','0','1575527690','1575527690','','0','1');
INSERT INTO `tp_wenhua_core` (`id`,`img`,`title`,`content`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','/tmp/picture/k3sciih4_4qf1nk6i9d6o5de8a515981ee.png','核心价值','成就客户、造福员工、创意创新、诚信正直。','0','1575527718','1575527718','','0','1');

-- ----------------------------
-- Table structure for tp_wenhua_culture
-- ----------------------------
DROP TABLE IF EXISTS `tp_wenhua_culture`;
CREATE TABLE `tp_wenhua_culture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_wenhua_culture
-- ----------------------------
INSERT INTO `tp_wenhua_culture` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','企业文化','经过不断的探索和实践，我们本着为客户复制，为自身可持续发展的原则，形成了自身特有并且会继续努力和提高的企业价值观，期待为客户提供更好的服务，为企业提供更强的发展动力。','1575527062','1575527062','','0','1');

-- ----------------------------
-- Table structure for tp_wenhua_tdkw
-- ----------------------------
DROP TABLE IF EXISTS `tp_wenhua_tdkw`;
CREATE TABLE `tp_wenhua_tdkw` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_wenhua_tdkw
-- ----------------------------
INSERT INTO `tp_wenhua_tdkw` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','企业文化-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575527418','1575527418','0','0','1');

-- ----------------------------
-- Table structure for tp_wenhua_value
-- ----------------------------
DROP TABLE IF EXISTS `tp_wenhua_value`;
CREATE TABLE `tp_wenhua_value` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `isdelete` tinyint(255) DEFAULT '0',
  `status` tinyint(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_wenhua_value
-- ----------------------------
INSERT INTO `tp_wenhua_value` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','核心价值','成就客户&mdash;致力于客户的满意与成功','1575527753','1575527753','','0','1');
INSERT INTO `tp_wenhua_value` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','核心价值','创意创新&mdash;追求速度和效率，专注于对客户和公司实用性的创新','1575527786','1575527786','','0','1');
INSERT INTO `tp_wenhua_value` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','核心价值','造福员工&mdash;努力提高员工的幸福指数','1575527800','1575527800','','0','1');
INSERT INTO `tp_wenhua_value` (`id`,`title`,`content`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('4','核心价值','诚信正直&mdash;建立信任与负责任的人际关系','1575527810','1575527810','','0','1');

-- ----------------------------
-- Table structure for tp_zizhi_honor
-- ----------------------------
DROP TABLE IF EXISTS `tp_zizhi_honor`;
CREATE TABLE `tp_zizhi_honor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sort` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  `isdelete` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_zizhi_honor
-- ----------------------------
INSERT INTO `tp_zizhi_honor` (`id`,`title`,`img`,`name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','荣誉资质','/tmp/uploads/20191205\b6b5d428796e0693664f5f62426eefc9.jpg','荣誉资质','0','1575528852','1575528852','0','0','1');
INSERT INTO `tp_zizhi_honor` (`id`,`title`,`img`,`name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('2','荣誉资质','/tmp/uploads/20191205\7e0100656fe251d54f473b189db80035.jpg','荣誉资质','0','1575528876','1575528876','0','0','1');
INSERT INTO `tp_zizhi_honor` (`id`,`title`,`img`,`name`,`sort`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('3','荣誉资质','/tmp/uploads/20191205\95f7d597584499650502d978d3c5de5c.jpg','荣誉资质','0','1575528893','1575528893','0','0','1');

-- ----------------------------
-- Table structure for tp_zizhi_tdkz
-- ----------------------------
DROP TABLE IF EXISTS `tp_zizhi_tdkz`;
CREATE TABLE `tp_zizhi_tdkz` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '描述',
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '关键词',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `delete_time` int(11) NOT NULL COMMENT '删除时间',
  `isdelete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- ----------------------------
-- Records of tp_zizhi_tdkz
-- ----------------------------
INSERT INTO `tp_zizhi_tdkz` (`id`,`title`,`description`,`keywords`,`create_time`,`update_time`,`delete_time`,`isdelete`,`status`) VALUES ('1','荣誉资质-太阳能路灯厂家-保定博楷电子科技有限公司','','保定太阳能路灯,太阳能路灯厂家','1575531277','1575531277','0','0','1');

