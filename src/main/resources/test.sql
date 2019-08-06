/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2019-08-06 14:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `sid` varchar(10) NOT NULL,
  `pwd` varchar(10) default NULL,
  `comcode` varchar(10) default NULL,
  `comname` varchar(30) default NULL,
  `sname` varchar(20) default NULL,
  `sage` int(11) default NULL,
  `ssex` varchar(2) default NULL,
  `posi` varchar(20) default NULL,
  `adminlimit` varchar(2) default NULL,
  `startdate` date default NULL,
  `enddate` date default NULL,
  `adminstate` varchar(20) default NULL,
  `semail` varchar(30) default NULL,
  `sphone` varchar(15) default NULL,
  `address` varchar(100) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('001', '001', '8600', '福星寿险北京总公司', '李淼', '33', '男', '柜台经理', '1', '2013-01-23', null, '正常', 'miaoli@fuxing.com.cn', '13990423355', '北京市朝阳区大望路南街389号2号楼3f-123');
INSERT INTO `admin` VALUES ('002', '002', '8600', '福星寿险北京总公司', '陈永', '34', '男', '柜台经理', '1', '2014-06-12', null, '正常', 'yongchen@fuxing.com.cn', '13900102312', '北京市大兴区凉水河二街34号1-109');
INSERT INTO `admin` VALUES ('003', '003', '8600', '福星寿险北京总公司', '贾瑞庶', '29', '男', '柜台经理', '1', '2014-11-27', null, '正常', 'ruishujia@fuxing.com.cn', '13633998765', '北京市朝阳区三里屯大街3号院2号楼2-205');

