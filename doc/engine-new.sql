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

 Date: 07/13/2021 23:32:41 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

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
  `status` int(11) DEFAULT NULL COMMENT '状态',
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
--  Table structure for `t_sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int(11) DEFAULT NULL COMMENT '类型',
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
  `state` int(11) DEFAULT NULL COMMENT '0未阅读 1 阅读',
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
  `isBlank` int(11) DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '菜单图标',
  `orderNum` int(11) DEFAULT NULL COMMENT '排序',
  `visible` int(11) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='权限表';

-- ----------------------------
--  Records of `t_sys_permission`
-- ----------------------------
BEGIN;
INSERT INTO `t_sys_permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0'), ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0'), ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0'), ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0'), ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0'), ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0'), ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0'), ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0'), ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0'), ('330365026642825216', '公告管理', '公告展示', '/SysNoticeController/view', '0', '592059865673760768', 'gen:sysNotice:view', '1', 'fa fa-telegram', '10', '0'), ('3303650266428252171', '公告集合', '公告集合', '/SysNoticeController/list', '0', '330365026642825216', 'gen:sysNotice:list', '2', '', null, '0'), ('3303650266428252182', '公告添加', '公告添加', '/SysNoticeController/add', '0', '330365026642825216', 'gen:sysNotice:add', '2', 'entypo-plus-squared', null, '0'), ('3303650266428252193', '公告删除', '公告删除', '/SysNoticeController/remove', '0', '330365026642825216', 'gen:sysNotice:remove', '2', 'entypo-trash', null, '0'), ('3303650266428252204', '公告修改', '公告修改', '/SysNoticeController/edit', '0', '330365026642825216', 'gen:sysNotice:edit', '2', 'fa fa-wrench', null, '0'), ('331778807298134016', '定时器表达式', null, 'https://www.bejson.com/othertools/cron/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-flash', '12', '0'), ('332157860920299520', '定时任务', '定时任务调度表展示', '/SysQuartzJobController/view', '0', '592059865673760768', 'gen:sysQuartzJob:view', '1', 'fa fa-hourglass-1', '13', '0'), ('3321578609202995211', '定时任务调度表集合', '定时任务调度表集合', '/SysQuartzJobController/list', '0', '332157860920299520', 'gen:sysQuartzJob:list', '2', '', null, '0'), ('3321578609202995222', '定时任务调度表添加', '定时任务调度表添加', '/SysQuartzJobController/add', '0', '332157860920299520', 'gen:sysQuartzJob:add', '2', 'entypo-plus-squared', null, '0'), ('3321578609202995233', '定时任务调度表删除', '定时任务调度表删除', '/SysQuartzJobController/remove', '0', '332157860920299520', 'gen:sysQuartzJob:remove', '2', 'entypo-trash', null, '0'), ('3321578609202995244', '定时任务调度表修改', '定时任务调度表修改', '/SysQuartzJobController/edit', '0', '332157860920299520', 'gen:sysQuartzJob:edit', '2', 'fa fa-wrench', null, '0'), ('332857281479839744', '定时任务日志', '定时任务日志', '/SysQuartzJobLogController/view', '0', '592059865673760768', 'gen:sysQuartzJobLog:view', '1', 'fa fa-database', '14', '0'), ('3328572814798397451', '定时任务调度日志表集合', '定时任务调度日志表集合', '/SysQuartzJobLogController/list', '0', '332857281479839744', 'gen:sysQuartzJobLog:list', '2', '', null, '0'), ('3328572814798397473', '定时任务调度日志表删除', '定时任务调度日志表删除', '/SysQuartzJobLogController/remove', '0', '332857281479839744', 'gen:sysQuartzJobLog:remove', '2', 'entypo-trash', null, '0'), ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-retweet', '10', '0'), ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0'), ('410791701859405824', '岗位管理', '岗位展示', '/SysPositionController/view', '0', '411522822607867904', 'gen:sysPosition:view', '1', 'fa fa-vcard', '17', '0'), ('4107917018594058251', '岗位表集合', '岗位集合', '/SysPositionController/list', '0', '410791701859405824', 'gen:sysPosition:list', '2', '', null, '0'), ('4107917018594058262', '岗位表添加', '岗位添加', '/SysPositionController/add', '0', '410791701859405824', 'gen:sysPosition:add', '2', 'entypo-plus-squared', null, '0'), ('4107917018594058273', '岗位表删除', '岗位删除', '/SysPositionController/remove', '0', '410791701859405824', 'gen:sysPosition:remove', '2', 'entypo-trash', null, '0'), ('4107917018594058284', '岗位表修改', '岗位修改', '/SysPositionController/edit', '0', '410791701859405824', 'gen:sysPosition:edit', '2', 'fa fa-wrench', null, '0'), ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:sysDepartment:view', '1', 'fa fa-odnoklassniki', '18', '0'), ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:sysDepartment:list', '2', '', null, '0'), ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:sysDepartment:add', '2', 'entypo-plus-squared', null, '0'), ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:sysDepartment:remove', '2', 'entypo-trash', null, '0'), ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:sysDepartment:edit', '2', 'fa fa-wrench', null, '0'), ('411522822607867904', '用户管理', null, '', '0', '0', '', '0', 'layui-icon layui-icon-user', '3', '0'), ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0'), ('496126970468237312', '日志展示', '日志管理', '/LogController/view', '0', '592059865673760768', 'system:log:view', '1', 'fa fa-info', '9', '0'), ('496127240363311104', '日志删除', '日志删除', '/LogController/remove', '0', '496126970468237312', 'system:log:remove', '2', 'entypo-trash', null, '0'), ('496127794879660032', '日志集合', '日志集合', '/LogController/list', '0', '496126970468237312', 'system:log:list', '2', null, null, '0'), ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', null, '0'), ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0'), ('583063272123531264', 'API文档', null, '/doc.html', '0', '617766548966211584', '--', '1', 'layui-icon layui-icon fa fa-font', '8', '0'), ('586003694080753664', '表单构建', null, '/static/component/code/index.html', '0', '617766548966211584', 'system:tool:view', '1', 'layui-icon layui-icon fa fa-list-alt', '5', '0'), ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0'), ('594691026430459904', '电子邮件管理', '电子邮件展示', '/EmailController/view', '0', '592059865673760768', 'system:email:view', '1', 'fa fa-envelope', '8', '0'), ('5946910264304599041', '电子邮件集合', '电子邮件集合', '/EmailController/list', '0', '594691026430459904', 'system:email:list', '2', '', null, '0'), ('5946910264304599042', '电子邮件添加', '电子邮件添加', '/EmailController/add', '0', '594691026430459904', 'system:email:add', '2', 'entypo-plus-squared', null, '0'), ('5946910264304599043', '电子邮件删除', '电子邮件删除', '/EmailController/remove', '0', '594691026430459904', 'system:email:remove', '2', 'entypo-trash', null, '0'), ('5946910264304599044', '电子邮件修改', '电子邮件修改', '/EmailController/edit', '0', '594691026430459904', 'system:email:edit', '2', 'fa fa-wrench', null, '0'), ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0'), ('617766548966211584', '系统工具', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', '5', '0'), ('618918631769636864', '字典管理', '字典类型表展示', '/DictTypeController/view', '0', '592059865673760768', 'system:dictType:view', '1', 'fa fa-puzzle-piece', '11', '0'), ('6189186317738311681', '字典类型表集合', '字典类型表集合', '/DictTypeController/list', '0', '618918631769636864', 'system:dictType:list', '2', null, null, '0'), ('6189186317948026882', '字典类型表添加', '字典类型表添加', '/DictTypeController/add', '0', '618918631769636864', 'system:dictType:add', '2', null, null, '0'), ('6189186317948026883', '字典类型表删除', '字典类型表删除', '/DictTypeController/remove', '0', '618918631769636864', 'system:dictType:remove', '2', null, null, '0'), ('6189186317989969924', '字典类型表修改', '字典类型表修改', '/DictTypeController/edit', '0', '618918631769636864', 'system:dictType:edit', '2', null, null, '0'), ('6192095214866268161', '字典数据表集合', '字典数据表集合', '/DictDataController/list', '0', '618918631769636864', 'system:dictData:list', '2', null, null, '0'), ('6192095214866268162', '字典数据表添加', '字典数据表添加', '/DictDataController/add', '0', '618918631769636864', 'system:dictData:add', '2', null, null, '0'), ('6192095215075983363', '字典数据表删除', '字典数据表删除', '/DictDataController/remove', '0', '618918631769636864', 'system:dictData:remove', '2', null, null, '0'), ('6192095215075983364', '字典数据表修改', '字典数据表修改', '/DictDataController/edit', '0', '618918631769636864', 'system:dictData:edit', '2', null, null, '0'), ('619836559427895296', '字典数据视图', '字典数据视图', '/DictDataController/view', '0', '618918631769636864', 'system:dictData:view', '2', null, null, '0'), ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', null, '0'), ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0'), ('9', '角色管理', '角色展示', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');
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
INSERT INTO `t_sys_permission_role` VALUES ('21e0a966-76cf-4a6e-a095-9725aebda979', '488243256161730560', '8'), ('2481fdc1-970c-4467-9bdd-f399c286f342', '488243256161730560', '617766548966211584'), ('3a4dcc87-9d4e-4a95-a042-d53f63b29fe5', '488243256161730560', '4'), ('43f77b58-6cb5-45f6-8289-d5ec930527ed', '488243256161730560', '9'), ('45c43df0-c06e-4580-a15c-94aa96403f2e', '488243256161730560', '18'), ('4632885a-de8f-4929-a22c-3c61af166878', '488243256161730560', '410989805699207168'), ('4926d66c-9b31-4ef2-9ead-6532a36250db', '488243256161730560', '7'), ('4ee78de9-45cd-4e71-a4bd-009f5b99ea58', '488243256161730560', '13'), ('52e37bb4-1171-4e86-a5ed-1249328a4ee1', '488243256161730560', '17'), ('5526c8b2-b22b-4287-895b-f63fec04564f', '488243256161730560', '4109898056992071713'), ('566d66bd-1585-41d8-8864-8eab07d087e5', '488243256161730560', '410791701859405824'), ('57cb91ad-d089-4ddf-8e46-b9e757e6e7f6', '488243256161730560', '16'), ('617398d1-ad37-4ca0-907d-5e5dd2c504c7', '488243256161730560', '5'), ('762ef852-de4d-4867-bd4b-203f3f146ee0', '488243256161730560', '411522822607867904'), ('7a91845f-c36c-4759-861e-8905b97a4f70', '488243256161730560', '586003694080753664'), ('80d1136c-5864-4e95-89b7-85772b8be789', '488243256161730560', '4109898056992071724'), ('836a5888-e729-4610-8c07-e775dad11cbc', '488243256161730560', '15'), ('85c29c0a-5268-4187-8deb-cd8fd44e805c', '488243256161730560', '592167738407911424'), ('a1bc306a-58ac-4ba9-8ceb-6996b2919a78', '488243256161730560', '4107917018594058273'), ('a4a9c1f2-a12f-4f56-946f-3c6f98c3757b', '488243256161730560', '4107917018594058262'), ('a8abc605-202b-439e-97e4-93846db715c9', '488243256161730560', '12'), ('a8e753c0-26ca-423d-a120-770d21b38790', '488243256161730560', '486690002869157888'), ('b453ed37-74bb-4bd7-bfb4-2387b2e722df', '488243256161730560', '4107917018594058284'), ('b5f6d73a-1c27-4bd7-8a24-dbb4f5e48447', '488243256161730560', '4107917018594058251'), ('be75b27b-e873-4cc6-b300-90251e648b85', '488243256161730560', '11'), ('c012195e-e2b5-47f4-8095-c565f6ce1f13', '488243256161730560', '331778807298134016'), ('c3567504-a6a1-4f38-9166-992250fc0c9c', '488243256161730560', '6'), ('cfed67cc-00bc-4459-bf4f-304956e2dd6c', '488243256161730560', '583063272123531264'), ('d0a76de1-2045-4fd1-8725-ddf6e5ff6974', '488243256161730560', '4109898056992071691'), ('dcfb552c-3edb-4d42-bb32-3d9d60d38060', '488243256161730560', '14'), ('e9731b3b-c380-47a3-8da5-da7a8abcb82e', '488243256161730560', '581541547099553792'), ('ef4e0a3a-1431-4e5a-bcca-d237da66cc57', '488243256161730560', '10'), ('f8f6c7c4-7e11-4926-b76f-2ad04793b5f6', '488243256161730560', '4109898056992071702'), ('f919c4fa-d6f3-44bc-8e01-238888b71b9a', '488243256161730560', '335330315113467904');
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

SET FOREIGN_KEY_CHECKS = 1;
