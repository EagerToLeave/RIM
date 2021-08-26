/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : itstack

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 18/08/2021 09:14:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat_record
-- ----------------------------
DROP TABLE IF EXISTS `chat_record`;
CREATE TABLE `chat_record`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自己ID',
  `friendId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '好友ID',
  `msgContent` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `msgDate` datetime NULL DEFAULT NULL COMMENT '消息时间',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `talkType` int NULL DEFAULT NULL,
  `msgType` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_record
-- ----------------------------
INSERT INTO `chat_record` VALUES (3, '523088136', '184172133', '小傅哥，中午好哦。周末你在家干啥呢', '2020-02-23 11:33:37', '2020-02-23 11:33:37', '2020-02-23 11:33:37', 0, 0);
INSERT INTO `chat_record` VALUES (4, '523088136', '184172133', '怎么不说话？', '2020-02-23 11:33:49', '2020-02-23 11:33:49', '2020-02-23 11:33:49', 0, 0);
INSERT INTO `chat_record` VALUES (5, '184172133', '523088136', '做饭呢，做饭呢。', '2020-02-23 11:33:58', '2020-02-23 11:33:58', '2020-02-23 11:33:58', 0, 0);
INSERT INTO `chat_record` VALUES (6, '184172133', '523088136', '可香了，要不要来吃饭。吃完在学习。https://bugstack.cn', '2020-02-23 11:34:24', '2020-02-23 11:34:24', '2020-02-23 11:34:24', 0, 0);
INSERT INTO `chat_record` VALUES (7, '523088136', '184172133', '咿呀！又推荐你的博客了！', '2020-02-23 11:34:35', '2020-02-23 11:34:35', '2020-02-23 11:34:35', 0, 0);
INSERT INTO `chat_record` VALUES (8, '523088136', '184172133', '走了走了！', '2020-02-23 11:34:38', '2020-02-23 11:34:38', '2020-02-23 11:34:38', 0, 0);
INSERT INTO `chat_record` VALUES (9, '184172133', '523088136', '!!咋了就知道吃，不学习呀！', '2020-02-23 11:34:56', '2020-02-23 11:34:56', '2020-02-23 11:34:56', 0, 0);
INSERT INTO `chat_record` VALUES (10, '523088136', '5307397', '嗨，小伙伴们，你们都在干啥呢？', '2020-02-23 15:26:32', '2020-02-23 15:26:32', '2020-02-23 15:26:32', 1, 0);
INSERT INTO `chat_record` VALUES (11, '184172133', '5307397', '我在家呢，今天周末了。自己做点好吃的。', '2020-02-23 15:26:49', '2020-02-23 15:26:49', '2020-02-23 15:26:49', 1, 0);
INSERT INTO `chat_record` VALUES (12, '796542178', '5307397', '哈哈哈，我也在。我想吃肉', '2020-02-23 15:27:00', '2020-02-23 15:27:00', '2020-02-23 15:27:00', 1, 0);
INSERT INTO `chat_record` VALUES (13, '523088136', '5307397', '你太胖了，你吃点罗布吧', '2020-02-23 15:27:10', '2020-02-23 15:27:10', '2020-02-23 15:27:10', 1, 0);
INSERT INTO `chat_record` VALUES (14, '523088136', '5307397', '萝卜', '2020-02-23 15:27:15', '2020-02-23 15:27:15', '2020-02-23 15:27:15', 1, 0);
INSERT INTO `chat_record` VALUES (15, '184172133', '5307397', '萝卜妹妹', '2020-02-23 18:54:08', '2020-02-23 18:54:08', '2020-02-23 18:54:08', 1, 0);
INSERT INTO `chat_record` VALUES (16, '184172133', '5307397', '我要测试断线重连了', '2020-02-23 18:54:17', '2020-02-23 18:54:17', '2020-02-23 18:54:17', 1, 0);
INSERT INTO `chat_record` VALUES (17, '184172133', '5307397', '主动断开服务端，等待恢复', '2020-02-23 18:54:24', '2020-02-23 18:54:24', '2020-02-23 18:54:24', 1, 0);
INSERT INTO `chat_record` VALUES (18, '523088136', '5307397', '纳尼！？好的！', '2020-02-23 18:54:30', '2020-02-23 18:54:30', '2020-02-23 18:54:30', 1, 0);
INSERT INTO `chat_record` VALUES (19, '184172133', '5307397', '恢复了，可以通信了', '2020-02-23 18:55:16', '2020-02-23 18:55:16', '2020-02-23 18:55:16', 1, 0);
INSERT INTO `chat_record` VALUES (20, '523088136', '5307397', '哇！', '2020-02-23 18:55:19', '2020-02-23 18:55:19', '2020-02-23 18:55:19', 1, 0);
INSERT INTO `chat_record` VALUES (21, '523088136', '5307397', '666', '2020-02-23 18:55:21', '2020-02-23 18:55:21', '2020-02-23 18:55:21', 1, 0);
INSERT INTO `chat_record` VALUES (37, '184172133', '523088136', '兔兔，我们可以发送表情了哦', '2020-02-23 14:17:41', '2020-02-23 14:17:41', '2020-02-23 14:17:41', 0, 0);
INSERT INTO `chat_record` VALUES (38, '184172133', '523088136', 'f_22', '2020-02-23 14:17:45', '2020-02-23 14:17:45', '2020-02-23 14:17:45', 0, 1);
INSERT INTO `chat_record` VALUES (39, '523088136', '184172133', '哇，真的哦！太好了！', '2020-02-23 14:17:59', '2020-02-23 14:17:59', '2020-02-23 14:17:59', 0, 0);
INSERT INTO `chat_record` VALUES (40, '523088136', '184172133', 'f_24', '2020-02-23 14:18:03', '2020-02-23 14:18:03', '2020-02-23 14:18:03', 0, 1);
INSERT INTO `chat_record` VALUES (41, '523088136', '184172133', 'f_05', '2020-02-23 14:18:09', '2020-02-23 14:18:09', '2020-02-23 14:18:09', 0, 1);
INSERT INTO `chat_record` VALUES (42, '523088136', '184172133', 'f_15', '2020-02-23 14:18:12', '2020-02-23 14:18:12', '2020-02-23 14:18:12', 0, 1);
INSERT INTO `chat_record` VALUES (43, '523088136', '184172133', 'f_12', '2020-02-23 14:18:14', '2020-02-23 14:18:14', '2020-02-23 14:18:14', 0, 1);
INSERT INTO `chat_record` VALUES (44, '523088136', '184172133', 'f_25', '2020-02-23 14:18:17', '2020-02-23 14:18:17', '2020-02-23 14:18:17', 0, 1);
INSERT INTO `chat_record` VALUES (45, '184172133', '5307397', '叮咚咚', '2020-02-23 14:20:51', '2020-02-23 14:20:51', '2020-02-23 14:20:51', 1, 0);
INSERT INTO `chat_record` VALUES (46, '523088136', '184172133', '的', '2020-02-23 14:21:39', '2020-02-23 14:21:39', '2020-02-23 14:21:39', 0, 0);
INSERT INTO `chat_record` VALUES (47, '184172133', '523088136', '哈哈哈', '2020-02-23 14:38:02', '2020-02-23 14:38:02', '2020-02-23 14:38:02', 0, 0);
INSERT INTO `chat_record` VALUES (48, '184172133', '523088136', '在吗', '2020-02-23 14:38:06', '2020-02-23 14:38:06', '2020-02-23 14:38:06', 0, 0);
INSERT INTO `chat_record` VALUES (49, '523088136', '5307397', '有人吗', '2020-02-23 14:38:11', '2020-02-23 14:38:12', '2020-02-23 14:38:12', 1, 0);
INSERT INTO `chat_record` VALUES (50, '184172133', '5307397', '有人有人', '2020-02-23 14:38:19', '2020-02-23 14:38:19', '2020-02-23 14:38:19', 1, 0);
INSERT INTO `chat_record` VALUES (51, '523088136', '184172133', '这回就对了', '2020-02-23 14:38:29', '2020-02-23 14:38:29', '2020-02-23 14:38:29', 0, 0);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `groupId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组ID',
  `groupName` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组名称',
  `groupHead` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组头像',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_groupId`(`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES (1, '5307397', '虫洞技术栈(1024)', 'group_1', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

