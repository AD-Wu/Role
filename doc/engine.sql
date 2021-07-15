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

 Date: 07/15/2021 23:12:51 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `parentId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '父id',
  `deptName` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
--  Records of `department`
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES ('917c34ed1d42447db27e2b692f15e011', '0', '次级管理员', '1'), ('aa8d8d0576aa436dad20892d3e179870', '0', '超级管理员', '1');
COMMIT;

-- ----------------------------
--  Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限名称',
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限描述',
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
--  Records of `permission`
-- ----------------------------
BEGIN;
INSERT INTO `permission` VALUES ('10', '角色集合', '角色集合', '/RoleController/list', '0', '9', 'system:role:list', '2', '', null, '0'), ('11', '角色添加', '角色添加', '/RoleController/add', '0', '9', 'system:role:add', '2', 'entypo-plus-squared', null, '0'), ('12', '角色删除', '角色删除', '/RoleController/remove', '0', '9', 'system:role:remove', '2', 'entypo-trash', null, '0'), ('13', '角色修改', '角色修改', '/RoleController/edit', '0', '9', 'system:role:edit', '2', 'fa fa-wrench', null, '0'), ('14', '权限展示', '权限展示', '/PermissionController/view', '0', '411522822607867904', 'system:permission:view', '1', 'fa fa-key', '3', '0'), ('15', '权限集合', '权限集合', '/PermissionController/list', '0', '14', 'system:permission:list', '2', '', null, '0'), ('16', '权限添加', '权限添加', '/permissionController/add', '0', '14', 'system:permission:add', '2', 'entypo-plus-squared', null, '0'), ('17', '权限删除', '权限删除', '/PermissionController/remove', '0', '14', 'system:permission:remove', '2', 'entypo-trash', null, '0'), ('18', '权限修改', '权限修改', '/PermissionController/edit', '0', '14', 'system:permission:edit', '2', 'fa fa-wrench', null, '0'), ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-retweet', '10', '0'), ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0'), ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:department:view', '1', 'fa fa-odnoklassniki', '18', '0'), ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:department:list', '2', '', null, '0'), ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:department:add', '2', 'entypo-plus-squared', null, '0'), ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:department:remove', '2', 'entypo-trash', null, '0'), ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:department:edit', '2', 'fa fa-wrench', null, '0'), ('411522822607867904', '用户管理', null, '', '0', '0', '', '0', 'layui-icon layui-icon-user', '3', '0'), ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0'), ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', '0', '0'), ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0'), ('583063272123531264', 'API文档', null, '/doc.html', '0', '617766548966211584', '--', '1', 'layui-icon layui-icon layui-icon layui-icon fa fa-font', '8', '0'), ('586003694080753664', '表单构建', null, '/static/component/code/index.html', '0', '617766548966211584', 'system:tool:view', '1', 'layui-icon layui-icon fa fa-list-alt', '5', '0'), ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0'), ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0'), ('617766548966211584', '系统工具', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', '5', '0'), ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', '0', '0'), ('8', '用户修改', '用户修改', '/UserController/edit', '0', '4', 'system:user:edit', '2', 'fa fa-wrench', null, '0'), ('9', '角色管理', '角色展示', '/RoleController/view', '0', '411522822607867904', 'system:role:view', '1', 'fa fa-group', '2', '0');
COMMIT;

-- ----------------------------
--  Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `parentId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '父角色Id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色表';

-- ----------------------------
--  Records of `role`
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('488243256161730560', '0', '管理员');
COMMIT;

-- ----------------------------
--  Table structure for `rolePermission`
-- ----------------------------
DROP TABLE IF EXISTS `rolePermission`;
CREATE TABLE `rolePermission` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `roleId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  `permissionId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色权限中间表';

-- ----------------------------
--  Records of `rolePermission`
-- ----------------------------
BEGIN;
INSERT INTO `rolePermission` VALUES ('1', '488243256161730560', '4'), ('10', '488243256161730560', '13'), ('11', '488243256161730560', '14'), ('12', '488243256161730560', '15'), ('13', '488243256161730560', '16'), ('14', '488243256161730560', '17'), ('15', '488243256161730560', '18'), ('16', '488243256161730560', '335330315113467904'), ('17', '488243256161730560', '410989805699207168'), ('18', '488243256161730560', '4109898056992071691'), ('19', '488243256161730560', '4109898056992071702'), ('2', '488243256161730560', '5'), ('20', '488243256161730560', '4109898056992071713'), ('21', '488243256161730560', '4109898056992071724'), ('22', '488243256161730560', '411522822607867904'), ('23', '488243256161730560', '486690002869157888'), ('24', '488243256161730560', '581541547099553792'), ('25\n', '488243256161730560', '583063272123531264'), ('26', '488243256161730560', '586003694080753664'), ('27', '488243256161730560', '592167738407911424'), ('28', '488243256161730560', '617766548966211584'), ('3', '488243256161730560', '6'), ('4', '488243256161730560', '7'), ('5', '488243256161730560', '8'), ('6', '488243256161730560', '9'), ('7', '488243256161730560', '10'), ('8', '488243256161730560', '11'), ('9', '488243256161730560', '12');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `deptId` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'aa8d8d0576aa436dad20892d3e179870');
COMMIT;

-- ----------------------------
--  Table structure for `userRole`
-- ----------------------------
DROP TABLE IF EXISTS `userRole`;
CREATE TABLE `userRole` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `userId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `roleId` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色中间表';

-- ----------------------------
--  Records of `userRole`
-- ----------------------------
BEGIN;
INSERT INTO `userRole` VALUES ('495571139645542400', '1', '488243256161730560');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
