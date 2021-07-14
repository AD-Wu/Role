/*
Navicat MySQL Data Transfer

Source Server         : MySQL-8
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : engine

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2021-07-14 18:33:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_department
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_department`;
CREATE TABLE `t_sys_department` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `parentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '父id',
  `deptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='部门表';

-- ----------------------------
-- Records of t_sys_department
-- ----------------------------
INSERT INTO `t_sys_department` VALUES ('917c34ed1d42447db27e2b692f15e011', '0', '次级管理员', '1');
INSERT INTO `t_sys_department` VALUES ('aa8d8d0576aa436dad20892d3e179870', '0', '超级管理员', '1');

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
  `operTime` timestamp NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='日志记录表';

-- ----------------------------
-- Records of t_sys_oper_log
-- ----------------------------
INSERT INTO `t_sys_oper_log` VALUES ('575225358480183296', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"sdf\"],\"password\":[\"1\"],\"nickname\":[\"asdf\"],\"depId\":[\"917c34ed1d42447db27e2b692f15e011\"],\"selectParent_select_input\":[\"次级管理员\"],\"roleIds\":[\"575214587369099264\"]}', null, '2021-07-14 17:47:03');
INSERT INTO `t_sys_oper_log` VALUES ('575230843883229184', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"ad\"],\"password\":[\"1\"],\"nickname\":[\"ad\"],\"depId\":[\"917c34ed1d42447db27e2b692f15e011\"],\"selectParent_select_input\":[\"次级管理员\"],\"roleIds\":[\"575214587369099264\"]}', null, '2021-07-14 18:08:51');

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
INSERT INTO `t_sys_permission` VALUES ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-retweet', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0');
INSERT INTO `t_sys_permission` VALUES ('410989805699207168', '部门管理', '部门展示', '/SysDepartmentController/view', '0', '411522822607867904', 'gen:department:view', '1', 'fa fa-odnoklassniki', '18', '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071691', '部门集合', '部门集合', '/SysDepartmentController/list', '0', '410989805699207168', 'gen:department:list', '2', '', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071702', '部门添加', '部门添加', '/SysDepartmentController/add', '0', '410989805699207168', 'gen:department:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071713', '部门删除', '部门删除', '/SysDepartmentController/remove', '0', '410989805699207168', 'gen:department:remove', '2', 'entypo-trash', null, '0');
INSERT INTO `t_sys_permission` VALUES ('4109898056992071724', '部门修改', '部门修改', '/SysDepartmentController/edit', '0', '410989805699207168', 'gen:department:edit', '2', 'fa fa-wrench', null, '0');
INSERT INTO `t_sys_permission` VALUES ('411522822607867904', '用户管理', null, '', '0', '0', '', '0', 'layui-icon layui-icon-user', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('486690002869157888', '用户密码修改', '用户密码修改', '/UserController/editPwd', '0', '4', 'system:user:editPwd', '2', 'entypo-tools', '3', '0');
INSERT INTO `t_sys_permission` VALUES ('5', '用户集合', '用户集合', '/UserController/list', '0', '4', 'system:user:list', '2', '', '0', '0');
INSERT INTO `t_sys_permission` VALUES ('581541547099553792', 'druid监控', 'druid监控', '/druid/', '0', '617766548966211584', 'user:list', '1', 'fa fa-line-chart', '6', '0');
INSERT INTO `t_sys_permission` VALUES ('583063272123531264', 'API文档', null, '/doc.html', '0', '617766548966211584', '--', '1', 'layui-icon layui-icon fa fa-font', '8', '0');
INSERT INTO `t_sys_permission` VALUES ('586003694080753664', '表单构建', null, '/static/component/code/index.html', '0', '617766548966211584', 'system:tool:view', '1', 'layui-icon layui-icon fa fa-list-alt', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('592167738407911424', '系统监控', '系统监控', '/ServiceController/view', '0', '617766548966211584', 'system:service:view', '1', 'fa fa-video-camera', '7', '0');
INSERT INTO `t_sys_permission` VALUES ('6', '用户添加', '用户添加', '/UserController/add', '0', '4', 'system:user:add', '2', 'entypo-plus-squared', null, '0');
INSERT INTO `t_sys_permission` VALUES ('617766548966211584', '系统工具', null, '', '0', '0', '', '0', 'layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon layui-icon-util', '5', '0');
INSERT INTO `t_sys_permission` VALUES ('7', '用户删除', '用户删除', '/UserController/remove', '0', '4', 'system:user:remove', '2', 'entypo-trash', '0', '0');
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
INSERT INTO `t_sys_permission_role` VALUES ('0c38eb61-f9a4-4bbe-a525-8064e24f2f0f', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('1b7b5dd7-e1e2-4b3b-a694-ffb893163630', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('1ebecc37-9608-41db-be51-027580c7d637', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('2004e0b8-8cd0-41bd-a6d8-21cf15c969c4', '488243256161730560', '4109898056992071691');
INSERT INTO `t_sys_permission_role` VALUES ('219c35cb-e9c5-4e43-97ad-20d7550eb961', '575214587369099264', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('2281ca1b-b1ad-4977-a95d-6577c07a6380', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('25f7a74c-ab08-4882-9f1e-1c10339dc7c7', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('272d7b2d-12bf-48ca-af9a-1c7fa259bb5d', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('32030067-9056-4fe3-a950-9599d477727d', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('4afe6425-8338-48f7-b8a8-805c07d7734e', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('4c7db39a-2a03-4f74-a8dd-f69e20c147df', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('4d8a1028-847e-49cc-ad79-e524fd90a945', '488243256161730560', '4109898056992071724');
INSERT INTO `t_sys_permission_role` VALUES ('5907d70b-70b5-4ca5-94b8-7de0ff7e484e', '488243256161730560', '4109898056992071702');
INSERT INTO `t_sys_permission_role` VALUES ('83dfd4a2-e69c-4cdd-af9a-9718293a5a5a', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('8902e43e-9a24-4863-8db5-b2dc8826c143', '575214587369099264', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('8ffc5984-4666-4205-9451-d57e8ebe005c', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('95d78be7-5371-4e03-9ae9-ae4b8bb47ad8', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('a73adbe8-6804-4692-8574-6cd9f6f483cd', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('aec110d9-8f5f-4b1c-b673-57c7f45fb20f', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('af4d9e7d-26d3-449e-a06b-9201564733db', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('b2f4966a-1ae3-4a1b-a2ae-7b007fb4288b', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('b5d66b71-7349-4c62-bdc4-ecef8e8b3b62', '488243256161730560', '4109898056992071713');
INSERT INTO `t_sys_permission_role` VALUES ('ba872c28-bd2f-47de-a412-721ed0815fba', '488243256161730560', '411522822607867904');
INSERT INTO `t_sys_permission_role` VALUES ('d1b8d29f-9360-4c46-9623-59e45fa1aa58', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('dd813463-6576-4df2-8663-e1b966265c3d', '575214587369099264', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('e12b324f-05f1-4eae-ae26-40e5edb166a7', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('e3dc683d-2371-4ab3-a127-316189db1094', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('e632d7c9-4f1d-439a-8807-c263f59dabdf', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('e679ff9c-4f05-4abf-92d2-a15e4c85f938', '488243256161730560', '410989805699207168');
INSERT INTO `t_sys_permission_role` VALUES ('f6dbdd01-8898-42e5-b77d-e0fa4aae6b4a', '575214587369099264', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('fa104e24-b6d3-4a0c-bcf5-dc3923bbc3a4', '575214587369099264', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('fa865888-a44b-48db-9234-ef030f9e43eb', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('faff6259-ade9-43e8-a55d-5d0f27284403', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('fe1308d0-d0c6-431c-ae52-e9c8a795b222', '575214587369099264', '586003694080753664');

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
INSERT INTO `t_sys_role` VALUES ('575214587369099264', '测试员');

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
INSERT INTO `t_sys_role_user` VALUES ('354984037766533120', '354984005751410688', '488243256161730560');
INSERT INTO `t_sys_role_user` VALUES ('495571139645542400', '1', '488243256161730560');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `depId` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', 'aa8d8d0576aa436dad20892d3e179870');
INSERT INTO `t_sys_user` VALUES ('575222922755575808', 'test', '098f6bcd4621d373cade4e832627b4f6', '测试员', '917c34ed1d42447db27e2b692f15e011');
