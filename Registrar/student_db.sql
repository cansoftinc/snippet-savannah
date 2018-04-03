/*
Navicat MySQL Data Transfer

Source Server         : LOCAL_CELLO
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : student_db

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2018-04-02 17:35:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseid` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'MIS6030', 'Application development');
INSERT INTO `course` VALUES ('2', 'MIS6010', 'IT Infrastructure');
INSERT INTO `course` VALUES ('3', 'MIS6020', 'Application Domains of Information Technology');
INSERT INTO `course` VALUES ('4', 'MIS6040', 'Networking and wireless communications');
INSERT INTO `course` VALUES ('5', 'MIS6050', 'Database Development Technology');
INSERT INTO `course` VALUES ('6', 'MIS6060', 'Distributed Computing & Internet Technology');

-- ----------------------------
-- Table structure for `staff`
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staffid` bigint(20) NOT NULL AUTO_INCREMENT,
  `preferred_course` varchar(255) DEFAULT NULL,
  `staffname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', 'MIS6010', 'DR WEKESA');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `studentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '110000', '8999999', '25', 'mis6080', 'aeistein@usiu.ac.ke', 'Albert Eistein', 'M', 'school of business', '649882');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `NameOfUser` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(200) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '12345', 'admin', '07000000', 'admin@usiu.ac.kr');
INSERT INTO `users` VALUES ('2', 'abu', '123321', 'abu', '07555555', 'abu@usiu.ac.ke');
INSERT INTO `users` VALUES ('3', 'nick', '123', 'nickson', '07666666', 'nick@usiu.ac.kr');
INSERT INTO `users` VALUES ('4', 'test', 'test', 'test', '07000000', 'test@usiu.ac.ke');
INSERT INTO `users` VALUES ('5', 'demo', 'demo', 'Demo', '07888888', 'demo@usiu.ac.ke');
INSERT INTO `users` VALUES ('6', 'john', '123456', 'john doe', '072522222', 'john@usiu.ac.kr');
INSERT INTO `users` VALUES ('7', 'john', '123456', null, null, null);