-- ----------------------------
-- Table structure for grpuser
-- ----------------------------
DROP TABLE IF EXISTS `grpuser`;
CREATE TABLE `grpuser` (
  `grpuid` varchar(30) NOT NULL,
  `uname` varchar(200) default NULL,
  `address` varchar(200) default NULL,
  `grptype` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `makedate` date default NULL,
  `grputype` varchar(8) default NULL,
  `grpustate` varchar(10) default NULL,
  PRIMARY KEY  (`grpuid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of grpuser
-- ----------------------------
INSERT INTO `grpuser` VALUES ('10010', '中国联通', '北京市西城区翠微路3号院', '', '10010', '10010@china.com', '10010', '2019-06-07', null, '正常');
INSERT INTO `grpuser` VALUES ('10086', '中国移动', '北京市东城区东单西路311', '', '10086', '10086@china.com', '10086', '2019-06-05', null, '正常');
INSERT INTO `grpuser` VALUES ('elm@taobao.com', '饿了么', '杭州市余杭区青年大街8号1-289', '', 'elm', 'elm@taobao.com', '52685268', '2019-06-08', null, '正常');

-- ----------------------------
-- Table structure for lccont
-- ----------------------------
DROP TABLE IF EXISTS `lccont`;
CREATE TABLE `lccont` (
  `ContNo` varchar(30) NOT NULL,
  `polNo` varchar(10) default NULL,
  `ManageCom` varchar(10) default NULL,
  `userid` varchar(30) default NULL,
  `SaleChnl` varchar(2) default NULL,
  `AppntNo` varchar(30) default NULL,
  `AppntName` varchar(50) default NULL,
  `AppntSex` varchar(2) default NULL,
  `AppntBirthday` date default NULL,
  `AppntIDType` varchar(2) default NULL,
  `AppntIDNo` varchar(20) default NULL,
  `Appntprovince` varchar(50) default NULL,
  `Appntcity` varchar(50) default NULL,
  `Appntcounty` varchar(50) default NULL,
  `Appntaddress` varchar(200) default NULL,
  `Appntphone` varchar(20) default NULL,
  `Appntmailno` varchar(10) default NULL,
  `Appntemail` varchar(20) default NULL,
  `Appntmerry` varchar(20) default NULL,
  `financemsg` varchar(20) default NULL,
  `health` varchar(20) default NULL,
  `InsuredName` varchar(50) default NULL,
  `InsuredSex` varchar(2) default NULL,
  `InsuredBirthday` date default NULL,
  `InsuredIDType` varchar(2) default NULL,
  `InsuredIDNo` varchar(20) default NULL,
  `Insuredwork` int(11) default NULL,
  `Insuredprovince` varchar(50) default NULL,
  `Insuredcity` varchar(50) default NULL,
  `Insuredcounty` varchar(50) default NULL,
  `Insuredaddress` varchar(200) default NULL,
  `Insuredphone` varchar(20) default NULL,
  `Insuredmailno` varchar(10) default NULL,
  `Insuredemail` varchar(20) default NULL,
  `Insuredmerry` varchar(20) default NULL,
  `PayMode` varchar(2) default NULL,
  `Handlercode` varchar(10) default NULL,
  `Handlername` varchar(20) default NULL,
  `SignCom` varchar(10) default NULL,
  `SignDate` date default NULL,
  `Remark` varchar(1600) default NULL,
  `Prem` decimal(16,2) default NULL,
  `Amnt` decimal(35,2) default NULL,
  `CValiDate` date default NULL,
  `InputOpecode` varchar(10) default NULL,
  `InputOperator` varchar(20) default NULL,
  `InputDate` date default NULL,
  `ApproveFlag` varchar(2) default NULL,
  `ApproveCode` varchar(10) default NULL,
  `Approvename` varchar(20) default NULL,
  `ApproveDate` date default NULL,
  `UWFlag` varchar(2) default NULL,
  `UWOperatorcode` varchar(10) default NULL,
  `UWOperator` varchar(20) default NULL,
  `UWDate` date default NULL,
  `payflag` varchar(2) default NULL,
  `contState` varchar(20) default NULL,
  `Address` varchar(80) default NULL,
  `ZipCode` char(6) default NULL,
  `benefitName` varchar(50) default NULL,
  `benefitSex` varchar(2) default NULL,
  `benefitBirthday` date default NULL,
  `benefitIDType` varchar(2) default NULL,
  `benefitIDNo` varchar(20) default NULL,
  `benefitaddress` varchar(200) default NULL,
  `benefitphone` varchar(20) default NULL,
  `benefitmailno` varchar(10) default NULL,
  `benefitemail` varchar(20) default NULL,
  `benefittype` varchar(20) default NULL,
  PRIMARY KEY  (`ContNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lccont
-- ----------------------------
INSERT INTO `lccont` VALUES ('010120190612182624', '010101', '8601', null, null, null, '陈涛', '男', '1996-06-11', '1', '411523199606131313', '河南', '信阳市', '新　县', '八里畈镇嶅山村', '15541875612', '465512', 'chentao@163.com', '未婚', '12,1', '180,67', '陈涛', '男', '0096-06-11', '2', '411523199606131313', '2', '河南', '信阳市', '新　县', '八里畈镇嶅山村', null, '465512', 'chentao@163.com', '未婚', '现金', null, null, null, null, null, null, null, null, '8601001', '胡进虎', '2019-06-13', null, null, null, null, null, null, null, null, null, '待受理', '河南信阳市新　县八里畈镇嶅山村', null, '陈涛', '男', '0096-06-11', '2', '411523199606131313', null, '15541875612', null, 'chentao@163.com', '本人');
INSERT INTO `lccont` VALUES ('010120190612225812', '010101', '8601', null, null, null, '俞灏明', '男', '1989-12-13', '1', '433123198912134312', '河南', '信阳市', '新　县', '千斤乡', '15623234532', '465145', 'yuhaoming@163.com', '已婚', '23,1', '187,70', '俞灏明', '男', '1989-12-13', '2', '433123198912134312', '1', null, null, null, null, null, '465145', 'yuhaoming@163.com', '已婚', '现金', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '待录入', '河南信阳市潢川县青年大街2-29', null, null, null, null, null, null, null, null, null, null, '本人');
INSERT INTO `lccont` VALUES ('010120190612232546', '010101', '8601', null, null, null, '丁有为', '男', '2010-02-03', '1', '433123198912123312', '河南', '信阳市', '新　县', '陡山河乡', '15823234532', '465545', '', '', '', '', '', '', null, '2', '', '1', null, null, null, null, null, '', '', '', '现金', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '待核保订正', '贵州遵义市红花岗区贵州遵义市红花岗区', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lccont` VALUES ('010120190613001430', '010101', '8601', null, null, null, '胡杨', '男', '2009-02-04', '1', '433123198912314312', '上海', '市辖区', '黄浦区', '那你就可能', '15923234532', '465556', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '8601001', '胡进虎', null, null, null, null, null, null, null, null, null, null, '已签发', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lccont` VALUES ('010120190614184628', '010101', '8601', null, null, '100000', '姜妮', '女', '0090-09-19', '2', '511231199009190821', '内蒙古', '呼和浩特市', '市辖区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '未婚', '19,2', '165,52', '姜妮', '女', '0090-09-19', '2', '511231199009190821', '2', '内蒙古', '呼和浩特市', '市辖区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '未婚', '现金', null, null, null, null, null, null, null, null, '8601002', '魏巍', '2019-06-14', null, null, null, null, null, '8601001', '胡进虎', '2019-06-18', null, '待确认', null, null, '姜妮', '女', '1990-09-19', '1', '511231199009190821', null, '18956787656', null, 'jiangni@qq.com', '本人');
INSERT INTO `lccont` VALUES ('010120190615003813', '010101', '8601', null, null, '30600.00', '于鸿淼', '女', '1998-06-18', '1', '21011119980618432X', '辽宁', '沈阳市', '苏家屯区', '民主小学街道2-212', '15541880381', '210111', 'yhm@qq.com', '未婚', '22,1', '171,65', '于鸿淼', '女', '1998-06-18', '1', '21011119980618432X', '1', '辽宁', '沈阳市', '苏家屯区', '民主小学街道2-212', '15541880381', '210111', 'yhm@qq.com', '未婚', '现金', null, null, null, null, null, '30600.00', '30000.00', null, '8601001', '胡进虎', '2019-06-15', null, null, null, null, null, '8601002', '魏巍', '2019-06-15', '1', '已签发', null, null, '于鸿淼', '女', '1998-06-18', '1', '21011119980618432X', null, '15541880381', null, 'yhm@qq.com', '本人');
INSERT INTO `lccont` VALUES ('010120190618090640', '010401', '8601', null, null, null, '徐凤年', '男', '1989-06-14', '1', '511231199009190821', '河南', '郑州市', '二七区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '已婚', '19,2', '165,52', '徐凤年', '男', '1989-06-14', '1', '511231199009190821', '1', '河南', '郑州市', '二七区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '已婚', '现金', null, null, null, null, null, '50000.00', '5000.00', null, '8601001', '胡进虎', '2019-06-18', null, null, null, null, null, null, null, null, null, '待复核', null, null, '徐凤年', '男', '1989-06-14', '1', '511231199009190821', null, '18956787656', null, 'jiangni@qq.com', '本人');
INSERT INTO `lccont` VALUES ('010120190618094730', '010101', '8601', null, null, null, '丁有为', '男', '1997-06-18', '1', '511231199009190821', '湖南', '长沙市', '市辖区', '和平广场西街2-223', '15823234532', '511231', 'jiangni@qq.com', '已婚', '19,2', '165,52', '丁有为', '男', '1997-06-18', '1', '511231199009190821', '2', '湖南', '长沙市', '市辖区', '和平广场西街2-223', '15823234532', '511231', 'jiangni@qq.com', '已婚', '现金', null, null, null, null, null, '30600.00', '30000.00', null, '8601001', '胡进虎', '2019-06-18', null, null, null, null, null, '8601002', '魏巍', '2019-06-18', null, '待受理', null, null, '丁有为', '男', '1997-06-18', '1', '511231199009190821', null, '15823234532', null, 'jiangni@qq.com', '本人');
INSERT INTO `lccont` VALUES ('010120190618100054', '010101', '8601', null, null, '30600.00', '姜妮', '男', '0090-09-19', '1', '511231199009190821', '陕西', '西安市', '市辖区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '已婚', '19,2', '165,52', '姜妮', '男', '0090-09-19', '1', '511231199009190821', '1', '陕西', '西安市', '市辖区', '和平广场西街2-223', '18956787656', '511231', 'jiangni@qq.com', '已婚', '现金', null, null, null, null, null, '30600.00', '30000.00', null, '8601002', '魏巍', '2019-06-18', null, null, null, null, null, '8601001', '胡进虎', '2019-06-18', null, '待确认', null, null, '姜妮', '男', '0090-09-19', '1', '511231199009190821', null, '18956787656', null, 'jiangni@qq.com', '本人');

-- ----------------------------
-- Table structure for lcgrpcont
-- ----------------------------
DROP TABLE IF EXISTS `lcgrpcont`;
CREATE TABLE `lcgrpcont` (
  `GrpContNo` varchar(30) NOT NULL,
  `GrppolNo` varchar(10) default NULL,
  `SpecFlag` varchar(255) default NULL,
  `grpuid` varchar(30) default NULL,
  `SaleChnl` varchar(2) default NULL,
  `ManageCom` varchar(10) default NULL,
  `AppntNo` varchar(30) default NULL,
  `Appntname` varchar(50) default NULL,
  `insuredType` varchar(11) default NULL,
  `GrpName` varchar(200) default NULL,
  `BusinessType` varchar(20) default NULL,
  `GrpNature` varchar(10) default NULL,
  `RgtMoney` decimal(16,2) default NULL,
  `Asset` decimal(16,2) default NULL,
  `MainBussiness` varchar(60) default NULL,
  `Corporation` varchar(20) default NULL,
  `Fax` varchar(18) default NULL,
  `Phone` varchar(18) default NULL,
  `GetFlag` varchar(2) default NULL,
  `Satrap` varchar(10) default NULL,
  `EMail` varchar(20) default NULL,
  `PayMode` varchar(2) default NULL,
  `SignCom` varchar(10) default NULL,
  `SignDate` date default NULL,
  `CValiDate` date default NULL,
  `ManageFeeRate` float default NULL,
  `Peoples` int(11) default NULL,
  `Prem` decimal(16,2) default NULL,
  `Amnt` decimal(35,2) default NULL,
  `Remark` varchar(255) default NULL,
  `AmntGrade` varchar(2) default NULL,
  `UWDate` date default NULL,
  `UWOperator` varchar(20) default NULL,
  `UWOperatorcode` varchar(10) default NULL,
  `UWFlag` varchar(2) default NULL,
  `ApproveDate` date default NULL,
  `Approvename` varchar(20) default NULL,
  `ApproveCode` varchar(10) default NULL,
  `ApproveFlag` varchar(2) default NULL,
  `InputDate` date default NULL,
  `InputOperator` varchar(20) default NULL,
  `payflag` varchar(2) default NULL,
  PRIMARY KEY  (`GrpContNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='���屣����';

-- ----------------------------
-- Records of lcgrpcont
-- ----------------------------
INSERT INTO `lcgrpcont` VALUES ('020120190613001810', '020301', null, null, null, '8601', null, '李勇', '实体被保人', '中科软科技股份有限公司', '电子通讯', '国有', '200000000.00', '5000000000.00', '软件服务', '常春', '65377000', '65377000', null, null, 'sinosoft@qq.com', '现金', null, null, null, null, '5', null, null, '新单待复核', null, null, null, null, null, null, null, null, null, null, '8601001', null);
INSERT INTO `lcgrpcont` VALUES ('020120190614144731', '020301', null, null, null, '8601', null, '曲率', '实体被保人', '跳动科技有限公司', '服务业', '私营', '5000000.00', '15000000.00', '软件', '曲率', '10884433', '10894433', null, null, 'td@qq.com', '现金', null, null, null, null, '6', null, null, '待录入被保人', null, null, null, null, null, null, null, null, null, null, '8601001', null);
INSERT INTO `lcgrpcont` VALUES ('020120190614172745', '020301', null, null, null, '8601', '100000.00', '徐晓', '虚拟被保人', '完美世界科技有限公司', '服务业', '私营', '1000000.00', '30000000.00', '软件服务', '邓肯', '10595916', '10595919', null, null, 'world@play.com', '现金', null, null, null, null, '100', '100000.00', null, '待确认', null, null, null, null, null, null, null, null, null, null, '8601001', '1');
INSERT INTO `lcgrpcont` VALUES ('020120190614174048', '020301', null, null, null, '8601', null, '王宇恒', '实体被保人', '山西新宇煤矿有限公司', '采矿', '集体', '200000000.00', '9000000000.00', '煤矿', '王立新', '12112221', '12112222', null, null, 'xinyu@ton.com', '现金', null, null, null, null, '10', null, null, '待录入被保人', null, null, null, null, null, null, null, null, null, null, '8601001', null);

-- ----------------------------
-- Table structure for lcgrpinsured
-- ----------------------------
DROP TABLE IF EXISTS `lcgrpinsured`;
CREATE TABLE `lcgrpinsured` (
  `orderid` int(11) NOT NULL auto_increment,
  `GrpContNo` varchar(30) default NULL,
  `name` varchar(20) default NULL,
  `sex` varchar(2) default NULL,
  `age` int(11) default NULL,
  `idnumber` varchar(20) default NULL,
  PRIMARY KEY  (`orderid`),
  KEY `FK_Reference_1` (`GrpContNo`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`GrpContNo`) REFERENCES `lcgrpcont` (`GrpContNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lcgrpinsured
-- ----------------------------
INSERT INTO `lcgrpinsured` VALUES ('1', '020120190613001810', '胡杨', '男', '23', '211100199608172321');
INSERT INTO `lcgrpinsured` VALUES ('2', '020120190613001810', '丁有为', '男', '24', '211201199509184212');
INSERT INTO `lcgrpinsured` VALUES ('3', '020120190613001810', '王冠一', '男', '23', '211123199607131234');
INSERT INTO `lcgrpinsured` VALUES ('4', '020120190613001810', '杨玉春', '男', '22', '342123199709185432');
INSERT INTO `lcgrpinsured` VALUES ('5', '020120190613001810', '黄玉从', '男', '23', '210111199601237891');
INSERT INTO `lcgrpinsured` VALUES ('6', '020120190614174048', '赵小鱼', '女', '28', '43212319900112422X');

-- ----------------------------
-- Table structure for lcgrpmeet
-- ----------------------------
DROP TABLE IF EXISTS `lcgrpmeet`;
CREATE TABLE `lcgrpmeet` (
  `grpmid` int(11) NOT NULL auto_increment,
  `grpuid` varchar(30) NOT NULL,
  `uname` varchar(50) default NULL,
  `Lpname` varchar(30) default NULL,
  `compname` varchar(30) default NULL,
  `comcode` varchar(10) default NULL,
  `grpPolNo` varchar(20) default NULL,
  `meetdate` date default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `detail` varchar(200) default NULL,
  `grpmeetstate` varchar(20) default NULL,
  PRIMARY KEY  (`grpmid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lcgrpmeet
-- ----------------------------
INSERT INTO `lcgrpmeet` VALUES ('0', '1', null, '王冠一', '王冠一有限公司', '8620', '020301', '2019-06-15', 'wangyi@qq.com', '16698231134', null, null);
INSERT INTO `lcgrpmeet` VALUES ('1', '1', null, '陈涛', '中科软科技股份有限公司', '8602', '020301', '2019-06-12', 'zkr@sinosoft.com.cn', '62570007', null, null);
INSERT INTO `lcgrpmeet` VALUES ('2', '1', null, '裴南纬', '链家', '8601', '020301', '2019-06-15', 'pnw@lianjia.com', '59190001', null, null);
INSERT INTO `lcgrpmeet` VALUES ('3', 'elm@taobao.com', null, '张大江', '饿了么', '8601', '020301', '2019-06-15', 'elm@taobao.com', '52685268', null, null);
INSERT INTO `lcgrpmeet` VALUES ('4', '10086', null, '擦都擦', 'cascade', '8600', '020101', '2019-08-06', '121212@qq.com', '12121212', null, '正常');

-- ----------------------------
-- Table structure for lcgrppol
-- ----------------------------
DROP TABLE IF EXISTS `lcgrppol`;
CREATE TABLE `lcgrppol` (
  `GrpPolNo` varchar(20) NOT NULL,
  `KindCode` varchar(3) default NULL,
  `RiskCode` varchar(10) default NULL,
  `ManageCom` varchar(10) default NULL,
  `GrpName` varchar(30) default NULL,
  `GetRate` decimal(18,6) default NULL,
  `BonusRate` decimal(10,4) default NULL,
  `MaxMedFee` decimal(12,2) default NULL,
  `OutPayFlag` varchar(2) default NULL,
  `SpecFlag` varchar(2) default NULL,
  `ExpPremium` decimal(16,2) default NULL,
  `ExpAmnt` decimal(16,2) default NULL,
  `ManageFeeRate` float default NULL,
  `PayIntv` smallint(6) default NULL,
  `CValiDate` date default NULL,
  `geppolstate` varchar(10) default NULL,
  `Operatorcode` varchar(10) default NULL,
  `grppolOperator` varchar(20) default NULL,
  `MakeDate` date default NULL,
  `WaitPeriod` int(11) default NULL,
  PRIMARY KEY  (`GrpPolNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lcgrppol
-- ----------------------------
INSERT INTO `lcgrppol` VALUES ('020101', '02', '01', null, '女性健康险', '15.200000', null, null, null, null, '520000.00', '10000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcgrppol` VALUES ('020201', '02', '02', null, '团险旅游险', '18.000000', null, null, null, null, '720000.00', '40000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcgrppol` VALUES ('020301', '02', '03', null, '团险意外险', '22.000000', null, null, null, null, '1100000.00', '50000.00', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for lcmeet
-- ----------------------------
DROP TABLE IF EXISTS `lcmeet`;
CREATE TABLE `lcmeet` (
  `meetid` int(11) NOT NULL auto_increment,
  `userid` varchar(30) NOT NULL,
  `uname` varchar(50) default NULL,
  `Lpname` varchar(30) default NULL,
  `Linsuredname` varchar(30) default NULL,
  `comcode` varchar(10) default NULL,
  `PolNo` varchar(20) default NULL,
  `meetdate` date default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `detail` varchar(200) default NULL,
  `meetstate` varchar(20) default NULL,
  PRIMARY KEY  (`meetid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of lcmeet
-- ----------------------------
INSERT INTO `lcmeet` VALUES ('1', '15541875612', '陈涛', '陈涛', '于鸿淼', '8601', '010101', '2019-06-10', 'chentao@163.com', '15541875612', null, '1');
INSERT INTO `lcmeet` VALUES ('3', '15541875612', '陈涛', '陈涛', '陈涛', '8601', '010101', '2019-06-12', 'chentao@163.com', '15541222233', null, '1');
INSERT INTO `lcmeet` VALUES ('4', '15541875612', '陈涛', '李永乐', '李勇', '8610', '010201', '2019-06-21', 'liyongle@163.com', '15555435678', null, '1');
INSERT INTO `lcmeet` VALUES ('5', 'wusu@qq.com', '吴素', '吴素', '许之虎', '8610', '010101', '2019-06-15', 'wusu@qq.com', '18819186755', null, '1');
INSERT INTO `lcmeet` VALUES ('6', '15541875612', null, '陈涛', '陈涛', '8601', '010101', '2019-06-18', 'chent@qq.com', '15541875612', null, '正常');
INSERT INTO `lcmeet` VALUES ('7', '123456@qq.com', null, '徐凤年', '徐凤年', '8601', '010301', '2019-06-18', '123456@qq.com', '13940204733', null, '正常');
INSERT INTO `lcmeet` VALUES ('8', '15541875612', null, '陈涛', '陈涛', '8601', '010201', '2019-06-18', 'chen@qq.com', '15541875613', null, '正常');

-- ----------------------------
-- Table structure for lcpol
-- ----------------------------
DROP TABLE IF EXISTS `lcpol`;
CREATE TABLE `lcpol` (
  `PolNo` varchar(20) NOT NULL,
  `KindCode` varchar(10) default NULL,
  `RiskCode` varchar(10) default NULL,
  `ManageCom` varchar(10) default NULL,
  `GrpName` varchar(30) default NULL,
  `GetRate` decimal(18,6) default NULL,
  `BonusRate` decimal(10,4) default NULL,
  `MaxMedFee` decimal(12,2) default NULL,
  `OutPayFlag` varchar(2) default NULL,
  `ExpPremium` decimal(16,2) default NULL,
  `ExpAmnt` decimal(16,2) default NULL,
  `ManageFeeRate` float default NULL,
  `PayIntv` smallint(6) default NULL,
  `CValiDate` date default NULL,
  `PremToAmnt` varchar(2) default NULL,
  `Operatorcode` varchar(10) default NULL,
  `polOperator` varchar(20) default NULL,
  `MakeDate` date default NULL,
  `WaitPeriod` int(11) default NULL,
  PRIMARY KEY  (`PolNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='�������ֱ�';

-- ----------------------------
-- Records of lcpol
-- ----------------------------
INSERT INTO `lcpol` VALUES ('010101', '01', '01', null, '财富年金险', '1.020000', null, null, null, '30600.00', '30000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcpol` VALUES ('010201', '01', '02', null, '颐养天年险', '1.560000', null, null, null, '31200.00', '20000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcpol` VALUES ('010301', '01', '03', null, '优选重疾险', '20.000000', null, null, null, '100000.00', '5000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcpol` VALUES ('010401', '01', '04', null, '意外险', '10.000000', null, null, null, '50000.00', '5000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcpol` VALUES ('010501', '01', '05', null, '旅游险', '8.000000', null, null, null, '32000.00', '4000.00', null, null, null, null, null, null, null, null);
INSERT INTO `lcpol` VALUES ('010601', '01', '06', null, '健康险', '22.000000', null, null, null, '220000.00', '10000.00', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for ldcom
-- ----------------------------
DROP TABLE IF EXISTS `ldcom`;
CREATE TABLE `ldcom` (
  `ComCode` varchar(10) NOT NULL,
  `ComName` varchar(30) default NULL,
  `Comaddress` varchar(100) default NULL,
  `Comprovince` varchar(10) default NULL,
  `Comcity` varchar(10) default NULL,
  `comperator` varchar(60) default NULL,
  `MakeDate` date default NULL,
  PRIMARY KEY  (`ComCode`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of ldcom
-- ----------------------------
INSERT INTO `ldcom` VALUES ('8600', '福星寿险北京总公司', '北京市东城区东中街28号东环广场B座8号楼', '北京', '北京市', '001', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8601', '北京东直门分公司', '北京市东城区东直门北街3号院F1-101', '北京', '北京市', '001', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8602', '北京分公司第一营销服务部', '北京市东城区珠市口东大街13号', '北京', '北京市', '001', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8610', '上海分公司', '上海市浦东新区南路1号博家大楼7楼', '上海', '上海市', '002', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8611', '上海静安区分公司', '上海市静安区北京西路1399号信达大厦23层', '上海', '上海市', '002', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8612', '上海松江区分公司', '上海市松江区国际生态商务区光星路1688号', '上海', '上海市', '002', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8620', '广州分公司', '广州市天河区天河北路183号', '广东', '广州', '002', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8621', '广州市天河区分公司', '\r\n广州市天河区体育西路123号', '广东', '广州', '002', '2019-05-29');
INSERT INTO `ldcom` VALUES ('8622', '广州市增城区分公司', '广州市增城区荔城街幸福路8号', '广东', '广州', null, null);
INSERT INTO `ldcom` VALUES ('8630', '深圳市南山区分公司', '深圳市南山区东滨路22号', '广东', '深圳', null, null);

-- ----------------------------
-- Table structure for salesman
-- ----------------------------
DROP TABLE IF EXISTS `salesman`;
CREATE TABLE `salesman` (
  `sid` varchar(10) NOT NULL,
  `pwd` varchar(10) default NULL,
  `comcode` varchar(10) default NULL,
  `comname` varchar(30) default NULL,
  `sname` varchar(20) default NULL,
  `sage` int(11) default NULL,
  `ssex` varchar(2) default NULL,
  `posi` varchar(20) default NULL,
  `smanlimit` varchar(2) default NULL,
  `startdate` date default NULL,
  `enddate` date default NULL,
  `smanstate` varchar(20) default NULL,
  `semail` varchar(30) default NULL,
  `sphone` varchar(15) default NULL,
  `address` varchar(100) default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of salesman
-- ----------------------------
INSERT INTO `salesman` VALUES ('8601001', '8601001', '8601', '北京东直门分公司', '胡进虎', '32', '男', '客户经理', '1', '2014-02-26', null, '在职', 'hujinhu@fuxing.com.cn', '13689231290', null);
INSERT INTO `salesman` VALUES ('8601002', '8601002', '8601', '北京东直门分公司', '魏巍', '28', '女', '客户经理', '1', '2017-06-14', null, '在职', 'weiwei@fuxing.com.cn', '13323121314', null);
INSERT INTO `salesman` VALUES ('8601003', '8601003', '8601', '北京东直门分公司', '张晓燕', '28', '女', '业务员', '1', '2014-07-18', null, '在职', 'zhangxy@fuxing.com', '18714332387', '');
INSERT INTO `salesman` VALUES ('8601004', '8601004', '8601', '北京东直门分公司', '王蓝天', '28', '女', '业务员', '1', '2016-07-14', null, '在职', 'wanglt@fuxing.com', '15541876621', '');
INSERT INTO `salesman` VALUES ('8602001', '8602001', '8602', '北京分公司第一营销服务部', '徐俊超', '35', '男', '客户经理', '1', '2016-06-16', null, '在职', 'xunjc@fuxing.com', '19904265556', '');
INSERT INTO `salesman` VALUES ('8610001', '8610001', '8610', '上海分公司', '张巨鹿', '33', '男', '客户经理', '1', '2017-06-14', null, '在职', 'zhangjl@fuxing.com', '19903122887', '上海市徐汇区滨江大道312-8-7');
INSERT INTO `salesman` VALUES ('8610002', '8610002', '8610', '上海分公司', '曹长清', '34', '男', '客户经理', '1', '2018-06-21', null, '在职', 'caocq@fuxing.com', '13940204773', '上海市浦东区金兰路3-113');
INSERT INTO `salesman` VALUES ('8610003', '8610003', '8610', '上海分公司', '王献之', '33', '男', '客户经理', '1', '2017-06-21', null, '在职', 'wangxz@fuxing.com', '18769524433', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(30) NOT NULL,
  `uname` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `makedate` date default NULL,
  `usertype` varchar(8) default NULL,
  `userstate` varchar(10) default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123456@qq.com', '徐凤年', '123456', '123456@qq.com', '13693084612', '2019-06-06', null, null);
INSERT INTO `user` VALUES ('15541875612', '陈涛', '111111', 'chentao@163.com', '15541875612', '2019-06-13', null, null);
INSERT INTO `user` VALUES ('15541890381', '于鸿淼', '222222', 'yuhongmiao@taobao.com', '15541890381', '2019-06-11', null, null);
INSERT INTO `user` VALUES ('wusu@qq.com', '吴素', 'wusu', 'wusu@qq.com', '18819186755', '2019-06-04', null, null);
