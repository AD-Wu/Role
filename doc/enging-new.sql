/*
 Navicat MySQL Data Transfer

 Source Server         : MyMac
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : engine

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 07/12/2021 14:21:23 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_area`;
CREATE TABLE `t_sys_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `areaCode` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '区代码',
  `cityCode` varchar(40) COLLATE utf8_bin DEFAULT NULL COMMENT '父级市代码',
  `areaName` varchar(40) COLLATE utf8_bin NOT NULL COMMENT '市名称',
  `shortName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '简称',
  `lng` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmtCreate` datetime DEFAULT NULL COMMENT '创建时间',
  `gmtModified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `dataState` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `Index_1` (`areaCode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='地区设置';

-- ----------------------------
--  Records of `t_sys_area`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_area` VALUES ('1975', '500101', '500100', '万州区', '万州', '108.380249', '30.807808', '28', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1976', '500102', '500100', '涪陵区', '涪陵', '107.394905', '29.703651', '11', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1977', '500103', '500100', '渝中区', '渝中', '106.562881', '29.556742', '37', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1978', '500104', '500100', '大渡口区', '大渡口', '106.48613', '29.481003', '6', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1979', '500105', '500100', '江北区', '江北', '106.532845', '29.575352', '13', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1980', '500106', '500100', '沙坪坝区', '沙坪坝', '106.454201', '29.541224', '24', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1981', '500107', '500100', '九龙坡区', '九龙坡', '106.480988', '29.523493', '15', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1982', '500108', '500100', '南岸区', '南岸', '106.560814', '29.523993', '18', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1983', '500109', '500100', '北碚区', '北碚', '106.437866', '29.82543', '2', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1984', '500112', '500100', '渝北区', '渝北', '106.512848', '29.601452', '35', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1985', '500113', '500100', '巴南区', '巴南', '106.519424', '29.38192', '1', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1986', '500114', '500100', '黔江区', '黔江', '108.782578', '29.527548', '21', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1987', '500115', '500100', '长寿区', '长寿', '107.074852', '29.833672', '4', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1988', '500222', '500100', '綦江区', '綦江', '106.651421', '29.028091', '22', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1989', '500223', '500100', '潼南县', '潼南', '105.84182', '30.189554', '27', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1990', '500224', '500100', '铜梁县', '铜梁', '106.054947', '29.839945', '26', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1991', '500225', '500100', '大足区', '大足', '105.715317', '29.700499', '7', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1992', '500226', '500100', '荣昌县', '荣昌', '105.594063', '29.403627', '23', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1993', '500227', '500100', '璧山县', '璧山', '106.231125', '29.59358', '3', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1994', '500228', '500100', '梁平县', '梁平', '107.800034', '30.672169', '17', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1995', '500229', '500100', '城口县', '城口', '108.664902', '31.946293', '5', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1996', '500230', '500100', '丰都县', '丰都', '107.732483', '29.866425', '9', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1997', '500231', '500100', '垫江县', '垫江', '107.348694', '30.330011', '8', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1998', '500232', '500100', '武隆县', '武隆', '107.756554', '29.323759', '29', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('1999', '500233', '500100', '忠县', '忠县', '108.037521', '30.291536', '38', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2000', '500234', '500100', '开县', '开县', '108.413315', '31.167734', '16', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2001', '500235', '500100', '云阳县', '云阳', '108.697701', '30.930529', '36', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2002', '500236', '500100', '奉节县', '奉节', '109.465775', '31.019966', '10', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2003', '500237', '500100', '巫山县', '巫山', '109.878929', '31.074842', '30', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2004', '500238', '500100', '巫溪县', '巫溪', '109.628914', '31.396601', '31', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2005', '500240', '500100', '石柱土家族自治县', '石柱', '108.11245', '29.998529', '25', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2006', '500241', '500100', '秀山土家族苗族自治县', '秀山', '108.99604', '28.444773', '32', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2007', '500242', '500100', '酉阳土家族苗族自治县', '酉阳', '108.767204', '28.839828', '34', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2008', '500243', '500100', '彭水苗族土家族自治县', '彭水', '108.16655', '29.293856', '20', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2009', '500381', '500100', '江津区', '江津', '106.253159', '29.283386', '14', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2010', '500382', '500100', '合川区', '合川', '106.265556', '29.990993', '12', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2011', '500383', '500100', '永川区', '永川', '105.894714', '29.348747', '33', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0'), ('2012', '500384', '500100', '南川区', '南川', '107.098152', '29.156647', '19', '2019-02-28 17:16:58', '2019-02-28 17:17:05', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parentId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '父id',
  `deptName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `status` int(255) DEFAULT NULL COMMENT '状态',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
--  Records of `t_sys_department`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_department` VALUES ('1', '0', 'v2', 'v2', '13012345678', 'v2@qq.com', '1', '1'), ('2', '1', '技术部门', 'x某某', '13012345678', 'v2@qq.com', '1', '2'), ('3', '1', '人事部门', 'a某某', '13012345678', 'v2@qq.com', '1', '3'), ('4', '2', '开发一小组', 'b某某', '13012345678', 'v2@qq.com', '1', '4'), ('5', '3', '销售部门', 'd某某', '13012345678', 'v2@qq.com', '1', '5'), ('6', '5', '销售一组', 'e某某', '13012345678', 'v2@qq.com', '1', '6');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_dict_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_data`;
CREATE TABLE `t_sys_dict_data` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `dictSort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dictLabel` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典标签',
  `dictValue` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典键值',
  `dictType` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `cssClass` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `listClass` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '表格回显样式',
  `isDefault` char(1) COLLATE utf8_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `createBy` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典数据表';

-- ----------------------------
--  Records of `t_sys_dict_data`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080', '1', '一般', '1', 'sys_notice_type', '', 'info', 'Y', '0', 'admin', '2019-09-09 22:15:03', 'admin', '2019-09-09 22:15:43', ''), ('331043525137403904', '2', '重要', '2', 'sys_notice_type', '', 'important', 'N', '0', 'admin', '2019-09-09 22:15:37', 'admin', '2020-12-27 13:57:22', ''), ('340080322395901952', '1', '开启', '0', 'sys_province_state', '', 'info', 'Y', '0', 'admin', '2019-10-04 20:44:37', 'admin', '2019-10-04 20:46:41', ''), ('340080779201744896', '2', '关闭', '-1', 'sys_province_state', '', 'important', 'N', '0', 'admin', '2019-10-04 20:46:26', 'admin', '2020-12-27 13:57:46', ''), ('373494384659927040', '0', 'GET请求', '1', 'sys_inter_url_type', '', 'primary', 'Y', '0', 'admin', '2020-01-05 01:40:11', 'admin', '2020-12-27 14:27:28', ''), ('373494483465146368', '1', 'POST请求', '2', 'sys_inter_url_type', '', 'info', 'N', '0', 'admin', '2020-01-05 01:40:34', 'admin', '2020-12-27 14:26:59', ''), ('506431838588375040', '0', 'DELETE请求', '3', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:46:10', 'admin', '2021-01-05 13:48:43', ''), ('506432620712824832', '0', 'PUT请求', '4', 'sys_inter_url_type', '', 'default', 'N', '0', 'admin', '2021-01-05 13:49:16', 'admin', '2021-01-05 13:49:20', '');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_dict_type`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict_type`;
CREATE TABLE `t_sys_dict_type` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `dictName` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典名称',
  `dictType` varchar(100) COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `status` char(1) COLLATE utf8_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `createBy` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateBy` varchar(64) COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `dictType` (`dictType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='字典类型表';

-- ----------------------------
--  Records of `t_sys_dict_type`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344', '省份状态', 'sys_province_state', '0', 'admin', '2019-10-04 20:42:39', '', '2019-10-04 20:42:39', '省份状态'), ('373493952487231488', '拦截器类型', 'sys_inter_url_type', '0', 'admin', '2020-01-05 01:38:28', 'admin', '2020-03-29 23:23:43', '拦截器类型'), ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-12-27 14:26:42', '通知类型列表');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_email`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_email`;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `receiversEmail` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件标题',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `sendUserId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人id',
  `sendUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人账号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='电子邮件';

-- ----------------------------
--  Records of `t_sys_email`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_email` VALUES ('503928650819833856', '87766867@qq.com', '87766867@qq.com', 'fffffff<img src=\"http://localhost:8080/demo/static/component/layui/images/face/22.gif\" alt=\"[委屈]\">', '1', 'admin', '2020-12-29 15:59:23'), ('503928914918379520', '87766867@qq.com', '87766867@qq.com', 'ssssssfsdfsdfsdf<img src=\"http://localhost:8080/demo/static/component/layui/images/face/42.gif\" alt=\"[抓狂]\"><img src=\"http://localhost:8080/demo/static/component/layui/images/face/71.gif\" alt=\"[蛋糕]\">', '1', 'admin', '2020-12-29 16:00:26'), ('595001021625794560', '87766867@qq.com', 'springbootv2测试邮件', '<p>测试测测测</p>', '1', 'admin', '2019-06-30 21:21:38');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_file`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_file`;
CREATE TABLE `t_sys_file` (
  `id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `fileName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文件名字',
  `bucketName` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '桶名',
  `fileSize` bigint(50) DEFAULT NULL COMMENT '文件大小',
  `fileSuffix` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  `createUserId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `createUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名字',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateUserId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `updateUserName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名字',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件信息表';

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
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `interName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '拦截url',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='拦截url表';

-- ----------------------------
--  Records of `t_sys_inter_url`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_inter_url` VALUES ('411495038321823744', '字典表新增', '/DictDataController/add', '2'), ('506433268967673856', '字典表修改', '/DictDataController/edit', '2'), ('506434978159136768', '字典表删除', '/DictDataController/remove', '3'), ('506435565655298048', '字典表状态修改', '/DictDataController/updateDefault', '4'), ('506435921147727872', '字典表状态修改2', '/DictDataController/updateEnable', '4'), ('506436031403397120', '字典表类型新增', '/DictTypeController/add', '2'), ('506436148680331264', '字典表类型修改', '/DictTypeController/edit', '2'), ('506436165776314368', '字典表类型删除', '/DictTypeController/remove', '3'), ('506436180578013184', '字典表类型状态修改', '/DictTypeController/updateEnable', '4'), ('506436662134444032', '邮件新增', '/EmailController/add', '2'), ('506436757722632192', '邮件删除', '/EmailController/remove', '3'), ('506437010966319104', '日志删除', '/LogController/remove', '3'), ('506437420099702784', 'oss新增', '/oss/bucket/', '2'), ('506437439112482816', 'oss删除', '/oss/bucket/', '3'), ('506437964436475904', '权限新增', '/PermissionController/add', '2'), ('506438040823140352', '权限保存', '/PermissionController/edit', '2'), ('506438121399914496', '权限删除', '/PermissionController/remove', '3'), ('506438208599494656', '权限授权', '/PermissionController/saveRolePower', '4'), ('506438306276446208', '权限状态修改', '/PermissionController/updateVisible', '4'), ('506438447226032128', '定时器新增', '/SysQuartzJobController/add', '2'), ('506438589874311168', ' 任务调度状态修改', '/SysQuartzJobController/changeStatus', '4'), ('506438725388079104', '定时器保存', '/SysQuartzJobController/edit', '2'), ('506438870959788032', '定时器修改', '/SysQuartzJobController/remove', '3'), ('506439003516571648', '定时任务日志删除', '/SysQuartzJobLogController/remove', '3'), ('506439171481669632', '角色新增', '/RoleController/add', '2'), ('506439186778296320', '角色修改', '/RoleController/edit', '4'), ('506439297122045952', '角色删除', '/RoleController/remove', '3'), ('506439669773373440', '地区新增', '/SysAreaController/add', '2'), ('506439687859212288', '地区修改', '/SysAreaController/edit', '2'), ('506439835490324480', '地区删除', '/SysAreaController/remove', '3'), ('506440103976112128', 'City新增', '/SysCityController/add', '2'), ('506440145147400192', 'City修改', ' /SysCityController/edit', '2'), ('506440217188765696', 'City删除', '/SysCityController/remove', '3'), ('506440386873528320', '部门新增', '/SysDepartmentController/add', '2'), ('506440448223612928', '部门修改', '/SysDepartmentController/edit', '4'), ('506440515110178816', '部门删除', '/SysDepartmentController/remove', '3'), ('506440574635741184', '部门状态', '/SysDepartmentController/updateVisible', '4'), ('506440668508459008', '拦截器url新增', '/SysInterUrlController/add', '2'), ('506440708056551424', '拦截器url修改', '/SysInterUrlController/edit', '2'), ('506440802856210432', '拦截器url删除', '/SysInterUrlController/remove', '3'), ('506441001783660544', '公告新增', '/SysNoticeController/add', '2'), ('506441051263864832', '公告修改', '/SysNoticeController/edit', '2'), ('506441105743679488', '公告删除', '/SysNoticeController/remove', '3'), ('506441242591236096', '职位新增', '/SysPositionController/add', '2'), ('506441287038275584', '职位修改', '/SysPositionController/edit', '2'), ('506441350200299520', '职位删除', '/SysPositionController/remove', '3'), ('506441420677189632', '职位状态修改', '/SysPositionController/updateVisible', '4'), ('506441780003213312', '省份新增', '/SysProvinceController/add', '2'), ('506441807383629824', '省份修改', '/SysProvinceController/edit', '2'), ('506441871850082304', '省份删除', '/SysProvinceController/remove', '3'), ('506441980012793856', '街道新增', '/SysStreetController/add', '2'), ('506442015706320896', '街道修改', '/SysStreetController/edit', '2'), ('506442092445306880', '街道删除', '/SysStreetController/remove', '3'), ('506442186552905728', '用户新增', '/UserController/add', '2'), ('506442212696002560', '用户修改', '/UserController/edit', '2'), ('506442271252680704', '用户修改密码', '/UserController/editPwd', '2'), ('506442344443285504', '用户删除', '/UserController/remove', '3'), ('506444610625736704', '拦截器url复制', '/SysInterUrlController/copy/', '3');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int(5) DEFAULT NULL COMMENT '类型',
  `createId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `createUsername` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人name',
  `createTime` datetime DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公告';

-- ----------------------------
--  Records of `t_sys_notice`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_notice` VALUES ('330381411007729664', '测试公告', '<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '1', '1', 'admin', '2019-09-08 02:24:37'), ('330381806358630400', '鲜花视频', '<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '2', '1', 'admin', '2019-09-08 02:26:11'), ('373478036928073728', '顶顶顶顶顶顶顶顶顶', '<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', '1', '1', 'admin', '2020-01-05 00:35:13');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_notice_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `noticeId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '公告id',
  `userId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `state` int(2) DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='公告_用户外键';

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
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `operName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `operUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `operParam` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `errorMsg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `operTime` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志记录表';

-- ----------------------------
--  Records of `t_sys_oper_log`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_oper_log` VALUES ('354984005894017024', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-14'), ('354988722611163136', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-15'), ('354989789822455808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}', null, '2019-11-15'), ('368026921411416064', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}', null, '2019-12-20'), ('368026937215553536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}', null, '2019-12-20'), ('368026972204437504', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}', null, '2019-12-20'), ('368027013421862912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}', null, '2019-12-20'), ('368027030928887808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}', null, '2019-12-20'), ('368027048427524096', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}', null, '2019-12-20'), ('368027066593054720', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}', null, '2019-12-20'), ('368027087887536128', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}', null, '2019-12-20'), ('368027104924798976', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}', null, '2019-12-20'), ('368027130757517312', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}', null, '2019-12-20'), ('368027151649345536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}', null, '2019-12-20'), ('368382463388553216', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}', null, '2019-12-21'), ('433236479515430912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"fuce\"],\"password\":[\"111111\"],\"nickname\":[\"fuce\"]}', null, '2020-06-17'), ('495560243967823872', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"手动阀手动阀\"],\"password\":[\"123456\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"3\"],\"positionId\":[\"411477874382606336\"]}', null, '2020-12-06'), ('495570972590608384', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"何平\"],\"password\":[\"111111\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"4\"],\"posId\":[\"410792443127140352\"]}', null, '2020-12-06'), ('501769007083425792', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501772647076597760', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501775645991374848', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501776479886118912', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501779375067369472', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501779625379237888', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501780125961031680', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24'), ('501782630312841216', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eeeeee\"],\"nickname\":[\"eeeeeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501783503843758080', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"55555\"],\"password\":[\"5555\"],\"nickname\":[\"555555\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501783738078859264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"3\"],\"password\":[\"33333333\"],\"nickname\":[\"3333333333333333333\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488289006124007424\"]}', null, '2020-12-24'), ('501786177666420736', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eee\"],\"nickname\":[\"eeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501786241449201664', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"r\"],\"password\":[\"rrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501786725912285184', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrr\"],\"password\":[\"rrrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrr\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24'), ('501787814850072576', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrrwwww\"],\"password\":[\"rrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"\"]}', null, '2020-12-24'), ('501787928188555264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"yyyy\"],\"password\":[\"yyyyyyyyyyyyy\"],\"nickname\":[\"yyyyyyyyyyyyyy\"],\"depId\":[\"5\"],\"selectParent_select_input\":[\"销售部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501796773694672896', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"tttt\"],\"password\":[\"ttt\"],\"nickname\":[\"tttttt\"],\"depId\":[\"4\"],\"selectParent_select_input\":[\"开发一小组\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488243256161730560,488305788310257664\"]}', null, '2020-12-24'), ('501985140440961024', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"11111111111\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24'), ('501986656363089920', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"admin\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '授权链接',
  `isBlank` int(255) DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单图标',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序',
  `visible` int(255) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='权限表';

-- ----------------------------
--  Records of `t_sys_permission`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0'), ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0'), ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0'), ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0'), ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0'), ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0'), ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0'), ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0'), ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0'), ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0'), ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0'), ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0'), ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0'), ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0'), ('331778807298134016', '定时器表达式', null, 'https://www.bejson.com/othertools/cron/', '1', '617766548966211584', '#', '1', 'layui-icon fa fa-flash', '12', '0'), ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', '0', '592059865673760768', 'gen:sysQuartzJob:view', '1', 'fa fa-hourglass-1', '13', '0'), ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', '0', '332157860920299520', 'gen:sysQuartzJob:list', '2', '', null, '0'), ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', '0', '332157860920299520', 'gen:sysQuartzJob:add', '2', 'entypo-plus-squared', null, '0'), ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', '0', '332157860920299520', 'gen:sysQuartzJob:remove', '2', 'entypo-trash', null, '0'), ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', '0', '332157860920299520', 'gen:sysQuartzJob:edit', '2', 'fa fa-wrench', null, '0'), ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', '0', '592059865673760768', 'gen:sysQuartzJobLog:view', '1', 'fa fa-database', '14', '0'), ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', '0', '332857281479839744', 'gen:sysQuartzJobLog:list', '2', '', null, '0'), ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', '0', '332857281479839744', 'gen:sysQuartzJobLog:remove', '2', 'entypo-trash', null, '0'), ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '1', '617766548966211584', '#', '1', 'layui-icon fa fa-retweet', '10', '0'), ('340381240911859712', 'JavaScript格式化', null, '/static/tool/htmlformat/javascriptFormat.html', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-magic', '11', '0'), ('373489907429150720', 'URL拦截管理', '拦截url表展示', '/SysInterUrlController/view', '0', '617766548966211584', 'gen:sysInterUrl:view', '1', 'fa fa-hand-stop-o', '16', '0'), ('3734899074291507211', '拦截url表集合', '拦截url表集合', '/SysInterUrlController/list', '0', '373489907429150720', 'gen:sysInterUrl:list', '2', '', null, '0'), ('3734899074291507222', '拦截url表添加', '拦截url表添加', '/SysInterUrlController/add', '0', '373489907429150720', 'gen:sysInterUrl:add', '2', 'entypo-plus-squared', null, '0'), ('3734899074291507233', '拦截url表删除', '拦截url表删除', '/SysInterUrlController/remove', '0', '373489907429150720', 'gen:sysInterUrl:remove', '2', 'entypo-trash', null, '0'), ('3734899074291507244', '拦截url表修改', '拦截url表修改', '/SysInterUrlController/edit', '0', '373489907429150720', 'gen:sysInterUrl:edit', '2', 'fa fa-wrench', null, '0'), ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0'), ('410791701859405824', '岗位管理', '岗位展示', '/SysPositionController/view', '0', '411522822607867904', 'gen:sysPosition:view', '1', 'fa fa-vcard', '17', '0'), ('4107917018594058251', '岗位表集合', '岗位集合', '/SysPositionController/list', '0', '410791701859405824', 'gen:sysPosition:list', '2', '', null, '0'), ('4107917018594058262', '岗位表添加', '岗位添加', '/SysPositionController/add', '0', '410791701859405824', 'gen:sysPosition:add', '2', 'entypo-plus-squared', null, '0'), ('4107917018594058273', '岗位表删除', '岗位删除', '/SysPositionController/remove', '0', '410791701859405824', 'gen:sysPosition:remove', '2', 'entypo-trash', null, '0'), ('4107917018594058284', '岗位表修改', '岗位修改', '/SysPositionController/edit', '0', '410791701859405824', 'gen:sysPosition:edit', '2', 'fa fa-wrench', null, '0'), ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:sysDepartment:view', '1', 'fa fa-odnoklassniki', '18', '0'), ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:sysDepartment:list', '2', '', null, '0'), ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:sysDepartment:add', '2', 'entypo-plus-squared', null, '0'), ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:sysDepartment:remove', '2', 'entypo-trash', null, '0'), ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:sysDepartment:edit', '2', 'fa fa-wrench', null, '0'), ('411522822607867904', '用户管理', null, '', '0', '0', '', '0', 'layui-icon layui-icon-user', '3', '0'), ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0'), ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9', '0'), ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null, '0'), ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null, '0'), ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0'), ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0'), ('583063272123531264', 'API文档', null, '/doc.html', '1', '617766548966211584', '--', '1', 'layui-icon fa fa-font', '8', '0'), ('586003694080753664', '表单构建', null, '/static/component/code/index.html', '0', '617766548966211584', 'system:tool:view', '1', 'layui-icon layui-icon fa fa-list-alt', '5', '0'), ('587453033487532032', '后台模板', null, 'https://www.layui.com/doc/', '1', '617766548966211584', '', '1', 'layui-icon layui-icon fa fa-telegram', '9', '0'), ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0'), ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8', '0'), ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null, '0'), ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null, '0'), ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null, '0'), ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null, '0'), ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0'), ('617766548966211584', '系统工具', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', '5', '0'), ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-puzzle-piece', '11', '0'), ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null, '0'), ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null, '0'), ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null, '0'), ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null, '0'), ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null, '0'), ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null, '0'), ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null, '0'), ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null, '0'), ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null, '0'), ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0'), ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0'), ('9', '角色管理', '角色展示', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `roleId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  `permissionId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色权限中间表';

-- ----------------------------
--  Records of `t_sys_permission_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission_role` VALUES ('0b769752-ac07-44cd-adc3-60eba65ef525', '488243256161730560', '4109898056992071702'), ('0c9bb8e7-1c96-4186-98ca-e6cae4f1f157', '488243256161730560', '8'), ('19a2899e-a2af-42b7-84bc-4cd463ab605e', '488243256161730560', '5'), ('19f98217-66b6-41a9-adb9-0ae8a280bc93', '488243256161730560', '586003694080753664'), ('215e1e72-e2a5-4dcc-af27-c8641e9025ec', '488243256161730560', '4107917018594058262'), ('257bfdd2-398e-44fa-9bd2-bb1486b899a3', '488243256161730560', '587453033487532032'), ('2baf4f38-dc5f-4682-83de-6c29e831ed8f', '488243256161730560', '4107917018594058284'), ('3f24df4f-9f79-47d2-9e0c-58e42837f2e4', '488243256161730560', '581541547099553792'), ('3f75955f-c7e4-4173-94b4-35199ca1979c', '488243256161730560', '3734899074291507244'), ('406f8240-14d6-4cb6-a428-46e82ad05302', '488243256161730560', '15'), ('4417aa65-8df0-4053-b858-32072d9eeca6', '488243256161730560', '340381240911859712'), ('44f9d209-7ed7-40a4-81d7-f24f4359b1f5', '488243256161730560', '3734899074291507233'), ('4ba2f459-d672-47e5-a7d6-19b23e5b0c5b', '488243256161730560', '373489907429150720'), ('4c9b9db9-a3e7-4d78-a3b5-eed355e64a06', '488243256161730560', '11'), ('57505f87-b7bf-4e28-80ca-fe3a3ed2ac5b', '488243256161730560', '17'), ('5b77021b-eecb-4383-ab3f-90dfc8d52a5b', '488243256161730560', '592167738407911424'), ('62f22029-da9e-4908-8576-591f448738e3', '488243256161730560', '335330315113467904'), ('63a267b5-cc25-424a-86b6-33604ce6412f', '488243256161730560', '12'), ('70d0f5c0-06f6-479f-992f-20749d2ef345', '488243256161730560', '4109898056992071724'), ('748b9f46-cda3-4045-9141-2c78c0547338', '488243256161730560', '410791701859405824'), ('8564a377-92fd-4ce0-992f-549a0ef61159', '488243256161730560', '4107917018594058273'), ('8a053610-6855-48f9-896c-ddfaf4862089', '488243256161730560', '18'), ('8aaedd09-5ea6-4c3c-a5a7-dae19495b927', '488243256161730560', '10'), ('8e0bd78a-65c8-470c-b882-092c52a59dda', '488243256161730560', '410989805699207168'), ('966af1f5-f360-42c7-9d96-561501f738d4', '488243256161730560', '4109898056992071713'), ('9ee1b622-197b-48e6-bc39-63765a196503', '488243256161730560', '16'), ('a0a56acd-5e08-4855-9f19-f849628cc76c', '488243256161730560', '4109898056992071691'), ('a4c8b229-d7c2-44dc-82b9-ea14c6239e8c', '488243256161730560', '4'), ('a58896bd-de8f-4671-a639-1ad12803f273', '488243256161730560', '9'), ('b776e0b9-80cc-4e1c-8a75-fa0469792ce7', '488243256161730560', '411522822607867904'), ('ba2d4f64-360d-41f8-83f5-dcf7e4ba1e7e', '488243256161730560', '4107917018594058251'), ('c36645ef-8191-45ae-a0b7-857043273db4', '488243256161730560', '331778807298134016'), ('c4f34383-8281-4cce-91b3-9d54357a8753', '488243256161730560', '583063272123531264'), ('c98bee48-df52-4c4f-8a86-7b6fc6eea1a1', '488243256161730560', '617766548966211584'), ('ce3bc9be-9521-4ea4-afc5-cd160b58fb18', '488243256161730560', '7'), ('d4393f97-d5a9-48a9-9578-e5178e088195', '488243256161730560', '3734899074291507211'), ('d6099a0f-e487-4d93-8aa4-208009e28fdf', '488243256161730560', '14'), ('dd171d1f-b8bf-45d1-b1f4-3544052c3344', '488243256161730560', '13'), ('dfef4693-0834-4a83-867f-d82cbdf47316', '488243256161730560', '6'), ('e6a4d5d9-ffc1-4019-9369-fb7ff51adfab', '488243256161730560', '3734899074291507222'), ('fc39a4cb-f633-4c21-b191-8fc242836902', '488243256161730560', '486690002869157888');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_position`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `postName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '岗位名称',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='岗位表';

-- ----------------------------
--  Records of `t_sys_position`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_position` VALUES ('410792368778907648', '总经理', '1', '1'), ('410792443127140352', '技术经理', '2', '1'), ('410792478929719296', '人事经理', '3', '1'), ('411477874382606336', '员工', '4', '1');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_quartz_job`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '日志id',
  `jobName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '任务名称',
  `jobGroup` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '任务组名',
  `invokeTarget` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调用目标字符串',
  `cronExpression` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'cron执行表达式',
  `misfirePolicy` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int(11) DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度表';

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
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `jobName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '任务名称',
  `jobGroup` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '任务组名',
  `invokeTarget` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '调用目标字符串',
  `jobMessage` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '日志信息',
  `status` int(11) DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exceptionInfo` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '异常信息',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='定时任务调度日志表';

-- ----------------------------
--  Records of `t_sys_quartz_job_log`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610566486724608', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:07', '2019-09-17 00:16:07'), ('333610572270669824', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:09', '2019-09-17 00:16:09'), ('354984595927732224', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-14 23:48:53', '2019-11-14 23:48:53'), ('354990312722141184', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2019-11-15 00:11:36', '2019-11-15 00:11:36'), ('354996339316232192', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-15 00:35:33', '2019-11-15 00:35:33'), ('415421274211356672', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274303631360', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274324602880', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421274366545920', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40'), ('415421315554611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:22:50', '2020-04-29 18:22:50'), ('415421357501845504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:00', '2020-04-29 18:23:00'), ('415421399453274112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:10', '2020-04-29 18:23:10'), ('415421441375342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:20', '2020-04-29 18:23:20'), ('415421483351937024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:23:30', '2020-04-29 18:23:30'), ('415421525257228288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:40', '2020-04-29 18:23:40'), ('415421567233822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:50', '2020-04-29 18:23:50'), ('415421609130725376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:00', '2020-04-29 18:24:00'), ('415421648662040576', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:09', '2020-04-29 18:24:09'), ('415421651073765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:10', '2020-04-29 18:24:10'), ('415421693041971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:20', '2020-04-29 18:24:20'), ('415421734959845376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:30', '2020-04-29 18:24:30'), ('415421776974188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:40', '2020-04-29 18:24:40'), ('415421818862702592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:50', '2020-04-29 18:24:50'), ('415421860805742592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:00', '2020-04-29 18:25:00'), ('415421902736199680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:10', '2020-04-29 18:25:10'), ('415423552540512256', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552636981248', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552670535680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552687312896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552716673024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423552741838848', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43'), ('415423559536611328', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:45', '2020-04-29 18:31:45'), ('415423580482965504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:50', '2020-04-29 18:31:50'), ('415423601454485504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:55', '2020-04-29 18:31:55'), ('415423622405033984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:00', '2020-04-29 18:32:00'), ('415423643372359680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:05', '2020-04-29 18:32:05'), ('415423664343879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:10', '2020-04-29 18:32:10'), ('415423685311205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:15', '2020-04-29 18:32:15'), ('415423706328862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:20', '2020-04-29 18:32:20'), ('415423727325548544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:25', '2020-04-29 18:32:25'), ('415423748250931200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:30', '2020-04-29 18:32:30'), ('415423769188896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:35', '2020-04-29 18:32:35'), ('415423790227525632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:40', '2020-04-29 18:32:40'), ('415423811190657024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:45', '2020-04-29 18:32:45'), ('415423832178954240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:50', '2020-04-29 18:32:50'), ('415423853100142592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:55', '2020-04-29 18:32:55'), ('415423874054885376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:00', '2020-04-29 18:33:00'), ('415423895026405376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:05', '2020-04-29 18:33:05'), ('415423916002119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:10', '2020-04-29 18:33:10'), ('415423937015582720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:15', '2020-04-29 18:33:15'), ('415423957970325504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:20', '2020-04-29 18:33:20'), ('415423978925068288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:25', '2020-04-29 18:33:25'), ('415423999942725632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:30', '2020-04-29 18:33:30'), ('415424020889079808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:35', '2020-04-29 18:33:35'), ('415424041894154240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:40', '2020-04-29 18:33:40'), ('415424062844702720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:45', '2020-04-29 18:33:45'), ('415424083803639808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:50', '2020-04-29 18:33:50'), ('415424104754188288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:55', '2020-04-29 18:33:55'), ('415424125746679808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:00', '2020-04-29 18:34:00'), ('415424146726588416', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:05', '2020-04-29 18:34:05'), ('415424167727468544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:10', '2020-04-29 18:34:10'), ('415424188678017024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:15', '2020-04-29 18:34:15'), ('415424209636954112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:20', '2020-04-29 18:34:20'), ('415424230595891200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:25', '2020-04-29 18:34:25'), ('415424251567411200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:30', '2020-04-29 18:34:30'), ('415424272559902720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:35', '2020-04-29 18:34:35'), ('415424293518839808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:40', '2020-04-29 18:34:40'), ('415424314507137024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:45', '2020-04-29 18:34:45'), ('415424335436713984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:50', '2020-04-29 18:34:50'), ('415424356404039680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:55', '2020-04-29 18:34:55'), ('415424377396531200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:00', '2020-04-29 18:35:00'), ('415424398414188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:05', '2020-04-29 18:35:05'), ('415424419326988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:10', '2020-04-29 18:35:10'), ('415424440332062720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:15', '2020-04-29 18:35:15'), ('415424461282611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:20', '2020-04-29 18:35:20'), ('415424482254131200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:25', '2020-04-29 18:35:25'), ('415424503200485376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:30', '2020-04-29 18:35:30'), ('415424524163616768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:35', '2020-04-29 18:35:35'), ('415424545135136768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:40', '2020-04-29 18:35:40'), ('415424566148599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:45', '2020-04-29 18:35:45'), ('415424587103342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:50', '2020-04-29 18:35:50'), ('415424608150360064', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:55', '2020-04-29 18:35:55'), ('415424629029605376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:00', '2020-04-29 18:36:00'), ('415424650072428544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:05', '2020-04-29 18:36:05'), ('415424671035559936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:10', '2020-04-29 18:36:10'), ('415424691981914112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:15', '2020-04-29 18:36:15'), ('415424712961822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:20', '2020-04-29 18:36:20'), ('415424733899788288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:25', '2020-04-29 18:36:25'), ('415424754862919680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:30', '2020-04-29 18:36:30'), ('415424775888965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:35', '2020-04-29 18:36:35'), ('415424796797571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:40', '2020-04-29 18:36:40'), ('415424817836199936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:45', '2020-04-29 18:36:45'), ('415424838769971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:50', '2020-04-29 18:36:50'), ('415424859741491200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:55', '2020-04-29 18:36:55'), ('415424880696233984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:00', '2020-04-29 18:37:00'), ('415424901705502720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:05', '2020-04-29 18:37:05'), ('415424922681217024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:10', '2020-04-29 18:37:10'), ('415424943690485760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:15', '2020-04-29 18:37:15'), ('415424964632645632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:20', '2020-04-29 18:37:20'), ('415424985562222592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:25', '2020-04-29 18:37:25'), ('415425006516965376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:30', '2020-04-29 18:37:30'), ('415425027484291072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:35', '2020-04-29 18:37:35'), ('415425048476782592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:37:40', '2020-04-29 18:37:40'), ('415425069427331072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:45', '2020-04-29 18:37:45'), ('415425090436599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:50', '2020-04-29 18:37:50'), ('415425111412314112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:55', '2020-04-29 18:37:55'), ('415425132354473984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:00', '2020-04-29 18:38:00'), ('415425153334382592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:05', '2020-04-29 18:38:05'), ('415425174335262720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:10', '2020-04-29 18:38:10'), ('415425195290005504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:15', '2020-04-29 18:38:15'), ('415425216248942592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:20', '2020-04-29 18:38:20'), ('415425237224656896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:38:25', '2020-04-29 18:38:25'), ('415425258200371200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:30', '2020-04-29 18:38:30'), ('415425279192862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:35', '2020-04-29 18:38:35'), ('415425300126633984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:40', '2020-04-29 18:38:40'), ('415425321089765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:45', '2020-04-29 18:38:45'), ('415425342082256896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:50', '2020-04-29 18:38:50'), ('415425363041193984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:55', '2020-04-29 18:38:55'), ('415425384000131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:00', '2020-04-29 18:39:00'), ('415425404967456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:05', '2020-04-29 18:39:05'), ('415425425997697024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:10', '2020-04-29 18:39:10'), ('415425446956634112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:15', '2020-04-29 18:39:15'), ('415425467902988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:20', '2020-04-29 18:39:20'), ('415425488866119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:25', '2020-04-29 18:39:25'), ('415425509825056768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:30', '2020-04-29 18:39:30'), ('415425530800771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:35', '2020-04-29 18:39:35'), ('415425551768096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:40', '2020-04-29 18:39:40'), ('415425572743811072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:45', '2020-04-29 18:39:45'), ('415425593706942464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:50', '2020-04-29 18:39:50'), ('415425614678462464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:55', '2020-04-29 18:39:55'), ('415425635654176768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:00', '2020-04-29 18:40:00'), ('415425656629891072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:05', '2020-04-29 18:40:05'), ('415425677597216768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:10', '2020-04-29 18:40:10'), ('415425698568736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:15', '2020-04-29 18:40:15'), ('415425719540256768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:20', '2020-04-29 18:40:20'), ('415425740515971072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:25', '2020-04-29 18:40:25'), ('415425761487491072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:30', '2020-04-29 18:40:30'), ('415425782454816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:35', '2020-04-29 18:40:35'), ('415425803430531072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:40', '2020-04-29 18:40:40'), ('415425824397856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:45', '2020-04-29 18:40:45'), ('415425845373571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:50', '2020-04-29 18:40:50'), ('415425866340896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:55', '2020-04-29 18:40:55'), ('415425887312416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:00', '2020-04-29 18:41:00'), ('415425908283936768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:05', '2020-04-29 18:41:05'), ('415425929255456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:10', '2020-04-29 18:41:10'), ('415425950226976768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:15', '2020-04-29 18:41:15'), ('415425971198496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:20', '2020-04-29 18:41:20'), ('415425992165822464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:25', '2020-04-29 18:41:25'), ('415426013141536768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:30', '2020-04-29 18:41:30'), ('415426034117251072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:35', '2020-04-29 18:41:35'), ('415426055088771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:40', '2020-04-29 18:41:40'), ('415426076056096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:45', '2020-04-29 18:41:45'), ('415426117479043072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:41:51', '2020-04-29 18:41:51'), ('415426138983239680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:00', '2020-04-29 18:42:00'), ('415426180909502464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:10', '2020-04-29 18:42:10'), ('415426222856736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:20', '2020-04-29 18:42:20'), ('415426264799776768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:30', '2020-04-29 18:42:30'), ('415426306742816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:40', '2020-04-29 18:42:40'), ('415426348685856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:50', '2020-04-29 18:42:50'), ('415426390633091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:00', '2020-04-29 18:43:00'), ('415426432580325376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:10', '2020-04-29 18:43:10'), ('415426453539262464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:15', '2020-04-29 18:43:15'), ('415426474519171072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:43:20', '2020-04-29 18:43:20'), ('415426495486496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:25', '2020-04-29 18:43:25'), ('415426516462211072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:30', '2020-04-29 18:43:30'), ('415426537437925376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:35', '2020-04-29 18:43:35'), ('415426558417833984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:40', '2020-04-29 18:43:40'), ('415426579372576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:45', '2020-04-29 18:43:45'), ('415426600344096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:50', '2020-04-29 18:43:50'), ('415426789146497024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-04-29 18:44:35', '2020-04-29 18:44:35'), ('415426810071879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:40', '2020-04-29 18:44:40'), ('415426831039205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:45', '2020-04-29 18:44:45'), ('415426851998142464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:50', '2020-04-29 18:44:50'), ('415426872982245376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:55', '2020-04-29 18:44:55'), ('415426894041845760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:00', '2020-04-29 18:45:00'), ('415426914921091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:05', '2020-04-29 18:45:05'), ('415426935888416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:10', '2020-04-29 18:45:10'), ('415426956864131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:15', '2020-04-29 18:45:15'), ('415426977835651072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:20', '2020-04-29 18:45:20'), ('415427019774496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:30', '2020-04-29 18:45:30'), ('415427061713342464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:40', '2020-04-29 18:45:40'), ('415427103660576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:50', '2020-04-29 18:45:50'), ('503199187412848640', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：45毫秒', '0', null, '2020-12-27 15:40:45', '2020-12-27 15:40:45'), ('503200830422388736', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', '0', null, '2020-12-27 15:47:17', '2020-12-27 15:47:17'), ('503205708326637568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：148毫秒', '0', null, '2020-12-27 16:06:40', '2020-12-27 16:06:40'), ('503205749506314240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：10毫秒', '0', null, '2020-12-27 16:06:50', '2020-12-27 16:06:50'), ('503205791440965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-12-27 16:07:00', '2020-12-27 16:07:00'), ('503205917249114112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：7毫秒', '0', null, '2020-12-27 16:07:30', '2020-12-27 16:07:30'), ('503205959217319936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：8毫秒', '0', null, '2020-12-27 16:07:40', '2020-12-27 16:07:40'), ('503218856400130048', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：39毫秒', '0', null, '2020-12-27 16:58:55', '2020-12-27 16:58:55'), ('503222358929182720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-12-27 17:12:50', '2020-12-27 17:12:50'), ('503222379850371072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-12-27 17:12:55', '2020-12-27 17:12:55'), ('503222442806874112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-12-27 17:13:10', '2020-12-27 17:13:10'), ('503222463786782720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-12-27 17:13:15', '2020-12-27 17:13:15'), ('503222842696011776', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-12-27 17:14:45', '2020-12-27 17:14:45'), ('503222862266634240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-12-27 17:14:50', '2020-12-27 17:14:50'), ('503222883204599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-12-27 17:14:55', '2020-12-27 17:14:55'), ('503222904176119808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '1', 'ewrwerwer', '2020-12-27 17:15:00', '2020-12-30 17:15:00'), ('503236547471085568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', '0', null, '2020-12-27 18:09:13', '2020-12-27 18:09:13');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
--  Records of `t_sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role` VALUES ('488243256161730560', '管理员');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `sysUserId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `sysRoleId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色中间表';

-- ----------------------------
--  Records of `t_sys_role_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424'), ('353714370687143936', '488294747442511872', '488289006124007424'), ('354984037766533120', '354984005751410688', '488243256161730560'), ('354988722443390977', '354988722443390976', '488243256161730560'), ('354989789679849472', '354989789675655168', '488305788310257664'), ('495571139645542400', '1', '488243256161730560'), ('612107905532952576', '612107905532952576', '488289006124007424'), ('612107905537146880', '612107905532952576', '488305788310257664');
COMMIT;

-- ----------------------------
--  Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `depId` int(11) DEFAULT NULL COMMENT '部门id',
  `posId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '岗位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
--  Records of `t_sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '2', '410792368778907648');
COMMIT;

-- ----------------------------
--  Table structure for `t_test`
-- ----------------------------
DROP TABLE IF EXISTS `t_test`;
CREATE TABLE `t_test` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `b_c_update` datetime DEFAULT NULL COMMENT '修改时间',
  `t_cb_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '写个字符串',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='测试表';

-- ----------------------------
--  Records of `t_test`
-- ----------------------------
BEGIN;
INSERT INTO `t_test` VALUES ('457067146405613568', '管理员', '2', '1', '2021-01-14 16:00:00', '2021-01-15 16:00:00', '7'), ('457067174939463680', '法院用户', '2', '1', '2021-01-12 16:00:00', '2021-01-18 16:00:00', ''), ('457067196175224832', 'guest', '1', '3', '2021-01-02 16:00:00', '2021-01-16 16:00:00', ''), ('457067220279889920', 'helloword', '1', '3', '2021-01-03 16:00:00', '2021-01-25 16:00:00', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
