/*
Navicat MySQL Data Transfer

Source Server         : aaaa
Source Server Version : 50512
Source Host           : localhost:3306
Source Database       : java178

Target Server Type    : MYSQL
Target Server Version : 50512
File Encoding         : 65001

Date: 2018-01-23 16:46:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'SQL技术');
INSERT INTO `book` VALUES ('2', 'SSM+MySQL详解');
INSERT INTO `book` VALUES ('3', 'C++和java对比');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'java');
INSERT INTO `category` VALUES ('2', 'c++');
INSERT INTO `category` VALUES ('3', 'mysql');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('1', '小兵', '1000');
INSERT INTO `class` VALUES ('2', '小黑', '1001');
INSERT INTO `class` VALUES ('4', 'TOOL', '1001');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '财务部');
INSERT INTO `dept` VALUES ('2', '技术部');
INSERT INTO `dept` VALUES ('17', '开发部');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_name` varchar(20) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`e_id`),
  KEY `mydept_id` (`dept_id`),
  CONSTRAINT `mydept_id` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1000', '石太友', '1');
INSERT INTO `emp` VALUES ('1001', '石太阳', '1');
INSERT INTO `emp` VALUES ('1002', '石太月', '1');
INSERT INTO `emp` VALUES ('1003', '高赞阳', '2');
INSERT INTO `emp` VALUES ('1004', '高赞太', '2');
INSERT INTO `emp` VALUES ('1005', '高赞光', '2');
INSERT INTO `emp` VALUES ('1007', '高太上', '1');
INSERT INTO `emp` VALUES ('1008', '高态度', '1');
INSERT INTO `emp` VALUES ('1011', '陈泽路', '17');
INSERT INTO `emp` VALUES ('1012', '罗子强', '17');

-- ----------------------------
-- Table structure for middle
-- ----------------------------
DROP TABLE IF EXISTS `middle`;
CREATE TABLE `middle` (
  `m_bid` int(11) DEFAULT NULL,
  `m_cid` int(11) DEFAULT NULL,
  KEY `fk_bid` (`m_bid`),
  KEY `fk_cid` (`m_cid`),
  CONSTRAINT `fk_bid` FOREIGN KEY (`m_bid`) REFERENCES `book` (`bid`),
  CONSTRAINT `fk_cid` FOREIGN KEY (`m_cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of middle
-- ----------------------------
INSERT INTO `middle` VALUES ('1', '3');
INSERT INTO `middle` VALUES ('2', '1');
INSERT INTO `middle` VALUES ('2', '3');
INSERT INTO `middle` VALUES ('3', '2');
INSERT INTO `middle` VALUES ('3', '1');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('100', 'zhangsan', '1');
INSERT INTO `student` VALUES ('101', 'wangwu', '1');
INSERT INTO `student` VALUES ('102', 'liufei', '1');
INSERT INTO `student` VALUES ('103', 'cuihua', '2');
INSERT INTO `student` VALUES ('104', 'zhangfei', '2');
INSERT INTO `student` VALUES ('105', 'xionger', '2');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'aaa', 'heimao@163.com', '2017-12-04', '18');
INSERT INTO `students` VALUES ('2', 'ccc', 'heimao@163.com', '2017-11-30', '15');
INSERT INTO `students` VALUES ('3', 'mike', 'mike@sina.com', '2017-12-06', '20');
INSERT INTO `students` VALUES ('4', 'zhangsan', 'zhang@qq.com', '2017-12-11', '22');
INSERT INTO `students` VALUES ('5', '刘芳', 'liufang@263.com', '2017-12-10', '19');
INSERT INTO `students` VALUES ('6', '小黑', '125@.com', '2017-8-7', '25');
INSERT INTO `students` VALUES ('7', '屠浩层', ' thc@163.com', '2017-12-05', '22');
INSERT INTO `students` VALUES ('8', '樱桃小丸子', 'xiaowanzi@163.com', '2017-12-04', '36');
INSERT INTO `students` VALUES ('9', '熊二', 'xionger@qq.com', '2017-12-12', '28');
INSERT INTO `students` VALUES ('10', '翠花', 'cuihua@qq.com', '2017-12-03', '23');
INSERT INTO `students` VALUES ('11', '菲菲', 'fei@163.com', '2017-12-03', '21');
INSERT INTO `students` VALUES ('12', '蜡笔小新', 'la@qq.com', '2017-11-28', '19');
INSERT INTO `students` VALUES ('13', '黑猫警长', 'heimao@163.com', '2017-12-05', '25');
INSERT INTO `students` VALUES ('14', '黑侠', '222@.com', '2017-8-7', '25');
INSERT INTO `students` VALUES ('16', '李峰', 'aa@qq.com', '2018-01-20 10:10:27', '18');
INSERT INTO `students` VALUES ('17', '迭峰', 'df@qq.com', '2018-01-20 10:43:32', '18');
INSERT INTO `students` VALUES ('18', '迭峰', 'cc@126.com', '2018-01-20 10:49:46', '18');
INSERT INTO `students` VALUES ('19', '蜜蜂', 'mf@qq.com', '2018-01-20 10:50:56', '18');

-- ----------------------------
-- Table structure for tb_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_course
-- ----------------------------
INSERT INTO `tb_course` VALUES ('1', 'Math', '5');
INSERT INTO `tb_course` VALUES ('2', 'Computer', '4');

-- ----------------------------
-- Table structure for tb_select_course
-- ----------------------------
DROP TABLE IF EXISTS `tb_select_course`;
CREATE TABLE `tb_select_course` (
  `sc_s_id` int(11) NOT NULL DEFAULT '0',
  `sc_c_id` int(11) NOT NULL DEFAULT '0',
  `sc_date` date DEFAULT NULL,
  PRIMARY KEY (`sc_s_id`,`sc_c_id`),
  KEY `sc_c_id` (`sc_c_id`),
  CONSTRAINT `tb_select_course_ibfk_1` FOREIGN KEY (`sc_s_id`) REFERENCES `tb_student` (`s_id`),
  CONSTRAINT `tb_select_course_ibfk_2` FOREIGN KEY (`sc_c_id`) REFERENCES `tb_course` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_select_course
-- ----------------------------
INSERT INTO `tb_select_course` VALUES ('1', '1', '2017-03-01');
INSERT INTO `tb_select_course` VALUES ('1', '2', '2017-03-01');
INSERT INTO `tb_select_course` VALUES ('2', '1', '2017-03-02');
INSERT INTO `tb_select_course` VALUES ('2', '2', '2017-03-02');

-- ----------------------------
-- Table structure for tb_student
-- ----------------------------
DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(10) DEFAULT NULL,
  `s_age` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_student
-- ----------------------------
INSERT INTO `tb_student` VALUES ('1', 'Tom', 'male', '18');
INSERT INTO `tb_student` VALUES ('2', 'Jack', 'male', '19');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(20) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1000', '胡成');
INSERT INTO `teacher` VALUES ('1001', '席耀飞');