-- ----------------------------
-- Table structure for talk_box
-- ----------------------------
DROP TABLE IF EXISTS `talk_box`;
CREATE TABLE `talk_box`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `talkId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对话框ID(好友ID、群组ID)',
  `talkType` int NULL DEFAULT NULL COMMENT '对话框类型；0好友、1群组',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_talkId_userId`(`userId`, `talkId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of talk_box
-- ----------------------------
INSERT INTO `talk_box` VALUES (1, '184172133', '5307397', 1, '2020-02-23 19:35:54', '2020-02-23 19:35:54');
INSERT INTO `talk_box` VALUES (2, '523088136', '5307397', 1, '2020-02-23 19:36:00', '2020-02-23 19:36:00');
INSERT INTO `talk_box` VALUES (3, '184172133', '523088136', 0, '2020-02-23 19:36:03', '2020-02-23 19:36:03');
INSERT INTO `talk_box` VALUES (4, '523088136', '184172133', 0, '2020-02-23 19:36:03', '2020-02-23 19:36:03');
INSERT INTO `talk_box` VALUES (5, '796542178', '5307397', 1, '2020-02-23 15:26:32', '2020-02-23 15:26:32');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `userNickName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userHead` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userPassword` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '184172133', '小傅哥', '01_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (2, '980765512', '铁锤', '02_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (3, '796542178', '团团', '03_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (4, '523088136', '哈尼克兔', '04_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (5, '123456001', '比丘卡', '05_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (6, '123456002', '兰兰', '06_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (7, '123456003', 'Alexa', '07_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (8, '123456004', '小白', '08_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (9, '123456005', '铃铛', '09_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (10, '123456006', '马小帅', '10_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (11, '123456007', 'S.A.K', '11_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user` VALUES (12, '123456008', '池鱼有点贤', '12_50', '123456', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `userFriendId` bigint NULL DEFAULT NULL COMMENT '好友用户ID',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uuid_idx`(`userId`, `userFriendId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES (27, 523088136, 184172133, '2020-02-23 13:02:45', '2020-02-23 13:02:45');
INSERT INTO `user_friend` VALUES (28, 184172133, 523088136, '2020-02-23 13:02:45', '2020-02-23 13:02:45');
INSERT INTO `user_friend` VALUES (29, 184172133, 123456007, '2020-02-23 13:02:56', '2020-02-23 13:02:56');
INSERT INTO `user_friend` VALUES (30, 123456007, 184172133, '2020-02-23 13:02:56', '2020-02-23 13:02:56');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `userId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `groupId` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '群组ID',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_uuid`(`userId`, `groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, '184172133', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (11, '980765512', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (12, '796542178', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (13, '523088136', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (14, '123456001', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (15, '123456002', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (16, '123456003', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (17, '123456004', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (18, '123456005', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (19, '123456006', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (20, '123456007', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');
INSERT INTO `user_group` VALUES (21, '123456008', '5307397', '2020-01-01 00:00:00', '2020-01-01 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
