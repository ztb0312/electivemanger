/*
Navicat MySQL Data Transfer

Source Server         : briup
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : elective

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-02 11:01:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `C_Name` varchar(255) NOT NULL,
  `C_Time` varchar(255) DEFAULT NULL,
  `C_Place` varchar(255) DEFAULT NULL,
  `C_Credit` varchar(255) DEFAULT NULL,
  `C_Teacher` varchar(255) DEFAULT NULL,
  `C_No` varchar(255) DEFAULT NULL,
  `C_LimitNum` varchar(255) DEFAULT NULL,
  `C_ResidueNum` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('有色冶金', '10.2', '一教1306', '3', '陈林', '101', '40', '0');
INSERT INTO `course` VALUES ('C#', '12.26', '三教3306', '3.5', '余秋明', '102', '', '40');
INSERT INTO `course` VALUES ('JSP程序设计', '12.16', '一教1404', '4', '陈木生', '103', '', '90');
INSERT INTO `course` VALUES ('汇编语言', '4.20', '三教3431', '4', '胡炜', '104', '', '80');
INSERT INTO `course` VALUES ('软件工程', '4.25', '一教1207', '3.5', '颜晓莲', '105', '', '80');
INSERT INTO `course` VALUES ('C++', '4.12', null, null, null, null, null, null);
INSERT INTO `course` VALUES ('计算组成原理', '10.5', '一教1404', '3', '李博', '107', '', '40');

-- ----------------------------
-- Table structure for electcourse
-- ----------------------------
DROP TABLE IF EXISTS `electcourse`;
CREATE TABLE `electcourse` (
  `C_No` varchar(255) NOT NULL,
  `C_Name` varchar(255) DEFAULT NULL,
  `S_No` varchar(255) DEFAULT NULL,
  `S_Name` varchar(255) DEFAULT NULL,
  `Grade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`C_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of electcourse
-- ----------------------------
INSERT INTO `electcourse` VALUES ('', null, null, null, null);
INSERT INTO `electcourse` VALUES ('101', '有色冶金', '1', '1', '0');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `M_Name` varchar(255) NOT NULL,
  `M_Pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', '1');
INSERT INTO `manager` VALUES ('2', '2');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `S_No` varchar(255) NOT NULL,
  `S_Name` varchar(255) DEFAULT NULL,
  `S_Sex` varchar(255) DEFAULT NULL,
  `S_Age` varchar(255) DEFAULT NULL,
  `S_Collage` varchar(255) DEFAULT NULL,
  `S_Department` varchar(255) DEFAULT NULL,
  `S_Pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`S_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1', '1', '1', '1', '1', '1');
INSERT INTO `student` VALUES ('2', '2', '2', '2', '2', '2', '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `T_No` int(11) NOT NULL,
  `T_Name` int(11) DEFAULT NULL,
  `T_Sex` int(11) DEFAULT NULL,
  `T_Age` varchar(255) DEFAULT NULL,
  `T_Collage` varchar(255) DEFAULT NULL,
  `T_Pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`T_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '1', '1', '1', '1', '1');
INSERT INTO `teacher` VALUES ('2', '2', '1', '1', '1', '1');
