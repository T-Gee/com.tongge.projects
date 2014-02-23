# Host: 127.0.0.1  (Version: 5.0.67-community-nt)
# Date: 2014-02-23 16:14:32
# Generator: MySQL-Front 5.3  (Build 4.81)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "busiapply"
#

DROP TABLE IF EXISTS `busiapply`;
CREATE TABLE `busiapply` (
  `busicode` int(11) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `shortTitle` varchar(100) default NULL,
  `contacts` varchar(100) NOT NULL COMMENT '联系人',
  `contactMobile` varchar(20) NOT NULL COMMENT '联系人电话',
  `description` varchar(255) default NULL,
  `origin` int(11) default '-1',
  `lastupddate` date default NULL,
  `proccess` varchar(20) default '未分配' COMMENT '进度',
  `isValuing` varchar(20) default '否(完成后可评价)' COMMENT '是否评价',
  PRIMARY KEY  (`busicode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "busiapply"
#

INSERT INTO `busiapply` VALUES (1,'209792fcaed94bb9acc4ec0789337cf2','????','??????,????,???????','xianxiren','liangxidianhua','xiangxiyuqiu',-1,'2014-02-23','???','否(完成后可评价)');

#
# Structure for table "compnay_services_pref"
#

DROP TABLE IF EXISTS `compnay_services_pref`;
CREATE TABLE `compnay_services_pref` (
  `Id` int(11) NOT NULL auto_increment,
  `compnayId` varchar(255) default NULL,
  `servicesId` varchar(255) default NULL,
  `operator` varchar(255) default NULL,
  `lastupddate` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "compnay_services_pref"
#


#
# Structure for table "compnaydetails"
#

DROP TABLE IF EXISTS `compnaydetails`;
CREATE TABLE `compnaydetails` (
  `Id` int(11) NOT NULL auto_increment,
  `compnayid` varchar(255) default NULL,
  `imgpath` varchar(255) default NULL,
  `introduce` varchar(255) default NULL,
  `business` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "compnaydetails"
#


#
# Structure for table "policyfile"
#

DROP TABLE IF EXISTS `policyfile`;
CREATE TABLE `policyfile` (
  `Id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) character set utf8 default NULL,
  `content` blob,
  `lastupddate` date default NULL,
  `attachment` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `attachmentpath` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "policyfile"
#


#
# Structure for table "serviceapply"
#

DROP TABLE IF EXISTS `serviceapply`;
CREATE TABLE `serviceapply` (
  `code` int(11) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `shortTitle` varchar(100) default NULL,
  `contacts` varchar(100) NOT NULL COMMENT '联系人',
  `contactMobile` varchar(20) NOT NULL COMMENT '联系人电话',
  `description` varchar(255) default NULL,
  `origin` int(11) default '-1',
  `lastupddate` date default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "serviceapply"
#

INSERT INTO `serviceapply` VALUES (1,'13530e3e7c7c4dc18227f5a761d1467c','????','?????','lianxiren','liangxidianhua','xiangxifuwujieshao',-1,'2014-02-23'),(2,'13530e3e7c7c4dc18227f5a761d1467c','????','????','lianxiren','liangxidianhua','xiangxifuwujieshao',-1,'2014-02-23'),(3,'13530e3e7c7c4dc18227f5a761d1467c','????','????','lianxiren','liangxidianhua','xiangxifuwujieshao',-1,'2014-02-23'),(4,'13530e3e7c7c4dc18227f5a761d1467c','????','????','lianxiren','liangxidianhua','xiangxifuwujieshao',-1,'2014-02-23'),(5,'13530e3e7c7c4dc18227f5a761d1467c','????','????','lianxiren','liangxidianhua','xiangxifuwujieshao',-1,'2014-02-23');

#
# Structure for table "servicesdetails"
#

DROP TABLE IF EXISTS `servicesdetails`;
CREATE TABLE `servicesdetails` (
  `Id` int(11) NOT NULL auto_increment,
  `serviceid` varchar(255) default NULL,
  `imgpath` varchar(255) default NULL,
  `introduce` varchar(255) default NULL,
  `business` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "servicesdetails"
#

INSERT INTO `servicesdetails` VALUES (1,'13530e3e7c7c4dc18227f5a761d1467c','\\apic146.jpg','currentuser','currentuser');

#
# Structure for table "technologyfile"
#

DROP TABLE IF EXISTS `technologyfile`;
CREATE TABLE `technologyfile` (
  `Id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) character set utf8 default NULL,
  `content` blob,
  `lastupddate` date default NULL,
  `attachment` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `attachmentpath` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "technologyfile"
#


#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(200) NOT NULL,
  `title` varchar(255) default NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `kind` varchar(200) NOT NULL,
  `shortTitle` varchar(200) default NULL COMMENT '营业范围',
  `specialService` varchar(200) default NULL COMMENT '特色服务',
  `author` varchar(200) NOT NULL default '0' COMMENT '注册资本金(万元)',
  `origin` varchar(200) default NULL COMMENT '组织机构代码',
  `companyAddress` varchar(200) default NULL COMMENT '公司注册地',
  `officeCompany` varchar(200) default NULL COMMENT '公司办公地',
  `companyNumber` int(11) NOT NULL default '0' COMMENT '公司人数',
  `servicesType` varchar(200) default NULL COMMENT '服务类型',
  `respectiveIndustries` varchar(200) default NULL COMMENT '所属产业',
  `companyLeader` varchar(200) default NULL COMMENT '公司法人代表',
  `createdate` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('209792fcaed94bb9acc4ec0789337cf2','???????','qyyh','123456','compnay','????','','0.0','??????','?????','?????',10,'','??????','??????','2014-02-23'),('13530e3e7c7c4dc18227f5a761d1467c','????????','fwjg','123456','services','????','????','0.0','??????','?????','?????',12,'????','','','2014-02-23'),('fdc343c9de3c48a19c2fa0823862bfd7','tongge','tongge','123456','person','','','0.0','','','',0,'','','','2014-02-23');
