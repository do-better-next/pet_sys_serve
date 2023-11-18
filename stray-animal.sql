/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : stray-animal

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 04/04/2022 14:21:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `num` int(11) NULL DEFAULT 0 COMMENT '报名人数',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (6, '征集 | 流浪动物救助故事', '222222\n\n![109951166509784238.jpg](http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg)', '2022-04-04 13:05:34', 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 3, '南艳湖');
INSERT INTO `activity` VALUES (7, '征集 | 流浪动物救助故事 | 第二季', '![109951166671773481.jpg](http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg)', '2022-04-04 13:17:51', 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', 5, '市府广场');

-- ----------------------------
-- Table structure for adopt
-- ----------------------------
DROP TABLE IF EXISTS `adopt`;
CREATE TABLE `adopt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `animal_id` int(11) NOT NULL COMMENT '流浪动物id',
  `adopt_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '领养状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adopt
-- ----------------------------

-- ----------------------------
-- Table structure for animal
-- ----------------------------
DROP TABLE IF EXISTS `animal`;
CREATE TABLE `animal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '动物名字',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '动物性别',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '种类',
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '年龄',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '动物照片',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '活动范围',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '身体状态',
  `sterilization` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否绝育',
  `vaccine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '疫苗接种',
  `adopt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '领养状态',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '其他描述',
  `is_adopt` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '是否被领养',
  `praise` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animal
-- ----------------------------
INSERT INTO `animal` VALUES (1, '小猫咪', '公', '猫', '2周岁', 'http://localhost:9090/file/bbe13e7e29c94e8d8eff233d289741d3.jpg', '室内', '良好', '是', '已接种', '可领养', '性格温顺', '否', 0);
INSERT INTO `animal` VALUES (2, '小土狗', '公', '狗', '12个月', 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '室外、室内', '健康', '否', '未接种', '不可领养', '可爱的狗狗', '是', 2);

-- ----------------------------
-- Table structure for applcation
-- ----------------------------
DROP TABLE IF EXISTS `applcation`;
CREATE TABLE `applcation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `experience` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '养宠经验',
  `pet` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '宠物',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `married` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '婚姻',
  `income` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '收入',
  `profession` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '职业',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '住址',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '领养理由',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '待审核' COMMENT '状态',
  `animal_id` int(11) NULL DEFAULT NULL COMMENT '动物id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of applcation
-- ----------------------------
INSERT INTO `applcation` VALUES (1, '张胜', '男', 29, '无经验', NULL, '13899887799', '未婚', '5000+', '程序员', '广州', '喜欢', '审核不通过', 2, 2);
INSERT INTO `applcation` VALUES (2, '王二', '男', 29, '有经验', NULL, '13988990099', '已婚', '9000+', '私企员工', '广州', '喜欢', '审核通过', 2, 3);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (2, '测试测试', '测试测试\n![p538306328.jpg](http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg)', 1, '2022-04-04 11:50:09', '程序员青戈');
INSERT INTO `article` VALUES (3, '22222', '2222\n\n222222\n\n\n![p538359297.jpg](http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg)', 1, '2022-04-04 11:55:37', '程序员青戈');
INSERT INTO `article` VALUES (6, '11111444', '\nggg\n![2.jpg](http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg)', 1, '2022-04-04 13:47:37', '管理员');
INSERT INTO `article` VALUES (7, '222', '2233\n\n![3.jpg](http://localhost:9090/file/0601b66bb2324a278664c0cda7c25668.jpg)', 1, '2022-04-04 14:17:53', '管理员');

-- ----------------------------
-- Table structure for article_kp
-- ----------------------------
DROP TABLE IF EXISTS `article_kp`;
CREATE TABLE `article_kp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `read1` int(11) NULL DEFAULT 0 COMMENT '阅读数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_kp
-- ----------------------------
INSERT INTO `article_kp` VALUES (6, '测网速文章', '222222', '2022-04-04 13:05:34', 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 5);
INSERT INTO `article_kp` VALUES (7, '少时诵诗书', '222', '2022-04-04 13:17:51', 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', 9);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复内容',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复人',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '回复时间',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父id',
  `article_id` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '123', '程序员青戈', '2022-04-02 23:37:50', NULL, 2, 1);
INSERT INTO `comment` VALUES (2, '2222', '程序员青戈', '2022-04-02 23:46:18', 1, 2, 1);
INSERT INTO `comment` VALUES (3, '111', '程序员青戈', '2022-04-04 09:37:01', NULL, 1, 1);
INSERT INTO `comment` VALUES (4, 'ggg', '管理员', '2022-04-04 13:45:20', NULL, 2, 1);
INSERT INTO `comment` VALUES (5, '2222', '管理员', '2022-04-04 14:11:28', NULL, 6, 2);
INSERT INTO `comment` VALUES (6, '2223333', '管理员', '2022-04-04 14:13:09', NULL, 6, 2);
INSERT INTO `comment` VALUES (7, '我是王五', '我是王五', '2022-04-04 14:18:47', NULL, 7, 2);
INSERT INTO `comment` VALUES (8, '2222', '我是王五', '2022-04-04 14:19:04', NULL, 7, 2);

-- ----------------------------
-- Table structure for donate
-- ----------------------------
DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '捐款人',
  `goods` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '捐赠物资',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '捐款事件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donate
-- ----------------------------
INSERT INTO `donate` VALUES (1, '张三', '牛奶', '2022-04-04 11:58:21');

-- ----------------------------
-- Table structure for feed
-- ----------------------------
DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '环境照片1',
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '环境照片2',
  `img3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '环境照片3',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '相关描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feed
-- ----------------------------
INSERT INTO `feed` VALUES (1, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '小区', '救助');

-- ----------------------------
-- Table structure for lost
-- ----------------------------
DROP TABLE IF EXISTS `lost`;
CREATE TABLE `lost`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '走失宠物名字',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '种类',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `status1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '已丢失/带领回',
  `status2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '找回状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lost
-- ----------------------------
INSERT INTO `lost` VALUES (1, '三毛', '狗', '公', '斩少女', '13900887766', '已丢失', '未找到');
INSERT INTO `lost` VALUES (2, '小米', '猫', '母', '13988997766', '小法', '已丢失', '未找到');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '111', '22211121121121', '2022-04-04 12:08:03');
INSERT INTO `notice` VALUES (2, '测试', '测试测试测试测试测试', '2022-04-04 12:23:18');

