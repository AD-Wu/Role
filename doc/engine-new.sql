/*
Navicat MySQL Data Transfer

Source Server         : MySQL-8
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : engine

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2021-07-13 17:36:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '父id',
  `deptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `status` int DEFAULT NULL COMMENT '状态',
  `orderNum` int DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of t_sys_department
-- ----------------------------
INSERT INTO `t_sys_department` VALUES ('1', '0', 'v2', 'v2', '13012345678', 'v2@qq.com', '1', '1');
INSERT INTO `t_sys_department` VALUES ('2', '1', '技术部门', 'x某某', '13012345678', 'v2@qq.com', '1', '2');
INSERT INTO `t_sys_department` VALUES ('3', '1', '人事部门', 'a某某', '13012345678', 'v2@qq.com', '1', '3');
INSERT INTO `t_sys_department` VALUES ('4', '2', '开发一小组', 'b某某', '13012345678', 'v2@qq.com', '1', '4');
INSERT INTO `t_sys_department` VALUES ('5', '3', '销售部门', 'd某某', '13012345678', 'v2@qq.com', '1', '5');
INSERT INTO `t_sys_department` VALUES ('6', '5', '销售一组', 'e某某', '13012345678', 'v2@qq.com', '1', '6');

-- ----------------------------
-- Table structure for t_sys_inter_url
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_inter_url`;
CREATE TABLE `t_sys_inter_url` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `interName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '拦截url',
  `type` int DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='拦截url表';

-- ----------------------------
-- Records of t_sys_inter_url
-- ----------------------------
INSERT INTO `t_sys_inter_url` VALUES ('411495038321823744', '字典表新增', '/DictDataController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506433268967673856', '字典表修改', '/DictDataController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506434978159136768', '字典表删除', '/DictDataController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506435565655298048', '字典表状态修改', '/DictDataController/updateDefault', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506435921147727872', '字典表状态修改2', '/DictDataController/updateEnable', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506436031403397120', '字典表类型新增', '/DictTypeController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506436148680331264', '字典表类型修改', '/DictTypeController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506436165776314368', '字典表类型删除', '/DictTypeController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506436180578013184', '字典表类型状态修改', '/DictTypeController/updateEnable', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506436662134444032', '邮件新增', '/EmailController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506436757722632192', '邮件删除', '/EmailController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506437010966319104', '日志删除', '/LogController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506437420099702784', 'oss新增', '/oss/bucket/', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506437439112482816', 'oss删除', '/oss/bucket/', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506437964436475904', '权限新增', '/PermissionController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506438040823140352', '权限保存', '/PermissionController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506438121399914496', '权限删除', '/PermissionController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506438208599494656', '权限授权', '/PermissionController/saveRolePower', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506438306276446208', '权限状态修改', '/PermissionController/updateVisible', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506438447226032128', '定时器新增', '/SysQuartzJobController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506438589874311168', ' 任务调度状态修改', '/SysQuartzJobController/changeStatus', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506438725388079104', '定时器保存', '/SysQuartzJobController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506438870959788032', '定时器修改', '/SysQuartzJobController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506439003516571648', '定时任务日志删除', '/SysQuartzJobLogController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506439171481669632', '角色新增', '/RoleController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506439186778296320', '角色修改', '/RoleController/edit', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506439297122045952', '角色删除', '/RoleController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506439669773373440', '地区新增', '/SysAreaController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506439687859212288', '地区修改', '/SysAreaController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506439835490324480', '地区删除', '/SysAreaController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506440103976112128', 'City新增', '/SysCityController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506440145147400192', 'City修改', ' /SysCityController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506440217188765696', 'City删除', '/SysCityController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506440386873528320', '部门新增', '/SysDepartmentController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506440448223612928', '部门修改', '/SysDepartmentController/edit', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506440515110178816', '部门删除', '/SysDepartmentController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506440574635741184', '部门状态', '/SysDepartmentController/updateVisible', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506440668508459008', '拦截器url新增', '/SysInterUrlController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506440708056551424', '拦截器url修改', '/SysInterUrlController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506440802856210432', '拦截器url删除', '/SysInterUrlController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506441001783660544', '公告新增', '/SysNoticeController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441051263864832', '公告修改', '/SysNoticeController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441105743679488', '公告删除', '/SysNoticeController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506441242591236096', '职位新增', '/SysPositionController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441287038275584', '职位修改', '/SysPositionController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441350200299520', '职位删除', '/SysPositionController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506441420677189632', '职位状态修改', '/SysPositionController/updateVisible', '4');
INSERT INTO `t_sys_inter_url` VALUES ('506441780003213312', '省份新增', '/SysProvinceController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441807383629824', '省份修改', '/SysProvinceController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506441871850082304', '省份删除', '/SysProvinceController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506441980012793856', '街道新增', '/SysStreetController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506442015706320896', '街道修改', '/SysStreetController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506442092445306880', '街道删除', '/SysStreetController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506442186552905728', '用户新增', '/UserController/add', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506442212696002560', '用户修改', '/UserController/edit', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506442271252680704', '用户修改密码', '/UserController/editPwd', '2');
INSERT INTO `t_sys_inter_url` VALUES ('506442344443285504', '用户删除', '/UserController/remove', '3');
INSERT INTO `t_sys_inter_url` VALUES ('506444610625736704', '拦截器url复制', '/SysInterUrlController/copy/', '3');

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int DEFAULT NULL COMMENT '类型',
  `createId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `createUsername` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人name',
  `createTime` datetime DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='公告';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
INSERT INTO `t_sys_notice` VALUES ('330381411007729664', '测试公告', '<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '1', '1', 'admin', '2019-09-08 02:24:37');
INSERT INTO `t_sys_notice` VALUES ('330381806358630400', '鲜花视频', '<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>', '2', '1', 'admin', '2019-09-08 02:26:11');
INSERT INTO `t_sys_notice` VALUES ('373478036928073728', '顶顶顶顶顶顶顶顶顶', '<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>', '1', '1', 'admin', '2020-01-05 00:35:13');

-- ----------------------------
-- Table structure for t_sys_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice_user`;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `noticeId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '公告id',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `state` int DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='公告_用户外键';

-- ----------------------------
-- Records of t_sys_notice_user
-- ----------------------------
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792', '330381411007729664', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330381411045478400', '330381411007729664', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330381806375407616', '330381806358630400', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330381806379601920', '330381806358630400', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('330622143622680576', '330622143597514752', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('330622143626874880', '330622143597514752', '488294747442511872', '0');
INSERT INTO `t_sys_notice_user` VALUES ('354984345649418240', '354984345632641024', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('373478037158760448', '373478036928073728', '1', '1');
INSERT INTO `t_sys_notice_user` VALUES ('373478037162954752', '373478036928073728', '368026921239449600', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037171343360', '373478036928073728', '368026937181999104', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037175537664', '373478036928073728', '368027013392502784', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037183926272', '373478036928073728', '368027030899527680', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037192314880', '373478036928073728', '368027048402358272', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037204897792', '373478036928073728', '368027066563694592', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037213286400', '373478036928073728', '368027087866564608', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037217480704', '373478036928073728', '368027104895438848', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037225869312', '373478036928073728', '368027130728157184', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037230063616', '373478036928073728', '368027151624179712', '0');
INSERT INTO `t_sys_notice_user` VALUES ('373478037238452224', '373478036928073728', '368382463233363968', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502750147499921408', '502750147395063808', '1', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502750147508310016', '502750147395063808', '433236479427350528', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502758207983325184', '502758207907827712', '1', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502758207991713792', '502758207907827712', '433236479427350528', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502820822130495488', '502820822042415104', '1', '0');
INSERT INTO `t_sys_notice_user` VALUES ('502820822138884096', '502820822042415104', '433236479427350528', '0');

-- ----------------------------
-- Table structure for t_sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_oper_log`;
CREATE TABLE `t_sys_oper_log` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `operName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `operUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `operParam` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `errorMsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `operTime` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='日志记录表';

-- ----------------------------
-- Records of t_sys_oper_log
-- ----------------------------
INSERT INTO `t_sys_oper_log` VALUES ('354984005894017024', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-14');
INSERT INTO `t_sys_oper_log` VALUES ('354988722611163136', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}', null, '2019-11-15');
INSERT INTO `t_sys_oper_log` VALUES ('354989789822455808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}', null, '2019-11-15');
INSERT INTO `t_sys_oper_log` VALUES ('368026921411416064', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026937215553536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368026972204437504', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027013421862912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027030928887808', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027048427524096', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027066593054720', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027087887536128', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027104924798976', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027130757517312', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368027151649345536', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}', null, '2019-12-20');
INSERT INTO `t_sys_oper_log` VALUES ('368382463388553216', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}', null, '2019-12-21');
INSERT INTO `t_sys_oper_log` VALUES ('433236479515430912', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"fuce\"],\"password\":[\"111111\"],\"nickname\":[\"fuce\"]}', null, '2020-06-17');
INSERT INTO `t_sys_oper_log` VALUES ('495560243967823872', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"手动阀手动阀\"],\"password\":[\"123456\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"3\"],\"positionId\":[\"411477874382606336\"]}', null, '2020-12-06');
INSERT INTO `t_sys_oper_log` VALUES ('495570972590608384', '用户新增', 'com.fc.test.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"何平\"],\"password\":[\"111111\"],\"nickname\":[\"手动阀手动阀\"],\"depId\":[\"4\"],\"posId\":[\"410792443127140352\"]}', null, '2020-12-06');
INSERT INTO `t_sys_oper_log` VALUES ('501769007083425792', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501772647076597760', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501775645991374848', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501776479886118912', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501779375067369472', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501779625379237888', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501780125961031680', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{}', '', '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501782630312841216', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eeeeee\"],\"nickname\":[\"eeeeeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501783503843758080', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"55555\"],\"password\":[\"5555\"],\"nickname\":[\"555555\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501783738078859264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"3\"],\"password\":[\"33333333\"],\"nickname\":[\"3333333333333333333\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488289006124007424\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786177666420736', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"eeee\"],\"password\":[\"eee\"],\"nickname\":[\"eeeee\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786241449201664', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"r\"],\"password\":[\"rrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501786725912285184', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrr\"],\"password\":[\"rrrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrr\"],\"depId\":[\"3\"],\"selectParent_select_input\":[\"人事部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501787814850072576', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"rrrrrwwww\"],\"password\":[\"rrrrrrrrrrrrr\"],\"nickname\":[\"rrrrrrrrrrrrrrrrrr\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501787928188555264', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"yyyy\"],\"password\":[\"yyyyyyyyyyyyy\"],\"nickname\":[\"yyyyyyyyyyyyyy\"],\"depId\":[\"5\"],\"selectParent_select_input\":[\"销售部门\"],\"posId\":[\"410792478929719296\"],\"roleIds\":[\"488243256161730560,488289006124007424,488305788310257664\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501796773694672896', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"tttt\"],\"password\":[\"ttt\"],\"nickname\":[\"tttttt\"],\"depId\":[\"4\"],\"selectParent_select_input\":[\"开发一小组\"],\"posId\":[\"410792443127140352\"],\"roleIds\":[\"488243256161730560,488305788310257664\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501985140440961024', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"11111111111\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24');
INSERT INTO `t_sys_oper_log` VALUES ('501986656363089920', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"admin\"],\"password\":[\"admin\"],\"nickname\":[\"admin\"],\"depId\":[\"1\"],\"selectParent_select_input\":[\"v2\"],\"posId\":[\"410792368778907648\"],\"roleIds\":[\"488289006124007424,488305788310257664\"]}', null, '2020-12-24');

-- ----------------------------
-- Table structure for t_sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission`;
CREATE TABLE `t_sys_permission` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '授权链接',
  `isBlank` int DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `type` int DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '菜单图标',
  `orderNum` int DEFAULT NULL COMMENT '排序',
  `visible` int DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='权限表';

-- ----------------------------
-- Records of t_sys_permission
-- ----------------------------
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('331778807298134016', '定时器表达式', null, 'https://www.bejson.com/othertools/cron/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-flash', '12', '0');
INSERT INTO `t_sys_permission` VALUES ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', '0', '592059865673760768', 'gen:sysQuartzJob:view', '1', 'fa fa-hourglass-1', '13', '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', '0', '332157860920299520', 'gen:sysQuartzJob:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', '0', '332157860920299520', 'gen:sysQuartzJob:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', '0', '332157860920299520', 'gen:sysQuartzJob:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', '0', '332157860920299520', 'gen:sysQuartzJob:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', '0', '592059865673760768', 'gen:sysQuartzJobLog:view', '1', 'fa fa-database', '14', '0');
INSERT INTO `t_sys_permission` VALUES ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', '0', '332857281479839744', 'gen:sysQuartzJobLog:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', '0', '332857281479839744', 'gen:sysQuartzJobLog:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-retweet', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('410791701859405824', '岗位管理', '岗位展示', '/SysPositionController/view', '0', '411522822607867904', 'gen:sysPosition:view', '1', 'fa fa-vcard', '17', '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058251', '岗位表集合', '岗位集合', '/SysPositionController/list', '0', '410791701859405824', 'gen:sysPosition:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058262', '岗位表添加', '岗位添加', '/SysPositionController/add', '0', '410791701859405824', 'gen:sysPosition:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058273', '岗位表删除', '岗位删除', '/SysPositionController/remove', '0', '410791701859405824', 'gen:sysPosition:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4107917018594058284', '岗位表修改', '岗位修改', '/SysPositionController/edit', '0', '410791701859405824', 'gen:sysPosition:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:sysDepartment:view', '1', 'fa fa-odnoklassniki', '18', '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:sysDepartment:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:sysDepartment:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:sysDepartment:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:sysDepartment:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('411522822607867904', '用户管理', null, '', '0', '0', '', '0', 'layui-icon layui-icon-user', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9', '0');
INSERT INTO `t_sys_permission` VALUES ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0');
INSERT INTO `t_sys_permission` VALUES ('583063272123531264', 'API文档', null, '/doc.html', '0', '617766548966211584', '--', '1', 'layui-icon layui-icon fa fa-font', '8', '0');
INSERT INTO `t_sys_permission` VALUES ('586003694080753664', '表单构建', null, '/static/component/code/index.html', '0', '617766548966211584', 'system:tool:view', '1', 'layui-icon layui-icon fa fa-list-alt', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0');
INSERT INTO `t_sys_permission` VALUES ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8', '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('617766548966211584', '系统工具', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-puzzle-piece', '11', '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null, '0');
INSERT INTO `t_sys_permission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('9', '角色管理', '角色展示', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');

-- ----------------------------
-- Table structure for t_sys_permission_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_permission_role`;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `roleId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  `permissionId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='角色权限中间表';

-- ----------------------------
-- Records of t_sys_permission_role
-- ----------------------------
INSERT INTO `t_sys_permission_role` VALUES ('21e0a966-76cf-4a6e-a095-9725aebda979', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('2481fdc1-970c-4467-9bdd-f399c286f342', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('3a4dcc87-9d4e-4a95-a042-d53f63b29fe5', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('43f77b58-6cb5-45f6-8289-d5ec930527ed', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('45c43df0-c06e-4580-a15c-94aa96403f2e', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('4632885a-de8f-4929-a22c-3c61af166878', '488243256161730560', '410989805699207168');
INSERT INTO `t_sys_permission_role` VALUES ('4926d66c-9b31-4ef2-9ead-6532a36250db', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('4ee78de9-45cd-4e71-a4bd-009f5b99ea58', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('52e37bb4-1171-4e86-a5ed-1249328a4ee1', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('5526c8b2-b22b-4287-895b-f63fec04564f', '488243256161730560', '4109898056992071713');
INSERT INTO `t_sys_permission_role` VALUES ('566d66bd-1585-41d8-8864-8eab07d087e5', '488243256161730560', '410791701859405824');
INSERT INTO `t_sys_permission_role` VALUES ('57cb91ad-d089-4ddf-8e46-b9e757e6e7f6', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('617398d1-ad37-4ca0-907d-5e5dd2c504c7', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('762ef852-de4d-4867-bd4b-203f3f146ee0', '488243256161730560', '411522822607867904');
INSERT INTO `t_sys_permission_role` VALUES ('7a91845f-c36c-4759-861e-8905b97a4f70', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('80d1136c-5864-4e95-89b7-85772b8be789', '488243256161730560', '4109898056992071724');
INSERT INTO `t_sys_permission_role` VALUES ('836a5888-e729-4610-8c07-e775dad11cbc', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('85c29c0a-5268-4187-8deb-cd8fd44e805c', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('a1bc306a-58ac-4ba9-8ceb-6996b2919a78', '488243256161730560', '4107917018594058273');
INSERT INTO `t_sys_permission_role` VALUES ('a4a9c1f2-a12f-4f56-946f-3c6f98c3757b', '488243256161730560', '4107917018594058262');
INSERT INTO `t_sys_permission_role` VALUES ('a8abc605-202b-439e-97e4-93846db715c9', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('a8e753c0-26ca-423d-a120-770d21b38790', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('b453ed37-74bb-4bd7-bfb4-2387b2e722df', '488243256161730560', '4107917018594058284');
INSERT INTO `t_sys_permission_role` VALUES ('b5f6d73a-1c27-4bd7-8a24-dbb4f5e48447', '488243256161730560', '4107917018594058251');
INSERT INTO `t_sys_permission_role` VALUES ('be75b27b-e873-4cc6-b300-90251e648b85', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('c012195e-e2b5-47f4-8095-c565f6ce1f13', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('c3567504-a6a1-4f38-9166-992250fc0c9c', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('cfed67cc-00bc-4459-bf4f-304956e2dd6c', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('d0a76de1-2045-4fd1-8725-ddf6e5ff6974', '488243256161730560', '4109898056992071691');
INSERT INTO `t_sys_permission_role` VALUES ('dcfb552c-3edb-4d42-bb32-3d9d60d38060', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('e9731b3b-c380-47a3-8da5-da7a8abcb82e', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('ef4e0a3a-1431-4e5a-bcca-d237da66cc57', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('f8f6c7c4-7e11-4926-b76f-2ad04793b5f6', '488243256161730560', '4109898056992071702');
INSERT INTO `t_sys_permission_role` VALUES ('f919c4fa-d6f3-44bc-8e01-238888b71b9a', '488243256161730560', '335330315113467904');

-- ----------------------------
-- Table structure for t_sys_position
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_position`;
CREATE TABLE `t_sys_position` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `postName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '岗位名称',
  `orderNum` int DEFAULT NULL COMMENT '排序',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='岗位表';

-- ----------------------------
-- Records of t_sys_position
-- ----------------------------
INSERT INTO `t_sys_position` VALUES ('410792368778907648', '总经理', '1', '1');
INSERT INTO `t_sys_position` VALUES ('410792443127140352', '技术经理', '2', '1');
INSERT INTO `t_sys_position` VALUES ('410792478929719296', '人事经理', '3', '1');
INSERT INTO `t_sys_position` VALUES ('411477874382606336', '员工', '4', '1');

-- ----------------------------
-- Table structure for t_sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job`;
CREATE TABLE `t_sys_quartz_job` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '日志id',
  `jobName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '任务名称',
  `jobGroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '任务组名',
  `invokeTarget` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '调用目标字符串',
  `cronExpression` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'cron执行表达式',
  `misfirePolicy` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='定时任务调度表';

-- ----------------------------
-- Records of t_sys_quartz_job
-- ----------------------------
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', '*/5 * * * * ?', '2', '0', '1');

