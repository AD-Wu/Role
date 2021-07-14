/*
Navicat MySQL Data Transfer

Source Server         : MySQL-8
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : engine

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2021-07-14 17:16:15
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
INSERT INTO `t_sys_oper_log` VALUES ('575214251908665344', '用户新增', 'com.fc.v2.controller.admin.UserController.add()', 'admin', '/UserController/add', '{\"username\":[\"test\"],\"password\":[\"test\"],\"nickname\":[\"测试员\"],\"depId\":[\"917c34ed1d42447db27e2b692f15e011\"],\"selectParent_select_input\":[\"次级管理员\"],\"roleIds\":[\"\"]}', null, '2021-07-14 17:02:55');

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
INSERT INTO `t_sys_permission` VALUES ('335330315113467904', 'Json工具', null, 'https://www.bejson.com/jsonviewernew/', '0', '617766548966211584', '#', '1', 'layui-icon layui-icon fa fa-retweet', '10', '0');
INSERT INTO `t_sys_permission` VALUES ('4', '用户管理', '用户展示', '/UserController/view', '0', '411522822607867904', 'system:user:view', '1', 'icon icon-user', '1', '0');
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
INSERT INTO `t_sys_permission_role` VALUES ('039518ae-f535-4960-8162-a8a1edc2785f', '488243256161730560', '15');
INSERT INTO `t_sys_permission_role` VALUES ('03f86bf3-74b2-41b3-8db8-c08b883bce89', '488243256161730560', '10');
INSERT INTO `t_sys_permission_role` VALUES ('0a0f89c8-20a0-42d9-94a6-19ae40f92508', '488243256161730560', '17');
INSERT INTO `t_sys_permission_role` VALUES ('0b1049fc-4657-4dd2-b86b-d3eca312e0ae', '488243256161730560', '13');
INSERT INTO `t_sys_permission_role` VALUES ('13ca4dcf-9605-443e-a039-0643d4c67044', '488243256161730560', '16');
INSERT INTO `t_sys_permission_role` VALUES ('19da5735-d8ad-420c-aed2-21e8c7126e0a', '488243256161730560', '4109898056992071691');
INSERT INTO `t_sys_permission_role` VALUES ('219c35cb-e9c5-4e43-97ad-20d7550eb961', '575214587369099264', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('27164de8-6207-4dfd-b305-fdf15f7db2e9', '488243256161730560', '14');
INSERT INTO `t_sys_permission_role` VALUES ('27e7c53a-b4f7-41fc-b664-abefa33da1d6', '488243256161730560', '586003694080753664');
INSERT INTO `t_sys_permission_role` VALUES ('2d0ed5a9-a958-468d-9207-b766c2c0a94d', '488243256161730560', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('3de69386-e769-4d24-ac3e-a9d729b5746c', '488243256161730560', '6');
INSERT INTO `t_sys_permission_role` VALUES ('5014fdff-345b-4512-be0b-eccf9d0c54d6', '488243256161730560', '8');
INSERT INTO `t_sys_permission_role` VALUES ('56e8becc-37a4-4e93-934d-e2642db1a224', '488243256161730560', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('6176d464-4cff-4d7c-9e2f-99dacaa6e584', '488243256161730560', '12');
INSERT INTO `t_sys_permission_role` VALUES ('649cbd52-9cb3-4c1d-81c1-980549ad97f7', '488243256161730560', '9');
INSERT INTO `t_sys_permission_role` VALUES ('88c93b20-c909-459d-a7d4-11c3e9b2cd23', '488243256161730560', '4109898056992071724');
INSERT INTO `t_sys_permission_role` VALUES ('8902e43e-9a24-4863-8db5-b2dc8826c143', '575214587369099264', '583063272123531264');
INSERT INTO `t_sys_permission_role` VALUES ('8fb93189-90c8-465e-95e3-ca5c6cebb6a7', '488243256161730560', '4');
INSERT INTO `t_sys_permission_role` VALUES ('ae0bf6df-d00d-4f21-8d75-2e9dfca07b73', '488243256161730560', '331778807298134016');
INSERT INTO `t_sys_permission_role` VALUES ('b0b22c82-05b2-4b19-990f-0df2c9c3eb62', '488243256161730560', '18');
INSERT INTO `t_sys_permission_role` VALUES ('b92633ed-41ea-4d46-a720-03cef0befee8', '488243256161730560', '11');
INSERT INTO `t_sys_permission_role` VALUES ('bbc0e5e3-6b47-4c31-88f3-262f01423bd4', '488243256161730560', '4109898056992071713');
INSERT INTO `t_sys_permission_role` VALUES ('bfb3a127-70dd-4e2e-aaa1-bb08e196ba17', '488243256161730560', '7');
INSERT INTO `t_sys_permission_role` VALUES ('c31e2c15-d07f-478c-87de-3f2a9c5302da', '488243256161730560', '335330315113467904');
INSERT INTO `t_sys_permission_role` VALUES ('cac698bb-7a93-4be2-8169-4581fd4cf250', '488243256161730560', '411522822607867904');
INSERT INTO `t_sys_permission_role` VALUES ('cdec1d62-1296-467d-b57f-187cfc97a008', '488243256161730560', '5');
INSERT INTO `t_sys_permission_role` VALUES ('d76c354e-d40e-4bf8-8e30-1b47cd283484', '488243256161730560', '410989805699207168');
INSERT INTO `t_sys_permission_role` VALUES ('d7cf09e0-d563-4960-b4e5-77d5db91650c', '488243256161730560', '486690002869157888');
INSERT INTO `t_sys_permission_role` VALUES ('d9e83125-084b-4b1d-a054-acd690413069', '488243256161730560', '617766548966211584');
INSERT INTO `t_sys_permission_role` VALUES ('dc02bfd4-15a0-4eba-a8fe-5b9ad90af9e4', '488243256161730560', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('dc14dc1a-3c75-4754-b636-08d233c940b9', '488243256161730560', '4109898056992071702');
INSERT INTO `t_sys_permission_role` VALUES ('dd813463-6576-4df2-8663-e1b966265c3d', '575214587369099264', '592167738407911424');
INSERT INTO `t_sys_permission_role` VALUES ('f6dbdd01-8898-42e5-b77d-e0fa4aae6b4a', '575214587369099264', '581541547099553792');
INSERT INTO `t_sys_permission_role` VALUES ('fa104e24-b6d3-4a0c-bcf5-dc3923bbc3a4', '575214587369099264', '617766548966211584');
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
                              `depId` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '部门id',
                              PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', 'aa8d8d0576aa436dad20892d3e179870');
INSERT INTO `t_sys_user` VALUES ('575214251849945088', 'test', '098f6bcd4621d373cade4e832627b4f6', '测试员', '917c34ed1d42447db27e2b692f15e011');