-- ----------------------------
-- Table structure for rescue
-- ----------------------------
DROP TABLE IF EXISTS `rescue`;
CREATE TABLE `rescue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `addres` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '照片',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '相关描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rescue
-- ----------------------------
INSERT INTO `rescue` VALUES (1, '救助1号', '市府广场', 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', '李约瑟', '13977886699', '救助');

-- ----------------------------
-- Table structure for salvation
-- ----------------------------
DROP TABLE IF EXISTS `salvation`;
CREATE TABLE `salvation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '情况描述',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '现场照片',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地点',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '发现时间',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT '未解决' COMMENT '解决状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salvation
-- ----------------------------
INSERT INTO `salvation` VALUES (1, '小野猫', 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', '市中心', '2022-04-04 07:00:00', '张三', '13988990077', '已解决');
INSERT INTO `salvation` VALUES (2, '小野猫', 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '科技馆', '2022-04-04 10:17:47', '张飞', '13088997766', '未解决');
INSERT INTO `salvation` VALUES (3, '111', 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', NULL, NULL, NULL, NULL, '未解决');

-- ----------------------------
-- Table structure for sterilization
-- ----------------------------
DROP TABLE IF EXISTS `sterilization`;
CREATE TABLE `sterilization`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `animal_id` int(11) NULL DEFAULT NULL COMMENT '流浪动物id',
  `catch1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '捕捉状态',
  `sterilization` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '绝育状态',
  `release1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '放生状态',
  `vaccine` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '疫苗状态',
  `animal_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sterilization
-- ----------------------------
INSERT INTO `sterilization` VALUES (2, 1, '已捕捉', '是', '未放生', '已接种', '小猫咪');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('s-custom', 'el-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('s-grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES ('document', 'el-icon-document', 'icon');
INSERT INTO `sys_dict` VALUES ('coffee', 'el-icon-coffee\r\n', 'icon');
INSERT INTO `sys_dict` VALUES ('s-marketing', 'el-icon-s-marketing', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint(20) NULL DEFAULT NULL COMMENT '文件大小(kb)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件md5',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用链接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (37, 'keyboard.jpg', 'jpg', 169, 'http://localhost:9090/file/b8f9f9da831e458080a7907745dd08bf.jpg', '25f8eadc1cf2150cb557cc494354c499', 0, 1);
INSERT INTO `sys_file` VALUES (38, 'qq音乐.png', 'png', 445, 'http://localhost:9090/file/607a2175097b4164905bfb316f4b135d.png', '793fd534fa705475eb3358f68c87ec68', 0, 1);
INSERT INTO `sys_file` VALUES (39, 'courgette.log', 'log', 0, 'http://localhost:9090/file/7716acb75ec042baa0060e07e16c75ea.log', 'd41d8cd98f00b204e9800998ecf8427e', 0, 1);
INSERT INTO `sys_file` VALUES (40, 'mp.jpg', 'jpg', 32, 'http://localhost:9090/file/70882b6b03914e38b4b6a7e025bedd89.jpg', 'cb887a9d64563352edce80cf50296cc5', 0, 1);
INSERT INTO `sys_file` VALUES (41, 'spring.png', 'png', 4, 'http://localhost:9090/file/94112e8435cb4406bcbb8027c68075b1.png', '3e0089a8778351ae5c7bde6df7eb61fe', 0, 1);
INSERT INTO `sys_file` VALUES (42, 'manage.jpg', 'jpg', 74, 'http://localhost:9090/file/81dc2c4e43dd4470b7aa68e834a6710b.jpg', '16a137ade22505a118af8a386c8b4a51', 0, 1);
INSERT INTO `sys_file` VALUES (43, 'wx.jpg', 'jpg', 61, 'http://localhost:9090/file/24c8262ba9a3400da653cd46ce991b3d.jpg', '9b6af0e36fde3ae55f06e225a110d103', 0, 1);
INSERT INTO `sys_file` VALUES (44, 'coffee2.jpg', 'jpg', 119, 'http://localhost:9090/file/c774308c39a94ae78e77fa1f18f9ebe8.jpg', '748e2639d25445651172798cebf169ab', 0, 1);
INSERT INTO `sys_file` VALUES (45, 'java.png', 'png', 544, 'http://localhost:9090/file/95de6cb968744e4cbbe19d424d99af59.png', '06f01286858e8e4ed47746fbd194c0ae', 0, 1);
INSERT INTO `sys_file` VALUES (46, '1.jpg', 'jpg', 13, 'http://localhost:9090/file/17cfd74665364bdaa8632fe3a7afd8a2.jpg', 'd4c3baabf8b467c225b39207fea618b6', 0, 1);
INSERT INTO `sys_file` VALUES (47, 'boot.png', 'png', 423, 'http://localhost:9090/file/abae37ca1a6a4bc2acecdddaed9af142.png', 'c4f07569176f8d71b5c852587035dbaa', 0, 1);
INSERT INTO `sys_file` VALUES (48, '0e020e1337474a93ba3b43a75b2890ee.doc', 'doc', 47, 'http://localhost:9090/file/ecdd73c8d44b4b948e81cd4df8f2c59a.doc', '9ace4fac24420f85c753aa663009edb4', 1, 1);
INSERT INTO `sys_file` VALUES (49, '3.jpg', 'jpg', 22, 'http://localhost:9090/file/a2d2da19bde9429c96d2e627b0f03a64.jpg', 'fb96c7d2e7f999f5e604cdfaa62ba9b6', 0, 1);
INSERT INTO `sys_file` VALUES (50, '0e020e1337474a93ba3b43a75b2890ee.doc', 'doc', 47, 'http://localhost:9090/file/ecdd73c8d44b4b948e81cd4df8f2c59a.doc', '9ace4fac24420f85c753aa663009edb4', 1, 1);
INSERT INTO `sys_file` VALUES (51, 'SpringBoot集成支付宝沙箱支付.docx', 'docx', 1762, 'http://localhost:9090/file/cd0c67fcbb1a419aab7f1deaaa566f40.docx', '56f866f2e95e515deef34e62b03d8193', 0, 1);
INSERT INTO `sys_file` VALUES (52, 'p538187208.jpg', 'jpg', 221, 'http://localhost:9090/file/bbe13e7e29c94e8d8eff233d289741d3.jpg', '737061eeafa267e3af608f983fff892a', 0, 1);
INSERT INTO `sys_file` VALUES (53, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (54, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 0, 1);
INSERT INTO `sys_file` VALUES (55, '109951166671773481.jpg', 'jpg', 44, 'http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg', '56a572901fe4a518173143c79d0a2f96', 0, 1);
INSERT INTO `sys_file` VALUES (56, 'p538515362.jpg', 'jpg', 89, 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', '89d9271ce23e02ddaf5701504237e76c', 0, 1);
INSERT INTO `sys_file` VALUES (57, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 0, 1);
INSERT INTO `sys_file` VALUES (58, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 0, 1);
INSERT INTO `sys_file` VALUES (59, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 0, 1);
INSERT INTO `sys_file` VALUES (60, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 0, 1);
INSERT INTO `sys_file` VALUES (61, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 0, 1);
INSERT INTO `sys_file` VALUES (62, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 0, 1);
INSERT INTO `sys_file` VALUES (63, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (64, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 0, 1);
INSERT INTO `sys_file` VALUES (65, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 0, 1);
INSERT INTO `sys_file` VALUES (66, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (67, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 0, 1);
INSERT INTO `sys_file` VALUES (68, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (69, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 0, 1);
INSERT INTO `sys_file` VALUES (70, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (71, 'p538187208.jpg', 'jpg', 221, 'http://localhost:9090/file/bbe13e7e29c94e8d8eff233d289741d3.jpg', '737061eeafa267e3af608f983fff892a', 0, 1);
INSERT INTO `sys_file` VALUES (72, 'p538779436.jpg', 'jpg', 109, 'http://localhost:9090/file/0f93c3ce2daa4c28b6b6e98ebd4cd802.jpg', '57a78ba0bd40da1fa62b22be2d6ed787', 0, 1);
INSERT INTO `sys_file` VALUES (73, 'p538203308.jpg', 'jpg', 126, 'http://localhost:9090/file/886d7e8105f94b8b9984606acdc77384.jpg', '8f1b6e5de88a499d1bdb1411b8e74ce4', 0, 1);
INSERT INTO `sys_file` VALUES (74, 'p538359297.jpg', 'jpg', 104, 'http://localhost:9090/file/12ee2a9b1e3e474d985e527e8ef7b127.jpg', 'a02fe4f5faad4d907113fbbf8736c195', 0, 1);
INSERT INTO `sys_file` VALUES (75, 'p538306328.jpg', 'jpg', 209, 'http://localhost:9090/file/83fd32c1d5ff47f1b4fdabae6fcb753c.jpg', '1941d0cbdb3a9e683921caf2b10396a8', 0, 1);
INSERT INTO `sys_file` VALUES (76, 'p538515362.jpg', 'jpg', 89, 'http://localhost:9090/file/840647717fb4487cb4a2d9e1c54228ea.jpg', '89d9271ce23e02ddaf5701504237e76c', 0, 1);
INSERT INTO `sys_file` VALUES (77, '77.png', 'png', 6442, 'http://localhost:9090/file/d25f29bfcfa945699ba43b86ba022664.png', '2abeff668cc22d82af3a82f7a504c0bd', 0, 1);
INSERT INTO `sys_file` VALUES (78, 'bridge-3825439_960_720.webp', 'webp', 77, 'http://localhost:9090/file/b7f128f8b77a408c965f2c0480a538a8.webp', '0d3839f085078f34c159794e99b101c1', 0, 1);
INSERT INTO `sys_file` VALUES (79, '222.png', 'png', 1175, 'http://localhost:9090/file/78ba9a04853845dd819d442132cec41b.png', '1cf035b8f674c68a9fb999df10c49210', 0, 1);
INSERT INTO `sys_file` VALUES (80, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 0, 1);
INSERT INTO `sys_file` VALUES (81, '109951166509784238.jpg', 'jpg', 48, 'http://localhost:9090/file/f0c6c9006876481885afb796e252ef48.jpg', '2dd7e11dc6befe47abd09f28f6451821', 0, 1);
INSERT INTO `sys_file` VALUES (82, '109951166671773481.jpg', 'jpg', 44, 'http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg', '56a572901fe4a518173143c79d0a2f96', 0, 1);
INSERT INTO `sys_file` VALUES (83, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 0, 1);
INSERT INTO `sys_file` VALUES (84, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 0, 1);
INSERT INTO `sys_file` VALUES (85, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 0, 1);
INSERT INTO `sys_file` VALUES (86, '2.jpg', 'jpg', 61, 'http://localhost:9090/file/fd5da45053e34f6eaca7d8dfe7893e1d.jpg', '698f208b46b5b780a231593517b6b26e', 0, 1);
INSERT INTO `sys_file` VALUES (87, '3.jpg', 'jpg', 53, 'http://localhost:9090/file/0601b66bb2324a278664c0cda7c25668.jpg', 'aab7e79dc76783ab67dd5359b2b428d0', 0, 1);
INSERT INTO `sys_file` VALUES (88, '109951166950559389.jpg', 'jpg', 18, 'http://localhost:9090/file/6e8f37f7009e4d18a72e1970d2762faf.jpg', '773d42f1cc4fc27f29388571bf3bc8b3', 0, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '图标',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父级id',
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '页面路径',
  `sort_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (4, '系统管理', NULL, 'el-icon-s-grid', NULL, NULL, NULL, 300);
INSERT INTO `sys_menu` VALUES (5, '用户管理', '/user', 'el-icon-user', NULL, 4, 'User', 301);
INSERT INTO `sys_menu` VALUES (6, '角色管理', '/role', 'el-icon-s-custom', NULL, 4, 'Role', 302);
INSERT INTO `sys_menu` VALUES (7, '菜单管理', '/menu', 'el-icon-menu', NULL, 4, 'Menu', 303);
INSERT INTO `sys_menu` VALUES (8, '文件管理', '/file', 'el-icon-document', NULL, 4, 'File', 304);
INSERT INTO `sys_menu` VALUES (10, '主页', '/home', 'el-icon-house', NULL, NULL, 'Home', 0);
INSERT INTO `sys_menu` VALUES (11, '流浪动物管理', '/animal', 'el-icon-menu', NULL, NULL, 'Animal', 999);
INSERT INTO `sys_menu` VALUES (12, '待绝育动物管理', '/sterilization', 'el-icon-menu', NULL, NULL, 'Sterilization', 999);
INSERT INTO `sys_menu` VALUES (13, '申请领养管理', '/applcation', 'el-icon-menu', NULL, NULL, 'Applcation', 999);
INSERT INTO `sys_menu` VALUES (14, '评论管理', '/comment', 'el-icon-menu', NULL, NULL, 'Comment', 999);
INSERT INTO `sys_menu` VALUES (15, '流浪动物救助', '/salvation', 'el-icon-menu', NULL, NULL, 'Salvation', 999);
INSERT INTO `sys_menu` VALUES (16, '喂养点管理', '/feed', 'el-icon-menu', NULL, NULL, 'Feed', 999);
INSERT INTO `sys_menu` VALUES (18, '动物走失管理', '/lost', 'el-icon-menu', NULL, NULL, 'Lost', 999);
INSERT INTO `sys_menu` VALUES (19, '救助站管理', '/rescue', 'el-icon-menu', NULL, NULL, 'Rescue', 999);
INSERT INTO `sys_menu` VALUES (20, '帖子管理', '/article', 'el-icon-menu', NULL, NULL, 'Article', 999);
INSERT INTO `sys_menu` VALUES (21, '捐赠管理', '/donate', 'el-icon-menu', NULL, NULL, 'Donate', 999);
INSERT INTO `sys_menu` VALUES (22, '公告管理', '/notice', 'el-icon-menu', NULL, NULL, 'Notice', 999);
INSERT INTO `sys_menu` VALUES (23, '科普文章管理', '/articleKp', 'el-icon-menu', NULL, NULL, 'ArticleKp', 999);
INSERT INTO `sys_menu` VALUES (24, '活动管理', '/activity', 'el-icon-menu', NULL, NULL, 'Activity', 999);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (2, '普通用户', '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 8);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (1, 11);
INSERT INTO `sys_role_menu` VALUES (1, 12);
INSERT INTO `sys_role_menu` VALUES (1, 13);
INSERT INTO `sys_role_menu` VALUES (1, 14);
INSERT INTO `sys_role_menu` VALUES (1, 15);
INSERT INTO `sys_role_menu` VALUES (1, 16);
INSERT INTO `sys_role_menu` VALUES (1, 18);
INSERT INTO `sys_role_menu` VALUES (1, 19);
INSERT INTO `sys_role_menu` VALUES (1, 20);
INSERT INTO `sys_role_menu` VALUES (1, 21);
INSERT INTO `sys_role_menu` VALUES (1, 22);
INSERT INTO `sys_role_menu` VALUES (1, 23);
INSERT INTO `sys_role_menu` VALUES (1, 24);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 10);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `avatar_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出生年月',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin', '管理员', 'admin@qq.com', '13988997788', '安徽合肥', '2022-01-22 21:10:27', 'http://localhost:9090/file/7fb997978b95479aa3e53f459238fc8b.jpg', 'ROLE_ADMIN', '男', '1995-06-06');
INSERT INTO `sys_user` VALUES (2, 'zhang', '123', '张张', 'zhang@qq.com', '13677889900', '南京', '2022-02-26 22:10:14', NULL, 'ROLE_USER', '女', '1995-06-06');
INSERT INTO `sys_user` VALUES (3, 'wang', '123', '我是王五', 'wang@qq.com', '13877668855', '上海', '2022-02-26 22:10:18', 'http://localhost:9090/file/6e8f37f7009e4d18a72e1970d2762faf.jpg', 'ROLE_USER', '男', '1995-06-06');

SET FOREIGN_KEY_CHECKS = 1;