-- ----------------------------
-- Table structure for t_sys_quartz_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
CREATE TABLE `t_sys_quartz_job_log` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `jobName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '任务名称',
  `jobGroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '任务组名',
  `invokeTarget` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '调用目标字符串',
  `jobMessage` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '日志信息',
  `status` int DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exceptionInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '异常信息',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of t_sys_quartz_job_log
-- ----------------------------
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610566486724608', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:07', '2019-09-17 00:16:07');
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610572270669824', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2019-09-17 00:16:09', '2019-09-17 00:16:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354984595927732224', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-14 23:48:53', '2019-11-14 23:48:53');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354990312722141184', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2019-11-15 00:11:36', '2019-11-15 00:11:36');
INSERT INTO `t_sys_quartz_job_log` VALUES ('354996339316232192', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2019-11-15 00:35:33', '2019-11-15 00:35:33');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274211356672', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274303631360', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274324602880', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421274366545920', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:22:40', '2020-04-29 18:22:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421315554611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:22:50', '2020-04-29 18:22:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421357501845504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:00', '2020-04-29 18:23:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421399453274112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:23:10', '2020-04-29 18:23:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421441375342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:20', '2020-04-29 18:23:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421483351937024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:23:30', '2020-04-29 18:23:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421525257228288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:40', '2020-04-29 18:23:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421567233822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:23:50', '2020-04-29 18:23:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421609130725376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:00', '2020-04-29 18:24:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421648662040576', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:09', '2020-04-29 18:24:09');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421651073765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:10', '2020-04-29 18:24:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421693041971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:20', '2020-04-29 18:24:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421734959845376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:24:30', '2020-04-29 18:24:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421776974188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:40', '2020-04-29 18:24:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421818862702592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:24:50', '2020-04-29 18:24:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421860805742592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:00', '2020-04-29 18:25:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415421902736199680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:25:10', '2020-04-29 18:25:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552540512256', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552636981248', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552670535680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552687312896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552716673024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423552741838848', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:43', '2020-04-29 18:31:43');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423559536611328', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:45', '2020-04-29 18:31:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423580482965504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:31:50', '2020-04-29 18:31:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423601454485504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:31:55', '2020-04-29 18:31:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423622405033984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:00', '2020-04-29 18:32:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423643372359680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:05', '2020-04-29 18:32:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423664343879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:10', '2020-04-29 18:32:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423685311205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:15', '2020-04-29 18:32:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423706328862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:20', '2020-04-29 18:32:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423727325548544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:25', '2020-04-29 18:32:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423748250931200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:30', '2020-04-29 18:32:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423769188896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:35', '2020-04-29 18:32:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423790227525632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:40', '2020-04-29 18:32:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423811190657024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:45', '2020-04-29 18:32:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423832178954240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:32:50', '2020-04-29 18:32:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423853100142592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:32:55', '2020-04-29 18:32:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423874054885376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:00', '2020-04-29 18:33:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423895026405376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:05', '2020-04-29 18:33:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423916002119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:10', '2020-04-29 18:33:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423937015582720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:15', '2020-04-29 18:33:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423957970325504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:20', '2020-04-29 18:33:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423978925068288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:25', '2020-04-29 18:33:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415423999942725632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:30', '2020-04-29 18:33:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424020889079808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:35', '2020-04-29 18:33:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424041894154240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:40', '2020-04-29 18:33:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424062844702720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:33:45', '2020-04-29 18:33:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424083803639808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:50', '2020-04-29 18:33:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424104754188288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:33:55', '2020-04-29 18:33:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424125746679808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:00', '2020-04-29 18:34:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424146726588416', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:05', '2020-04-29 18:34:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424167727468544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:10', '2020-04-29 18:34:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424188678017024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:15', '2020-04-29 18:34:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424209636954112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:20', '2020-04-29 18:34:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424230595891200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:25', '2020-04-29 18:34:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424251567411200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:30', '2020-04-29 18:34:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424272559902720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:35', '2020-04-29 18:34:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424293518839808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:40', '2020-04-29 18:34:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424314507137024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:34:45', '2020-04-29 18:34:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424335436713984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:50', '2020-04-29 18:34:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424356404039680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:34:55', '2020-04-29 18:34:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424377396531200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:00', '2020-04-29 18:35:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424398414188544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:05', '2020-04-29 18:35:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424419326988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:10', '2020-04-29 18:35:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424440332062720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:15', '2020-04-29 18:35:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424461282611200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:20', '2020-04-29 18:35:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424482254131200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:25', '2020-04-29 18:35:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424503200485376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:30', '2020-04-29 18:35:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424524163616768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:35', '2020-04-29 18:35:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424545135136768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:40', '2020-04-29 18:35:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424566148599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:45', '2020-04-29 18:35:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424587103342592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:35:50', '2020-04-29 18:35:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424608150360064', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:35:55', '2020-04-29 18:35:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424629029605376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:00', '2020-04-29 18:36:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424650072428544', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:05', '2020-04-29 18:36:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424671035559936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:10', '2020-04-29 18:36:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424691981914112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:15', '2020-04-29 18:36:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424712961822720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:20', '2020-04-29 18:36:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424733899788288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:25', '2020-04-29 18:36:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424754862919680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:30', '2020-04-29 18:36:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424775888965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:35', '2020-04-29 18:36:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424796797571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:40', '2020-04-29 18:36:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424817836199936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:45', '2020-04-29 18:36:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424838769971200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:36:50', '2020-04-29 18:36:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424859741491200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:36:55', '2020-04-29 18:36:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424880696233984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:00', '2020-04-29 18:37:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424901705502720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:05', '2020-04-29 18:37:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424922681217024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:10', '2020-04-29 18:37:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424943690485760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:15', '2020-04-29 18:37:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424964632645632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:20', '2020-04-29 18:37:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415424985562222592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:25', '2020-04-29 18:37:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425006516965376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:30', '2020-04-29 18:37:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425027484291072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:35', '2020-04-29 18:37:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425048476782592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:37:40', '2020-04-29 18:37:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425069427331072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:45', '2020-04-29 18:37:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425090436599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:37:50', '2020-04-29 18:37:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425111412314112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:37:55', '2020-04-29 18:37:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425132354473984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:00', '2020-04-29 18:38:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425153334382592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:05', '2020-04-29 18:38:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425174335262720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:10', '2020-04-29 18:38:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425195290005504', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:15', '2020-04-29 18:38:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425216248942592', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:20', '2020-04-29 18:38:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425237224656896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:38:25', '2020-04-29 18:38:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425258200371200', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:30', '2020-04-29 18:38:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425279192862720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:35', '2020-04-29 18:38:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425300126633984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:40', '2020-04-29 18:38:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425321089765376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:45', '2020-04-29 18:38:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425342082256896', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:38:50', '2020-04-29 18:38:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425363041193984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:38:55', '2020-04-29 18:38:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425384000131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:00', '2020-04-29 18:39:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425404967456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:05', '2020-04-29 18:39:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425425997697024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:10', '2020-04-29 18:39:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425446956634112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:15', '2020-04-29 18:39:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425467902988288', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:20', '2020-04-29 18:39:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425488866119680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:25', '2020-04-29 18:39:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425509825056768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:30', '2020-04-29 18:39:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425530800771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:35', '2020-04-29 18:39:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425551768096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:40', '2020-04-29 18:39:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425572743811072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:39:45', '2020-04-29 18:39:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425593706942464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:50', '2020-04-29 18:39:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425614678462464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:39:55', '2020-04-29 18:39:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425635654176768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:00', '2020-04-29 18:40:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425656629891072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:05', '2020-04-29 18:40:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425677597216768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:10', '2020-04-29 18:40:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425698568736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:15', '2020-04-29 18:40:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425719540256768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:20', '2020-04-29 18:40:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425740515971072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:25', '2020-04-29 18:40:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425761487491072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:30', '2020-04-29 18:40:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425782454816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:35', '2020-04-29 18:40:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425803430531072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:40', '2020-04-29 18:40:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425824397856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:45', '2020-04-29 18:40:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425845373571072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:40:50', '2020-04-29 18:40:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425866340896768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:40:55', '2020-04-29 18:40:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425887312416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:00', '2020-04-29 18:41:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425908283936768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:05', '2020-04-29 18:41:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425929255456768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:10', '2020-04-29 18:41:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425950226976768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:15', '2020-04-29 18:41:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425971198496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:20', '2020-04-29 18:41:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415425992165822464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:25', '2020-04-29 18:41:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426013141536768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:30', '2020-04-29 18:41:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426034117251072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:41:35', '2020-04-29 18:41:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426055088771072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:40', '2020-04-29 18:41:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426076056096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:41:45', '2020-04-29 18:41:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426117479043072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-04-29 18:41:51', '2020-04-29 18:41:51');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426138983239680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:00', '2020-04-29 18:42:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426180909502464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:10', '2020-04-29 18:42:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426222856736768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:20', '2020-04-29 18:42:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426264799776768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:30', '2020-04-29 18:42:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426306742816768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:42:40', '2020-04-29 18:42:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426348685856768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:42:50', '2020-04-29 18:42:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426390633091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:00', '2020-04-29 18:43:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426432580325376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:10', '2020-04-29 18:43:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426453539262464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:15', '2020-04-29 18:43:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426474519171072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-04-29 18:43:20', '2020-04-29 18:43:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426495486496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:25', '2020-04-29 18:43:25');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426516462211072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:30', '2020-04-29 18:43:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426537437925376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:35', '2020-04-29 18:43:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426558417833984', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:40', '2020-04-29 18:43:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426579372576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:43:45', '2020-04-29 18:43:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426600344096768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:43:50', '2020-04-29 18:43:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426789146497024', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-04-29 18:44:35', '2020-04-29 18:44:35');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426810071879680', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:40', '2020-04-29 18:44:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426831039205376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:45', '2020-04-29 18:44:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426851998142464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:44:50', '2020-04-29 18:44:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426872982245376', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:44:55', '2020-04-29 18:44:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426894041845760', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:00', '2020-04-29 18:45:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426914921091072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:05', '2020-04-29 18:45:05');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426935888416768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:10', '2020-04-29 18:45:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426956864131072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:15', '2020-04-29 18:45:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415426977835651072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-04-29 18:45:20', '2020-04-29 18:45:20');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427019774496768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:30', '2020-04-29 18:45:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427061713342464', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:40', '2020-04-29 18:45:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('415427103660576768', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：0毫秒', '0', null, '2020-04-29 18:45:50', '2020-04-29 18:45:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503199187412848640', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：45毫秒', '0', null, '2020-12-27 15:40:45', '2020-12-27 15:40:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503200830422388736', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', '0', null, '2020-12-27 15:47:17', '2020-12-27 15:47:17');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205708326637568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：148毫秒', '0', null, '2020-12-27 16:06:40', '2020-12-27 16:06:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205749506314240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：10毫秒', '0', null, '2020-12-27 16:06:50', '2020-12-27 16:06:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205791440965632', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-12-27 16:07:00', '2020-12-27 16:07:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205917249114112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：7毫秒', '0', null, '2020-12-27 16:07:30', '2020-12-27 16:07:30');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503205959217319936', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：8毫秒', '0', null, '2020-12-27 16:07:40', '2020-12-27 16:07:40');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503218856400130048', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：39毫秒', '0', null, '2020-12-27 16:58:55', '2020-12-27 16:58:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222358929182720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-12-27 17:12:50', '2020-12-27 17:12:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222379850371072', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：1毫秒', '0', null, '2020-12-27 17:12:55', '2020-12-27 17:12:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222442806874112', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-12-27 17:13:10', '2020-12-27 17:13:10');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222463786782720', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：2毫秒', '0', null, '2020-12-27 17:13:15', '2020-12-27 17:13:15');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222842696011776', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：5毫秒', '0', null, '2020-12-27 17:14:45', '2020-12-27 17:14:45');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222862266634240', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：4毫秒', '0', null, '2020-12-27 17:14:50', '2020-12-27 17:14:50');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222883204599808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '0', null, '2020-12-27 17:14:55', '2020-12-27 17:14:55');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503222904176119808', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：3毫秒', '1', 'ewrwerwer', '2020-12-27 17:15:00', '2020-12-30 17:15:00');
INSERT INTO `t_sys_quartz_job_log` VALUES ('503236547471085568', 'v2Task2', 'SYSTEM', 'v2Task.runTask2(1,2l,\'asa\',true,2D)', 'v2Task2 总共耗时：37毫秒', '0', null, '2020-12-27 18:09:13', '2020-12-27 18:09:13');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('488243256161730560', '管理员');

-- ----------------------------
-- Table structure for t_sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_user`;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sysUserId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `sysRoleId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户角色中间表';

-- ----------------------------
-- Records of t_sys_role_user
-- ----------------------------
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089', '353711021275353088', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('353714370687143936', '488294747442511872', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('354984037766533120', '354984005751410688', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354988722443390977', '354988722443390976', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('354989789679849472', '354989789675655168', '488305788310257664');
INSERT INTO `t_sys_role_user` VALUES ('495571139645542400', '1', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('612107905532952576', '612107905532952576', '488289006124007424');
INSERT INTO `t_sys_role_user` VALUES ('612107905537146880', '612107905532952576', '488305788310257664');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `depId` int DEFAULT NULL COMMENT '部门id',
  `posId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '岗位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '2', '410792368778907648');