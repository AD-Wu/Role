/*
 Navicat MySQL Data Transfer

 Source Server         : MyMac
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : springbootv2

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 06/30/2021 09:53:01 AM
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `doraemon`
-- ----------------------------
DROP TABLE IF EXISTS `doraemon`;
CREATE TABLE `doraemon` (
  `id` varchar(16) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `doraemon`
-- ----------------------------
BEGIN;
INSERT INTO `doraemon` VALUES ('1', '王五'), ('2', '赵六');
COMMIT;

-- ----------------------------
--  Table structure for `pikachu`
-- ----------------------------
DROP TABLE IF EXISTS `pikachu`;
CREATE TABLE `pikachu` (
  `id` varchar(64) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `pikachu`
-- ----------------------------
BEGIN;
INSERT INTO `pikachu` VALUES ('1', '1'), ('2', '李四'), ('3', '3'), ('4', '4'), ('52bbc57e11e24dbb9a3a9d12c87b5e41', 'Luna');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???',
  `areaCode` varchar(40) NOT NULL COMMENT '???',
  `cityCode` varchar(40) DEFAULT NULL COMMENT '?????',
  `areaName` varchar(40) NOT NULL COMMENT '???',
  `shortName` varchar(20) NOT NULL COMMENT '??',
  `lng` varchar(20) DEFAULT NULL COMMENT '??',
  `lat` varchar(20) DEFAULT NULL COMMENT '??',
  `sort` int(6) DEFAULT NULL COMMENT '??',
  `gmtCreate` datetime DEFAULT NULL COMMENT '????',
  `gmtModified` datetime DEFAULT NULL COMMENT '????',
  `memo` varchar(250) DEFAULT NULL COMMENT '??',
  `dataState` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`areaCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='????';

-- ----------------------------
--  Records of `t_sys_area`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_area` VALUES ('1975', '500101', '500100', '???', '??', '108.380249', '30.807808', '28', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1976', '500102', '500100', '???', '??', '107.394905', '29.703651', '11', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1977', '500103', '500100', '???', '??', '106.562881', '29.556742', '37', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1978', '500104', '500100', '????', '???', '106.48613', '29.481003', '6', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1979', '500105', '500100', '???', '??', '106.532845', '29.575352', '13', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1980', '500106', '500100', '????', '???', '106.454201', '29.541224', '24', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1981', '500107', '500100', '????', '???', '106.480988', '29.523493', '15', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1982', '500108', '500100', '???', '??', '106.560814', '29.523993', '18', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1983', '500109', '500100', '???', '??', '106.437866', '29.82543', '2', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1984', '500112', '500100', '???', '??', '106.512848', '29.601452', '35', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1985', '500113', '500100', '???', '??', '106.519424', '29.38192', '1', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1986', '500114', '500100', '???', '??', '108.782578', '29.527548', '21', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1987', '500115', '500100', '???', '??', '107.074852', '29.833672', '4', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1988', '500222', '500100', '???', '??', '106.651421', '29.028091', '22', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1989', '500223', '500100', '???', '??', '105.84182', '30.189554', '27', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1990', '500224', '500100', '???', '??', '106.054947', '29.839945', '26', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1991', '500225', '500100', '???', '??', '105.715317', '29.700499', '7', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1992', '500226', '500100', '???', '??', '105.594063', '29.403627', '23', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1993', '500227', '500100', '???', '??', '106.231125', '29.59358', '3', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1994', '500228', '500100', '???', '??', '107.800034', '30.672169', '17', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1995', '500229', '500100', '???', '??', '108.664902', '31.946293', '5', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1996', '500230', '500100', '???', '??', '107.732483', '29.866425', '9', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1997', '500231', '500100', '???', '??', '107.348694', '30.330011', '8', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1998', '500232', '500100', '???', '??', '107.756554', '29.323759', '29', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1999', '500233', '500100', '??', '??', '108.037521', '30.291536', '38', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2000', '500234', '500100', '??', '??', '108.413315', '31.167734', '16', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2001', '500235', '500100', '???', '??', '108.697701', '30.930529', '36', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2002', '500236', '500100', '???', '??', '109.465775', '31.019966', '10', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2003', '500237', '500100', '???', '??', '109.878929', '31.074842', '30', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2004', '500238', '500100', '???', '??', '109.628914', '31.396601', '31', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2005', '500240', '500100', '????????', '??', '108.11245', '29.998529', '25', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2006', '500241', '500100', '??????????', '??', '108.99604', '28.444773', '32', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2007', '500242', '500100', '??????????', '??', '108.767204', '28.839828', '34', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2008', '500243', '500100', '??????????', '??', '108.16655', '29.293856', '20', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2009', '500381', '500100', '???', '??', '106.253159', '29.283386', '14', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2010', '500382', '500100', '???', '??', '106.265556', '29.990993', '12', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2011', '500383', '500100', '???', '??', '105.894714', '29.348747', '33', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2012', '500384', '500100', '???', '??', '107.098152', '29.156647', '19', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_city`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_city`;
CREATE TABLE `t_sys_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???',
  `cityCode` varchar(40) NOT NULL COMMENT '???',
  `cityName` varchar(40) NOT NULL COMMENT '???',
  `shortName` varchar(20) NOT NULL COMMENT '??',
  `provinceCode` varchar(40) DEFAULT NULL COMMENT '???',
  `lng` varchar(20) DEFAULT NULL COMMENT '??',
  `lat` varchar(20) DEFAULT NULL COMMENT '??',
  `sort` int(6) DEFAULT NULL COMMENT '??',
  `gmtCreate` datetime DEFAULT NULL COMMENT '????',
  `gmtModified` datetime DEFAULT NULL COMMENT '????',
  `memo` varchar(250) DEFAULT NULL COMMENT '??',
  `dataState` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`cityCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='????';

-- ----------------------------
--  Records of `t_sys_city`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_city` VALUES ('255', '500100', '???', '??', '500000', '106.504959', '29.533155', '1', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parentID` varchar(255) DEFAULT NULL COMMENT '?id',
  `deptName` varchar(255) DEFAULT NULL COMMENT '????',
  `leader` varchar(255) DEFAULT NULL COMMENT '?????',
  `phone` varchar(255) DEFAULT NULL COMMENT '??',
  `email` varchar(255) DEFAULT NULL COMMENT '??',
  `status` int(255) DEFAULT NULL COMMENT '??',
  `orderNum` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Table structure for `t_sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `dictSort` int(4) DEFAULT '0' COMMENT '????',
  `dictLabel` varchar(100) DEFAULT '' COMMENT '????',
  `dictValue` varchar(100) DEFAULT '' COMMENT '????',
  `dictType` varchar(100) DEFAULT '' COMMENT '????',
  `cssClass` varchar(100) DEFAULT '' COMMENT '????????????',
  `listClass` varchar(100) DEFAULT '' COMMENT '??????',
  `isDefault` char(1) DEFAULT 'N' COMMENT '?????Y? N??',
  `status` char(1) DEFAULT '0' COMMENT '???0?? 1???',
  `createBy` varchar(64) DEFAULT '' COMMENT '???',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  `updateBy` varchar(64) DEFAULT '' COMMENT '???',
  `updateTime` datetime DEFAULT NULL COMMENT '????',
  `remark` varchar(500) DEFAULT '' COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='?????';

-- ----------------------------
--  Records of `t_sys_dict_data`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080', '1', '??', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', ''), ('331043525137403904', '2', '??', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2020-12-27 13:57:22', ''), ('340080322395901952', '1', '??', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', ''), ('340080779201744896', '2', '??', '-1', 'sys_province_state', '', 'important', 'N', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2020-12-27 13:57:46', ''), ('373494384659927040', '0', 'GET??', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-12-27 14:27:28', ''), ('373494483465146368', '1', 'POST??', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-12-27 14:26:59', ''), ('506431838588375040', '0', 'DELETE??', '3', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:46:10', 'admin', '2021-01-05 13:48:43', ''), ('506432620712824832', '0', 'PUT??', '4', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:49:16', 'admin', '2021-01-05 13:49:20', '');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `dictName` varchar(100) DEFAULT '' COMMENT '????',
  `dictType` varchar(100) DEFAULT '' COMMENT '????',
  `status` char(1) DEFAULT '0' COMMENT '???0?? 1???',
  `createBy` varchar(64) DEFAULT '' COMMENT '???',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  `updateBy` varchar(64) DEFAULT '' COMMENT '???',
  `updateTime` datetime DEFAULT NULL COMMENT '????',
  `remark` varchar(500) DEFAULT '' COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dictType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='?????';

-- ----------------------------
--  Records of `t_sys_dict_type`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344', '????', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '????'), ('373493952487231488', '?????', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-03-29 23:23:43', '?????'), ('6', '????', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-27 14:26:42', '??????');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_email`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '??',
  `receiversEmail` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '???????',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '????',
  `content` text COLLATE utf8_bin COMMENT '??',
  `sendUserID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '???id',
  `sendUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '?????',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='????';

-- ----------------------------
--  Records of `t_sys_email`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_email` VALUES ('503928650819833856', '87766867@qq.com', '87766867@qq.com', 'fffffff<img src=\"http://localhost:8080/demo/static/component/layui/images/face/22.gif\" alt=\"[??]\">', '1', 'admin', '2020-12-29 15:59:23'), ('503928914918379520', '87766867@qq.com', '87766867@qq.com', 'ssssssfsdfsdfsdf<img src=\"http://localhost:8080/demo/static/component/layui/images/face/42.gif\" alt=\"[??]\"><img src=\"http://localhost:8080/demo/static/component/layui/images/face/71.gif\" alt=\"[??]\">', '1', 'admin', '2020-12-29 16:00:26'), ('595001021625794560', '87766867@qq.com', 'springbootv2????', '<p>?????</p>', '1', 'admin', '2019-06-30 21:21:38');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_file`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '??',
  `fileName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '????',
  `bucketName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `fileSize` bigint(50) DEFAULT NULL COMMENT '????',
  `fileSuffix` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `createUserID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '???id',
  `createUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '?????',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  `updateUserID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '???',
  `updateUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '?????',
  `updateTime` datetime DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='?????';

-- ----------------------------
--  Records of `t_sys_file`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_file` VALUES ('503885495013609472', '503895116063313920.png', 'v2-cloud', '48831', 'image/png', '1', 'admin', '2020-12-29 13:07:54', '1', 'admin', '2020-12-29 13:46:08'), ('503885528857448448', '503895039806672896.png', 'v2-cloud', '71460', 'image/png', '1', 'admin', '2020-12-29 13:08:02', '1', 'admin', '2020-12-29 13:45:50');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_inter_url`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `interName` varchar(255) DEFAULT NULL COMMENT '????',
  `url` varchar(255) DEFAULT NULL COMMENT '??url',
  `type` int(2) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='??url?';

-- ----------------------------
--  Records of `t_sys_inter_url`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_inter_url` VALUES ('411495038321823744', '?????', '/DictDataController/add', '2'), ('506433268967673856', '?????', '/DictDataController/edit', '2'), ('506434978159136768', '?????', '/DictDataController/remove', '3'), ('506435565655298048', '???????', '/DictDataController/updateDefault', '4'), ('506435921147727872', '???????2', '/DictDataController/updateEnable', '4'), ('506436031403397120', '???????', '/DictTypeController/add', '2'), ('506436148680331264', '???????', '/DictTypeController/edit', '2'), ('506436165776314368', '???????', '/DictTypeController/remove', '3'), ('506436180578013184', '?????????', '/DictTypeController/updateEnable', '4'), ('506436662134444032', '????', '/EmailController/add', '2'), ('506436757722632192', '????', '/EmailController/remove', '3'), ('506437010966319104', '????', '/LogController/remove', '3'), ('506437420099702784', 'oss??', '/oss/bucket/', '2'), ('506437439112482816', 'oss??', '/oss/bucket/', '3'), ('506437964436475904', '????', '/PermissionController/add', '2'), ('506438040823140352', '????', '/PermissionController/edit', '2'), ('506438121399914496', '????', '/PermissionController/remove', '3'), ('506438208599494656', '????', '/PermissionController/saveRolePower', '4'), ('506438306276446208', '??????', '/PermissionController/updateVisible', '4'), ('506438447226032128', '?????', '/SysQuartzJobController/add', '2'), ('506438589874311168', ' ????????', '/SysQuartzJobController/changeStatus', '4'), ('506438725388079104', '?????', '/SysQuartzJobController/edit', '2'), ('506438870959788032', '?????', '/SysQuartzJobController/remove', '3'), ('506439003516571648', '????????', '/SysQuartzJobLogController/remove', '3'), ('506439171481669632', '????', '/RoleController/add', '2'), ('506439186778296320', '????', '/RoleController/edit', '4'), ('506439297122045952', '????', '/RoleController/remove', '3'), ('506439669773373440', '????', '/SysAreaController/add', '2'), ('506439687859212288', '????', '/SysAreaController/edit', '2'), ('506439835490324480', '????', '/SysAreaController/remove', '3'), ('506440103976112128', 'City??', '/SysCityController/add', '2'), ('506440145147400192', 'City??', ' /SysCityController/edit', '2'), ('506440217188765696', 'City??', '/SysCityController/remove', '3'), ('506440386873528320', '????', '/SysDepartmentController/add', '2'), ('506440448223612928', '????', '/SysDepartmentController/edit', '4'), ('506440515110178816', '????', '/SysDepartmentController/remove', '3'), ('506440574635741184', '????', '/SysDepartmentController/updateVisible', '4'), ('506440668508459008', '???url??', '/SysInterUrlController/add', '2'), ('506440708056551424', '???url??', '/SysInterUrlController/edit', '2'), ('506440802856210432', '???url??', '/SysInterUrlController/remove', '3'), ('506441001783660544', '????', '/SysNoticeController/add', '2'), ('506441051263864832', '????', '/SysNoticeController/edit', '2'), ('506441105743679488', '????', '/SysNoticeController/remove', '3'), ('506441242591236096', '????', '/SysPositionController/add', '2'), ('506441287038275584', '????', '/SysPositionController/edit', '2'), ('506441350200299520', '????', '/SysPositionController/remove', '3'), ('506441420677189632', '??????', '/SysPositionController/updateVisible', '4'), ('506441780003213312', '????', '/SysProvinceController/add', '2'), ('506441807383629824', '????', '/SysProvinceController/edit', '2'), ('506441871850082304', '????', '/SysProvinceController/remove', '3'), ('506441980012793856', '????', '/SysStreetController/add', '2'), ('506442015706320896', '????', '/SysStreetController/edit', '2'), ('506442092445306880', '????', '/SysStreetController/remove', '3'), ('506442186552905728', '????', '/UserController/add', '2'), ('506442212696002560', '????', '/UserController/edit', '2'), ('506442271252680704', '??????', '/UserController/editPwd', '2'), ('506442344443285504', '????', '/UserController/remove', '3'), ('506444610625736704', '???url??', '/SysInterUrlController/copy/', '3');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '??',
  `title` varchar(255) DEFAULT NULL COMMENT '??',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `type` int(5) DEFAULT NULL COMMENT '??',
  `createID` varchar(255) DEFAULT NULL COMMENT '???id',
  `createUsername` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '???name',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='??';

-- ----------------------------
--  Records of `t_sys_notice`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice` VALUES ('330381411007729664', '????', '<p>???<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '1', '1', 'admin', '2019-09-08 02:24:37'), ('330381806358630400', '????', '<p>????<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '2', '1', 'admin', '2019-09-08 02:26:11'), ('373478036928073728', '?????????', '<p>??????????<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', '1', '1', 'admin', '2020-01-05 00:35:13');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_notice_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `noticeID` varchar(255) DEFAULT NULL COMMENT '??id',
  `userID` varchar(255) DEFAULT NULL COMMENT '??id',
  `state` int(2) DEFAULT NULL COMMENT '0??? 1 ??',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='??_????';

-- ----------------------------
--  Records of `t_sys_notice_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', '1'), ('330381411045478400', '330381411007729664', '488294747442511872', '0'), ('330381806375407616', '330381806358630400', '1', '1'), ('330381806379601920', '330381806358630400', '488294747442511872', '0'), ('330622143622680576', '330622143597514752', '1', '1'), ('330622143626874880', '330622143597514752', '488294747442511872', '0'), ('354984345649418240', '354984345632641024', '1', '1'), ('373478037158760448', '373478036928073728', '1', '1'), ('373478037162954752', '373478036928073728', '368026921239449600', '0'), ('373478037171343360', '373478036928073728', '368026937181999104', '0'), ('373478037175537664', '373478036928073728', '368027013392502784', '0'), ('373478037183926272', '373478036928073728', '368027030899527680', '0'), ('373478037192314880', '373478036928073728', '368027048402358272', '0'), ('373478037204897792', '373478036928073728', '368027066563694592', '0'), ('373478037213286400', '373478036928073728', '368027087866564608', '0'), ('373478037217480704', '373478036928073728', '368027104895438848', '0'), ('373478037225869312', '373478036928073728', '368027130728157184', '0'), ('373478037230063616', '373478036928073728', '368027151624179712', '0'), ('373478037238452224', '373478036928073728', '368382463233363968', '0'), ('502750147499921408', '502750147395063808', '1', '0'), ('502750147508310016', '502750147395063808', '433236479427350528', '0'), ('502758207983325184', '502758207907827712', '1', '0'), ('502758207991713792', '502758207907827712', '433236479427350528', '0'), ('502820822130495488', '502820822042415104', '1', '0'), ('502820822138884096', '502820822042415104', '433236479427350528', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_oper_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `operName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '???',
  `operUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `operParam` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `errorMsg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `operTime` date DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='?????';

-- ----------------------------
--  Records of `t_sys_oper_log`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_oper_log` VALUES ('354984005894017024', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-14'), ('354988722611163136', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-15'), ('354989789822455808', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}', null, '2019-11-15'), ('368026921411416064', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}', null, '2019-12-20'), ('368026937215553536', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}', null, '2019-12-20'), ('368026972204437504', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}', null, '2019-12-20'), ('368027013421862912', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}', null, '2019-12-20'), ('368027030928887808', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}', null, '2019-12-20'), ('368027048427524096', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}', null, '2019-12-20'), ('368027066593054720', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}', null, '2019-12-20'), ('368027087887536128', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}', null, '2019-12-20'), ('368027104924798976', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}', null, '2019-12-20'), ('368027130757517312', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}', null, '2019-12-20'), ('368027151649345536', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}', null, '2019-12-20'), ('368382463388553216', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}', null, '2019-12-21'), ('433236479515430912', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"fuce\"],\"password\":[\"111111\"],\"nickname\":[\"fuce\"]}', null, '2020-06-17'), ('495560243967823872', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"??????\"],\"password\":[\"123456\"],\"nickname\":[\"??????\"],\"depId\":[\"3\"],\"positionId\":[\"411477874382606336\"]}', null, '2020-12-06'), ('495570972590608384', '????', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"??\"],\"password\":[\"111111\"],\"nickname\":[\"??????\"],\"depId\":[\"4\"],\"posId\":[\"410792443127140352\"]}', null, '2020-12-06'), ('501769007083425792', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501772647076597760', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501775645991374848', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501776479886118912', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501779375067369472', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501779625379237888', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501780125961031680', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501782630312841216', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eeeeee\"],\"nickname\":[\"eeeeeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501783503843758080', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"55555\"],\"password\":[\"5555\"],\"nickname\":[\"555555\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501783738078859264', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"3\"],\"password\":[\"33333333\"],\"nickname\":[\"3333333333333333333\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"????\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488289006124007424\"]}', null, '2020-12-24'), ('501786177666420736', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eee\"],\"nickname\":[\"eeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501786241449201664', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"r\"],\"password\":[\"rrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501786725912285184', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrr\"],\"password\":[\"rrrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrr\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"????\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501787814850072576', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrrwwww\"],\"password\":[\"rrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"\"]}', null, '2020-12-24'), ('501787928188555264', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"yyyy\"],\"password\":[\"yyyyyyyyyyyyy\"],\"nickname\":[\"yyyyyyyyyyyyyy\"],\"depId\":[\"5\"],\"selectParent_select_input\":[\"????\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501796773694672896', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"tttt\"],\"password\":[\"ttt\"],\"nickname\":[\"tttttt\"],\"depId\":[\"4\"],\"selectParent_select_input\":[\"?????\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488243256161730560,488305788310257664\"]}', null, '2020-12-24'), ('501985140440961024', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"11111111111\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501986656363089920', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"admin\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('558501933791449088', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"query\"],\"password\":[\"1\"],\"nickname\":[\"??\"],\"depId\":[\"\"],\"selectParent_select_input\":[\"\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560\"]}', null, '2021-05-29'), ('558502042549751808', '????', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"hehe\"],\"password\":[\"1\"],\"nickname\":[\"??\"],\"depId\":[\"\"],\"selectParent_select_input\":[\"\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560\"]}', null, '2021-05-29');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '????',
  `descripion` varchar(255) DEFAULT NULL COMMENT '????',
  `url` varchar(255) DEFAULT NULL COMMENT '????',
  `isBlank` int(255) DEFAULT '0' COMMENT '???? 0 ??? 1??',
  `pid` varchar(255) DEFAULT NULL COMMENT '???id',
  `perms` varchar(255) DEFAULT NULL COMMENT '????',
  `type` int(11) DEFAULT NULL COMMENT '??   0???   1???   2???',
  `icon` varchar(255) DEFAULT NULL COMMENT '????',
  `orderNum` int(11) DEFAULT NULL COMMENT '??',
  `visible` int(255) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Records of `t_sys_permission`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission` VALUES ('10', '????', '????', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0'), ('11', '????', '????', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0'), ('12', '????', '????', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0'), ('13', '????', '????', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0'), ('14', '????', '????', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0'), ('15', '????', '????', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0'), ('16', '????', '????', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0'), ('17', '????', '????', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0'), ('18', '????', '????', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0'), ('4', '????', '????', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0'), ('410791701859405824', '????', null, '/SysPositionController/view', '0', '411522822607867904', 'gen:sysPosition:view', '1', 'layui-icon fa fa-vcard', '4', '0'), ('4107917018594058251', '?????', '????', '/SysPositionController/list', '0', '410791701859405824', 'gen:sysPosition:list', '2', '', null, '0'), ('4107917018594058262', '?????', '????', '/SysPositionController/add', '0', '410791701859405824', 'gen:sysPosition:add', '2', 'entypo-plus-squared', null, '0'), ('4107917018594058273', '?????', '????', '/SysPositionController/remove', '0', '410791701859405824', 'gen:sysPosition:remove', '2', 'entypo-trash', null, '0'), ('4107917018594058284', '?????', '????', '/SysPositionController/edit', '0', '410791701859405824', 'gen:sysPosition:edit', '2', 'fa fa-wrench', null, '0'), ('410989805699207168', '????', null, '/SysDepartmentController/view', '0', '411522822607867904', 'gen:sysDepartment:view', '1', 'layui-icon fa fa-odnoklassniki', '5', '0'), ('4109898056992071691', '????', '????', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:sysDepartment:list', '2', '', null, '0'), ('4109898056992071702', '????', '????', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:sysDepartment:add', '2', 'entypo-plus-squared', null, '0'), ('4109898056992071713', '????', '????', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:sysDepartment:remove', '2', 'entypo-trash', null, '0'), ('4109898056992071724', '????', '????', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:sysDepartment:edit', '2', 'fa fa-wrench', null, '0'), ('411522822607867904', '????', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon-user', '10', '0'), ('486690002869157888', '??????', '??????', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0'), ('5', '????', '????', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0'), ('557897428846645248', '????', null, '/ServiceController/view', '0', '411522822607867904', 'system:service:view', '1', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon', '0', '0'), ('557911362592968704', '??', null, '/TextController/view', '0', '558460532642942976', 'text:view', '1', 'layui-icon layui-icon', '1', '0'), ('558460532642942976', '??', null, '', '0', '0', '', '0', 'layui-icon layui-icon-release', '1', '0'), ('558462951040880640', 'element', null, '/ProxyController/view', '0', '558460532642942976', 'proxy:view', '1', 'layui-icon', '2', '0'), ('6', '????', '????', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0'), ('7', '????', '????', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0'), ('8', '????', '????', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0'), ('9', '????', '????', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) NOT NULL,
  `roleID` varchar(255) DEFAULT NULL COMMENT '??id',
  `permissionID` varchar(255) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???????';

-- ----------------------------
--  Records of `t_sys_permission_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission_role` VALUES ('037dac1c-6198-42f9-b9e3-005856699631', '488243256161730560', '410791701859405824'), ('10c29134-7c5b-4cd3-8a93-3e755bd6a806', '488243256161730560', '6'), ('1340a734-d03e-4d96-b687-280bce7ff37f', '488243256161730560', '16'), ('17c4ce5f-22cc-4391-8a0a-7179352c26c7', '488243256161730560', '4107917018594058262'), ('1934af5a-9fba-4a37-8f2f-6d51592287ff', '488243256161730560', '558462951040880640'), ('281b4b13-0fb5-4623-b34c-4cfc705af8db', '488243256161730560', '486690002869157888'), ('2ff00605-1257-42e0-8902-1ba215ad42d0', '488243256161730560', '8'), ('38a6f5e1-1f80-44ed-8b18-a34f2fa982fa', '488243256161730560', '557897428846645248'), ('3b195816-1a20-433b-9e94-d90adb7e2b95', '488243256161730560', '18'), ('41b1e916-1ea0-4aee-a3eb-cf37a977e3f6', '488243256161730560', '5'), ('53eb5f2c-bfec-42d0-9328-9db3256ee852', '488243256161730560', '4107917018594058273'), ('5553d3f9-46a4-4912-b629-85f280d8d080', '488243256161730560', '9'), ('620709f3-ffe7-4f6f-bdea-460bc1077707', '488243256161730560', '4107917018594058284'), ('6574a261-7488-48cd-9c37-d30f352cf454', '488243256161730560', '4109898056992071702'), ('671004f8-76ce-492e-bd3c-3136e5d3d639', '488243256161730560', '14'), ('69ecbe97-a5ef-4f84-8c4c-dca38afa57c5', '488243256161730560', '17'), ('6bec10bd-ecf2-4403-ae73-d75d5cf48d0e', '488243256161730560', '4109898056992071713'), ('6d421e46-0a35-4f91-bc62-324711feda4e', '488243256161730560', '13'), ('72801c76-c889-47d8-b7b9-134d79176bfa', '488243256161730560', '15'), ('7e783c30-c9c2-4d9f-8562-3f92c668f6f6', '488243256161730560', '4109898056992071724'), ('99840169-3ae5-4068-acf4-5e61e9fbab90', '488243256161730560', '10'), ('9e6186e0-a9f7-4538-805e-0d606e5c225a', '488243256161730560', '7'), ('ae956236-a1bc-4106-9886-2a4925d3fed5', '488243256161730560', '410989805699207168'), ('b3a34648-c876-4f9d-9140-6f2747c613cd', '488243256161730560', '12'), ('b4e6d2b8-4b92-4bba-8e79-38c9e29850fa', '488243256161730560', '411522822607867904'), ('bb536f3a-dad8-47b8-83cf-05f8b5a74410', '488243256161730560', '4'), ('cb043042-eed5-4a8e-a149-34b2b682241e', '488243256161730560', '558460532642942976'), ('d7fa5687-cb3e-4adf-8c28-3b5bf5cd9103', '488243256161730560', '557911362592968704'), ('dcc04a60-57cd-49ff-9a93-43893a06754e', '488243256161730560', '11'), ('e8183c10-f253-4598-9b75-073810e7d2ac', '488243256161730560', '4107917018594058251'), ('f43dbbd7-57f3-473b-9031-9fbb6c740b03', '488243256161730560', '4109898056992071691');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_position`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `postName` varchar(255) DEFAULT NULL COMMENT '????',
  `orderNum` int(11) DEFAULT NULL COMMENT '??',
  `status` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Table structure for `t_sys_province`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_province`;
CREATE TABLE `t_sys_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???',
  `provinceCode` varchar(40) NOT NULL COMMENT '????',
  `provinceName` varchar(50) NOT NULL COMMENT '????',
  `shortName` varchar(20) NOT NULL COMMENT '??',
  `lng` varchar(20) DEFAULT NULL COMMENT '??',
  `lat` varchar(20) DEFAULT NULL COMMENT '??',
  `sort` int(6) DEFAULT NULL COMMENT '??',
  `gmtCreate` datetime DEFAULT NULL COMMENT '????',
  `gmtModified` datetime DEFAULT NULL COMMENT '????',
  `memo` varchar(250) DEFAULT NULL COMMENT '??',
  `dataState` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`provinceCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Records of `t_sys_province`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_province` VALUES ('22', '500000', '??', '??', '106.504959', '29.533155', '22', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_quartz_job`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job` (
  `id` varchar(255) NOT NULL COMMENT '??id',
  `jobName` varchar(255) DEFAULT NULL COMMENT '????',
  `jobGroup` varchar(255) DEFAULT NULL COMMENT '????',
  `invokeTarget` varchar(255) DEFAULT NULL COMMENT '???????',
  `cronExpression` varchar(255) DEFAULT NULL COMMENT 'cron?????',
  `misfirePolicy` varchar(255) DEFAULT NULL COMMENT 'cron????',
  `concurrent` varchar(255) DEFAULT NULL COMMENT '???????0?? 1???',
  `status` int(11) DEFAULT NULL COMMENT '?????0?? 1???',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???????';

-- ----------------------------
--  Records of `t_sys_quartz_job`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/5 * * * * ?', '2', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_quartz_job_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
CREATE TABLE `t_sys_quartz_job_log` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `jobName` varchar(255) DEFAULT NULL COMMENT '????',
  `jobGroup` varchar(255) DEFAULT NULL COMMENT '????',
  `invokeTarget` varchar(255) DEFAULT NULL COMMENT '???????',
  `jobMessage` varchar(255) DEFAULT NULL COMMENT '????',
  `status` int(11) DEFAULT NULL COMMENT '?????0?? 1???',
  `exceptionInfo` varchar(255) DEFAULT NULL COMMENT '????',
  `startTime` datetime DEFAULT NULL COMMENT '????',
  `endTime` datetime DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='?????????';

-- ----------------------------
--  Records of `t_sys_quartz_job_log`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610566486724608', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2019-09-17 00:16:07', '2019-09-17 00:16:07'), ('333610572270669824', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2019-09-17 00:16:09', '2019-09-17 00:16:09'), ('354984595927732224', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '0', null, '2019-11-14 23:48:53', '2019-11-14 23:48:53'), ('354990312722141184', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2019-11-15 00:11:36', '2019-11-15 00:11:36'), ('354996339316232192', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '0', null, '2019-11-15 00:35:33', '2019-11-15 00:35:33'), ('415421274211356672', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????5??', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274303631360', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274324602880', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274366545920', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421315554611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:22:50', '2020-04-29 18:22:50'), ('415421357501845504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:23:00', '2020-04-29 18:23:00'), ('415421399453274112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:23:10', '2020-04-29 18:23:10'), ('415421441375342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:23:20', '2020-04-29 18:23:20'), ('415421483351937024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-04-29 18:23:30', '2020-04-29 18:23:30'), ('415421525257228288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:23:40', '2020-04-29 18:23:40'), ('415421567233822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:23:50', '2020-04-29 18:23:50'), ('415421609130725376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:24:00', '2020-04-29 18:24:00'), ('415421648662040576', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:24:09', '2020-04-29 18:24:09'), ('415421651073765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:24:10', '2020-04-29 18:24:10'), ('415421693041971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:24:20', '2020-04-29 18:24:20'), ('415421734959845376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:24:30', '2020-04-29 18:24:30'), ('415421776974188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:24:40', '2020-04-29 18:24:40'), ('415421818862702592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:24:50', '2020-04-29 18:24:50'), ('415421860805742592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:25:00', '2020-04-29 18:25:00'), ('415421902736199680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:25:10', '2020-04-29 18:25:10'), ('415423552540512256', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????4??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552636981248', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552670535680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552687312896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552716673024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552741838848', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423559536611328', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:45', '2020-04-29 18:31:45'), ('415423580482965504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:31:50', '2020-04-29 18:31:50'), ('415423601454485504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:31:55', '2020-04-29 18:31:55'), ('415423622405033984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:32:00', '2020-04-29 18:32:00'), ('415423643372359680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:32:05', '2020-04-29 18:32:05'), ('415423664343879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:10', '2020-04-29 18:32:10'), ('415423685311205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:15', '2020-04-29 18:32:15'), ('415423706328862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:20', '2020-04-29 18:32:20'), ('415423727325548544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:25', '2020-04-29 18:32:25'), ('415423748250931200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:30', '2020-04-29 18:32:30'), ('415423769188896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:35', '2020-04-29 18:32:35'), ('415423790227525632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:40', '2020-04-29 18:32:40'), ('415423811190657024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:32:45', '2020-04-29 18:32:45'), ('415423832178954240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:32:50', '2020-04-29 18:32:50'), ('415423853100142592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:32:55', '2020-04-29 18:32:55'), ('415423874054885376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:00', '2020-04-29 18:33:00'), ('415423895026405376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:05', '2020-04-29 18:33:05'), ('415423916002119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:10', '2020-04-29 18:33:10'), ('415423937015582720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:15', '2020-04-29 18:33:15'), ('415423957970325504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:20', '2020-04-29 18:33:20'), ('415423978925068288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:25', '2020-04-29 18:33:25'), ('415423999942725632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:30', '2020-04-29 18:33:30'), ('415424020889079808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:35', '2020-04-29 18:33:35'), ('415424041894154240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:40', '2020-04-29 18:33:40'), ('415424062844702720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:33:45', '2020-04-29 18:33:45'), ('415424083803639808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:50', '2020-04-29 18:33:50'), ('415424104754188288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:33:55', '2020-04-29 18:33:55'), ('415424125746679808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:34:00', '2020-04-29 18:34:00'), ('415424146726588416', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:05', '2020-04-29 18:34:05'), ('415424167727468544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:10', '2020-04-29 18:34:10'), ('415424188678017024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:15', '2020-04-29 18:34:15'), ('415424209636954112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:20', '2020-04-29 18:34:20'), ('415424230595891200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:34:25', '2020-04-29 18:34:25'), ('415424251567411200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:30', '2020-04-29 18:34:30'), ('415424272559902720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:35', '2020-04-29 18:34:35'), ('415424293518839808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:40', '2020-04-29 18:34:40'), ('415424314507137024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:34:45', '2020-04-29 18:34:45'), ('415424335436713984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:34:50', '2020-04-29 18:34:50'), ('415424356404039680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:34:55', '2020-04-29 18:34:55'), ('415424377396531200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:35:00', '2020-04-29 18:35:00'), ('415424398414188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:05', '2020-04-29 18:35:05'), ('415424419326988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:35:10', '2020-04-29 18:35:10'), ('415424440332062720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:35:15', '2020-04-29 18:35:15'), ('415424461282611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:20', '2020-04-29 18:35:20'), ('415424482254131200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:25', '2020-04-29 18:35:25'), ('415424503200485376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:30', '2020-04-29 18:35:30'), ('415424524163616768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:35', '2020-04-29 18:35:35'), ('415424545135136768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:40', '2020-04-29 18:35:40'), ('415424566148599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:35:45', '2020-04-29 18:35:45'), ('415424587103342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:35:50', '2020-04-29 18:35:50'), ('415424608150360064', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:35:55', '2020-04-29 18:35:55'), ('415424629029605376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:36:00', '2020-04-29 18:36:00'), ('415424650072428544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:05', '2020-04-29 18:36:05'), ('415424671035559936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:10', '2020-04-29 18:36:10'), ('415424691981914112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:15', '2020-04-29 18:36:15'), ('415424712961822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:20', '2020-04-29 18:36:20'), ('415424733899788288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:25', '2020-04-29 18:36:25'), ('415424754862919680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:30', '2020-04-29 18:36:30'), ('415424775888965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:36:35', '2020-04-29 18:36:35'), ('415424796797571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:36:40', '2020-04-29 18:36:40'), ('415424817836199936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:36:45', '2020-04-29 18:36:45'), ('415424838769971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:36:50', '2020-04-29 18:36:50'), ('415424859741491200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:36:55', '2020-04-29 18:36:55'), ('415424880696233984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:37:00', '2020-04-29 18:37:00'), ('415424901705502720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:05', '2020-04-29 18:37:05'), ('415424922681217024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:10', '2020-04-29 18:37:10'), ('415424943690485760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:15', '2020-04-29 18:37:15'), ('415424964632645632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:20', '2020-04-29 18:37:20'), ('415424985562222592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:37:25', '2020-04-29 18:37:25'), ('415425006516965376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:30', '2020-04-29 18:37:30'), ('415425027484291072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:37:35', '2020-04-29 18:37:35'), ('415425048476782592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-04-29 18:37:40', '2020-04-29 18:37:40'), ('415425069427331072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:37:45', '2020-04-29 18:37:45'), ('415425090436599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:37:50', '2020-04-29 18:37:50'), ('415425111412314112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:37:55', '2020-04-29 18:37:55'), ('415425132354473984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:38:00', '2020-04-29 18:38:00'), ('415425153334382592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:38:05', '2020-04-29 18:38:05'), ('415425174335262720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:10', '2020-04-29 18:38:10'), ('415425195290005504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:38:15', '2020-04-29 18:38:15'), ('415425216248942592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:20', '2020-04-29 18:38:20'), ('415425237224656896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-04-29 18:38:25', '2020-04-29 18:38:25'), ('415425258200371200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:30', '2020-04-29 18:38:30'), ('415425279192862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:35', '2020-04-29 18:38:35'), ('415425300126633984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:38:40', '2020-04-29 18:38:40'), ('415425321089765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:45', '2020-04-29 18:38:45'), ('415425342082256896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:38:50', '2020-04-29 18:38:50'), ('415425363041193984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:38:55', '2020-04-29 18:38:55'), ('415425384000131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:00', '2020-04-29 18:39:00'), ('415425404967456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:05', '2020-04-29 18:39:05'), ('415425425997697024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:39:10', '2020-04-29 18:39:10'), ('415425446956634112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:15', '2020-04-29 18:39:15'), ('415425467902988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:20', '2020-04-29 18:39:20'), ('415425488866119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:25', '2020-04-29 18:39:25'), ('415425509825056768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:39:30', '2020-04-29 18:39:30'), ('415425530800771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:39:35', '2020-04-29 18:39:35'), ('415425551768096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:40', '2020-04-29 18:39:40'), ('415425572743811072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:39:45', '2020-04-29 18:39:45'), ('415425593706942464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:50', '2020-04-29 18:39:50'), ('415425614678462464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:39:55', '2020-04-29 18:39:55'), ('415425635654176768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:00', '2020-04-29 18:40:00'), ('415425656629891072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:05', '2020-04-29 18:40:05'), ('415425677597216768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:10', '2020-04-29 18:40:10'), ('415425698568736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:15', '2020-04-29 18:40:15'), ('415425719540256768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:20', '2020-04-29 18:40:20'), ('415425740515971072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:25', '2020-04-29 18:40:25'), ('415425761487491072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:30', '2020-04-29 18:40:30'), ('415425782454816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:35', '2020-04-29 18:40:35'), ('415425803430531072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:40', '2020-04-29 18:40:40'), ('415425824397856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:45', '2020-04-29 18:40:45'), ('415425845373571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:40:50', '2020-04-29 18:40:50'), ('415425866340896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:40:55', '2020-04-29 18:40:55'), ('415425887312416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:00', '2020-04-29 18:41:00'), ('415425908283936768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:05', '2020-04-29 18:41:05'), ('415425929255456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:41:10', '2020-04-29 18:41:10'), ('415425950226976768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:15', '2020-04-29 18:41:15'), ('415425971198496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:20', '2020-04-29 18:41:20'), ('415425992165822464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:25', '2020-04-29 18:41:25'), ('415426013141536768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:30', '2020-04-29 18:41:30'), ('415426034117251072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:41:35', '2020-04-29 18:41:35'), ('415426055088771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:40', '2020-04-29 18:41:40'), ('415426076056096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:41:45', '2020-04-29 18:41:45'), ('415426117479043072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????4??', '0', null, '2020-04-29 18:41:51', '2020-04-29 18:41:51'), ('415426138983239680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:42:00', '2020-04-29 18:42:00'), ('415426180909502464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:42:10', '2020-04-29 18:42:10'), ('415426222856736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:42:20', '2020-04-29 18:42:20'), ('415426264799776768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:42:30', '2020-04-29 18:42:30'), ('415426306742816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:42:40', '2020-04-29 18:42:40'), ('415426348685856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:42:50', '2020-04-29 18:42:50'), ('415426390633091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:43:00', '2020-04-29 18:43:00'), ('415426432580325376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:43:10', '2020-04-29 18:43:10'), ('415426453539262464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:43:15', '2020-04-29 18:43:15'), ('415426474519171072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-04-29 18:43:20', '2020-04-29 18:43:20'), ('415426495486496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:43:25', '2020-04-29 18:43:25'), ('415426516462211072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:43:30', '2020-04-29 18:43:30'), ('415426537437925376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:43:35', '2020-04-29 18:43:35'), ('415426558417833984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:43:40', '2020-04-29 18:43:40'), ('415426579372576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:43:45', '2020-04-29 18:43:45'), ('415426600344096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:43:50', '2020-04-29 18:43:50'), ('415426789146497024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '0', null, '2020-04-29 18:44:35', '2020-04-29 18:44:35'), ('415426810071879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:44:40', '2020-04-29 18:44:40'), ('415426831039205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:44:45', '2020-04-29 18:44:45'), ('415426851998142464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:44:50', '2020-04-29 18:44:50'), ('415426872982245376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:44:55', '2020-04-29 18:44:55'), ('415426894041845760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:45:00', '2020-04-29 18:45:00'), ('415426914921091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:45:05', '2020-04-29 18:45:05'), ('415426935888416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:45:10', '2020-04-29 18:45:10'), ('415426956864131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:45:15', '2020-04-29 18:45:15'), ('415426977835651072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-04-29 18:45:20', '2020-04-29 18:45:20'), ('415427019774496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:45:30', '2020-04-29 18:45:30'), ('415427061713342464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:45:40', '2020-04-29 18:45:40'), ('415427103660576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????0??', '0', null, '2020-04-29 18:45:50', '2020-04-29 18:45:50'), ('503199187412848640', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????45??', '0', null, '2020-12-27 15:40:45', '2020-12-27 15:40:45'), ('503200830422388736', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????37??', '0', null, '2020-12-27 15:47:17', '2020-12-27 15:47:17'), ('503205708326637568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????148??', '0', null, '2020-12-27 16:06:40', '2020-12-27 16:06:40'), ('503205749506314240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????10??', '0', null, '2020-12-27 16:06:50', '2020-12-27 16:06:50'), ('503205791440965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????5??', '0', null, '2020-12-27 16:07:00', '2020-12-27 16:07:00'), ('503205917249114112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????7??', '0', null, '2020-12-27 16:07:30', '2020-12-27 16:07:30'), ('503205959217319936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????8??', '0', null, '2020-12-27 16:07:40', '2020-12-27 16:07:40'), ('503218856400130048', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????39??', '0', null, '2020-12-27 16:58:55', '2020-12-27 16:58:55'), ('503222358929182720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-12-27 17:12:50', '2020-12-27 17:12:50'), ('503222379850371072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????1??', '0', null, '2020-12-27 17:12:55', '2020-12-27 17:12:55'), ('503222442806874112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '0', null, '2020-12-27 17:13:10', '2020-12-27 17:13:10'), ('503222463786782720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????2??', '0', null, '2020-12-27 17:13:15', '2020-12-27 17:13:15'), ('503222842696011776', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????5??', '0', null, '2020-12-27 17:14:45', '2020-12-27 17:14:45'), ('503222862266634240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????4??', '0', null, '2020-12-27 17:14:50', '2020-12-27 17:14:50'), ('503222883204599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '0', null, '2020-12-27 17:14:55', '2020-12-27 17:14:55'), ('503222904176119808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????3??', '1', 'ewrwerwer', '2020-12-27 17:15:00', '2020-12-30 17:15:00'), ('503236547471085568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 ?????37??', '0', null, '2020-12-27 18:09:13', '2020-12-27 18:09:13');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Records of `t_sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role` VALUES ('488243256161730560', '???');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sysUserID` varchar(255) DEFAULT NULL COMMENT '??id',
  `sysRoleID` varchar(255) DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???????';

-- ----------------------------
--  Records of `t_sys_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424'), ('353714370687143936', '488294747442511872', '488289006124007424'), ('354984037766533120', '354984005751410688', '488243256161730560'), ('354988722443390977', '354988722443390976', '488243256161730560'), ('354989789679849472', '354989789675655168', '488305788310257664'), ('495571139645542400', '1', '488243256161730560'), ('612107905532952576', '612107905532952576', '488289006124007424'), ('612107905537146880', '612107905532952576', '488305788310257664');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_street`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_street`;
CREATE TABLE `t_sys_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '???',
  `streetCode` varchar(40) NOT NULL COMMENT '????',
  `areaCode` varchar(40) DEFAULT NULL COMMENT '?????',
  `streetName` varchar(50) NOT NULL COMMENT '????',
  `shortName` varchar(30) NOT NULL COMMENT '??',
  `lng` varchar(20) DEFAULT NULL COMMENT '??',
  `lat` varchar(20) DEFAULT NULL COMMENT '??',
  `sort` int(6) DEFAULT NULL COMMENT '??',
  `gmtCreate` datetime DEFAULT NULL COMMENT '????',
  `gmtModified` datetime DEFAULT NULL COMMENT '????',
  `memo` varchar(250) DEFAULT NULL COMMENT '??',
  `dataState` int(11) DEFAULT NULL COMMENT '??',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`streetCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='????';

-- ----------------------------
--  Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '??',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '????',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '??',
  `depID` int(11) DEFAULT NULL COMMENT '??id',
  `posID` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '??id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Records of `t_sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '???', '2', '410792368778907648');
COMMIT;

-- ----------------------------
--  Table structure for `t_test`
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` varchar(255) NOT NULL COMMENT '??',
  `name` varchar(255) DEFAULT NULL COMMENT '??',
  `age` int(11) DEFAULT NULL COMMENT '??',
  `sex` varchar(255) DEFAULT NULL COMMENT '??',
  `createTime` datetime DEFAULT NULL COMMENT '????',
  `b_c_update` datetime DEFAULT NULL COMMENT '????',
  `t_cb_name` varchar(255) DEFAULT NULL COMMENT '?????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='???';

-- ----------------------------
--  Records of `t_test`
-- ----------------------------
BEGIN;
INSERT INTO `t_test` VALUES ('457067146405613568', '???', '2', '1', '2021-01-14 16:00:00', '2021-01-15 16:00:00', '7'), ('457067174939463680', '????', '2', '1', '2021-01-12 16:00:00', '2021-01-18 16:00:00', ''), ('457067196175224832', 'guest', '1', '3', '2021-01-02 16:00:00', '2021-01-16 16:00:00', ''), ('457067220279889920', 'helloword', '1', '3', '2021-01-03 16:00:00', '2021-01-25 16:00:00', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
