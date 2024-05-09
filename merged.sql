/*
Navicat MySQL Data Transfer

Source Server         : navicat
Source Server Version : 50744
Source Host           : localhost:3306
Source Database       : new

Target Server Type    : MYSQL
Target Server Version : 50744
File Encoding         : 65001

Date: 2024-05-08 22:30:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_code` varchar(255) DEFAULT NULL,
  `tel_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `customerid` (`customerid`) USING BTREE,
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('3', '3', '广州市天河区珠江新城华夏路10号', null, null, null);
INSERT INTO `address` VALUES ('10', '1', '河南省郑州市中原区中山大学', '410102', null, null);
INSERT INTO `address` VALUES ('11', '1', '河南省郑州市中原区武汉大学', '410102', null, null);
INSERT INTO `address` VALUES ('12', '1', '北京市北京市东城区重中之重在', '110101', null, null);
INSERT INTO `address` VALUES ('19', '15', '黑龙江省哈尔滨市松北区武汉大学', '230109', '19536987004', '赵凯歌');
INSERT INTO `address` VALUES ('21', '16', '吉林省长春市朝阳区中山大学', '220104', null, null);
INSERT INTO `address` VALUES ('23', '18', '辽宁省沈阳市沈河区中山大学', '210103', null, null);
INSERT INTO `address` VALUES ('24', '18', '内蒙古呼和浩特市新城区武汉大学', '610102', null, null);
INSERT INTO `address` VALUES ('28', '20', '北京市北京市东城区摇摇欲坠古书馆', '110101', '1111', '擦擦擦');
INSERT INTO `address` VALUES ('29', '20', '北京市北京市西城区啧啧啧', '110102', '2222', '刷刷刷');
INSERT INTO `address` VALUES ('30', '20', '北京市北京市东城区fgfh', '110101', '1111', '1111');
INSERT INTO `address` VALUES ('32', '20', '北京市北京市西城区5555', '110102', '2222', '12121');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `telCode` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `salt` varchar(50) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL COMMENT '详细地址',
  `region_code` char(6) DEFAULT NULL COMMENT '区域码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '李明年', '13144774477', null, null, '郑州大学松园', '410102');
INSERT INTO `customer` VALUES ('2', '冯戴军', '13855212139', null, null, '合肥市瑶海区', '340102');
INSERT INTO `customer` VALUES ('3', '李敏', '18633225586', null, null, '郑州大学菊园', '410102');
INSERT INTO `customer` VALUES ('5', '张杰', '13466585807', null, null, '合肥市瑶海区', '340102');
INSERT INTO `customer` VALUES ('6', '聚一下', '058298985252', null, null, '', '330104');
INSERT INTO `customer` VALUES ('7', '张卡里', '13900894652', null, null, '黑乎乎vvhh上述而不作', '320706');
INSERT INTO `customer` VALUES ('8', '张三丰', '13678785646', null, null, '咳咳咳灭口口口口口', '632222');
INSERT INTO `customer` VALUES ('9', '吴英', '13208956217', null, null, '', '131003');
INSERT INTO `customer` VALUES ('10', '李未能', '13455286860', null, null, '觉得就克服困你舅舅家', '230503');
INSERT INTO `customer` VALUES ('11', '张可等', '13888558521', null, null, '普一天头', '441803');
INSERT INTO `customer` VALUES ('13', 'sdsd', '444', '0c8077062a1cc050ab9d6fc4f69809b4', '/gq7CLhjqd063MiZcm1DwQ==', '北京', '340102');
INSERT INTO `customer` VALUES ('14', '张宇博', '15286823330', '711e25784f83918589043cae7f33400d', 'HQgHni0sxJYazwDg6I0R5A==', '东城区', '340102');
INSERT INTO `customer` VALUES ('15', 'zkg', '19536987004', '111111', null, '河南省郑州市中原区网点', '410102');
INSERT INTO `customer` VALUES ('16', 'zzz', '13653982918', '111111', null, '河北省石家庄市桥东区网点', '130103');
INSERT INTO `customer` VALUES ('17', 'YUYU', '15346590525', '111111', null, '北京市市辖区西城区', '110102');
INSERT INTO `customer` VALUES ('18', 'UUU', '19536987002', '111111', null, '内蒙古自治区呼和浩特市市辖区', '150101');
INSERT INTO `customer` VALUES ('19', '0000', '0000', '0000', null, '北京市市辖区东城区', '110101');
INSERT INTO `customer` VALUES ('20', '1111', '1111', '1111', null, '北京市市辖区东城区', '110101');
INSERT INTO `customer` VALUES ('21', '2222', '2222', '2222', null, '北京市市辖区西城区', '110102');

-- ----------------------------
-- Table structure for customerinfo
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `ID` char(16) NOT NULL,
  `Name` varchar(16) DEFAULT NULL,
  `TelCode` varchar(24) DEFAULT NULL,
  `Department` varchar(64) DEFAULT NULL,
  `RegionCode` char(6) DEFAULT NULL,
  `Address` varchar(64) DEFAULT NULL,
  `PostCode` int(10) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of customerinfo
-- ----------------------------
INSERT INTO `customerinfo` VALUES ('1', '李明年', '13144774477', '国务院办公厅', '110105', '绿色高层饭店', '100008');
INSERT INTO `customerinfo` VALUES ('10', '李未能', '13455286860', '觉得就克服困你舅舅家', '230503', '收衣服呢内存不足吉杰', '0');
INSERT INTO `customerinfo` VALUES ('11', '张可等', '13888558521', '普一天头', '441803', '一园区1465@96', '0');
INSERT INTO `customerinfo` VALUES ('15', 'zzz', '15907825314', '大萨达多无', '131003', 'sad撒多撒所多', '0');
INSERT INTO `customerinfo` VALUES ('2', '冯戴军', '13855212139', '迪克开心饭店', '140212', '交界处就快点快点', '5216');
INSERT INTO `customerinfo` VALUES ('3', '李敏', '18633225586', '福坚持坚持到底', '341003', '姐姐电话号姐姐就到家', '7085810');
INSERT INTO `customerinfo` VALUES ('5', '张杰1', '13466585807', '好好的就是', '220204', '妈的感觉非常好', '1708740');
INSERT INTO `customerinfo` VALUES ('6', '聚一下', '058298985252', '绘声绘色', '330104', '来看看看看的结局是', '0');
INSERT INTO `customerinfo` VALUES ('7', '张卡里', '13900894652', '黑乎乎vvhh上述而不作', '320706', '驾驶室内外离开的奶奶看看', '0');
INSERT INTO `customerinfo` VALUES ('8', '张三丰', '13678785646', '咳咳咳灭口口口口口', '632222', '钱洁到底', '0');
INSERT INTO `customerinfo` VALUES ('9', '吴英', '13208956217', '好是好', '131003', '果园区卷福巷1234', '0');

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express` (
  `id` char(15) NOT NULL COMMENT '快件号，1+8+6',
  `type` int(11) DEFAULT NULL COMMENT '快件类型',
  `weight` float DEFAULT NULL COMMENT '重量',
  `fee` float DEFAULT NULL COMMENT '快递费',
  `status` int(11) DEFAULT NULL COMMENT '当前状态',
  `sender` int(11) DEFAULT NULL COMMENT '发件人',
  `receiver` int(11) DEFAULT NULL COMMENT '收件人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `picker` int(11) DEFAULT NULL COMMENT '揽收人（网点工作人员）',
  `pick_time` datetime DEFAULT NULL COMMENT '揽收时间',
  `deliver` int(11) DEFAULT NULL COMMENT '派送员',
  `deliver_time` datetime DEFAULT NULL COMMENT '派送时间',
  `signer` int(11) DEFAULT NULL COMMENT '签收人',
  `sign_time` datetime DEFAULT NULL COMMENT '签收时间',
  `send_region_code` varchar(255) DEFAULT NULL,
  `send_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recv_region_code` varchar(255) DEFAULT NULL,
  `recv_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKExpressShe264192` (`weight`) USING BTREE,
  KEY `FKExpressShe349131` (`fee`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES ('111010100000001', '1', '8888', '8888', '0', '20', '21', '2024-04-23 12:20:51', null, null, null, null, null, null, '110101', '北京市北京市东城区fgfh', '110102', '北京市北京市西城区nnnn');
INSERT INTO `express` VALUES ('111010100000002', '1', '5555', '5555', '0', '20', '21', '2024-04-23 12:24:22', null, null, null, null, null, null, '110101', '北京市北京市东城区fgfh', '110102', '北京市北京市西城区5555');
INSERT INTO `express` VALUES ('111010100000003', '1', '5555', '5555', '1', '20', '21', '2024-04-23 12:24:22', '46', '2024-04-23 20:27:19', null, null, null, null, '110101', '北京市北京市东城区fgfh', '110102', '北京市北京市西城区5555');
INSERT INTO `express` VALUES ('113010300000001', '2', '111', '111', '0', '20', '2', '2024-04-17 06:30:31', null, null, null, null, null, null, '110101', '北京市北京市东城区中山大学', '150101', '内蒙古自治区呼和浩特市市辖区555');
INSERT INTO `express` VALUES ('113010300000002', '2', '111', '111', '0', '16', '20', '2024-04-17 06:30:35', null, null, null, null, null, null, '110101', '北京市北京市东城区中山大学', '150101', '内蒙古自治区呼和浩特市市辖区555');
INSERT INTO `express` VALUES ('113010300000003', '2', '111', '111', '0', '16', '2', '2024-04-17 06:30:35', null, null, null, null, null, null, '110101', '北京市北京市东城区中山大学', '150101', '内蒙古自治区呼和浩特市市辖区555');
INSERT INTO `express` VALUES ('113010300000004', '2', '111', '1', '0', '16', '14', '2024-04-17 07:18:01', null, null, null, null, null, null, '220104', '吉林省长春市朝阳区中山大学', '110101', '北京市市辖区东城区11');
INSERT INTO `express` VALUES ('113010300000005', '2', '11', '11', '0', '16', '14', '2024-04-17 07:22:25', null, null, null, null, null, null, '220104', '吉林省长春市朝阳区中山大学', '110101', '北京市市辖区东城区11');
INSERT INTO `express` VALUES ('115010100000001', '2', '10', '10', '0', '18', '2', '2024-04-17 08:32:50', null, null, null, null, null, null, '210103', '辽宁省沈阳市沈河区中山大学', '140101', '山西省太原市市辖区哈哈哈哈');
INSERT INTO `express` VALUES ('115010100000002', '2', '10', '10', '0', '18', '18', '2024-04-17 08:34:53', null, null, null, null, null, null, '210103', '辽宁省沈阳市沈河区中山大学', '110101', '北京市市辖区东城区组织者');
INSERT INTO `express` VALUES ('134010200000001', '4', '20', '5', '4', '2', '1', '2023-05-23 11:52:05', '29', '2023-05-23 11:53:55', '26', '2023-05-23 14:00:35', '1', '2023-05-25 18:42:26', null, null, null, null);
INSERT INTO `express` VALUES ('134010200000002', '3', '30', '6', '4', '2', '3', '2023-05-23 11:52:57', '29', '2023-05-23 11:54:00', '37', '2024-03-21 09:03:46', '14', '2024-03-21 09:03:56', null, null, null, null);
INSERT INTO `express` VALUES ('134010200000003', '0', '10', '10', '6', '5', '3', '2023-04-02 19:13:56', '29', '2023-05-29 13:43:10', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000004', '0', '10', '10', '6', '2', '1', '2023-04-02 19:13:56', '29', '2023-05-29 13:50:08', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000005', '1', '66445', '3453', '0', '2', '1', '2024-04-23 13:12:51', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000006', '1', '5454', '555', '0', '2', '1', '2024-04-23 13:13:02', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000007', '1', '555', '555', '2', '2', '1', '2024-04-23 13:15:32', '44', '2024-04-23 13:17:54', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000008', '1', '555', '555', '0', '2', '2', '2024-04-23 13:15:42', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000009', '1', '123456', '123', '0', '2', '1', '2024-04-23 19:49:16', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('134010200000010', '1', '123', '123', '1', '2', '1', '2024-04-23 19:55:07', '44', '2024-04-23 19:59:56', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000001', '1', '10', '20.5', '0', '100', '200', '2024-04-17 10:00:00', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000002', '3', '10', '100', '1', '1', '3', '2024-03-21 08:25:26', '33', '2024-03-21 08:36:37', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000003', '1', '10', '10', '4', '1', '3', '2024-03-21 08:53:07', '37', '2024-03-21 08:58:49', '37', '2024-03-21 08:59:12', '14', '2024-03-21 09:03:18', null, null, null, null);
INSERT INTO `express` VALUES ('141010200000004', '3', '10', '10', '2', '1', '2', '2024-03-21 09:05:01', '37', '2024-03-21 09:05:39', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000005', '3', '10', '10', '4', '1', '2', '2024-03-21 09:05:33', '37', '2024-03-21 09:07:31', '41', '2024-03-21 09:52:03', '2', '2024-03-21 09:53:40', null, null, null, null);
INSERT INTO `express` VALUES ('141010200000006', '3', '10', '10', '2', '1', '2', '2024-03-21 09:07:23', '37', '2024-03-21 09:26:52', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000007', '1', '10', '100', '2', '1', '2', '2024-03-27 16:17:36', '37', '2024-03-27 16:21:25', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000008', '1', '100', '100', '6', '1', '2', '2024-03-27 16:50:09', '37', '2024-03-27 16:59:17', null, null, null, null, null, null, null, null);
INSERT INTO `express` VALUES ('141010200000009', '2', '2222', '222', '0', '15', '2', '2024-04-17 06:26:31', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '220101', '吉林省长春市市辖区222');
INSERT INTO `express` VALUES ('141010200000010', '2', '11', '11', '0', '15', '14', '2024-04-17 06:49:49', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '110101', '北京市市辖区东城区1111');
INSERT INTO `express` VALUES ('141010200000011', '2', '11', '11', '0', '15', '14', '2024-04-17 06:49:49', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '110101', '北京市市辖区东城区1111');
INSERT INTO `express` VALUES ('141010200000012', '2', '11', '11', '0', '15', '14', '2024-04-17 06:50:10', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '110101', '北京市市辖区东城区1111');
INSERT INTO `express` VALUES ('141010200000013', '2', '1', '1', '0', '15', '15', '2024-04-17 06:51:12', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '150101', '内蒙古自治区呼和浩特市市辖区111');
INSERT INTO `express` VALUES ('141010200000014', '2', '11', '11', '0', '15', '15', '2024-04-17 06:51:30', null, null, null, null, null, null, '230109', '黑龙江省哈尔滨市松北区武汉大学', '110101', '北京市市辖区东城区1');

-- ----------------------------
-- Table structure for expresssheet
-- ----------------------------
DROP TABLE IF EXISTS `expresssheet`;
CREATE TABLE `expresssheet` (
  `ID` varchar(24) NOT NULL,
  `Type` int(4) NOT NULL,
  `Sender` char(16) NOT NULL,
  `Recever` char(16) NOT NULL,
  `Weight` float DEFAULT NULL,
  `TransFee` float DEFAULT NULL,
  `PackageFee` float DEFAULT NULL,
  `InsuFee` float DEFAULT NULL,
  `Accepter` varchar(16) DEFAULT NULL,
  `Deliver` varchar(16) DEFAULT NULL,
  `AcceptTime` datetime DEFAULT NULL,
  `DeliverTime` datetime DEFAULT NULL,
  `Acc1` varchar(64) DEFAULT NULL,
  `Acc2` varchar(64) DEFAULT NULL,
  `Status` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FKExpressShe264192` (`Sender`) USING BTREE,
  KEY `FKExpressShe349131` (`Recever`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of expresssheet
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('1', 'express', '', null, null, 'Express', 'crud', '', 'com.ruoyi.system', 'system', 'express', null, 'ruoyi', '0', '/', null, 'admin', '2024-04-11 09:13:18', '', null, null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('1', '1', 'id', '快件号，1+8+6', 'char(15)', 'String', 'id', '1', '0', '0', '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('2', '1', 'type', '快件类型', 'int', 'Long', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', '2', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('3', '1', 'weight', '重量', 'float', 'Long', 'weight', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('4', '1', 'fee', '快递费', 'float', 'Long', 'fee', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('5', '1', 'status', '当前状态', 'int', 'Long', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', '5', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('6', '1', 'sender', '发件人', 'int', 'Long', 'sender', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('7', '1', 'receiver', '收件人', 'int', 'Long', 'receiver', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '7', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('8', '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', null, null, null, 'EQ', 'datetime', '', '8', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('9', '1', 'picker', '揽收人（网点工作人员）', 'int', 'Long', 'picker', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '9', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('10', '1', 'pick_time', '揽收时间', 'datetime', 'Date', 'pickTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '10', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('11', '1', 'deliver', '派送员', 'int', 'Long', 'deliver', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '11', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('12', '1', 'deliver_time', '派送时间', 'datetime', 'Date', 'deliverTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '12', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('13', '1', 'signer', '签收人', 'int', 'Long', 'signer', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', '13', 'admin', '2024-04-11 09:13:18', '', null);
INSERT INTO `gen_table_column` VALUES ('14', '1', 'sign_time', '签收时间', 'datetime', 'Date', 'signTime', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', '14', 'admin', '2024-04-11 09:13:18', '', null);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '快件权', '创建和揽收快件的权力');
INSERT INTO `permission` VALUES ('2', '包裹权', '打包和拆包的权力');
INSERT INTO `permission` VALUES ('3', '运输权', '运输包裹的权力');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `PosCode` int(10) NOT NULL AUTO_INCREMENT,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  PRIMARY KEY (`PosCode`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of position
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(20) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(20) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(20) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(20) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(20) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(20) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(20) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(20) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(20) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(6) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`) USING BTREE,
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `region_code` char(6) NOT NULL,
  `prv` varchar(30) DEFAULT NULL,
  `cty` varchar(30) DEFAULT NULL,
  `twn` varchar(30) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '分为省、市、区',
  PRIMARY KEY (`region_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('110000', '北京市', '', '', '1');
INSERT INTO `region` VALUES ('110100', '', '市辖区', '', '2');
INSERT INTO `region` VALUES ('110101', '北京市', '市辖区', '东城区', '3');
INSERT INTO `region` VALUES ('110102', '北京市', '市辖区', '西城区', '3');
INSERT INTO `region` VALUES ('110105', '北京市', '市辖区', '朝阳区', '3');
INSERT INTO `region` VALUES ('110106', '', '', '丰台区', '3');
INSERT INTO `region` VALUES ('110107', '', '', '石景山区', '3');
INSERT INTO `region` VALUES ('110108', '', '', '海淀区', '3');
INSERT INTO `region` VALUES ('110109', '', '', '门头沟区', '3');
INSERT INTO `region` VALUES ('110111', '', '', '房山区', '3');
INSERT INTO `region` VALUES ('110112', '', '', '通州区', '3');
INSERT INTO `region` VALUES ('110113', '', '', '顺义区', '3');
INSERT INTO `region` VALUES ('110114', '', '', '昌平区', '3');
INSERT INTO `region` VALUES ('110115', '', '', '大兴区', '3');
INSERT INTO `region` VALUES ('110116', '', '', '怀柔区', '3');
INSERT INTO `region` VALUES ('110117', '', '', '平谷区', '3');
INSERT INTO `region` VALUES ('110200', '', '县', '', '2');
INSERT INTO `region` VALUES ('110228', '', '', '密云县', '3');
INSERT INTO `region` VALUES ('110229', '', '', '延庆县', '3');
INSERT INTO `region` VALUES ('120000', '天津市', '', '', '1');
INSERT INTO `region` VALUES ('120100', '', '市辖区', '', '2');
INSERT INTO `region` VALUES ('120101', '', '', '和平区', '3');
INSERT INTO `region` VALUES ('120102', '', '', '河东区', '3');
INSERT INTO `region` VALUES ('120103', '', '', '河西区', '3');
INSERT INTO `region` VALUES ('120104', '', '', '南开区', '3');
INSERT INTO `region` VALUES ('120105', '', '', '河北区', '3');
INSERT INTO `region` VALUES ('120106', '', '', '红桥区', '3');
INSERT INTO `region` VALUES ('120110', '', '', '东丽区', '3');
INSERT INTO `region` VALUES ('120111', '', '', '西青区', '3');
INSERT INTO `region` VALUES ('120112', '', '', '津南区', '3');
INSERT INTO `region` VALUES ('120113', '', '', '北辰区', '3');
INSERT INTO `region` VALUES ('120114', '', '', '武清区', '3');
INSERT INTO `region` VALUES ('120115', '', '', '宝坻区', '3');
INSERT INTO `region` VALUES ('120116', '', '', '滨海新区', '3');
INSERT INTO `region` VALUES ('120200', '', '县', '', '2');
INSERT INTO `region` VALUES ('120221', '', '', '宁河县', '3');
INSERT INTO `region` VALUES ('120223', '', '', '静海县', '3');
INSERT INTO `region` VALUES ('120225', '', '', '蓟县', '3');
INSERT INTO `region` VALUES ('130000', '河北省', '', '', '1');
INSERT INTO `region` VALUES ('130100', '', '石家庄市', '', '2');
INSERT INTO `region` VALUES ('130101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130102', '', '', '长安区', '3');
INSERT INTO `region` VALUES ('130103', '', '', '桥东区', '3');
INSERT INTO `region` VALUES ('130104', '', '', '桥西区', '3');
INSERT INTO `region` VALUES ('130105', '', '', '新华区', '3');
INSERT INTO `region` VALUES ('130107', '', '', '井陉矿区', '3');
INSERT INTO `region` VALUES ('130108', '', '', '裕华区', '3');
INSERT INTO `region` VALUES ('130121', '', '', '井陉县', '3');
INSERT INTO `region` VALUES ('130123', '', '', '正定县', '3');
INSERT INTO `region` VALUES ('130124', '', '', '栾城县', '3');
INSERT INTO `region` VALUES ('130125', '', '', '行唐县', '3');
INSERT INTO `region` VALUES ('130126', '', '', '灵寿县', '3');
INSERT INTO `region` VALUES ('130127', '', '', '高邑县', '3');
INSERT INTO `region` VALUES ('130128', '', '', '深泽县', '3');
INSERT INTO `region` VALUES ('130129', '', '', '赞皇县', '3');
INSERT INTO `region` VALUES ('130130', '', '', '无极县', '3');
INSERT INTO `region` VALUES ('130131', '', '', '平山县', '3');
INSERT INTO `region` VALUES ('130132', '', '', '元氏县', '3');
INSERT INTO `region` VALUES ('130133', '', '', '赵县', '3');
INSERT INTO `region` VALUES ('130181', '', '', '辛集市', '3');
INSERT INTO `region` VALUES ('130182', '', '', '藁城市', '3');
INSERT INTO `region` VALUES ('130183', '', '', '晋州市', '3');
INSERT INTO `region` VALUES ('130184', '', '', '新乐市', '3');
INSERT INTO `region` VALUES ('130185', '', '', '鹿泉市', '3');
INSERT INTO `region` VALUES ('130200', '', '唐山市', '', '2');
INSERT INTO `region` VALUES ('130201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130202', '', '', '路南区', '3');
INSERT INTO `region` VALUES ('130203', '', '', '路北区', '3');
INSERT INTO `region` VALUES ('130204', '', '', '古冶区', '3');
INSERT INTO `region` VALUES ('130205', '', '', '开平区', '3');
INSERT INTO `region` VALUES ('130207', '', '', '丰南区', '3');
INSERT INTO `region` VALUES ('130208', '', '', '丰润区', '3');
INSERT INTO `region` VALUES ('130209', '', '', '曹妃甸区', '3');
INSERT INTO `region` VALUES ('130223', '', '', '滦县', '3');
INSERT INTO `region` VALUES ('130224', '', '', '滦南县', '3');
INSERT INTO `region` VALUES ('130225', '', '', '乐亭县', '3');
INSERT INTO `region` VALUES ('130227', '', '', '迁西县', '3');
INSERT INTO `region` VALUES ('130229', '', '', '玉田县', '3');
INSERT INTO `region` VALUES ('130281', '', '', '遵化市', '3');
INSERT INTO `region` VALUES ('130283', '', '', '迁安市', '3');
INSERT INTO `region` VALUES ('130300', '', '秦皇岛市', '', '2');
INSERT INTO `region` VALUES ('130301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130302', '', '', '海港区', '3');
INSERT INTO `region` VALUES ('130303', '', '', '山海关区', '3');
INSERT INTO `region` VALUES ('130304', '', '', '北戴河区', '3');
INSERT INTO `region` VALUES ('130321', '', '', '青龙满族自治县', '3');
INSERT INTO `region` VALUES ('130322', '', '', '昌黎县', '3');
INSERT INTO `region` VALUES ('130323', '', '', '抚宁县', '3');
INSERT INTO `region` VALUES ('130324', '', '', '卢龙县', '3');
INSERT INTO `region` VALUES ('130400', '', '邯郸市', '', '2');
INSERT INTO `region` VALUES ('130401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130402', '', '', '邯山区', '3');
INSERT INTO `region` VALUES ('130403', '', '', '丛台区', '3');
INSERT INTO `region` VALUES ('130404', '', '', '复兴区', '3');
INSERT INTO `region` VALUES ('130406', '', '', '峰峰矿区', '3');
INSERT INTO `region` VALUES ('130421', '', '', '邯郸县', '3');
INSERT INTO `region` VALUES ('130423', '', '', '临漳县', '3');
INSERT INTO `region` VALUES ('130424', '', '', '成安县', '3');
INSERT INTO `region` VALUES ('130425', '', '', '大名县', '3');
INSERT INTO `region` VALUES ('130426', '', '', '涉县', '3');
INSERT INTO `region` VALUES ('130427', '', '', '磁县', '3');
INSERT INTO `region` VALUES ('130428', '', '', '肥乡县', '3');
INSERT INTO `region` VALUES ('130429', '', '', '永年县', '3');
INSERT INTO `region` VALUES ('130430', '', '', '邱县', '3');
INSERT INTO `region` VALUES ('130431', '', '', '鸡泽县', '3');
INSERT INTO `region` VALUES ('130432', '', '', '广平县', '3');
INSERT INTO `region` VALUES ('130433', '', '', '馆陶县', '3');
INSERT INTO `region` VALUES ('130434', '', '', '魏县', '3');
INSERT INTO `region` VALUES ('130435', '', '', '曲周县', '3');
INSERT INTO `region` VALUES ('130481', '', '', '武安市', '3');
INSERT INTO `region` VALUES ('130500', '', '邢台市', '', '2');
INSERT INTO `region` VALUES ('130501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130502', '', '', '桥东区', '3');
INSERT INTO `region` VALUES ('130503', '', '', '桥西区', '3');
INSERT INTO `region` VALUES ('130521', '', '', '邢台县', '3');
INSERT INTO `region` VALUES ('130522', '', '', '临城县', '3');
INSERT INTO `region` VALUES ('130523', '', '', '内丘县', '3');
INSERT INTO `region` VALUES ('130524', '', '', '柏乡县', '3');
INSERT INTO `region` VALUES ('130525', '', '', '隆尧县', '3');
INSERT INTO `region` VALUES ('130526', '', '', '任县', '3');
INSERT INTO `region` VALUES ('130527', '', '', '南和县', '3');
INSERT INTO `region` VALUES ('130528', '', '', '宁晋县', '3');
INSERT INTO `region` VALUES ('130529', '', '', '巨鹿县', '3');
INSERT INTO `region` VALUES ('130530', '', '', '新河县', '3');
INSERT INTO `region` VALUES ('130531', '', '', '广宗县', '3');
INSERT INTO `region` VALUES ('130532', '', '', '平乡县', '3');
INSERT INTO `region` VALUES ('130533', '', '', '威县', '3');
INSERT INTO `region` VALUES ('130534', '', '', '清河县', '3');
INSERT INTO `region` VALUES ('130535', '', '', '临西县', '3');
INSERT INTO `region` VALUES ('130581', '', '', '南宫市', '3');
INSERT INTO `region` VALUES ('130582', '', '', '沙河市', '3');
INSERT INTO `region` VALUES ('130600', '', '保定市', '', '2');
INSERT INTO `region` VALUES ('130601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130602', '', '', '新市区', '3');
INSERT INTO `region` VALUES ('130603', '', '', '北市区', '3');
INSERT INTO `region` VALUES ('130604', '', '', '南市区', '3');
INSERT INTO `region` VALUES ('130621', '', '', '满城县', '3');
INSERT INTO `region` VALUES ('130622', '', '', '清苑县', '3');
INSERT INTO `region` VALUES ('130623', '', '', '涞水县', '3');
INSERT INTO `region` VALUES ('130624', '', '', '阜平县', '3');
INSERT INTO `region` VALUES ('130625', '', '', '徐水县', '3');
INSERT INTO `region` VALUES ('130626', '', '', '定兴县', '3');
INSERT INTO `region` VALUES ('130627', '', '', '唐县', '3');
INSERT INTO `region` VALUES ('130628', '', '', '高阳县', '3');
INSERT INTO `region` VALUES ('130629', '', '', '容城县', '3');
INSERT INTO `region` VALUES ('130630', '', '', '涞源县', '3');
INSERT INTO `region` VALUES ('130631', '', '', '望都县', '3');
INSERT INTO `region` VALUES ('130632', '', '', '安新县', '3');
INSERT INTO `region` VALUES ('130633', '', '', '易县', '3');
INSERT INTO `region` VALUES ('130634', '', '', '曲阳县', '3');
INSERT INTO `region` VALUES ('130635', '', '', '蠡县', '3');
INSERT INTO `region` VALUES ('130636', '', '', '顺平县', '3');
INSERT INTO `region` VALUES ('130637', '', '', '博野县', '3');
INSERT INTO `region` VALUES ('130638', '', '', '雄县', '3');
INSERT INTO `region` VALUES ('130681', '', '', '涿州市', '3');
INSERT INTO `region` VALUES ('130682', '', '', '定州市', '3');
INSERT INTO `region` VALUES ('130683', '', '', '安国市', '3');
INSERT INTO `region` VALUES ('130684', '', '', '高碑店市', '3');
INSERT INTO `region` VALUES ('130700', '', '张家口市', '', '2');
INSERT INTO `region` VALUES ('130701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130702', '', '', '桥东区', '3');
INSERT INTO `region` VALUES ('130703', '', '', '桥西区', '3');
INSERT INTO `region` VALUES ('130705', '', '', '宣化区', '3');
INSERT INTO `region` VALUES ('130706', '', '', '下花园区', '3');
INSERT INTO `region` VALUES ('130721', '', '', '宣化县', '3');
INSERT INTO `region` VALUES ('130722', '', '', '张北县', '3');
INSERT INTO `region` VALUES ('130723', '', '', '康保县', '3');
INSERT INTO `region` VALUES ('130724', '', '', '沽源县', '3');
INSERT INTO `region` VALUES ('130725', '', '', '尚义县', '3');
INSERT INTO `region` VALUES ('130726', '', '', '蔚县', '3');
INSERT INTO `region` VALUES ('130727', '', '', '阳原县', '3');
INSERT INTO `region` VALUES ('130728', '', '', '怀安县', '3');
INSERT INTO `region` VALUES ('130729', '', '', '万全县', '3');
INSERT INTO `region` VALUES ('130730', '', '', '怀来县', '3');
INSERT INTO `region` VALUES ('130731', '', '', '涿鹿县', '3');
INSERT INTO `region` VALUES ('130732', '', '', '赤城县', '3');
INSERT INTO `region` VALUES ('130733', '', '', '崇礼县', '3');
INSERT INTO `region` VALUES ('130800', '', '承德市', '', '2');
INSERT INTO `region` VALUES ('130801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130802', '', '', '双桥区', '3');
INSERT INTO `region` VALUES ('130803', '', '', '双滦区', '3');
INSERT INTO `region` VALUES ('130804', '', '', '鹰手营子矿区', '3');
INSERT INTO `region` VALUES ('130821', '', '', '承德县', '3');
INSERT INTO `region` VALUES ('130822', '', '', '兴隆县', '3');
INSERT INTO `region` VALUES ('130823', '', '', '平泉县', '3');
INSERT INTO `region` VALUES ('130824', '', '', '滦平县', '3');
INSERT INTO `region` VALUES ('130825', '', '', '隆化县', '3');
INSERT INTO `region` VALUES ('130826', '', '', '丰宁满族自治县', '3');
INSERT INTO `region` VALUES ('130827', '', '', '宽城满族自治县', '3');
INSERT INTO `region` VALUES ('130828', '', '', '围场满族蒙古族自治县', '3');
INSERT INTO `region` VALUES ('130900', '', '沧州市', '', '2');
INSERT INTO `region` VALUES ('130901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('130902', '', '', '新华区', '3');
INSERT INTO `region` VALUES ('130903', '', '', '运河区', '3');
INSERT INTO `region` VALUES ('130921', '', '', '沧县', '3');
INSERT INTO `region` VALUES ('130922', '', '', '青县', '3');
INSERT INTO `region` VALUES ('130923', '', '', '东光县', '3');
INSERT INTO `region` VALUES ('130924', '', '', '海兴县', '3');
INSERT INTO `region` VALUES ('130925', '', '', '盐山县', '3');
INSERT INTO `region` VALUES ('130926', '', '', '肃宁县', '3');
INSERT INTO `region` VALUES ('130927', '', '', '南皮县', '3');
INSERT INTO `region` VALUES ('130928', '', '', '吴桥县', '3');
INSERT INTO `region` VALUES ('130929', '', '', '献县', '3');
INSERT INTO `region` VALUES ('130930', '', '', '孟村回族自治县', '3');
INSERT INTO `region` VALUES ('130981', '', '', '泊头市', '3');
INSERT INTO `region` VALUES ('130982', '', '', '任丘市', '3');
INSERT INTO `region` VALUES ('130983', '', '', '黄骅市', '3');
INSERT INTO `region` VALUES ('130984', '', '', '河间市', '3');
INSERT INTO `region` VALUES ('131000', '', '廊坊市', '', '2');
INSERT INTO `region` VALUES ('131001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('131002', '', '', '安次区', '3');
INSERT INTO `region` VALUES ('131003', '', '', '广阳区', '3');
INSERT INTO `region` VALUES ('131022', '', '', '固安县', '3');
INSERT INTO `region` VALUES ('131023', '', '', '永清县', '3');
INSERT INTO `region` VALUES ('131024', '', '', '香河县', '3');
INSERT INTO `region` VALUES ('131025', '', '', '大城县', '3');
INSERT INTO `region` VALUES ('131026', '', '', '文安县', '3');
INSERT INTO `region` VALUES ('131028', '', '', '大厂回族自治县', '3');
INSERT INTO `region` VALUES ('131081', '', '', '霸州市', '3');
INSERT INTO `region` VALUES ('131082', '', '', '三河市', '3');
INSERT INTO `region` VALUES ('131100', '', '衡水市', '', '2');
INSERT INTO `region` VALUES ('131101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('131102', '', '', '桃城区', '3');
INSERT INTO `region` VALUES ('131121', '', '', '枣强县', '3');
INSERT INTO `region` VALUES ('131122', '', '', '武邑县', '3');
INSERT INTO `region` VALUES ('131123', '', '', '武强县', '3');
INSERT INTO `region` VALUES ('131124', '', '', '饶阳县', '3');
INSERT INTO `region` VALUES ('131125', '', '', '安平县', '3');
INSERT INTO `region` VALUES ('131126', '', '', '故城县', '3');
INSERT INTO `region` VALUES ('131127', '', '', '景县', '3');
INSERT INTO `region` VALUES ('131128', '', '', '阜城县', '3');
INSERT INTO `region` VALUES ('131181', '', '', '冀州市', '3');
INSERT INTO `region` VALUES ('131182', '', '', '深州市', '3');
INSERT INTO `region` VALUES ('140000', '山西省', '', '', '1');
INSERT INTO `region` VALUES ('140100', '', '太原市', '', '2');
INSERT INTO `region` VALUES ('140101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140105', '', '', '小店区', '3');
INSERT INTO `region` VALUES ('140106', '', '', '迎泽区', '3');
INSERT INTO `region` VALUES ('140107', '', '', '杏花岭区', '3');
INSERT INTO `region` VALUES ('140108', '', '', '尖草坪区', '3');
INSERT INTO `region` VALUES ('140109', '', '', '万柏林区', '3');
INSERT INTO `region` VALUES ('140110', '', '', '晋源区', '3');
INSERT INTO `region` VALUES ('140121', '', '', '清徐县', '3');
INSERT INTO `region` VALUES ('140122', '', '', '阳曲县', '3');
INSERT INTO `region` VALUES ('140123', '', '', '娄烦县', '3');
INSERT INTO `region` VALUES ('140181', '', '', '古交市', '3');
INSERT INTO `region` VALUES ('140200', '', '大同市', '', '2');
INSERT INTO `region` VALUES ('140201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140202', '', '', '城区', '3');
INSERT INTO `region` VALUES ('140203', '', '', '矿区', '3');
INSERT INTO `region` VALUES ('140211', '', '', '南郊区', '3');
INSERT INTO `region` VALUES ('140212', '山西省', '大同市', '新荣区', '3');
INSERT INTO `region` VALUES ('140221', '', '', '阳高县', '3');
INSERT INTO `region` VALUES ('140222', '', '', '天镇县', '3');
INSERT INTO `region` VALUES ('140223', '', '', '广灵县', '3');
INSERT INTO `region` VALUES ('140224', '', '', '灵丘县', '3');
INSERT INTO `region` VALUES ('140225', '', '', '浑源县', '3');
INSERT INTO `region` VALUES ('140226', '', '', '左云县', '3');
INSERT INTO `region` VALUES ('140227', '', '', '大同县', '3');
INSERT INTO `region` VALUES ('140300', '', '阳泉市', '', '2');
INSERT INTO `region` VALUES ('140301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140302', '', '', '城区', '3');
INSERT INTO `region` VALUES ('140303', '', '', '矿区', '3');
INSERT INTO `region` VALUES ('140311', '', '', '郊区', '3');
INSERT INTO `region` VALUES ('140321', '', '', '平定县', '3');
INSERT INTO `region` VALUES ('140322', '', '', '盂县', '3');
INSERT INTO `region` VALUES ('140400', '', '长治市', '', '2');
INSERT INTO `region` VALUES ('140401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140402', '', '', '城区', '3');
INSERT INTO `region` VALUES ('140411', '', '', '郊区', '3');
INSERT INTO `region` VALUES ('140421', '', '', '长治县', '3');
INSERT INTO `region` VALUES ('140423', '', '', '襄垣县', '3');
INSERT INTO `region` VALUES ('140424', '', '', '屯留县', '3');
INSERT INTO `region` VALUES ('140425', '', '', '平顺县', '3');
INSERT INTO `region` VALUES ('140426', '', '', '黎城县', '3');
INSERT INTO `region` VALUES ('140427', '', '', '壶关县', '3');
INSERT INTO `region` VALUES ('140428', '', '', '长子县', '3');
INSERT INTO `region` VALUES ('140429', '', '', '武乡县', '3');
INSERT INTO `region` VALUES ('140430', '', '', '沁县', '3');
INSERT INTO `region` VALUES ('140431', '', '', '沁源县', '3');
INSERT INTO `region` VALUES ('140481', '', '', '潞城市', '3');
INSERT INTO `region` VALUES ('140500', '', '晋城市', '', '2');
INSERT INTO `region` VALUES ('140501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140502', '', '', '城区', '3');
INSERT INTO `region` VALUES ('140521', '', '', '沁水县', '3');
INSERT INTO `region` VALUES ('140522', '', '', '阳城县', '3');
INSERT INTO `region` VALUES ('140524', '', '', '陵川县', '3');
INSERT INTO `region` VALUES ('140525', '', '', '泽州县', '3');
INSERT INTO `region` VALUES ('140581', '', '', '高平市', '3');
INSERT INTO `region` VALUES ('140600', '', '朔州市', '', '2');
INSERT INTO `region` VALUES ('140601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140602', '', '', '朔城区', '3');
INSERT INTO `region` VALUES ('140603', '', '', '平鲁区', '3');
INSERT INTO `region` VALUES ('140621', '', '', '山阴县', '3');
INSERT INTO `region` VALUES ('140622', '', '', '应县', '3');
INSERT INTO `region` VALUES ('140623', '', '', '右玉县', '3');
INSERT INTO `region` VALUES ('140624', '', '', '怀仁县', '3');
INSERT INTO `region` VALUES ('140700', '', '晋中市', '', '2');
INSERT INTO `region` VALUES ('140701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140702', '', '', '榆次区', '3');
INSERT INTO `region` VALUES ('140721', '', '', '榆社县', '3');
INSERT INTO `region` VALUES ('140722', '', '', '左权县', '3');
INSERT INTO `region` VALUES ('140723', '', '', '和顺县', '3');
INSERT INTO `region` VALUES ('140724', '', '', '昔阳县', '3');
INSERT INTO `region` VALUES ('140725', '', '', '寿阳县', '3');
INSERT INTO `region` VALUES ('140726', '', '', '太谷县', '3');
INSERT INTO `region` VALUES ('140727', '', '', '祁县', '3');
INSERT INTO `region` VALUES ('140728', '', '', '平遥县', '3');
INSERT INTO `region` VALUES ('140729', '', '', '灵石县', '3');
INSERT INTO `region` VALUES ('140781', '', '', '介休市', '3');
INSERT INTO `region` VALUES ('140800', '', '运城市', '', '2');
INSERT INTO `region` VALUES ('140801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140802', '', '', '盐湖区', '3');
INSERT INTO `region` VALUES ('140821', '', '', '临猗县', '3');
INSERT INTO `region` VALUES ('140822', '', '', '万荣县', '3');
INSERT INTO `region` VALUES ('140823', '', '', '闻喜县', '3');
INSERT INTO `region` VALUES ('140824', '', '', '稷山县', '3');
INSERT INTO `region` VALUES ('140825', '', '', '新绛县', '3');
INSERT INTO `region` VALUES ('140826', '', '', '绛县', '3');
INSERT INTO `region` VALUES ('140827', '', '', '垣曲县', '3');
INSERT INTO `region` VALUES ('140828', '', '', '夏县', '3');
INSERT INTO `region` VALUES ('140829', '', '', '平陆县', '3');
INSERT INTO `region` VALUES ('140830', '', '', '芮城县', '3');
INSERT INTO `region` VALUES ('140881', '', '', '永济市', '3');
INSERT INTO `region` VALUES ('140882', '', '', '河津市', '3');
INSERT INTO `region` VALUES ('140900', '', '忻州市', '', '2');
INSERT INTO `region` VALUES ('140901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('140902', '', '', '忻府区', '3');
INSERT INTO `region` VALUES ('140921', '', '', '定襄县', '3');
INSERT INTO `region` VALUES ('140922', '', '', '五台县', '3');
INSERT INTO `region` VALUES ('140923', '', '', '代县', '3');
INSERT INTO `region` VALUES ('140924', '', '', '繁峙县', '3');
INSERT INTO `region` VALUES ('140925', '', '', '宁武县', '3');
INSERT INTO `region` VALUES ('140926', '', '', '静乐县', '3');
INSERT INTO `region` VALUES ('140927', '', '', '神池县', '3');
INSERT INTO `region` VALUES ('140928', '', '', '五寨县', '3');
INSERT INTO `region` VALUES ('140929', '', '', '岢岚县', '3');
INSERT INTO `region` VALUES ('140930', '', '', '河曲县', '3');
INSERT INTO `region` VALUES ('140931', '', '', '保德县', '3');
INSERT INTO `region` VALUES ('140932', '', '', '偏关县', '3');
INSERT INTO `region` VALUES ('140981', '', '', '原平市', '3');
INSERT INTO `region` VALUES ('141000', '', '临汾市', '', '2');
INSERT INTO `region` VALUES ('141001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('141002', '', '', '尧都区', '3');
INSERT INTO `region` VALUES ('141021', '', '', '曲沃县', '3');
INSERT INTO `region` VALUES ('141022', '', '', '翼城县', '3');
INSERT INTO `region` VALUES ('141023', '', '', '襄汾县', '3');
INSERT INTO `region` VALUES ('141024', '', '', '洪洞县', '3');
INSERT INTO `region` VALUES ('141025', '', '', '古县', '3');
INSERT INTO `region` VALUES ('141026', '', '', '安泽县', '3');
INSERT INTO `region` VALUES ('141027', '', '', '浮山县', '3');
INSERT INTO `region` VALUES ('141028', '', '', '吉县', '3');
INSERT INTO `region` VALUES ('141029', '', '', '乡宁县', '3');
INSERT INTO `region` VALUES ('141030', '', '', '大宁县', '3');
INSERT INTO `region` VALUES ('141031', '', '', '隰县', '3');
INSERT INTO `region` VALUES ('141032', '', '', '永和县', '3');
INSERT INTO `region` VALUES ('141033', '', '', '蒲县', '3');
INSERT INTO `region` VALUES ('141034', '', '', '汾西县', '3');
INSERT INTO `region` VALUES ('141081', '', '', '侯马市', '3');
INSERT INTO `region` VALUES ('141082', '', '', '霍州市', '3');
INSERT INTO `region` VALUES ('141100', '', '吕梁市', '', '2');
INSERT INTO `region` VALUES ('141101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('141102', '', '', '离石区', '3');
INSERT INTO `region` VALUES ('141121', '', '', '文水县', '3');
INSERT INTO `region` VALUES ('141122', '', '', '交城县', '3');
INSERT INTO `region` VALUES ('141123', '', '', '兴县', '3');
INSERT INTO `region` VALUES ('141124', '', '', '临县', '3');
INSERT INTO `region` VALUES ('141125', '', '', '柳林县', '3');
INSERT INTO `region` VALUES ('141126', '', '', '石楼县', '3');
INSERT INTO `region` VALUES ('141127', '', '', '岚县', '3');
INSERT INTO `region` VALUES ('141128', '', '', '方山县', '3');
INSERT INTO `region` VALUES ('141129', '', '', '中阳县', '3');
INSERT INTO `region` VALUES ('141130', '', '', '交口县', '3');
INSERT INTO `region` VALUES ('141181', '', '', '孝义市', '3');
INSERT INTO `region` VALUES ('141182', '', '', '汾阳市', '3');
INSERT INTO `region` VALUES ('150000', '内蒙古自治区', '', '', '1');
INSERT INTO `region` VALUES ('150100', '', '呼和浩特市', '', '2');
INSERT INTO `region` VALUES ('150101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150102', '', '', '新城区', '3');
INSERT INTO `region` VALUES ('150103', '', '', '回民区', '3');
INSERT INTO `region` VALUES ('150104', '', '', '玉泉区', '3');
INSERT INTO `region` VALUES ('150105', '', '', '赛罕区', '3');
INSERT INTO `region` VALUES ('150121', '', '', '土默特左旗', '3');
INSERT INTO `region` VALUES ('150122', '', '', '托克托县', '3');
INSERT INTO `region` VALUES ('150123', '', '', '和林格尔县', '3');
INSERT INTO `region` VALUES ('150124', '', '', '清水河县', '3');
INSERT INTO `region` VALUES ('150125', '', '', '武川县', '3');
INSERT INTO `region` VALUES ('150200', '', '包头市', '', '2');
INSERT INTO `region` VALUES ('150201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150202', '', '', '东河区', '3');
INSERT INTO `region` VALUES ('150203', '', '', '昆都仑区', '3');
INSERT INTO `region` VALUES ('150204', '', '', '青山区', '3');
INSERT INTO `region` VALUES ('150205', '', '', '石拐区', '3');
INSERT INTO `region` VALUES ('150206', '', '', '白云鄂博矿区', '3');
INSERT INTO `region` VALUES ('150207', '', '', '九原区', '3');
INSERT INTO `region` VALUES ('150221', '', '', '土默特右旗', '3');
INSERT INTO `region` VALUES ('150222', '', '', '固阳县', '3');
INSERT INTO `region` VALUES ('150223', '', '', '达尔罕茂明安联合旗', '3');
INSERT INTO `region` VALUES ('150300', '', '乌海市', '', '2');
INSERT INTO `region` VALUES ('150301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150302', '', '', '海勃湾区', '3');
INSERT INTO `region` VALUES ('150303', '', '', '海南区', '3');
INSERT INTO `region` VALUES ('150304', '', '', '乌达区', '3');
INSERT INTO `region` VALUES ('150400', '', '赤峰市', '', '2');
INSERT INTO `region` VALUES ('150401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150402', '', '', '红山区', '3');
INSERT INTO `region` VALUES ('150403', '', '', '元宝山区', '3');
INSERT INTO `region` VALUES ('150404', '', '', '松山区', '3');
INSERT INTO `region` VALUES ('150421', '', '', '阿鲁科尔沁旗', '3');
INSERT INTO `region` VALUES ('150422', '', '', '巴林左旗', '3');
INSERT INTO `region` VALUES ('150423', '', '', '巴林右旗', '3');
INSERT INTO `region` VALUES ('150424', '', '', '林西县', '3');
INSERT INTO `region` VALUES ('150425', '', '', '克什克腾旗', '3');
INSERT INTO `region` VALUES ('150426', '', '', '翁牛特旗', '3');
INSERT INTO `region` VALUES ('150428', '', '', '喀喇沁旗', '3');
INSERT INTO `region` VALUES ('150429', '', '', '宁城县', '3');
INSERT INTO `region` VALUES ('150430', '', '', '敖汉旗', '3');
INSERT INTO `region` VALUES ('150500', '', '通辽市', '', '2');
INSERT INTO `region` VALUES ('150501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150502', '', '', '科尔沁区', '3');
INSERT INTO `region` VALUES ('150521', '', '', '科尔沁左翼中旗', '3');
INSERT INTO `region` VALUES ('150522', '', '', '科尔沁左翼后旗', '3');
INSERT INTO `region` VALUES ('150523', '', '', '开鲁县', '3');
INSERT INTO `region` VALUES ('150524', '', '', '库伦旗', '3');
INSERT INTO `region` VALUES ('150525', '', '', '奈曼旗', '3');
INSERT INTO `region` VALUES ('150526', '', '', '扎鲁特旗', '3');
INSERT INTO `region` VALUES ('150581', '', '', '霍林郭勒市', '3');
INSERT INTO `region` VALUES ('150600', '', '鄂尔多斯市', '', '2');
INSERT INTO `region` VALUES ('150601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150602', '', '', '东胜区', '3');
INSERT INTO `region` VALUES ('150621', '', '', '达拉特旗', '3');
INSERT INTO `region` VALUES ('150622', '', '', '准格尔旗', '3');
INSERT INTO `region` VALUES ('150623', '', '', '鄂托克前旗', '3');
INSERT INTO `region` VALUES ('150624', '', '', '鄂托克旗', '3');
INSERT INTO `region` VALUES ('150625', '', '', '杭锦旗', '3');
INSERT INTO `region` VALUES ('150626', '', '', '乌审旗', '3');
INSERT INTO `region` VALUES ('150627', '', '', '伊金霍洛旗', '3');
INSERT INTO `region` VALUES ('150700', '', '呼伦贝尔市', '', '2');
INSERT INTO `region` VALUES ('150701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150702', '', '', '海拉尔区', '3');
INSERT INTO `region` VALUES ('150703', '', '', '扎赉诺尔区', '3');
INSERT INTO `region` VALUES ('150721', '', '', '阿荣旗', '3');
INSERT INTO `region` VALUES ('150722', '', '', '莫力达瓦达斡尔族自治旗', '3');
INSERT INTO `region` VALUES ('150723', '', '', '鄂伦春自治旗', '3');
INSERT INTO `region` VALUES ('150724', '', '', '鄂温克族自治旗', '3');
INSERT INTO `region` VALUES ('150725', '', '', '陈巴尔虎旗', '3');
INSERT INTO `region` VALUES ('150726', '', '', '新巴尔虎左旗', '3');
INSERT INTO `region` VALUES ('150727', '', '', '新巴尔虎右旗', '3');
INSERT INTO `region` VALUES ('150781', '', '', '满洲里市', '3');
INSERT INTO `region` VALUES ('150782', '', '', '牙克石市', '3');
INSERT INTO `region` VALUES ('150783', '', '', '扎兰屯市', '3');
INSERT INTO `region` VALUES ('150784', '', '', '额尔古纳市', '3');
INSERT INTO `region` VALUES ('150785', '', '', '根河市', '3');
INSERT INTO `region` VALUES ('150800', '', '巴彦淖尔市', '', '2');
INSERT INTO `region` VALUES ('150801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150802', '', '', '临河区', '3');
INSERT INTO `region` VALUES ('150821', '', '', '五原县', '3');
INSERT INTO `region` VALUES ('150822', '', '', '磴口县', '3');
INSERT INTO `region` VALUES ('150823', '', '', '乌拉特前旗', '3');
INSERT INTO `region` VALUES ('150824', '', '', '乌拉特中旗', '3');
INSERT INTO `region` VALUES ('150825', '', '', '乌拉特后旗', '3');
INSERT INTO `region` VALUES ('150826', '', '', '杭锦后旗', '3');
INSERT INTO `region` VALUES ('150900', '', '乌兰察布市', '', '2');
INSERT INTO `region` VALUES ('150901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('150902', '', '', '集宁区', '3');
INSERT INTO `region` VALUES ('150921', '', '', '卓资县', '3');
INSERT INTO `region` VALUES ('150922', '', '', '化德县', '3');
INSERT INTO `region` VALUES ('150923', '', '', '商都县', '3');
INSERT INTO `region` VALUES ('150924', '', '', '兴和县', '3');
INSERT INTO `region` VALUES ('150925', '', '', '凉城县', '3');
INSERT INTO `region` VALUES ('150926', '', '', '察哈尔右翼前旗', '3');
INSERT INTO `region` VALUES ('150927', '', '', '察哈尔右翼中旗', '3');
INSERT INTO `region` VALUES ('150928', '', '', '察哈尔右翼后旗', '3');
INSERT INTO `region` VALUES ('150929', '', '', '四子王旗', '3');
INSERT INTO `region` VALUES ('150981', '', '', '丰镇市', '3');
INSERT INTO `region` VALUES ('152200', '', '兴安盟', '', '2');
INSERT INTO `region` VALUES ('152201', '', '', '乌兰浩特市', '3');
INSERT INTO `region` VALUES ('152202', '', '', '阿尔山市', '3');
INSERT INTO `region` VALUES ('152221', '', '', '科尔沁右翼前旗', '3');
INSERT INTO `region` VALUES ('152222', '', '', '科尔沁右翼中旗', '3');
INSERT INTO `region` VALUES ('152223', '', '', '扎赉特旗', '3');
INSERT INTO `region` VALUES ('152224', '', '', '突泉县', '3');
INSERT INTO `region` VALUES ('152500', '', '锡林郭勒盟', '', '2');
INSERT INTO `region` VALUES ('152501', '', '', '二连浩特市', '3');
INSERT INTO `region` VALUES ('152502', '', '', '锡林浩特市', '3');
INSERT INTO `region` VALUES ('152522', '', '', '阿巴嘎旗', '3');
INSERT INTO `region` VALUES ('152523', '', '', '苏尼特左旗', '3');
INSERT INTO `region` VALUES ('152524', '', '', '苏尼特右旗', '3');
INSERT INTO `region` VALUES ('152525', '', '', '东乌珠穆沁旗', '3');
INSERT INTO `region` VALUES ('152526', '', '', '西乌珠穆沁旗', '3');
INSERT INTO `region` VALUES ('152527', '', '', '太仆寺旗', '3');
INSERT INTO `region` VALUES ('152528', '', '', '镶黄旗', '3');
INSERT INTO `region` VALUES ('152529', '', '', '正镶白旗', '3');
INSERT INTO `region` VALUES ('152530', '', '', '正蓝旗', '3');
INSERT INTO `region` VALUES ('152531', '', '', '多伦县', '3');
INSERT INTO `region` VALUES ('152900', '', '阿拉善盟', '', '2');
INSERT INTO `region` VALUES ('152921', '', '', '阿拉善左旗', '3');
INSERT INTO `region` VALUES ('152922', '', '', '阿拉善右旗', '3');
INSERT INTO `region` VALUES ('152923', '', '', '额济纳旗', '3');
INSERT INTO `region` VALUES ('210000', '辽宁省', '', '', '1');
INSERT INTO `region` VALUES ('210100', '', '沈阳市', '', '2');
INSERT INTO `region` VALUES ('210101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210102', '', '', '和平区', '3');
INSERT INTO `region` VALUES ('210103', '', '', '沈河区', '3');
INSERT INTO `region` VALUES ('210104', '', '', '大东区', '3');
INSERT INTO `region` VALUES ('210105', '', '', '皇姑区', '3');
INSERT INTO `region` VALUES ('210106', '', '', '铁西区', '3');
INSERT INTO `region` VALUES ('210111', '', '', '苏家屯区', '3');
INSERT INTO `region` VALUES ('210112', '', '', '东陵区', '3');
INSERT INTO `region` VALUES ('210113', '', '', '沈北新区', '3');
INSERT INTO `region` VALUES ('210114', '', '', '于洪区', '3');
INSERT INTO `region` VALUES ('210122', '', '', '辽中县', '3');
INSERT INTO `region` VALUES ('210123', '', '', '康平县', '3');
INSERT INTO `region` VALUES ('210124', '', '', '法库县', '3');
INSERT INTO `region` VALUES ('210181', '', '', '新民市', '3');
INSERT INTO `region` VALUES ('210200', '', '大连市', '', '2');
INSERT INTO `region` VALUES ('210201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210202', '', '', '中山区', '3');
INSERT INTO `region` VALUES ('210203', '', '', '西岗区', '3');
INSERT INTO `region` VALUES ('210204', '', '', '沙河口区', '3');
INSERT INTO `region` VALUES ('210211', '', '', '甘井子区', '3');
INSERT INTO `region` VALUES ('210212', '', '', '旅顺口区', '3');
INSERT INTO `region` VALUES ('210213', '', '', '金州区', '3');
INSERT INTO `region` VALUES ('210224', '', '', '长海县', '3');
INSERT INTO `region` VALUES ('210281', '', '', '瓦房店市', '3');
INSERT INTO `region` VALUES ('210282', '', '', '普兰店市', '3');
INSERT INTO `region` VALUES ('210283', '', '', '庄河市', '3');
INSERT INTO `region` VALUES ('210300', '', '鞍山市', '', '2');
INSERT INTO `region` VALUES ('210301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210302', '', '', '铁东区', '3');
INSERT INTO `region` VALUES ('210303', '', '', '铁西区', '3');
INSERT INTO `region` VALUES ('210304', '', '', '立山区', '3');
INSERT INTO `region` VALUES ('210311', '', '', '千山区', '3');
INSERT INTO `region` VALUES ('210321', '', '', '台安县', '3');
INSERT INTO `region` VALUES ('210323', '', '', '岫岩满族自治县', '3');
INSERT INTO `region` VALUES ('210381', '', '', '海城市', '3');
INSERT INTO `region` VALUES ('210400', '', '抚顺市', '', '2');
INSERT INTO `region` VALUES ('210401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210402', '', '', '新抚区', '3');
INSERT INTO `region` VALUES ('210403', '', '', '东洲区', '3');
INSERT INTO `region` VALUES ('210404', '', '', '望花区', '3');
INSERT INTO `region` VALUES ('210411', '', '', '顺城区', '3');
INSERT INTO `region` VALUES ('210421', '', '', '抚顺县', '3');
INSERT INTO `region` VALUES ('210422', '', '', '新宾满族自治县', '3');
INSERT INTO `region` VALUES ('210423', '', '', '清原满族自治县', '3');
INSERT INTO `region` VALUES ('210500', '', '本溪市', '', '2');
INSERT INTO `region` VALUES ('210501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210502', '', '', '平山区', '3');
INSERT INTO `region` VALUES ('210503', '', '', '溪湖区', '3');
INSERT INTO `region` VALUES ('210504', '', '', '明山区', '3');
INSERT INTO `region` VALUES ('210505', '', '', '南芬区', '3');
INSERT INTO `region` VALUES ('210521', '', '', '本溪满族自治县', '3');
INSERT INTO `region` VALUES ('210522', '', '', '桓仁满族自治县', '3');
INSERT INTO `region` VALUES ('210600', '', '丹东市', '', '2');
INSERT INTO `region` VALUES ('210601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210602', '', '', '元宝区', '3');
INSERT INTO `region` VALUES ('210603', '', '', '振兴区', '3');
INSERT INTO `region` VALUES ('210604', '', '', '振安区', '3');
INSERT INTO `region` VALUES ('210624', '', '', '宽甸满族自治县', '3');
INSERT INTO `region` VALUES ('210681', '', '', '东港市', '3');
INSERT INTO `region` VALUES ('210682', '', '', '凤城市', '3');
INSERT INTO `region` VALUES ('210700', '', '锦州市', '', '2');
INSERT INTO `region` VALUES ('210701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210702', '', '', '古塔区', '3');
INSERT INTO `region` VALUES ('210703', '', '', '凌河区', '3');
INSERT INTO `region` VALUES ('210711', '', '', '太和区', '3');
INSERT INTO `region` VALUES ('210726', '', '', '黑山县', '3');
INSERT INTO `region` VALUES ('210727', '', '', '义县', '3');
INSERT INTO `region` VALUES ('210781', '', '', '凌海市', '3');
INSERT INTO `region` VALUES ('210782', '', '', '北镇市', '3');
INSERT INTO `region` VALUES ('210800', '', '营口市', '', '2');
INSERT INTO `region` VALUES ('210801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210802', '', '', '站前区', '3');
INSERT INTO `region` VALUES ('210803', '', '', '西市区', '3');
INSERT INTO `region` VALUES ('210804', '', '', '鲅鱼圈区', '3');
INSERT INTO `region` VALUES ('210811', '', '', '老边区', '3');
INSERT INTO `region` VALUES ('210881', '', '', '盖州市', '3');
INSERT INTO `region` VALUES ('210882', '', '', '大石桥市', '3');
INSERT INTO `region` VALUES ('210900', '', '阜新市', '', '2');
INSERT INTO `region` VALUES ('210901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('210902', '', '', '海州区', '3');
INSERT INTO `region` VALUES ('210903', '', '', '新邱区', '3');
INSERT INTO `region` VALUES ('210904', '', '', '太平区', '3');
INSERT INTO `region` VALUES ('210905', '', '', '清河门区', '3');
INSERT INTO `region` VALUES ('210911', '', '', '细河区', '3');
INSERT INTO `region` VALUES ('210921', '', '', '阜新蒙古族自治县', '3');
INSERT INTO `region` VALUES ('210922', '', '', '彰武县', '3');
INSERT INTO `region` VALUES ('211000', '', '辽阳市', '', '2');
INSERT INTO `region` VALUES ('211001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('211002', '', '', '白塔区', '3');
INSERT INTO `region` VALUES ('211003', '', '', '文圣区', '3');
INSERT INTO `region` VALUES ('211004', '', '', '宏伟区', '3');
INSERT INTO `region` VALUES ('211005', '', '', '弓长岭区', '3');
INSERT INTO `region` VALUES ('211011', '', '', '太子河区', '3');
INSERT INTO `region` VALUES ('211021', '', '', '辽阳县', '3');
INSERT INTO `region` VALUES ('211081', '', '', '灯塔市', '3');
INSERT INTO `region` VALUES ('211100', '', '盘锦市', '', '2');
INSERT INTO `region` VALUES ('211101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('211102', '', '', '双台子区', '3');
INSERT INTO `region` VALUES ('211103', '', '', '兴隆台区', '3');
INSERT INTO `region` VALUES ('211121', '', '', '大洼县', '3');
INSERT INTO `region` VALUES ('211122', '', '', '盘山县', '3');
INSERT INTO `region` VALUES ('211200', '', '铁岭市', '', '2');
INSERT INTO `region` VALUES ('211201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('211202', '', '', '银州区', '3');
INSERT INTO `region` VALUES ('211204', '', '', '清河区', '3');
INSERT INTO `region` VALUES ('211221', '', '', '铁岭县', '3');
INSERT INTO `region` VALUES ('211223', '', '', '西丰县', '3');
INSERT INTO `region` VALUES ('211224', '', '', '昌图县', '3');
INSERT INTO `region` VALUES ('211281', '', '', '调兵山市', '3');
INSERT INTO `region` VALUES ('211282', '', '', '开原市', '3');
INSERT INTO `region` VALUES ('211300', '', '朝阳市', '', '2');
INSERT INTO `region` VALUES ('211301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('211302', '', '', '双塔区', '3');
INSERT INTO `region` VALUES ('211303', '', '', '龙城区', '3');
INSERT INTO `region` VALUES ('211321', '', '', '朝阳县', '3');
INSERT INTO `region` VALUES ('211322', '', '', '建平县', '3');
INSERT INTO `region` VALUES ('211324', '', '', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `region` VALUES ('211381', '', '', '北票市', '3');
INSERT INTO `region` VALUES ('211382', '', '', '凌源市', '3');
INSERT INTO `region` VALUES ('211400', '', '葫芦岛市', '', '2');
INSERT INTO `region` VALUES ('211401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('211402', '', '', '连山区', '3');
INSERT INTO `region` VALUES ('211403', '', '', '龙港区', '3');
INSERT INTO `region` VALUES ('211404', '', '', '南票区', '3');
INSERT INTO `region` VALUES ('211421', '', '', '绥中县', '3');
INSERT INTO `region` VALUES ('211422', '', '', '建昌县', '3');
INSERT INTO `region` VALUES ('211481', '', '', '兴城市', '3');
INSERT INTO `region` VALUES ('220000', '吉林省', '', '', '1');
INSERT INTO `region` VALUES ('220100', '', '长春市', '', '2');
INSERT INTO `region` VALUES ('220101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220102', '', '', '南关区', '3');
INSERT INTO `region` VALUES ('220103', '', '', '宽城区', '3');
INSERT INTO `region` VALUES ('220104', '', '', '朝阳区', '3');
INSERT INTO `region` VALUES ('220105', '', '', '二道区', '3');
INSERT INTO `region` VALUES ('220106', '', '', '绿园区', '3');
INSERT INTO `region` VALUES ('220112', '', '', '双阳区', '3');
INSERT INTO `region` VALUES ('220122', '', '', '农安县', '3');
INSERT INTO `region` VALUES ('220181', '', '', '九台市', '3');
INSERT INTO `region` VALUES ('220182', '', '', '榆树市', '3');
INSERT INTO `region` VALUES ('220183', '', '', '德惠市', '3');
INSERT INTO `region` VALUES ('220200', '', '吉林市', '', '2');
INSERT INTO `region` VALUES ('220201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220202', '', '', '昌邑区', '3');
INSERT INTO `region` VALUES ('220203', '', '', '龙潭区', '3');
INSERT INTO `region` VALUES ('220204', '吉林省', '吉林市', '船营区', '3');
INSERT INTO `region` VALUES ('220211', '', '', '丰满区', '3');
INSERT INTO `region` VALUES ('220221', '', '', '永吉县', '3');
INSERT INTO `region` VALUES ('220281', '', '', '蛟河市', '3');
INSERT INTO `region` VALUES ('220282', '', '', '桦甸市', '3');
INSERT INTO `region` VALUES ('220283', '', '', '舒兰市', '3');
INSERT INTO `region` VALUES ('220284', '', '', '磐石市', '3');
INSERT INTO `region` VALUES ('220300', '', '四平市', '', '2');
INSERT INTO `region` VALUES ('220301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220302', '', '', '铁西区', '3');
INSERT INTO `region` VALUES ('220303', '', '', '铁东区', '3');
INSERT INTO `region` VALUES ('220322', '', '', '梨树县', '3');
INSERT INTO `region` VALUES ('220323', '', '', '伊通满族自治县', '3');
INSERT INTO `region` VALUES ('220381', '', '', '公主岭市', '3');
INSERT INTO `region` VALUES ('220382', '', '', '双辽市', '3');
INSERT INTO `region` VALUES ('220400', '', '辽源市', '', '2');
INSERT INTO `region` VALUES ('220401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220402', '', '', '龙山区', '3');
INSERT INTO `region` VALUES ('220403', '', '', '西安区', '3');
INSERT INTO `region` VALUES ('220421', '', '', '东丰县', '3');
INSERT INTO `region` VALUES ('220422', '', '', '东辽县', '3');
INSERT INTO `region` VALUES ('220500', '', '通化市', '', '2');
INSERT INTO `region` VALUES ('220501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220502', '', '', '东昌区', '3');
INSERT INTO `region` VALUES ('220503', '', '', '二道江区', '3');
INSERT INTO `region` VALUES ('220521', '', '', '通化县', '3');
INSERT INTO `region` VALUES ('220523', '', '', '辉南县', '3');
INSERT INTO `region` VALUES ('220524', '', '', '柳河县', '3');
INSERT INTO `region` VALUES ('220581', '', '', '梅河口市', '3');
INSERT INTO `region` VALUES ('220582', '', '', '集安市', '3');
INSERT INTO `region` VALUES ('220600', '', '白山市', '', '2');
INSERT INTO `region` VALUES ('220601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220602', '', '', '浑江区', '3');
INSERT INTO `region` VALUES ('220605', '', '', '江源区', '3');
INSERT INTO `region` VALUES ('220621', '', '', '抚松县', '3');
INSERT INTO `region` VALUES ('220622', '', '', '靖宇县', '3');
INSERT INTO `region` VALUES ('220623', '', '', '长白朝鲜族自治县', '3');
INSERT INTO `region` VALUES ('220681', '', '', '临江市', '3');
INSERT INTO `region` VALUES ('220700', '', '松原市', '', '2');
INSERT INTO `region` VALUES ('220701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220702', '', '', '宁江区', '3');
INSERT INTO `region` VALUES ('220721', '', '', '前郭尔罗斯蒙古族自治县', '3');
INSERT INTO `region` VALUES ('220722', '', '', '长岭县', '3');
INSERT INTO `region` VALUES ('220723', '', '', '乾安县', '3');
INSERT INTO `region` VALUES ('220781', '', '', '扶余市', '3');
INSERT INTO `region` VALUES ('220800', '', '白城市', '', '2');
INSERT INTO `region` VALUES ('220801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('220802', '', '', '洮北区', '3');
INSERT INTO `region` VALUES ('220821', '', '', '镇赉县', '3');
INSERT INTO `region` VALUES ('220822', '', '', '通榆县', '3');
INSERT INTO `region` VALUES ('220881', '', '', '洮南市', '3');
INSERT INTO `region` VALUES ('220882', '', '', '大安市', '3');
INSERT INTO `region` VALUES ('222400', '', '延边朝鲜族自治州', '', '2');
INSERT INTO `region` VALUES ('222401', '', '', '延吉市', '3');
INSERT INTO `region` VALUES ('222402', '', '', '图们市', '3');
INSERT INTO `region` VALUES ('222403', '', '', '敦化市', '3');
INSERT INTO `region` VALUES ('222404', '', '', '珲春市', '3');
INSERT INTO `region` VALUES ('222405', '', '', '龙井市', '3');
INSERT INTO `region` VALUES ('222406', '', '', '和龙市', '3');
INSERT INTO `region` VALUES ('222424', '', '', '汪清县', '3');
INSERT INTO `region` VALUES ('222426', '', '', '安图县', '3');
INSERT INTO `region` VALUES ('230000', '黑龙江省', '', '', '1');
INSERT INTO `region` VALUES ('230100', '', '哈尔滨市', '', '2');
INSERT INTO `region` VALUES ('230101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230102', '', '', '道里区', '3');
INSERT INTO `region` VALUES ('230103', '', '', '南岗区', '3');
INSERT INTO `region` VALUES ('230104', '', '', '道外区', '3');
INSERT INTO `region` VALUES ('230108', '', '', '平房区', '3');
INSERT INTO `region` VALUES ('230109', '', '', '松北区', '3');
INSERT INTO `region` VALUES ('230110', '', '', '香坊区', '3');
INSERT INTO `region` VALUES ('230111', '', '', '呼兰区', '3');
INSERT INTO `region` VALUES ('230112', '', '', '阿城区', '3');
INSERT INTO `region` VALUES ('230123', '', '', '依兰县', '3');
INSERT INTO `region` VALUES ('230124', '', '', '方正县', '3');
INSERT INTO `region` VALUES ('230125', '', '', '宾县', '3');
INSERT INTO `region` VALUES ('230126', '', '', '巴彦县', '3');
INSERT INTO `region` VALUES ('230127', '', '', '木兰县', '3');
INSERT INTO `region` VALUES ('230128', '', '', '通河县', '3');
INSERT INTO `region` VALUES ('230129', '', '', '延寿县', '3');
INSERT INTO `region` VALUES ('230182', '', '', '双城市', '3');
INSERT INTO `region` VALUES ('230183', '', '', '尚志市', '3');
INSERT INTO `region` VALUES ('230184', '', '', '五常市', '3');
INSERT INTO `region` VALUES ('230200', '', '齐齐哈尔市', '', '2');
INSERT INTO `region` VALUES ('230201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230202', '', '', '龙沙区', '3');
INSERT INTO `region` VALUES ('230203', '', '', '建华区', '3');
INSERT INTO `region` VALUES ('230204', '', '', '铁锋区', '3');
INSERT INTO `region` VALUES ('230205', '', '', '昂昂溪区', '3');
INSERT INTO `region` VALUES ('230206', '', '', '富拉尔基区', '3');
INSERT INTO `region` VALUES ('230207', '', '', '碾子山区', '3');
INSERT INTO `region` VALUES ('230208', '', '', '梅里斯达斡尔族区', '3');
INSERT INTO `region` VALUES ('230221', '', '', '龙江县', '3');
INSERT INTO `region` VALUES ('230223', '', '', '依安县', '3');
INSERT INTO `region` VALUES ('230224', '', '', '泰来县', '3');
INSERT INTO `region` VALUES ('230225', '', '', '甘南县', '3');
INSERT INTO `region` VALUES ('230227', '', '', '富裕县', '3');
INSERT INTO `region` VALUES ('230229', '', '', '克山县', '3');
INSERT INTO `region` VALUES ('230230', '', '', '克东县', '3');
INSERT INTO `region` VALUES ('230231', '', '', '拜泉县', '3');
INSERT INTO `region` VALUES ('230281', '', '', '讷河市', '3');
INSERT INTO `region` VALUES ('230300', '', '鸡西市', '', '2');
INSERT INTO `region` VALUES ('230301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230302', '', '', '鸡冠区', '3');
INSERT INTO `region` VALUES ('230303', '', '', '恒山区', '3');
INSERT INTO `region` VALUES ('230304', '', '', '滴道区', '3');
INSERT INTO `region` VALUES ('230305', '', '', '梨树区', '3');
INSERT INTO `region` VALUES ('230306', '', '', '城子河区', '3');
INSERT INTO `region` VALUES ('230307', '', '', '麻山区', '3');
INSERT INTO `region` VALUES ('230321', '', '', '鸡东县', '3');
INSERT INTO `region` VALUES ('230381', '', '', '虎林市', '3');
INSERT INTO `region` VALUES ('230382', '', '', '密山市', '3');
INSERT INTO `region` VALUES ('230400', '', '鹤岗市', '', '2');
INSERT INTO `region` VALUES ('230401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230402', '', '', '向阳区', '3');
INSERT INTO `region` VALUES ('230403', '', '', '工农区', '3');
INSERT INTO `region` VALUES ('230404', '', '', '南山区', '3');
INSERT INTO `region` VALUES ('230405', '', '', '兴安区', '3');
INSERT INTO `region` VALUES ('230406', '', '', '东山区', '3');
INSERT INTO `region` VALUES ('230407', '', '', '兴山区', '3');
INSERT INTO `region` VALUES ('230421', '', '', '萝北县', '3');
INSERT INTO `region` VALUES ('230422', '', '', '绥滨县', '3');
INSERT INTO `region` VALUES ('230500', '', '双鸭山市', '', '2');
INSERT INTO `region` VALUES ('230501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230502', '', '', '尖山区', '3');
INSERT INTO `region` VALUES ('230503', '', '', '岭东区', '3');
INSERT INTO `region` VALUES ('230505', '', '', '四方台区', '3');
INSERT INTO `region` VALUES ('230506', '', '', '宝山区', '3');
INSERT INTO `region` VALUES ('230521', '', '', '集贤县', '3');
INSERT INTO `region` VALUES ('230522', '', '', '友谊县', '3');
INSERT INTO `region` VALUES ('230523', '', '', '宝清县', '3');
INSERT INTO `region` VALUES ('230524', '', '', '饶河县', '3');
INSERT INTO `region` VALUES ('230600', '', '大庆市', '', '2');
INSERT INTO `region` VALUES ('230601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230602', '', '', '萨尔图区', '3');
INSERT INTO `region` VALUES ('230603', '', '', '龙凤区', '3');
INSERT INTO `region` VALUES ('230604', '', '', '让胡路区', '3');
INSERT INTO `region` VALUES ('230605', '', '', '红岗区', '3');
INSERT INTO `region` VALUES ('230606', '', '', '大同区', '3');
INSERT INTO `region` VALUES ('230621', '', '', '肇州县', '3');
INSERT INTO `region` VALUES ('230622', '', '', '肇源县', '3');
INSERT INTO `region` VALUES ('230623', '', '', '林甸县', '3');
INSERT INTO `region` VALUES ('230624', '', '', '杜尔伯特蒙古族自治县', '3');
INSERT INTO `region` VALUES ('230700', '', '伊春市', '', '2');
INSERT INTO `region` VALUES ('230701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230702', '', '', '伊春区', '3');
INSERT INTO `region` VALUES ('230703', '', '', '南岔区', '3');
INSERT INTO `region` VALUES ('230704', '', '', '友好区', '3');
INSERT INTO `region` VALUES ('230705', '', '', '西林区', '3');
INSERT INTO `region` VALUES ('230706', '', '', '翠峦区', '3');
INSERT INTO `region` VALUES ('230707', '', '', '新青区', '3');
INSERT INTO `region` VALUES ('230708', '', '', '美溪区', '3');
INSERT INTO `region` VALUES ('230709', '', '', '金山屯区', '3');
INSERT INTO `region` VALUES ('230710', '', '', '五营区', '3');
INSERT INTO `region` VALUES ('230711', '', '', '乌马河区', '3');
INSERT INTO `region` VALUES ('230712', '', '', '汤旺河区', '3');
INSERT INTO `region` VALUES ('230713', '', '', '带岭区', '3');
INSERT INTO `region` VALUES ('230714', '', '', '乌伊岭区', '3');
INSERT INTO `region` VALUES ('230715', '', '', '红星区', '3');
INSERT INTO `region` VALUES ('230716', '', '', '上甘岭区', '3');
INSERT INTO `region` VALUES ('230722', '', '', '嘉荫县', '3');
INSERT INTO `region` VALUES ('230781', '', '', '铁力市', '3');
INSERT INTO `region` VALUES ('230800', '', '佳木斯市', '', '2');
INSERT INTO `region` VALUES ('230801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230803', '', '', '向阳区', '3');
INSERT INTO `region` VALUES ('230804', '', '', '前进区', '3');
INSERT INTO `region` VALUES ('230805', '', '', '东风区', '3');
INSERT INTO `region` VALUES ('230811', '', '', '郊区', '3');
INSERT INTO `region` VALUES ('230822', '', '', '桦南县', '3');
INSERT INTO `region` VALUES ('230826', '', '', '桦川县', '3');
INSERT INTO `region` VALUES ('230828', '', '', '汤原县', '3');
INSERT INTO `region` VALUES ('230833', '', '', '抚远县', '3');
INSERT INTO `region` VALUES ('230881', '', '', '同江市', '3');
INSERT INTO `region` VALUES ('230882', '', '', '富锦市', '3');
INSERT INTO `region` VALUES ('230900', '', '七台河市', '', '2');
INSERT INTO `region` VALUES ('230901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('230902', '', '', '新兴区', '3');
INSERT INTO `region` VALUES ('230903', '', '', '桃山区', '3');
INSERT INTO `region` VALUES ('230904', '', '', '茄子河区', '3');
INSERT INTO `region` VALUES ('230921', '', '', '勃利县', '3');
INSERT INTO `region` VALUES ('231000', '', '牡丹江市', '', '2');
INSERT INTO `region` VALUES ('231001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('231002', '', '', '东安区', '3');
INSERT INTO `region` VALUES ('231003', '', '', '阳明区', '3');
INSERT INTO `region` VALUES ('231004', '', '', '爱民区', '3');
INSERT INTO `region` VALUES ('231005', '', '', '西安区', '3');
INSERT INTO `region` VALUES ('231024', '', '', '东宁县', '3');
INSERT INTO `region` VALUES ('231025', '', '', '林口县', '3');
INSERT INTO `region` VALUES ('231081', '', '', '绥芬河市', '3');
INSERT INTO `region` VALUES ('231083', '', '', '海林市', '3');
INSERT INTO `region` VALUES ('231084', '', '', '宁安市', '3');
INSERT INTO `region` VALUES ('231085', '', '', '穆棱市', '3');
INSERT INTO `region` VALUES ('231100', '', '黑河市', '', '2');
INSERT INTO `region` VALUES ('231101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('231102', '', '', '爱辉区', '3');
INSERT INTO `region` VALUES ('231121', '', '', '嫩江县', '3');
INSERT INTO `region` VALUES ('231123', '', '', '逊克县', '3');
INSERT INTO `region` VALUES ('231124', '', '', '孙吴县', '3');
INSERT INTO `region` VALUES ('231181', '', '', '北安市', '3');
INSERT INTO `region` VALUES ('231182', '', '', '五大连池市', '3');
INSERT INTO `region` VALUES ('231200', '', '绥化市', '', '2');
INSERT INTO `region` VALUES ('231201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('231202', '', '', '北林区', '3');
INSERT INTO `region` VALUES ('231221', '', '', '望奎县', '3');
INSERT INTO `region` VALUES ('231222', '', '', '兰西县', '3');
INSERT INTO `region` VALUES ('231223', '', '', '青冈县', '3');
INSERT INTO `region` VALUES ('231224', '', '', '庆安县', '3');
INSERT INTO `region` VALUES ('231225', '', '', '明水县', '3');
INSERT INTO `region` VALUES ('231226', '', '', '绥棱县', '3');
INSERT INTO `region` VALUES ('231281', '', '', '安达市', '3');
INSERT INTO `region` VALUES ('231282', '', '', '肇东市', '3');
INSERT INTO `region` VALUES ('231283', '', '', '海伦市', '3');
INSERT INTO `region` VALUES ('232700', '', '大兴安岭地区', '', '2');
INSERT INTO `region` VALUES ('232721', '', '', '呼玛县', '3');
INSERT INTO `region` VALUES ('232722', '', '', '塔河县', '3');
INSERT INTO `region` VALUES ('232723', '', '', '漠河县', '3');
INSERT INTO `region` VALUES ('310000', '上海市', '', '', '1');
INSERT INTO `region` VALUES ('310100', '', '市辖区', '', '2');
INSERT INTO `region` VALUES ('310101', '', '', '黄浦区', '3');
INSERT INTO `region` VALUES ('310104', '', '', '徐汇区', '3');
INSERT INTO `region` VALUES ('310105', '', '', '长宁区', '3');
INSERT INTO `region` VALUES ('310106', '', '', '静安区', '3');
INSERT INTO `region` VALUES ('310107', '', '', '普陀区', '3');
INSERT INTO `region` VALUES ('310108', '', '', '闸北区', '3');
INSERT INTO `region` VALUES ('310109', '', '', '虹口区', '3');
INSERT INTO `region` VALUES ('310110', '', '', '杨浦区', '3');
INSERT INTO `region` VALUES ('310112', '', '', '闵行区', '3');
INSERT INTO `region` VALUES ('310113', '', '', '宝山区', '3');
INSERT INTO `region` VALUES ('310114', '', '', '嘉定区', '3');
INSERT INTO `region` VALUES ('310115', '', '', '浦东新区', '3');
INSERT INTO `region` VALUES ('310116', '', '', '金山区', '3');
INSERT INTO `region` VALUES ('310117', '', '', '松江区', '3');
INSERT INTO `region` VALUES ('310118', '', '', '青浦区', '3');
INSERT INTO `region` VALUES ('310120', '', '', '奉贤区', '3');
INSERT INTO `region` VALUES ('310200', '', '县', '', '2');
INSERT INTO `region` VALUES ('310230', '', '', '崇明县', '3');
INSERT INTO `region` VALUES ('320000', '江苏省', '', '', '1');
INSERT INTO `region` VALUES ('320100', '', '南京市', '', '2');
INSERT INTO `region` VALUES ('320101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320102', '', '', '玄武区', '3');
INSERT INTO `region` VALUES ('320104', '', '', '秦淮区', '3');
INSERT INTO `region` VALUES ('320105', '', '', '建邺区', '3');
INSERT INTO `region` VALUES ('320106', '', '', '鼓楼区', '3');
INSERT INTO `region` VALUES ('320111', '', '', '浦口区', '3');
INSERT INTO `region` VALUES ('320113', '', '', '栖霞区', '3');
INSERT INTO `region` VALUES ('320114', '', '', '雨花台区', '3');
INSERT INTO `region` VALUES ('320115', '', '', '江宁区', '3');
INSERT INTO `region` VALUES ('320116', '', '', '六合区', '3');
INSERT INTO `region` VALUES ('320117', '', '', '溧水区', '3');
INSERT INTO `region` VALUES ('320118', '', '', '高淳区', '3');
INSERT INTO `region` VALUES ('320200', '', '无锡市', '', '2');
INSERT INTO `region` VALUES ('320201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320202', '', '', '崇安区', '3');
INSERT INTO `region` VALUES ('320203', '', '', '南长区', '3');
INSERT INTO `region` VALUES ('320204', '', '', '北塘区', '3');
INSERT INTO `region` VALUES ('320205', '', '', '锡山区', '3');
INSERT INTO `region` VALUES ('320206', '', '', '惠山区', '3');
INSERT INTO `region` VALUES ('320211', '', '', '滨湖区', '3');
INSERT INTO `region` VALUES ('320281', '', '', '江阴市', '3');
INSERT INTO `region` VALUES ('320282', '', '', '宜兴市', '3');
INSERT INTO `region` VALUES ('320300', '', '徐州市', '', '2');
INSERT INTO `region` VALUES ('320301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320302', '', '', '鼓楼区', '3');
INSERT INTO `region` VALUES ('320303', '', '', '云龙区', '3');
INSERT INTO `region` VALUES ('320305', '', '', '贾汪区', '3');
INSERT INTO `region` VALUES ('320311', '', '', '泉山区', '3');
INSERT INTO `region` VALUES ('320312', '', '', '铜山区', '3');
INSERT INTO `region` VALUES ('320321', '', '', '丰县', '3');
INSERT INTO `region` VALUES ('320322', '', '', '沛县', '3');
INSERT INTO `region` VALUES ('320324', '', '', '睢宁县', '3');
INSERT INTO `region` VALUES ('320381', '', '', '新沂市', '3');
INSERT INTO `region` VALUES ('320382', '', '', '邳州市', '3');
INSERT INTO `region` VALUES ('320400', '', '常州市', '', '2');
INSERT INTO `region` VALUES ('320401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320402', '', '', '天宁区', '3');
INSERT INTO `region` VALUES ('320404', '', '', '钟楼区', '3');
INSERT INTO `region` VALUES ('320405', '', '', '戚墅堰区', '3');
INSERT INTO `region` VALUES ('320411', '', '', '新北区', '3');
INSERT INTO `region` VALUES ('320412', '', '', '武进区', '3');
INSERT INTO `region` VALUES ('320481', '', '', '溧阳市', '3');
INSERT INTO `region` VALUES ('320482', '', '', '金坛市', '3');
INSERT INTO `region` VALUES ('320500', '', '苏州市', '', '2');
INSERT INTO `region` VALUES ('320501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320505', '', '', '虎丘区', '3');
INSERT INTO `region` VALUES ('320506', '', '', '吴中区', '3');
INSERT INTO `region` VALUES ('320507', '', '', '相城区', '3');
INSERT INTO `region` VALUES ('320508', '', '', '姑苏区', '3');
INSERT INTO `region` VALUES ('320509', '', '', '吴江区', '3');
INSERT INTO `region` VALUES ('320581', '', '', '常熟市', '3');
INSERT INTO `region` VALUES ('320582', '', '', '张家港市', '3');
INSERT INTO `region` VALUES ('320583', '', '', '昆山市', '3');
INSERT INTO `region` VALUES ('320585', '', '', '太仓市', '3');
INSERT INTO `region` VALUES ('320600', '', '南通市', '', '2');
INSERT INTO `region` VALUES ('320601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320602', '', '', '崇川区', '3');
INSERT INTO `region` VALUES ('320611', '', '', '港闸区', '3');
INSERT INTO `region` VALUES ('320612', '', '', '通州区', '3');
INSERT INTO `region` VALUES ('320621', '', '', '海安县', '3');
INSERT INTO `region` VALUES ('320623', '', '', '如东县', '3');
INSERT INTO `region` VALUES ('320681', '', '', '启东市', '3');
INSERT INTO `region` VALUES ('320682', '', '', '如皋市', '3');
INSERT INTO `region` VALUES ('320684', '', '', '海门市', '3');
INSERT INTO `region` VALUES ('320700', '', '连云港市', '', '2');
INSERT INTO `region` VALUES ('320701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320703', '', '', '连云区', '3');
INSERT INTO `region` VALUES ('320705', '', '', '新浦区', '3');
INSERT INTO `region` VALUES ('320706', '江苏省', '连云港市', '海州区', '3');
INSERT INTO `region` VALUES ('320721', '', '', '赣榆县', '3');
INSERT INTO `region` VALUES ('320722', '', '', '东海县', '3');
INSERT INTO `region` VALUES ('320723', '', '', '灌云县', '3');
INSERT INTO `region` VALUES ('320724', '', '', '灌南县', '3');
INSERT INTO `region` VALUES ('320800', '', '淮安市', '', '2');
INSERT INTO `region` VALUES ('320801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320802', '', '', '清河区', '3');
INSERT INTO `region` VALUES ('320803', '', '', '淮安区', '3');
INSERT INTO `region` VALUES ('320804', '', '', '淮阴区', '3');
INSERT INTO `region` VALUES ('320811', '', '', '清浦区', '3');
INSERT INTO `region` VALUES ('320826', '', '', '涟水县', '3');
INSERT INTO `region` VALUES ('320829', '', '', '洪泽县', '3');
INSERT INTO `region` VALUES ('320830', '', '', '盱眙县', '3');
INSERT INTO `region` VALUES ('320831', '', '', '金湖县', '3');
INSERT INTO `region` VALUES ('320900', '', '盐城市', '', '2');
INSERT INTO `region` VALUES ('320901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('320902', '', '', '亭湖区', '3');
INSERT INTO `region` VALUES ('320903', '', '', '盐都区', '3');
INSERT INTO `region` VALUES ('320921', '', '', '响水县', '3');
INSERT INTO `region` VALUES ('320922', '', '', '滨海县', '3');
INSERT INTO `region` VALUES ('320923', '', '', '阜宁县', '3');
INSERT INTO `region` VALUES ('320924', '', '', '射阳县', '3');
INSERT INTO `region` VALUES ('320925', '', '', '建湖县', '3');
INSERT INTO `region` VALUES ('320981', '', '', '东台市', '3');
INSERT INTO `region` VALUES ('320982', '', '', '大丰市', '3');
INSERT INTO `region` VALUES ('321000', '', '扬州市', '', '2');
INSERT INTO `region` VALUES ('321001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('321002', '', '', '广陵区', '3');
INSERT INTO `region` VALUES ('321003', '', '', '邗江区', '3');
INSERT INTO `region` VALUES ('321012', '', '', '江都区', '3');
INSERT INTO `region` VALUES ('321023', '', '', '宝应县', '3');
INSERT INTO `region` VALUES ('321081', '', '', '仪征市', '3');
INSERT INTO `region` VALUES ('321084', '', '', '高邮市', '3');
INSERT INTO `region` VALUES ('321100', '', '镇江市', '', '2');
INSERT INTO `region` VALUES ('321101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('321102', '', '', '京口区', '3');
INSERT INTO `region` VALUES ('321111', '', '', '润州区', '3');
INSERT INTO `region` VALUES ('321112', '', '', '丹徒区', '3');
INSERT INTO `region` VALUES ('321181', '', '', '丹阳市', '3');
INSERT INTO `region` VALUES ('321182', '', '', '扬中市', '3');
INSERT INTO `region` VALUES ('321183', '', '', '句容市', '3');
INSERT INTO `region` VALUES ('321200', '', '泰州市', '', '2');
INSERT INTO `region` VALUES ('321201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('321202', '', '', '海陵区', '3');
INSERT INTO `region` VALUES ('321203', '', '', '高港区', '3');
INSERT INTO `region` VALUES ('321204', '', '', '姜堰区', '3');
INSERT INTO `region` VALUES ('321281', '', '', '兴化市', '3');
INSERT INTO `region` VALUES ('321282', '', '', '靖江市', '3');
INSERT INTO `region` VALUES ('321283', '', '', '泰兴市', '3');
INSERT INTO `region` VALUES ('321300', '', '宿迁市', '', '2');
INSERT INTO `region` VALUES ('321301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('321302', '', '', '宿城区', '3');
INSERT INTO `region` VALUES ('321311', '', '', '宿豫区', '3');
INSERT INTO `region` VALUES ('321322', '', '', '沭阳县', '3');
INSERT INTO `region` VALUES ('321323', '', '', '泗阳县', '3');
INSERT INTO `region` VALUES ('321324', '', '', '泗洪县', '3');
INSERT INTO `region` VALUES ('330000', '浙江省', '', '', '1');
INSERT INTO `region` VALUES ('330100', '', '杭州市', '', '2');
INSERT INTO `region` VALUES ('330101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330102', '', '', '上城区', '3');
INSERT INTO `region` VALUES ('330103', '', '', '下城区', '3');
INSERT INTO `region` VALUES ('330104', '', '', '江干区', '3');
INSERT INTO `region` VALUES ('330105', '', '', '拱墅区', '3');
INSERT INTO `region` VALUES ('330106', '', '', '西湖区', '3');
INSERT INTO `region` VALUES ('330108', '', '', '滨江区', '3');
INSERT INTO `region` VALUES ('330109', '', '', '萧山区', '3');
INSERT INTO `region` VALUES ('330110', '', '', '余杭区', '3');
INSERT INTO `region` VALUES ('330122', '', '', '桐庐县', '3');
INSERT INTO `region` VALUES ('330127', '', '', '淳安县', '3');
INSERT INTO `region` VALUES ('330182', '', '', '建德市', '3');
INSERT INTO `region` VALUES ('330183', '', '', '富阳市', '3');
INSERT INTO `region` VALUES ('330185', '', '', '临安市', '3');
INSERT INTO `region` VALUES ('330200', '', '宁波市', '', '2');
INSERT INTO `region` VALUES ('330201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330203', '', '', '海曙区', '3');
INSERT INTO `region` VALUES ('330204', '', '', '江东区', '3');
INSERT INTO `region` VALUES ('330205', '', '', '江北区', '3');
INSERT INTO `region` VALUES ('330206', '', '', '北仑区', '3');
INSERT INTO `region` VALUES ('330211', '', '', '镇海区', '3');
INSERT INTO `region` VALUES ('330212', '', '', '鄞州区', '3');
INSERT INTO `region` VALUES ('330225', '', '', '象山县', '3');
INSERT INTO `region` VALUES ('330226', '', '', '宁海县', '3');
INSERT INTO `region` VALUES ('330281', '', '', '余姚市', '3');
INSERT INTO `region` VALUES ('330282', '', '', '慈溪市', '3');
INSERT INTO `region` VALUES ('330283', '', '', '奉化市', '3');
INSERT INTO `region` VALUES ('330300', '', '温州市', '', '2');
INSERT INTO `region` VALUES ('330301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330302', '', '', '鹿城区', '3');
INSERT INTO `region` VALUES ('330303', '', '', '龙湾区', '3');
INSERT INTO `region` VALUES ('330304', '', '', '瓯海区', '3');
INSERT INTO `region` VALUES ('330322', '', '', '洞头县', '3');
INSERT INTO `region` VALUES ('330324', '', '', '永嘉县', '3');
INSERT INTO `region` VALUES ('330326', '', '', '平阳县', '3');
INSERT INTO `region` VALUES ('330327', '', '', '苍南县', '3');
INSERT INTO `region` VALUES ('330328', '', '', '文成县', '3');
INSERT INTO `region` VALUES ('330329', '', '', '泰顺县', '3');
INSERT INTO `region` VALUES ('330381', '', '', '瑞安市', '3');
INSERT INTO `region` VALUES ('330382', '', '', '乐清市', '3');
INSERT INTO `region` VALUES ('330400', '', '嘉兴市', '', '2');
INSERT INTO `region` VALUES ('330401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330402', '', '', '南湖区', '3');
INSERT INTO `region` VALUES ('330411', '', '', '秀洲区', '3');
INSERT INTO `region` VALUES ('330421', '', '', '嘉善县', '3');
INSERT INTO `region` VALUES ('330424', '', '', '海盐县', '3');
INSERT INTO `region` VALUES ('330481', '', '', '海宁市', '3');
INSERT INTO `region` VALUES ('330482', '', '', '平湖市', '3');
INSERT INTO `region` VALUES ('330483', '', '', '桐乡市', '3');
INSERT INTO `region` VALUES ('330500', '', '湖州市', '', '2');
INSERT INTO `region` VALUES ('330501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330502', '', '', '吴兴区', '3');
INSERT INTO `region` VALUES ('330503', '', '', '南浔区', '3');
INSERT INTO `region` VALUES ('330521', '', '', '德清县', '3');
INSERT INTO `region` VALUES ('330522', '', '', '长兴县', '3');
INSERT INTO `region` VALUES ('330523', '', '', '安吉县', '3');
INSERT INTO `region` VALUES ('330600', '', '绍兴市', '', '2');
INSERT INTO `region` VALUES ('330601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330602', '', '', '越城区', '3');
INSERT INTO `region` VALUES ('330621', '', '', '绍兴县', '3');
INSERT INTO `region` VALUES ('330624', '', '', '新昌县', '3');
INSERT INTO `region` VALUES ('330681', '', '', '诸暨市', '3');
INSERT INTO `region` VALUES ('330682', '', '', '上虞市', '3');
INSERT INTO `region` VALUES ('330683', '', '', '嵊州市', '3');
INSERT INTO `region` VALUES ('330700', '', '金华市', '', '2');
INSERT INTO `region` VALUES ('330701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330702', '', '', '婺城区', '3');
INSERT INTO `region` VALUES ('330703', '', '', '金东区', '3');
INSERT INTO `region` VALUES ('330723', '', '', '武义县', '3');
INSERT INTO `region` VALUES ('330726', '', '', '浦江县', '3');
INSERT INTO `region` VALUES ('330727', '', '', '磐安县', '3');
INSERT INTO `region` VALUES ('330781', '', '', '兰溪市', '3');
INSERT INTO `region` VALUES ('330782', '', '', '义乌市', '3');
INSERT INTO `region` VALUES ('330783', '', '', '东阳市', '3');
INSERT INTO `region` VALUES ('330784', '', '', '永康市', '3');
INSERT INTO `region` VALUES ('330800', '', '衢州市', '', '2');
INSERT INTO `region` VALUES ('330801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330802', '', '', '柯城区', '3');
INSERT INTO `region` VALUES ('330803', '', '', '衢江区', '3');
INSERT INTO `region` VALUES ('330822', '', '', '常山县', '3');
INSERT INTO `region` VALUES ('330824', '', '', '开化县', '3');
INSERT INTO `region` VALUES ('330825', '', '', '龙游县', '3');
INSERT INTO `region` VALUES ('330881', '', '', '江山市', '3');
INSERT INTO `region` VALUES ('330900', '', '舟山市', '', '2');
INSERT INTO `region` VALUES ('330901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('330902', '', '', '定海区', '3');
INSERT INTO `region` VALUES ('330903', '', '', '普陀区', '3');
INSERT INTO `region` VALUES ('330921', '', '', '岱山县', '3');
INSERT INTO `region` VALUES ('330922', '', '', '嵊泗县', '3');
INSERT INTO `region` VALUES ('331000', '', '台州市', '', '2');
INSERT INTO `region` VALUES ('331001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('331002', '', '', '椒江区', '3');
INSERT INTO `region` VALUES ('331003', '', '', '黄岩区', '3');
INSERT INTO `region` VALUES ('331004', '', '', '路桥区', '3');
INSERT INTO `region` VALUES ('331021', '', '', '玉环县', '3');
INSERT INTO `region` VALUES ('331022', '', '', '三门县', '3');
INSERT INTO `region` VALUES ('331023', '', '', '天台县', '3');
INSERT INTO `region` VALUES ('331024', '', '', '仙居县', '3');
INSERT INTO `region` VALUES ('331081', '', '', '温岭市', '3');
INSERT INTO `region` VALUES ('331082', '', '', '临海市', '3');
INSERT INTO `region` VALUES ('331100', '', '丽水市', '', '2');
INSERT INTO `region` VALUES ('331101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('331102', '', '', '莲都区', '3');
INSERT INTO `region` VALUES ('331121', '', '', '青田县', '3');
INSERT INTO `region` VALUES ('331122', '', '', '缙云县', '3');
INSERT INTO `region` VALUES ('331123', '', '', '遂昌县', '3');
INSERT INTO `region` VALUES ('331124', '', '', '松阳县', '3');
INSERT INTO `region` VALUES ('331125', '', '', '云和县', '3');
INSERT INTO `region` VALUES ('331126', '', '', '庆元县', '3');
INSERT INTO `region` VALUES ('331127', '', '', '景宁畲族自治县', '3');
INSERT INTO `region` VALUES ('331181', '', '', '龙泉市', '3');
INSERT INTO `region` VALUES ('340000', '安徽省', '', '', '1');
INSERT INTO `region` VALUES ('340100', '', '合肥市', '', '2');
INSERT INTO `region` VALUES ('340101', '安徽省', '合肥市', '市辖区', '3');
INSERT INTO `region` VALUES ('340102', '安徽省', '合肥市', '瑶海区', '3');
INSERT INTO `region` VALUES ('340103', '', '', '庐阳区', '3');
INSERT INTO `region` VALUES ('340104', '', '', '蜀山区', '3');
INSERT INTO `region` VALUES ('340111', '', '', '包河区', '3');
INSERT INTO `region` VALUES ('340121', '', '', '长丰县', '3');
INSERT INTO `region` VALUES ('340122', '', '', '肥东县', '3');
INSERT INTO `region` VALUES ('340123', '', '', '肥西县', '3');
INSERT INTO `region` VALUES ('340124', '', '', '庐江县', '3');
INSERT INTO `region` VALUES ('340181', '', '', '巢湖市', '3');
INSERT INTO `region` VALUES ('340200', '', '芜湖市', '', '2');
INSERT INTO `region` VALUES ('340201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340202', '', '', '镜湖区', '3');
INSERT INTO `region` VALUES ('340203', '', '', '弋江区', '3');
INSERT INTO `region` VALUES ('340207', '', '', '鸠江区', '3');
INSERT INTO `region` VALUES ('340208', '', '', '三山区', '3');
INSERT INTO `region` VALUES ('340221', '', '', '芜湖县', '3');
INSERT INTO `region` VALUES ('340222', '', '', '繁昌县', '3');
INSERT INTO `region` VALUES ('340223', '', '', '南陵县', '3');
INSERT INTO `region` VALUES ('340225', '', '', '无为县', '3');
INSERT INTO `region` VALUES ('340300', '', '蚌埠市', '', '2');
INSERT INTO `region` VALUES ('340301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340302', '', '', '龙子湖区', '3');
INSERT INTO `region` VALUES ('340303', '', '', '蚌山区', '3');
INSERT INTO `region` VALUES ('340304', '', '', '禹会区', '3');
INSERT INTO `region` VALUES ('340311', '', '', '淮上区', '3');
INSERT INTO `region` VALUES ('340321', '', '', '怀远县', '3');
INSERT INTO `region` VALUES ('340322', '', '', '五河县', '3');
INSERT INTO `region` VALUES ('340323', '', '', '固镇县', '3');
INSERT INTO `region` VALUES ('340400', '', '淮南市', '', '2');
INSERT INTO `region` VALUES ('340401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340402', '', '', '大通区', '3');
INSERT INTO `region` VALUES ('340403', '', '', '田家庵区', '3');
INSERT INTO `region` VALUES ('340404', '', '', '谢家集区', '3');
INSERT INTO `region` VALUES ('340405', '', '', '八公山区', '3');
INSERT INTO `region` VALUES ('340406', '', '', '潘集区', '3');
INSERT INTO `region` VALUES ('340421', '', '', '凤台县', '3');
INSERT INTO `region` VALUES ('340500', '', '马鞍山市', '', '2');
INSERT INTO `region` VALUES ('340501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340503', '', '', '花山区', '3');
INSERT INTO `region` VALUES ('340504', '', '', '雨山区', '3');
INSERT INTO `region` VALUES ('340506', '', '', '博望区', '3');
INSERT INTO `region` VALUES ('340521', '', '', '当涂县', '3');
INSERT INTO `region` VALUES ('340522', '', '', '含山县', '3');
INSERT INTO `region` VALUES ('340523', '', '', '和县', '3');
INSERT INTO `region` VALUES ('340600', '', '淮北市', '', '2');
INSERT INTO `region` VALUES ('340601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340602', '', '', '杜集区', '3');
INSERT INTO `region` VALUES ('340603', '', '', '相山区', '3');
INSERT INTO `region` VALUES ('340604', '', '', '烈山区', '3');
INSERT INTO `region` VALUES ('340621', '', '', '濉溪县', '3');
INSERT INTO `region` VALUES ('340700', '', '铜陵市', '', '2');
INSERT INTO `region` VALUES ('340701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340702', '', '', '铜官山区', '3');
INSERT INTO `region` VALUES ('340703', '', '', '狮子山区', '3');
INSERT INTO `region` VALUES ('340711', '', '', '郊区', '3');
INSERT INTO `region` VALUES ('340721', '', '', '铜陵县', '3');
INSERT INTO `region` VALUES ('340800', '', '安庆市', '', '2');
INSERT INTO `region` VALUES ('340801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('340802', '', '', '迎江区', '3');
INSERT INTO `region` VALUES ('340803', '', '', '大观区', '3');
INSERT INTO `region` VALUES ('340811', '', '', '宜秀区', '3');
INSERT INTO `region` VALUES ('340822', '', '', '怀宁县', '3');
INSERT INTO `region` VALUES ('340823', '', '', '枞阳县', '3');
INSERT INTO `region` VALUES ('340824', '', '', '潜山县', '3');
INSERT INTO `region` VALUES ('340825', '', '', '太湖县', '3');
INSERT INTO `region` VALUES ('340826', '', '', '宿松县', '3');
INSERT INTO `region` VALUES ('340827', '', '', '望江县', '3');
INSERT INTO `region` VALUES ('340828', '', '', '岳西县', '3');
INSERT INTO `region` VALUES ('340881', '', '', '桐城市', '3');
INSERT INTO `region` VALUES ('341000', '', '黄山市', '', '2');
INSERT INTO `region` VALUES ('341001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341002', '', '', '屯溪区', '3');
INSERT INTO `region` VALUES ('341003', '安徽省', '黄山市', '黄山区', '3');
INSERT INTO `region` VALUES ('341004', '', '', '徽州区', '3');
INSERT INTO `region` VALUES ('341021', '', '', '歙县', '3');
INSERT INTO `region` VALUES ('341022', '', '', '休宁县', '3');
INSERT INTO `region` VALUES ('341023', '', '', '黟县', '3');
INSERT INTO `region` VALUES ('341024', '', '', '祁门县', '3');
INSERT INTO `region` VALUES ('341100', '', '滁州市', '', '2');
INSERT INTO `region` VALUES ('341101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341102', '', '', '琅琊区', '3');
INSERT INTO `region` VALUES ('341103', '', '', '南谯区', '3');
INSERT INTO `region` VALUES ('341122', '', '', '来安县', '3');
INSERT INTO `region` VALUES ('341124', '', '', '全椒县', '3');
INSERT INTO `region` VALUES ('341125', '', '', '定远县', '3');
INSERT INTO `region` VALUES ('341126', '', '', '凤阳县', '3');
INSERT INTO `region` VALUES ('341181', '', '', '天长市', '3');
INSERT INTO `region` VALUES ('341182', '', '', '明光市', '3');
INSERT INTO `region` VALUES ('341200', '', '阜阳市', '', '2');
INSERT INTO `region` VALUES ('341201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341202', '', '', '颍州区', '3');
INSERT INTO `region` VALUES ('341203', '', '', '颍东区', '3');
INSERT INTO `region` VALUES ('341204', '', '', '颍泉区', '3');
INSERT INTO `region` VALUES ('341221', '', '', '临泉县', '3');
INSERT INTO `region` VALUES ('341222', '', '', '太和县', '3');
INSERT INTO `region` VALUES ('341225', '', '', '阜南县', '3');
INSERT INTO `region` VALUES ('341226', '', '', '颍上县', '3');
INSERT INTO `region` VALUES ('341282', '', '', '界首市', '3');
INSERT INTO `region` VALUES ('341300', '', '宿州市', '', '2');
INSERT INTO `region` VALUES ('341301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341302', '', '', '埇桥区', '3');
INSERT INTO `region` VALUES ('341321', '', '', '砀山县', '3');
INSERT INTO `region` VALUES ('341322', '', '', '萧县', '3');
INSERT INTO `region` VALUES ('341323', '', '', '灵璧县', '3');
INSERT INTO `region` VALUES ('341324', '', '', '泗县', '3');
INSERT INTO `region` VALUES ('341500', '', '六安市', '', '2');
INSERT INTO `region` VALUES ('341501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341502', '', '', '金安区', '3');
INSERT INTO `region` VALUES ('341503', '', '', '裕安区', '3');
INSERT INTO `region` VALUES ('341521', '', '', '寿县', '3');
INSERT INTO `region` VALUES ('341522', '', '', '霍邱县', '3');
INSERT INTO `region` VALUES ('341523', '', '', '舒城县', '3');
INSERT INTO `region` VALUES ('341524', '', '', '金寨县', '3');
INSERT INTO `region` VALUES ('341525', '', '', '霍山县', '3');
INSERT INTO `region` VALUES ('341600', '', '亳州市', '', '2');
INSERT INTO `region` VALUES ('341601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341602', '', '', '谯城区', '3');
INSERT INTO `region` VALUES ('341621', '', '', '涡阳县', '3');
INSERT INTO `region` VALUES ('341622', '', '', '蒙城县', '3');
INSERT INTO `region` VALUES ('341623', '', '', '利辛县', '3');
INSERT INTO `region` VALUES ('341700', '', '池州市', '', '2');
INSERT INTO `region` VALUES ('341701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341702', '', '', '贵池区', '3');
INSERT INTO `region` VALUES ('341721', '', '', '东至县', '3');
INSERT INTO `region` VALUES ('341722', '', '', '石台县', '3');
INSERT INTO `region` VALUES ('341723', '', '', '青阳县', '3');
INSERT INTO `region` VALUES ('341800', '', '宣城市', '', '2');
INSERT INTO `region` VALUES ('341801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('341802', '', '', '宣州区', '3');
INSERT INTO `region` VALUES ('341821', '', '', '郎溪县', '3');
INSERT INTO `region` VALUES ('341822', '', '', '广德县', '3');
INSERT INTO `region` VALUES ('341823', '', '', '泾县', '3');
INSERT INTO `region` VALUES ('341824', '', '', '绩溪县', '3');
INSERT INTO `region` VALUES ('341825', '', '', '旌德县', '3');
INSERT INTO `region` VALUES ('341881', '', '', '宁国市', '3');
INSERT INTO `region` VALUES ('350000', '福建省', '', '', '1');
INSERT INTO `region` VALUES ('350100', '', '福州市', '', '2');
INSERT INTO `region` VALUES ('350101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350102', '', '', '鼓楼区', '3');
INSERT INTO `region` VALUES ('350103', '', '', '台江区', '3');
INSERT INTO `region` VALUES ('350104', '', '', '仓山区', '3');
INSERT INTO `region` VALUES ('350105', '', '', '马尾区', '3');
INSERT INTO `region` VALUES ('350111', '', '', '晋安区', '3');
INSERT INTO `region` VALUES ('350121', '', '', '闽侯县', '3');
INSERT INTO `region` VALUES ('350122', '', '', '连江县', '3');
INSERT INTO `region` VALUES ('350123', '', '', '罗源县', '3');
INSERT INTO `region` VALUES ('350124', '', '', '闽清县', '3');
INSERT INTO `region` VALUES ('350125', '', '', '永泰县', '3');
INSERT INTO `region` VALUES ('350128', '', '', '平潭县', '3');
INSERT INTO `region` VALUES ('350181', '', '', '福清市', '3');
INSERT INTO `region` VALUES ('350182', '', '', '长乐市', '3');
INSERT INTO `region` VALUES ('350200', '', '厦门市', '', '2');
INSERT INTO `region` VALUES ('350201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350203', '', '', '思明区', '3');
INSERT INTO `region` VALUES ('350205', '', '', '海沧区', '3');
INSERT INTO `region` VALUES ('350206', '', '', '湖里区', '3');
INSERT INTO `region` VALUES ('350211', '', '', '集美区', '3');
INSERT INTO `region` VALUES ('350212', '', '', '同安区', '3');
INSERT INTO `region` VALUES ('350213', '', '', '翔安区', '3');
INSERT INTO `region` VALUES ('350300', '', '莆田市', '', '2');
INSERT INTO `region` VALUES ('350301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350302', '', '', '城厢区', '3');
INSERT INTO `region` VALUES ('350303', '', '', '涵江区', '3');
INSERT INTO `region` VALUES ('350304', '', '', '荔城区', '3');
INSERT INTO `region` VALUES ('350305', '', '', '秀屿区', '3');
INSERT INTO `region` VALUES ('350322', '', '', '仙游县', '3');
INSERT INTO `region` VALUES ('350400', '', '三明市', '', '2');
INSERT INTO `region` VALUES ('350401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350402', '', '', '梅列区', '3');
INSERT INTO `region` VALUES ('350403', '', '', '三元区', '3');
INSERT INTO `region` VALUES ('350421', '', '', '明溪县', '3');
INSERT INTO `region` VALUES ('350423', '', '', '清流县', '3');
INSERT INTO `region` VALUES ('350424', '', '', '宁化县', '3');
INSERT INTO `region` VALUES ('350425', '', '', '大田县', '3');
INSERT INTO `region` VALUES ('350426', '', '', '尤溪县', '3');
INSERT INTO `region` VALUES ('350427', '', '', '沙县', '3');
INSERT INTO `region` VALUES ('350428', '', '', '将乐县', '3');
INSERT INTO `region` VALUES ('350429', '', '', '泰宁县', '3');
INSERT INTO `region` VALUES ('350430', '', '', '建宁县', '3');
INSERT INTO `region` VALUES ('350481', '', '', '永安市', '3');
INSERT INTO `region` VALUES ('350500', '', '泉州市', '', '2');
INSERT INTO `region` VALUES ('350501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350502', '', '', '鲤城区', '3');
INSERT INTO `region` VALUES ('350503', '', '', '丰泽区', '3');
INSERT INTO `region` VALUES ('350504', '', '', '洛江区', '3');
INSERT INTO `region` VALUES ('350505', '', '', '泉港区', '3');
INSERT INTO `region` VALUES ('350521', '', '', '惠安县', '3');
INSERT INTO `region` VALUES ('350524', '', '', '安溪县', '3');
INSERT INTO `region` VALUES ('350525', '', '', '永春县', '3');
INSERT INTO `region` VALUES ('350526', '', '', '德化县', '3');
INSERT INTO `region` VALUES ('350527', '', '', '金门县', '3');
INSERT INTO `region` VALUES ('350581', '', '', '石狮市', '3');
INSERT INTO `region` VALUES ('350582', '', '', '晋江市', '3');
INSERT INTO `region` VALUES ('350583', '', '', '南安市', '3');
INSERT INTO `region` VALUES ('350600', '', '漳州市', '', '2');
INSERT INTO `region` VALUES ('350601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350602', '', '', '芗城区', '3');
INSERT INTO `region` VALUES ('350603', '', '', '龙文区', '3');
INSERT INTO `region` VALUES ('350622', '', '', '云霄县', '3');
INSERT INTO `region` VALUES ('350623', '', '', '漳浦县', '3');
INSERT INTO `region` VALUES ('350624', '', '', '诏安县', '3');
INSERT INTO `region` VALUES ('350625', '', '', '长泰县', '3');
INSERT INTO `region` VALUES ('350626', '', '', '东山县', '3');
INSERT INTO `region` VALUES ('350627', '', '', '南靖县', '3');
INSERT INTO `region` VALUES ('350628', '', '', '平和县', '3');
INSERT INTO `region` VALUES ('350629', '', '', '华安县', '3');
INSERT INTO `region` VALUES ('350681', '', '', '龙海市', '3');
INSERT INTO `region` VALUES ('350700', '', '南平市', '', '2');
INSERT INTO `region` VALUES ('350701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350702', '', '', '延平区', '3');
INSERT INTO `region` VALUES ('350721', '', '', '顺昌县', '3');
INSERT INTO `region` VALUES ('350722', '', '', '浦城县', '3');
INSERT INTO `region` VALUES ('350723', '', '', '光泽县', '3');
INSERT INTO `region` VALUES ('350724', '', '', '松溪县', '3');
INSERT INTO `region` VALUES ('350725', '', '', '政和县', '3');
INSERT INTO `region` VALUES ('350781', '', '', '邵武市', '3');
INSERT INTO `region` VALUES ('350782', '', '', '武夷山市', '3');
INSERT INTO `region` VALUES ('350783', '', '', '建瓯市', '3');
INSERT INTO `region` VALUES ('350784', '', '', '建阳市', '3');
INSERT INTO `region` VALUES ('350800', '', '龙岩市', '', '2');
INSERT INTO `region` VALUES ('350801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350802', '', '', '新罗区', '3');
INSERT INTO `region` VALUES ('350821', '', '', '长汀县', '3');
INSERT INTO `region` VALUES ('350822', '', '', '永定县', '3');
INSERT INTO `region` VALUES ('350823', '', '', '上杭县', '3');
INSERT INTO `region` VALUES ('350824', '', '', '武平县', '3');
INSERT INTO `region` VALUES ('350825', '', '', '连城县', '3');
INSERT INTO `region` VALUES ('350881', '', '', '漳平市', '3');
INSERT INTO `region` VALUES ('350900', '', '宁德市', '', '2');
INSERT INTO `region` VALUES ('350901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('350902', '', '', '蕉城区', '3');
INSERT INTO `region` VALUES ('350921', '', '', '霞浦县', '3');
INSERT INTO `region` VALUES ('350922', '', '', '古田县', '3');
INSERT INTO `region` VALUES ('350923', '', '', '屏南县', '3');
INSERT INTO `region` VALUES ('350924', '', '', '寿宁县', '3');
INSERT INTO `region` VALUES ('350925', '', '', '周宁县', '3');
INSERT INTO `region` VALUES ('350926', '', '', '柘荣县', '3');
INSERT INTO `region` VALUES ('350981', '', '', '福安市', '3');
INSERT INTO `region` VALUES ('350982', '', '', '福鼎市', '3');
INSERT INTO `region` VALUES ('360000', '江西省', '', '', '1');
INSERT INTO `region` VALUES ('360100', '', '南昌市', '', '2');
INSERT INTO `region` VALUES ('360101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360102', '', '', '东湖区', '3');
INSERT INTO `region` VALUES ('360103', '', '', '西湖区', '3');
INSERT INTO `region` VALUES ('360104', '', '', '青云谱区', '3');
INSERT INTO `region` VALUES ('360105', '', '', '湾里区', '3');
INSERT INTO `region` VALUES ('360111', '', '', '青山湖区', '3');
INSERT INTO `region` VALUES ('360121', '', '', '南昌县', '3');
INSERT INTO `region` VALUES ('360122', '', '', '新建县', '3');
INSERT INTO `region` VALUES ('360123', '', '', '安义县', '3');
INSERT INTO `region` VALUES ('360124', '', '', '进贤县', '3');
INSERT INTO `region` VALUES ('360200', '', '景德镇市', '', '2');
INSERT INTO `region` VALUES ('360201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360202', '', '', '昌江区', '3');
INSERT INTO `region` VALUES ('360203', '', '', '珠山区', '3');
INSERT INTO `region` VALUES ('360222', '', '', '浮梁县', '3');
INSERT INTO `region` VALUES ('360281', '', '', '乐平市', '3');
INSERT INTO `region` VALUES ('360300', '', '萍乡市', '', '2');
INSERT INTO `region` VALUES ('360301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360302', '', '', '安源区', '3');
INSERT INTO `region` VALUES ('360313', '', '', '湘东区', '3');
INSERT INTO `region` VALUES ('360321', '', '', '莲花县', '3');
INSERT INTO `region` VALUES ('360322', '', '', '上栗县', '3');
INSERT INTO `region` VALUES ('360323', '', '', '芦溪县', '3');
INSERT INTO `region` VALUES ('360400', '', '九江市', '', '2');
INSERT INTO `region` VALUES ('360401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360402', '', '', '庐山区', '3');
INSERT INTO `region` VALUES ('360403', '', '', '浔阳区', '3');
INSERT INTO `region` VALUES ('360421', '', '', '九江县', '3');
INSERT INTO `region` VALUES ('360423', '', '', '武宁县', '3');
INSERT INTO `region` VALUES ('360424', '', '', '修水县', '3');
INSERT INTO `region` VALUES ('360425', '', '', '永修县', '3');
INSERT INTO `region` VALUES ('360426', '', '', '德安县', '3');
INSERT INTO `region` VALUES ('360427', '', '', '星子县', '3');
INSERT INTO `region` VALUES ('360428', '', '', '都昌县', '3');
INSERT INTO `region` VALUES ('360429', '', '', '湖口县', '3');
INSERT INTO `region` VALUES ('360430', '', '', '彭泽县', '3');
INSERT INTO `region` VALUES ('360481', '', '', '瑞昌市', '3');
INSERT INTO `region` VALUES ('360482', '', '', '共青城市', '3');
INSERT INTO `region` VALUES ('360500', '', '新余市', '', '2');
INSERT INTO `region` VALUES ('360501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360502', '', '', '渝水区', '3');
INSERT INTO `region` VALUES ('360521', '', '', '分宜县', '3');
INSERT INTO `region` VALUES ('360600', '', '鹰潭市', '', '2');
INSERT INTO `region` VALUES ('360601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360602', '', '', '月湖区', '3');
INSERT INTO `region` VALUES ('360622', '', '', '余江县', '3');
INSERT INTO `region` VALUES ('360681', '', '', '贵溪市', '3');
INSERT INTO `region` VALUES ('360700', '', '赣州市', '', '2');
INSERT INTO `region` VALUES ('360701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360702', '', '', '章贡区', '3');
INSERT INTO `region` VALUES ('360721', '', '', '赣县', '3');
INSERT INTO `region` VALUES ('360722', '', '', '信丰县', '3');
INSERT INTO `region` VALUES ('360723', '', '', '大余县', '3');
INSERT INTO `region` VALUES ('360724', '', '', '上犹县', '3');
INSERT INTO `region` VALUES ('360725', '', '', '崇义县', '3');
INSERT INTO `region` VALUES ('360726', '', '', '安远县', '3');
INSERT INTO `region` VALUES ('360727', '', '', '龙南县', '3');
INSERT INTO `region` VALUES ('360728', '', '', '定南县', '3');
INSERT INTO `region` VALUES ('360729', '', '', '全南县', '3');
INSERT INTO `region` VALUES ('360730', '', '', '宁都县', '3');
INSERT INTO `region` VALUES ('360731', '', '', '于都县', '3');
INSERT INTO `region` VALUES ('360732', '', '', '兴国县', '3');
INSERT INTO `region` VALUES ('360733', '', '', '会昌县', '3');
INSERT INTO `region` VALUES ('360734', '', '', '寻乌县', '3');
INSERT INTO `region` VALUES ('360735', '', '', '石城县', '3');
INSERT INTO `region` VALUES ('360781', '', '', '瑞金市', '3');
INSERT INTO `region` VALUES ('360782', '', '', '南康市', '3');
INSERT INTO `region` VALUES ('360800', '', '吉安市', '', '2');
INSERT INTO `region` VALUES ('360801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360802', '', '', '吉州区', '3');
INSERT INTO `region` VALUES ('360803', '', '', '青原区', '3');
INSERT INTO `region` VALUES ('360821', '', '', '吉安县', '3');
INSERT INTO `region` VALUES ('360822', '', '', '吉水县', '3');
INSERT INTO `region` VALUES ('360823', '', '', '峡江县', '3');
INSERT INTO `region` VALUES ('360824', '', '', '新干县', '3');
INSERT INTO `region` VALUES ('360825', '', '', '永丰县', '3');
INSERT INTO `region` VALUES ('360826', '', '', '泰和县', '3');
INSERT INTO `region` VALUES ('360827', '', '', '遂川县', '3');
INSERT INTO `region` VALUES ('360828', '', '', '万安县', '3');
INSERT INTO `region` VALUES ('360829', '', '', '安福县', '3');
INSERT INTO `region` VALUES ('360830', '', '', '永新县', '3');
INSERT INTO `region` VALUES ('360881', '', '', '井冈山市', '3');
INSERT INTO `region` VALUES ('360900', '', '宜春市', '', '2');
INSERT INTO `region` VALUES ('360901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('360902', '', '', '袁州区', '3');
INSERT INTO `region` VALUES ('360921', '', '', '奉新县', '3');
INSERT INTO `region` VALUES ('360922', '', '', '万载县', '3');
INSERT INTO `region` VALUES ('360923', '', '', '上高县', '3');
INSERT INTO `region` VALUES ('360924', '', '', '宜丰县', '3');
INSERT INTO `region` VALUES ('360925', '', '', '靖安县', '3');
INSERT INTO `region` VALUES ('360926', '', '', '铜鼓县', '3');
INSERT INTO `region` VALUES ('360981', '', '', '丰城市', '3');
INSERT INTO `region` VALUES ('360982', '', '', '樟树市', '3');
INSERT INTO `region` VALUES ('360983', '', '', '高安市', '3');
INSERT INTO `region` VALUES ('361000', '', '抚州市', '', '2');
INSERT INTO `region` VALUES ('361001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('361002', '', '', '临川区', '3');
INSERT INTO `region` VALUES ('361021', '', '', '南城县', '3');
INSERT INTO `region` VALUES ('361022', '', '', '黎川县', '3');
INSERT INTO `region` VALUES ('361023', '', '', '南丰县', '3');
INSERT INTO `region` VALUES ('361024', '', '', '崇仁县', '3');
INSERT INTO `region` VALUES ('361025', '', '', '乐安县', '3');
INSERT INTO `region` VALUES ('361026', '', '', '宜黄县', '3');
INSERT INTO `region` VALUES ('361027', '', '', '金溪县', '3');
INSERT INTO `region` VALUES ('361028', '', '', '资溪县', '3');
INSERT INTO `region` VALUES ('361029', '', '', '东乡县', '3');
INSERT INTO `region` VALUES ('361030', '', '', '广昌县', '3');
INSERT INTO `region` VALUES ('361100', '', '上饶市', '', '2');
INSERT INTO `region` VALUES ('361101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('361102', '', '', '信州区', '3');
INSERT INTO `region` VALUES ('361121', '', '', '上饶县', '3');
INSERT INTO `region` VALUES ('361122', '', '', '广丰县', '3');
INSERT INTO `region` VALUES ('361123', '', '', '玉山县', '3');
INSERT INTO `region` VALUES ('361124', '', '', '铅山县', '3');
INSERT INTO `region` VALUES ('361125', '', '', '横峰县', '3');
INSERT INTO `region` VALUES ('361126', '', '', '弋阳县', '3');
INSERT INTO `region` VALUES ('361127', '', '', '余干县', '3');
INSERT INTO `region` VALUES ('361128', '', '', '鄱阳县', '3');
INSERT INTO `region` VALUES ('361129', '', '', '万年县', '3');
INSERT INTO `region` VALUES ('361130', '', '', '婺源县', '3');
INSERT INTO `region` VALUES ('361181', '', '', '德兴市', '3');
INSERT INTO `region` VALUES ('370000', '山东省', '', '', '1');
INSERT INTO `region` VALUES ('370100', '', '济南市', '', '2');
INSERT INTO `region` VALUES ('370101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370102', '', '', '历下区', '3');
INSERT INTO `region` VALUES ('370103', '', '', '市中区', '3');
INSERT INTO `region` VALUES ('370104', '', '', '槐荫区', '3');
INSERT INTO `region` VALUES ('370105', '', '', '天桥区', '3');
INSERT INTO `region` VALUES ('370112', '', '', '历城区', '3');
INSERT INTO `region` VALUES ('370113', '', '', '长清区', '3');
INSERT INTO `region` VALUES ('370124', '', '', '平阴县', '3');
INSERT INTO `region` VALUES ('370125', '', '', '济阳县', '3');
INSERT INTO `region` VALUES ('370126', '', '', '商河县', '3');
INSERT INTO `region` VALUES ('370181', '', '', '章丘市', '3');
INSERT INTO `region` VALUES ('370200', '', '青岛市', '', '2');
INSERT INTO `region` VALUES ('370201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370202', '', '', '市南区', '3');
INSERT INTO `region` VALUES ('370203', '', '', '市北区', '3');
INSERT INTO `region` VALUES ('370211', '', '', '黄岛区', '3');
INSERT INTO `region` VALUES ('370212', '', '', '崂山区', '3');
INSERT INTO `region` VALUES ('370213', '', '', '李沧区', '3');
INSERT INTO `region` VALUES ('370214', '', '', '城阳区', '3');
INSERT INTO `region` VALUES ('370281', '', '', '胶州市', '3');
INSERT INTO `region` VALUES ('370282', '', '', '即墨市', '3');
INSERT INTO `region` VALUES ('370283', '', '', '平度市', '3');
INSERT INTO `region` VALUES ('370285', '', '', '莱西市', '3');
INSERT INTO `region` VALUES ('370300', '', '淄博市', '', '2');
INSERT INTO `region` VALUES ('370301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370302', '', '', '淄川区', '3');
INSERT INTO `region` VALUES ('370303', '', '', '张店区', '3');
INSERT INTO `region` VALUES ('370304', '', '', '博山区', '3');
INSERT INTO `region` VALUES ('370305', '', '', '临淄区', '3');
INSERT INTO `region` VALUES ('370306', '', '', '周村区', '3');
INSERT INTO `region` VALUES ('370321', '', '', '桓台县', '3');
INSERT INTO `region` VALUES ('370322', '', '', '高青县', '3');
INSERT INTO `region` VALUES ('370323', '', '', '沂源县', '3');
INSERT INTO `region` VALUES ('370400', '', '枣庄市', '', '2');
INSERT INTO `region` VALUES ('370401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370402', '', '', '市中区', '3');
INSERT INTO `region` VALUES ('370403', '', '', '薛城区', '3');
INSERT INTO `region` VALUES ('370404', '', '', '峄城区', '3');
INSERT INTO `region` VALUES ('370405', '', '', '台儿庄区', '3');
INSERT INTO `region` VALUES ('370406', '', '', '山亭区', '3');
INSERT INTO `region` VALUES ('370481', '', '', '滕州市', '3');
INSERT INTO `region` VALUES ('370500', '', '东营市', '', '2');
INSERT INTO `region` VALUES ('370501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370502', '', '', '东营区', '3');
INSERT INTO `region` VALUES ('370503', '', '', '河口区', '3');
INSERT INTO `region` VALUES ('370521', '', '', '垦利县', '3');
INSERT INTO `region` VALUES ('370522', '', '', '利津县', '3');
INSERT INTO `region` VALUES ('370523', '', '', '广饶县', '3');
INSERT INTO `region` VALUES ('370600', '', '烟台市', '', '2');
INSERT INTO `region` VALUES ('370601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370602', '', '', '芝罘区', '3');
INSERT INTO `region` VALUES ('370611', '', '', '福山区', '3');
INSERT INTO `region` VALUES ('370612', '', '', '牟平区', '3');
INSERT INTO `region` VALUES ('370613', '', '', '莱山区', '3');
INSERT INTO `region` VALUES ('370634', '', '', '长岛县', '3');
INSERT INTO `region` VALUES ('370681', '', '', '龙口市', '3');
INSERT INTO `region` VALUES ('370682', '', '', '莱阳市', '3');
INSERT INTO `region` VALUES ('370683', '', '', '莱州市', '3');
INSERT INTO `region` VALUES ('370684', '', '', '蓬莱市', '3');
INSERT INTO `region` VALUES ('370685', '', '', '招远市', '3');
INSERT INTO `region` VALUES ('370686', '', '', '栖霞市', '3');
INSERT INTO `region` VALUES ('370687', '', '', '海阳市', '3');
INSERT INTO `region` VALUES ('370700', '', '潍坊市', '', '2');
INSERT INTO `region` VALUES ('370701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370702', '', '', '潍城区', '3');
INSERT INTO `region` VALUES ('370703', '', '', '寒亭区', '3');
INSERT INTO `region` VALUES ('370704', '', '', '坊子区', '3');
INSERT INTO `region` VALUES ('370705', '', '', '奎文区', '3');
INSERT INTO `region` VALUES ('370724', '', '', '临朐县', '3');
INSERT INTO `region` VALUES ('370725', '', '', '昌乐县', '3');
INSERT INTO `region` VALUES ('370781', '', '', '青州市', '3');
INSERT INTO `region` VALUES ('370782', '', '', '诸城市', '3');
INSERT INTO `region` VALUES ('370783', '', '', '寿光市', '3');
INSERT INTO `region` VALUES ('370784', '', '', '安丘市', '3');
INSERT INTO `region` VALUES ('370785', '', '', '高密市', '3');
INSERT INTO `region` VALUES ('370786', '', '', '昌邑市', '3');
INSERT INTO `region` VALUES ('370800', '', '济宁市', '', '2');
INSERT INTO `region` VALUES ('370801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370802', '', '', '市中区', '3');
INSERT INTO `region` VALUES ('370811', '', '', '任城区', '3');
INSERT INTO `region` VALUES ('370826', '', '', '微山县', '3');
INSERT INTO `region` VALUES ('370827', '', '', '鱼台县', '3');
INSERT INTO `region` VALUES ('370828', '', '', '金乡县', '3');
INSERT INTO `region` VALUES ('370829', '', '', '嘉祥县', '3');
INSERT INTO `region` VALUES ('370830', '', '', '汶上县', '3');
INSERT INTO `region` VALUES ('370831', '', '', '泗水县', '3');
INSERT INTO `region` VALUES ('370832', '', '', '梁山县', '3');
INSERT INTO `region` VALUES ('370881', '', '', '曲阜市', '3');
INSERT INTO `region` VALUES ('370882', '', '', '兖州市', '3');
INSERT INTO `region` VALUES ('370883', '', '', '邹城市', '3');
INSERT INTO `region` VALUES ('370900', '', '泰安市', '', '2');
INSERT INTO `region` VALUES ('370901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('370902', '', '', '泰山区', '3');
INSERT INTO `region` VALUES ('370911', '', '', '岱岳区', '3');
INSERT INTO `region` VALUES ('370921', '', '', '宁阳县', '3');
INSERT INTO `region` VALUES ('370923', '', '', '东平县', '3');
INSERT INTO `region` VALUES ('370982', '', '', '新泰市', '3');
INSERT INTO `region` VALUES ('370983', '', '', '肥城市', '3');
INSERT INTO `region` VALUES ('371000', '', '威海市', '', '2');
INSERT INTO `region` VALUES ('371001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371002', '', '', '环翠区', '3');
INSERT INTO `region` VALUES ('371081', '', '', '文登市', '3');
INSERT INTO `region` VALUES ('371082', '', '', '荣成市', '3');
INSERT INTO `region` VALUES ('371083', '', '', '乳山市', '3');
INSERT INTO `region` VALUES ('371100', '', '日照市', '', '2');
INSERT INTO `region` VALUES ('371101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371102', '', '', '东港区', '3');
INSERT INTO `region` VALUES ('371103', '', '', '岚山区', '3');
INSERT INTO `region` VALUES ('371121', '', '', '五莲县', '3');
INSERT INTO `region` VALUES ('371122', '', '', '莒县', '3');
INSERT INTO `region` VALUES ('371200', '', '莱芜市', '', '2');
INSERT INTO `region` VALUES ('371201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371202', '', '', '莱城区', '3');
INSERT INTO `region` VALUES ('371203', '', '', '钢城区', '3');
INSERT INTO `region` VALUES ('371300', '', '临沂市', '', '2');
INSERT INTO `region` VALUES ('371301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371302', '', '', '兰山区', '3');
INSERT INTO `region` VALUES ('371311', '', '', '罗庄区', '3');
INSERT INTO `region` VALUES ('371312', '', '', '河东区', '3');
INSERT INTO `region` VALUES ('371321', '', '', '沂南县', '3');
INSERT INTO `region` VALUES ('371322', '', '', '郯城县', '3');
INSERT INTO `region` VALUES ('371323', '', '', '沂水县', '3');
INSERT INTO `region` VALUES ('371324', '', '', '苍山县', '3');
INSERT INTO `region` VALUES ('371325', '', '', '费县', '3');
INSERT INTO `region` VALUES ('371326', '', '', '平邑县', '3');
INSERT INTO `region` VALUES ('371327', '', '', '莒南县', '3');
INSERT INTO `region` VALUES ('371328', '', '', '蒙阴县', '3');
INSERT INTO `region` VALUES ('371329', '', '', '临沭县', '3');
INSERT INTO `region` VALUES ('371400', '', '德州市', '', '2');
INSERT INTO `region` VALUES ('371401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371402', '', '', '德城区', '3');
INSERT INTO `region` VALUES ('371421', '', '', '陵县', '3');
INSERT INTO `region` VALUES ('371422', '', '', '宁津县', '3');
INSERT INTO `region` VALUES ('371423', '', '', '庆云县', '3');
INSERT INTO `region` VALUES ('371424', '', '', '临邑县', '3');
INSERT INTO `region` VALUES ('371425', '', '', '齐河县', '3');
INSERT INTO `region` VALUES ('371426', '', '', '平原县', '3');
INSERT INTO `region` VALUES ('371427', '', '', '夏津县', '3');
INSERT INTO `region` VALUES ('371428', '', '', '武城县', '3');
INSERT INTO `region` VALUES ('371481', '', '', '乐陵市', '3');
INSERT INTO `region` VALUES ('371482', '', '', '禹城市', '3');
INSERT INTO `region` VALUES ('371500', '', '聊城市', '', '2');
INSERT INTO `region` VALUES ('371501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371502', '', '', '东昌府区', '3');
INSERT INTO `region` VALUES ('371521', '', '', '阳谷县', '3');
INSERT INTO `region` VALUES ('371522', '', '', '莘县', '3');
INSERT INTO `region` VALUES ('371523', '', '', '茌平县', '3');
INSERT INTO `region` VALUES ('371524', '', '', '东阿县', '3');
INSERT INTO `region` VALUES ('371525', '', '', '冠县', '3');
INSERT INTO `region` VALUES ('371526', '', '', '高唐县', '3');
INSERT INTO `region` VALUES ('371581', '', '', '临清市', '3');
INSERT INTO `region` VALUES ('371600', '', '滨州市', '', '2');
INSERT INTO `region` VALUES ('371601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371602', '', '', '滨城区', '3');
INSERT INTO `region` VALUES ('371621', '', '', '惠民县', '3');
INSERT INTO `region` VALUES ('371622', '', '', '阳信县', '3');
INSERT INTO `region` VALUES ('371623', '', '', '无棣县', '3');
INSERT INTO `region` VALUES ('371624', '', '', '沾化县', '3');
INSERT INTO `region` VALUES ('371625', '', '', '博兴县', '3');
INSERT INTO `region` VALUES ('371626', '', '', '邹平县', '3');
INSERT INTO `region` VALUES ('371700', '', '菏泽市', '', '2');
INSERT INTO `region` VALUES ('371701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('371702', '', '', '牡丹区', '3');
INSERT INTO `region` VALUES ('371721', '', '', '曹县', '3');
INSERT INTO `region` VALUES ('371722', '', '', '单县', '3');
INSERT INTO `region` VALUES ('371723', '', '', '成武县', '3');
INSERT INTO `region` VALUES ('371724', '', '', '巨野县', '3');
INSERT INTO `region` VALUES ('371725', '', '', '郓城县', '3');
INSERT INTO `region` VALUES ('371726', '', '', '鄄城县', '3');
INSERT INTO `region` VALUES ('371727', '', '', '定陶县', '3');
INSERT INTO `region` VALUES ('371728', '', '', '东明县', '3');
INSERT INTO `region` VALUES ('410000', '河南省', '', '', '1');
INSERT INTO `region` VALUES ('410100', '', '郑州市', '', '2');
INSERT INTO `region` VALUES ('410101', '河南省', '郑州市', '市辖区', '3');
INSERT INTO `region` VALUES ('410102', '河南省', '郑州市', '中原区', '3');
INSERT INTO `region` VALUES ('410103', '', '', '二七区', '3');
INSERT INTO `region` VALUES ('410104', '', '', '管城回族区', '3');
INSERT INTO `region` VALUES ('410105', '', '', '金水区', '3');
INSERT INTO `region` VALUES ('410106', '', '', '上街区', '3');
INSERT INTO `region` VALUES ('410108', '', '', '惠济区', '3');
INSERT INTO `region` VALUES ('410122', '', '', '中牟县', '3');
INSERT INTO `region` VALUES ('410181', '', '', '巩义市', '3');
INSERT INTO `region` VALUES ('410182', '', '', '荥阳市', '3');
INSERT INTO `region` VALUES ('410183', '', '', '新密市', '3');
INSERT INTO `region` VALUES ('410184', '', '', '新郑市', '3');
INSERT INTO `region` VALUES ('410185', '', '', '登封市', '3');
INSERT INTO `region` VALUES ('410200', '', '开封市', '', '2');
INSERT INTO `region` VALUES ('410201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410202', '', '', '龙亭区', '3');
INSERT INTO `region` VALUES ('410203', '', '', '顺河回族区', '3');
INSERT INTO `region` VALUES ('410204', '', '', '鼓楼区', '3');
INSERT INTO `region` VALUES ('410205', '', '', '禹王台区', '3');
INSERT INTO `region` VALUES ('410211', '', '', '金明区', '3');
INSERT INTO `region` VALUES ('410221', '', '', '杞县', '3');
INSERT INTO `region` VALUES ('410222', '', '', '通许县', '3');
INSERT INTO `region` VALUES ('410223', '', '', '尉氏县', '3');
INSERT INTO `region` VALUES ('410224', '', '', '开封县', '3');
INSERT INTO `region` VALUES ('410225', '', '', '兰考县', '3');
INSERT INTO `region` VALUES ('410300', '', '洛阳市', '', '2');
INSERT INTO `region` VALUES ('410301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410302', '', '', '老城区', '3');
INSERT INTO `region` VALUES ('410303', '', '', '西工区', '3');
INSERT INTO `region` VALUES ('410304', '', '', '瀍河回族区', '3');
INSERT INTO `region` VALUES ('410305', '', '', '涧西区', '3');
INSERT INTO `region` VALUES ('410306', '', '', '吉利区', '3');
INSERT INTO `region` VALUES ('410311', '', '', '洛龙区', '3');
INSERT INTO `region` VALUES ('410322', '', '', '孟津县', '3');
INSERT INTO `region` VALUES ('410323', '', '', '新安县', '3');
INSERT INTO `region` VALUES ('410324', '', '', '栾川县', '3');
INSERT INTO `region` VALUES ('410325', '', '', '嵩县', '3');
INSERT INTO `region` VALUES ('410326', '', '', '汝阳县', '3');
INSERT INTO `region` VALUES ('410327', '', '', '宜阳县', '3');
INSERT INTO `region` VALUES ('410328', '', '', '洛宁县', '3');
INSERT INTO `region` VALUES ('410329', '', '', '伊川县', '3');
INSERT INTO `region` VALUES ('410381', '', '', '偃师市', '3');
INSERT INTO `region` VALUES ('410400', '', '平顶山市', '', '2');
INSERT INTO `region` VALUES ('410401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410402', '', '', '新华区', '3');
INSERT INTO `region` VALUES ('410403', '', '', '卫东区', '3');
INSERT INTO `region` VALUES ('410404', '', '', '石龙区', '3');
INSERT INTO `region` VALUES ('410411', '', '', '湛河区', '3');
INSERT INTO `region` VALUES ('410421', '', '', '宝丰县', '3');
INSERT INTO `region` VALUES ('410422', '', '', '叶县', '3');
INSERT INTO `region` VALUES ('410423', '', '', '鲁山县', '3');
INSERT INTO `region` VALUES ('410425', '', '', '郏县', '3');
INSERT INTO `region` VALUES ('410481', '', '', '舞钢市', '3');
INSERT INTO `region` VALUES ('410482', '', '', '汝州市', '3');
INSERT INTO `region` VALUES ('410500', '', '安阳市', '', '2');
INSERT INTO `region` VALUES ('410501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410502', '', '', '文峰区', '3');
INSERT INTO `region` VALUES ('410503', '', '', '北关区', '3');
INSERT INTO `region` VALUES ('410505', '', '', '殷都区', '3');
INSERT INTO `region` VALUES ('410506', '', '', '龙安区', '3');
INSERT INTO `region` VALUES ('410522', '', '', '安阳县', '3');
INSERT INTO `region` VALUES ('410523', '', '', '汤阴县', '3');
INSERT INTO `region` VALUES ('410526', '', '', '滑县', '3');
INSERT INTO `region` VALUES ('410527', '', '', '内黄县', '3');
INSERT INTO `region` VALUES ('410581', '', '', '林州市', '3');
INSERT INTO `region` VALUES ('410600', '', '鹤壁市', '', '2');
INSERT INTO `region` VALUES ('410601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410602', '', '', '鹤山区', '3');
INSERT INTO `region` VALUES ('410603', '', '', '山城区', '3');
INSERT INTO `region` VALUES ('410611', '', '', '淇滨区', '3');
INSERT INTO `region` VALUES ('410621', '', '', '浚县', '3');
INSERT INTO `region` VALUES ('410622', '', '', '淇县', '3');
INSERT INTO `region` VALUES ('410700', '', '新乡市', '', '2');
INSERT INTO `region` VALUES ('410701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410702', '', '', '红旗区', '3');
INSERT INTO `region` VALUES ('410703', '', '', '卫滨区', '3');
INSERT INTO `region` VALUES ('410704', '', '', '凤泉区', '3');
INSERT INTO `region` VALUES ('410711', '', '', '牧野区', '3');
INSERT INTO `region` VALUES ('410721', '', '', '新乡县', '3');
INSERT INTO `region` VALUES ('410724', '', '', '获嘉县', '3');
INSERT INTO `region` VALUES ('410725', '', '', '原阳县', '3');
INSERT INTO `region` VALUES ('410726', '', '', '延津县', '3');
INSERT INTO `region` VALUES ('410727', '', '', '封丘县', '3');
INSERT INTO `region` VALUES ('410728', '', '', '长垣县', '3');
INSERT INTO `region` VALUES ('410781', '', '', '卫辉市', '3');
INSERT INTO `region` VALUES ('410782', '', '', '辉县市', '3');
INSERT INTO `region` VALUES ('410800', '', '焦作市', '', '2');
INSERT INTO `region` VALUES ('410801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410802', '', '', '解放区', '3');
INSERT INTO `region` VALUES ('410803', '', '', '中站区', '3');
INSERT INTO `region` VALUES ('410804', '', '', '马村区', '3');
INSERT INTO `region` VALUES ('410811', '', '', '山阳区', '3');
INSERT INTO `region` VALUES ('410821', '', '', '修武县', '3');
INSERT INTO `region` VALUES ('410822', '', '', '博爱县', '3');
INSERT INTO `region` VALUES ('410823', '', '', '武陟县', '3');
INSERT INTO `region` VALUES ('410825', '', '', '温县', '3');
INSERT INTO `region` VALUES ('410882', '', '', '沁阳市', '3');
INSERT INTO `region` VALUES ('410883', '', '', '孟州市', '3');
INSERT INTO `region` VALUES ('410900', '', '濮阳市', '', '2');
INSERT INTO `region` VALUES ('410901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('410902', '', '', '华龙区', '3');
INSERT INTO `region` VALUES ('410922', '', '', '清丰县', '3');
INSERT INTO `region` VALUES ('410923', '', '', '南乐县', '3');
INSERT INTO `region` VALUES ('410926', '', '', '范县', '3');
INSERT INTO `region` VALUES ('410927', '', '', '台前县', '3');
INSERT INTO `region` VALUES ('410928', '', '', '濮阳县', '3');
INSERT INTO `region` VALUES ('411000', '', '许昌市', '', '2');
INSERT INTO `region` VALUES ('411001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411002', '', '', '魏都区', '3');
INSERT INTO `region` VALUES ('411023', '', '', '许昌县', '3');
INSERT INTO `region` VALUES ('411024', '', '', '鄢陵县', '3');
INSERT INTO `region` VALUES ('411025', '', '', '襄城县', '3');
INSERT INTO `region` VALUES ('411081', '', '', '禹州市', '3');
INSERT INTO `region` VALUES ('411082', '', '', '长葛市', '3');
INSERT INTO `region` VALUES ('411100', '', '漯河市', '', '2');
INSERT INTO `region` VALUES ('411101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411102', '', '', '源汇区', '3');
INSERT INTO `region` VALUES ('411103', '', '', '郾城区', '3');
INSERT INTO `region` VALUES ('411104', '', '', '召陵区', '3');
INSERT INTO `region` VALUES ('411121', '', '', '舞阳县', '3');
INSERT INTO `region` VALUES ('411122', '', '', '临颍县', '3');
INSERT INTO `region` VALUES ('411200', '', '三门峡市', '', '2');
INSERT INTO `region` VALUES ('411201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411202', '', '', '湖滨区', '3');
INSERT INTO `region` VALUES ('411221', '', '', '渑池县', '3');
INSERT INTO `region` VALUES ('411222', '', '', '陕县', '3');
INSERT INTO `region` VALUES ('411224', '', '', '卢氏县', '3');
INSERT INTO `region` VALUES ('411281', '', '', '义马市', '3');
INSERT INTO `region` VALUES ('411282', '', '', '灵宝市', '3');
INSERT INTO `region` VALUES ('411300', '', '南阳市', '', '2');
INSERT INTO `region` VALUES ('411301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411302', '', '', '宛城区', '3');
INSERT INTO `region` VALUES ('411303', '', '', '卧龙区', '3');
INSERT INTO `region` VALUES ('411321', '', '', '南召县', '3');
INSERT INTO `region` VALUES ('411322', '', '', '方城县', '3');
INSERT INTO `region` VALUES ('411323', '', '', '西峡县', '3');
INSERT INTO `region` VALUES ('411324', '', '', '镇平县', '3');
INSERT INTO `region` VALUES ('411325', '', '', '内乡县', '3');
INSERT INTO `region` VALUES ('411326', '', '', '淅川县', '3');
INSERT INTO `region` VALUES ('411327', '', '', '社旗县', '3');
INSERT INTO `region` VALUES ('411328', '', '', '唐河县', '3');
INSERT INTO `region` VALUES ('411329', '', '', '新野县', '3');
INSERT INTO `region` VALUES ('411330', '', '', '桐柏县', '3');
INSERT INTO `region` VALUES ('411381', '', '', '邓州市', '3');
INSERT INTO `region` VALUES ('411400', '', '商丘市', '', '2');
INSERT INTO `region` VALUES ('411401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411402', '', '', '梁园区', '3');
INSERT INTO `region` VALUES ('411403', '', '', '睢阳区', '3');
INSERT INTO `region` VALUES ('411421', '', '', '民权县', '3');
INSERT INTO `region` VALUES ('411422', '', '', '睢县', '3');
INSERT INTO `region` VALUES ('411423', '', '', '宁陵县', '3');
INSERT INTO `region` VALUES ('411424', '', '', '柘城县', '3');
INSERT INTO `region` VALUES ('411425', '', '', '虞城县', '3');
INSERT INTO `region` VALUES ('411426', '', '', '夏邑县', '3');
INSERT INTO `region` VALUES ('411481', '', '', '永城市', '3');
INSERT INTO `region` VALUES ('411500', '', '信阳市', '', '2');
INSERT INTO `region` VALUES ('411501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411502', '', '', '浉河区', '3');
INSERT INTO `region` VALUES ('411503', '', '', '平桥区', '3');
INSERT INTO `region` VALUES ('411521', '', '', '罗山县', '3');
INSERT INTO `region` VALUES ('411522', '', '', '光山县', '3');
INSERT INTO `region` VALUES ('411523', '', '', '新县', '3');
INSERT INTO `region` VALUES ('411524', '', '', '商城县', '3');
INSERT INTO `region` VALUES ('411525', '', '', '固始县', '3');
INSERT INTO `region` VALUES ('411526', '', '', '潢川县', '3');
INSERT INTO `region` VALUES ('411527', '', '', '淮滨县', '3');
INSERT INTO `region` VALUES ('411528', '', '', '息县', '3');
INSERT INTO `region` VALUES ('411600', '', '周口市', '', '2');
INSERT INTO `region` VALUES ('411601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411602', '', '', '川汇区', '3');
INSERT INTO `region` VALUES ('411621', '', '', '扶沟县', '3');
INSERT INTO `region` VALUES ('411622', '', '', '西华县', '3');
INSERT INTO `region` VALUES ('411623', '', '', '商水县', '3');
INSERT INTO `region` VALUES ('411624', '', '', '沈丘县', '3');
INSERT INTO `region` VALUES ('411625', '', '', '郸城县', '3');
INSERT INTO `region` VALUES ('411626', '', '', '淮阳县', '3');
INSERT INTO `region` VALUES ('411627', '', '', '太康县', '3');
INSERT INTO `region` VALUES ('411628', '', '', '鹿邑县', '3');
INSERT INTO `region` VALUES ('411681', '', '', '项城市', '3');
INSERT INTO `region` VALUES ('411700', '', '驻马店市', '', '2');
INSERT INTO `region` VALUES ('411701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('411702', '', '', '驿城区', '3');
INSERT INTO `region` VALUES ('411721', '', '', '西平县', '3');
INSERT INTO `region` VALUES ('411722', '', '', '上蔡县', '3');
INSERT INTO `region` VALUES ('411723', '', '', '平舆县', '3');
INSERT INTO `region` VALUES ('411724', '', '', '正阳县', '3');
INSERT INTO `region` VALUES ('411725', '', '', '确山县', '3');
INSERT INTO `region` VALUES ('411726', '', '', '泌阳县', '3');
INSERT INTO `region` VALUES ('411727', '', '', '汝南县', '3');
INSERT INTO `region` VALUES ('411728', '', '', '遂平县', '3');
INSERT INTO `region` VALUES ('411729', '', '', '新蔡县', '3');
INSERT INTO `region` VALUES ('419000', '', '省直辖县级行政区划', '', '2');
INSERT INTO `region` VALUES ('419001', '', '', '济源市', '3');
INSERT INTO `region` VALUES ('420000', '湖北省', '', '', '1');
INSERT INTO `region` VALUES ('420100', '', '武汉市', '', '2');
INSERT INTO `region` VALUES ('420101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420102', '', '', '江岸区', '3');
INSERT INTO `region` VALUES ('420103', '', '', '江汉区', '3');
INSERT INTO `region` VALUES ('420104', '', '', '硚口区', '3');
INSERT INTO `region` VALUES ('420105', '', '', '汉阳区', '3');
INSERT INTO `region` VALUES ('420106', '', '', '武昌区', '3');
INSERT INTO `region` VALUES ('420107', '', '', '青山区', '3');
INSERT INTO `region` VALUES ('420111', '', '', '洪山区', '3');
INSERT INTO `region` VALUES ('420112', '', '', '东西湖区', '3');
INSERT INTO `region` VALUES ('420113', '', '', '汉南区', '3');
INSERT INTO `region` VALUES ('420114', '', '', '蔡甸区', '3');
INSERT INTO `region` VALUES ('420115', '', '', '江夏区', '3');
INSERT INTO `region` VALUES ('420116', '', '', '黄陂区', '3');
INSERT INTO `region` VALUES ('420117', '', '', '新洲区', '3');
INSERT INTO `region` VALUES ('420200', '', '黄石市', '', '2');
INSERT INTO `region` VALUES ('420201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420202', '', '', '黄石港区', '3');
INSERT INTO `region` VALUES ('420203', '', '', '西塞山区', '3');
INSERT INTO `region` VALUES ('420204', '', '', '下陆区', '3');
INSERT INTO `region` VALUES ('420205', '', '', '铁山区', '3');
INSERT INTO `region` VALUES ('420222', '', '', '阳新县', '3');
INSERT INTO `region` VALUES ('420281', '', '', '大冶市', '3');
INSERT INTO `region` VALUES ('420300', '', '十堰市', '', '2');
INSERT INTO `region` VALUES ('420301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420302', '', '', '茅箭区', '3');
INSERT INTO `region` VALUES ('420303', '', '', '张湾区', '3');
INSERT INTO `region` VALUES ('420321', '', '', '郧县', '3');
INSERT INTO `region` VALUES ('420322', '', '', '郧西县', '3');
INSERT INTO `region` VALUES ('420323', '', '', '竹山县', '3');
INSERT INTO `region` VALUES ('420324', '', '', '竹溪县', '3');
INSERT INTO `region` VALUES ('420325', '', '', '房县', '3');
INSERT INTO `region` VALUES ('420381', '', '', '丹江口市', '3');
INSERT INTO `region` VALUES ('420500', '', '宜昌市', '', '2');
INSERT INTO `region` VALUES ('420501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420502', '', '', '西陵区', '3');
INSERT INTO `region` VALUES ('420503', '', '', '伍家岗区', '3');
INSERT INTO `region` VALUES ('420504', '', '', '点军区', '3');
INSERT INTO `region` VALUES ('420505', '', '', '猇亭区', '3');
INSERT INTO `region` VALUES ('420506', '', '', '夷陵区', '3');
INSERT INTO `region` VALUES ('420525', '', '', '远安县', '3');
INSERT INTO `region` VALUES ('420526', '', '', '兴山县', '3');
INSERT INTO `region` VALUES ('420527', '', '', '秭归县', '3');
INSERT INTO `region` VALUES ('420528', '', '', '长阳土家族自治县', '3');
INSERT INTO `region` VALUES ('420529', '', '', '五峰土家族自治县', '3');
INSERT INTO `region` VALUES ('420581', '', '', '宜都市', '3');
INSERT INTO `region` VALUES ('420582', '', '', '当阳市', '3');
INSERT INTO `region` VALUES ('420583', '', '', '枝江市', '3');
INSERT INTO `region` VALUES ('420600', '', '襄阳市', '', '2');
INSERT INTO `region` VALUES ('420601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420602', '', '', '襄城区', '3');
INSERT INTO `region` VALUES ('420606', '', '', '樊城区', '3');
INSERT INTO `region` VALUES ('420607', '', '', '襄州区', '3');
INSERT INTO `region` VALUES ('420624', '', '', '南漳县', '3');
INSERT INTO `region` VALUES ('420625', '', '', '谷城县', '3');
INSERT INTO `region` VALUES ('420626', '', '', '保康县', '3');
INSERT INTO `region` VALUES ('420682', '', '', '老河口市', '3');
INSERT INTO `region` VALUES ('420683', '', '', '枣阳市', '3');
INSERT INTO `region` VALUES ('420684', '', '', '宜城市', '3');
INSERT INTO `region` VALUES ('420700', '', '鄂州市', '', '2');
INSERT INTO `region` VALUES ('420701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420702', '', '', '梁子湖区', '3');
INSERT INTO `region` VALUES ('420703', '', '', '华容区', '3');
INSERT INTO `region` VALUES ('420704', '', '', '鄂城区', '3');
INSERT INTO `region` VALUES ('420800', '', '荆门市', '', '2');
INSERT INTO `region` VALUES ('420801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420802', '', '', '东宝区', '3');
INSERT INTO `region` VALUES ('420804', '', '', '掇刀区', '3');
INSERT INTO `region` VALUES ('420821', '', '', '京山县', '3');
INSERT INTO `region` VALUES ('420822', '', '', '沙洋县', '3');
INSERT INTO `region` VALUES ('420881', '', '', '钟祥市', '3');
INSERT INTO `region` VALUES ('420900', '', '孝感市', '', '2');
INSERT INTO `region` VALUES ('420901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('420902', '', '', '孝南区', '3');
INSERT INTO `region` VALUES ('420921', '', '', '孝昌县', '3');
INSERT INTO `region` VALUES ('420922', '', '', '大悟县', '3');
INSERT INTO `region` VALUES ('420923', '', '', '云梦县', '3');
INSERT INTO `region` VALUES ('420981', '', '', '应城市', '3');
INSERT INTO `region` VALUES ('420982', '', '', '安陆市', '3');
INSERT INTO `region` VALUES ('420984', '', '', '汉川市', '3');
INSERT INTO `region` VALUES ('421000', '', '荆州市', '', '2');
INSERT INTO `region` VALUES ('421001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('421002', '', '', '沙市区', '3');
INSERT INTO `region` VALUES ('421003', '', '', '荆州区', '3');
INSERT INTO `region` VALUES ('421022', '', '', '公安县', '3');
INSERT INTO `region` VALUES ('421023', '', '', '监利县', '3');
INSERT INTO `region` VALUES ('421024', '', '', '江陵县', '3');
INSERT INTO `region` VALUES ('421081', '', '', '石首市', '3');
INSERT INTO `region` VALUES ('421083', '', '', '洪湖市', '3');
INSERT INTO `region` VALUES ('421087', '', '', '松滋市', '3');
INSERT INTO `region` VALUES ('421100', '', '黄冈市', '', '2');
INSERT INTO `region` VALUES ('421101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('421102', '', '', '黄州区', '3');
INSERT INTO `region` VALUES ('421121', '', '', '团风县', '3');
INSERT INTO `region` VALUES ('421122', '', '', '红安县', '3');
INSERT INTO `region` VALUES ('421123', '', '', '罗田县', '3');
INSERT INTO `region` VALUES ('421124', '', '', '英山县', '3');
INSERT INTO `region` VALUES ('421125', '', '', '浠水县', '3');
INSERT INTO `region` VALUES ('421126', '', '', '蕲春县', '3');
INSERT INTO `region` VALUES ('421127', '', '', '黄梅县', '3');
INSERT INTO `region` VALUES ('421181', '', '', '麻城市', '3');
INSERT INTO `region` VALUES ('421182', '', '', '武穴市', '3');
INSERT INTO `region` VALUES ('421200', '', '咸宁市', '', '2');
INSERT INTO `region` VALUES ('421201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('421202', '', '', '咸安区', '3');
INSERT INTO `region` VALUES ('421221', '', '', '嘉鱼县', '3');
INSERT INTO `region` VALUES ('421222', '', '', '通城县', '3');
INSERT INTO `region` VALUES ('421223', '', '', '崇阳县', '3');
INSERT INTO `region` VALUES ('421224', '', '', '通山县', '3');
INSERT INTO `region` VALUES ('421281', '', '', '赤壁市', '3');
INSERT INTO `region` VALUES ('421300', '', '随州市', '', '2');
INSERT INTO `region` VALUES ('421301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('421303', '', '', '曾都区', '3');
INSERT INTO `region` VALUES ('421321', '', '', '随县', '3');
INSERT INTO `region` VALUES ('421381', '', '', '广水市', '3');
INSERT INTO `region` VALUES ('422800', '', '恩施土家族苗族自治州', '', '2');
INSERT INTO `region` VALUES ('422801', '', '', '恩施市', '3');
INSERT INTO `region` VALUES ('422802', '', '', '利川市', '3');
INSERT INTO `region` VALUES ('422822', '', '', '建始县', '3');
INSERT INTO `region` VALUES ('422823', '', '', '巴东县', '3');
INSERT INTO `region` VALUES ('422825', '', '', '宣恩县', '3');
INSERT INTO `region` VALUES ('422826', '', '', '咸丰县', '3');
INSERT INTO `region` VALUES ('422827', '', '', '来凤县', '3');
INSERT INTO `region` VALUES ('422828', '', '', '鹤峰县', '3');
INSERT INTO `region` VALUES ('429000', '', '省直辖县级行政区划', '', '2');
INSERT INTO `region` VALUES ('429004', '', '', '仙桃市', '3');
INSERT INTO `region` VALUES ('429005', '', '', '潜江市', '3');
INSERT INTO `region` VALUES ('429006', '', '', '天门市', '3');
INSERT INTO `region` VALUES ('429021', '', '', '神农架林区', '3');
INSERT INTO `region` VALUES ('430000', '湖南省', '', '', '1');
INSERT INTO `region` VALUES ('430100', '', '长沙市', '', '2');
INSERT INTO `region` VALUES ('430101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430102', '', '', '芙蓉区', '3');
INSERT INTO `region` VALUES ('430103', '', '', '天心区', '3');
INSERT INTO `region` VALUES ('430104', '', '', '岳麓区', '3');
INSERT INTO `region` VALUES ('430105', '', '', '开福区', '3');
INSERT INTO `region` VALUES ('430111', '', '', '雨花区', '3');
INSERT INTO `region` VALUES ('430112', '', '', '望城区', '3');
INSERT INTO `region` VALUES ('430121', '', '', '长沙县', '3');
INSERT INTO `region` VALUES ('430124', '', '', '宁乡县', '3');
INSERT INTO `region` VALUES ('430181', '', '', '浏阳市', '3');
INSERT INTO `region` VALUES ('430200', '', '株洲市', '', '2');
INSERT INTO `region` VALUES ('430201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430202', '', '', '荷塘区', '3');
INSERT INTO `region` VALUES ('430203', '', '', '芦淞区', '3');
INSERT INTO `region` VALUES ('430204', '', '', '石峰区', '3');
INSERT INTO `region` VALUES ('430211', '', '', '天元区', '3');
INSERT INTO `region` VALUES ('430221', '', '', '株洲县', '3');
INSERT INTO `region` VALUES ('430223', '', '', '攸县', '3');
INSERT INTO `region` VALUES ('430224', '', '', '茶陵县', '3');
INSERT INTO `region` VALUES ('430225', '', '', '炎陵县', '3');
INSERT INTO `region` VALUES ('430281', '', '', '醴陵市', '3');
INSERT INTO `region` VALUES ('430300', '', '湘潭市', '', '2');
INSERT INTO `region` VALUES ('430301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430302', '', '', '雨湖区', '3');
INSERT INTO `region` VALUES ('430304', '', '', '岳塘区', '3');
INSERT INTO `region` VALUES ('430321', '', '', '湘潭县', '3');
INSERT INTO `region` VALUES ('430381', '', '', '湘乡市', '3');
INSERT INTO `region` VALUES ('430382', '', '', '韶山市', '3');
INSERT INTO `region` VALUES ('430400', '', '衡阳市', '', '2');
INSERT INTO `region` VALUES ('430401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430405', '', '', '珠晖区', '3');
INSERT INTO `region` VALUES ('430406', '', '', '雁峰区', '3');
INSERT INTO `region` VALUES ('430407', '', '', '石鼓区', '3');
INSERT INTO `region` VALUES ('430408', '', '', '蒸湘区', '3');
INSERT INTO `region` VALUES ('430412', '', '', '南岳区', '3');
INSERT INTO `region` VALUES ('430421', '', '', '衡阳县', '3');
INSERT INTO `region` VALUES ('430422', '', '', '衡南县', '3');
INSERT INTO `region` VALUES ('430423', '', '', '衡山县', '3');
INSERT INTO `region` VALUES ('430424', '', '', '衡东县', '3');
INSERT INTO `region` VALUES ('430426', '', '', '祁东县', '3');
INSERT INTO `region` VALUES ('430481', '', '', '耒阳市', '3');
INSERT INTO `region` VALUES ('430482', '', '', '常宁市', '3');
INSERT INTO `region` VALUES ('430500', '', '邵阳市', '', '2');
INSERT INTO `region` VALUES ('430501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430502', '', '', '双清区', '3');
INSERT INTO `region` VALUES ('430503', '', '', '大祥区', '3');
INSERT INTO `region` VALUES ('430511', '', '', '北塔区', '3');
INSERT INTO `region` VALUES ('430521', '', '', '邵东县', '3');
INSERT INTO `region` VALUES ('430522', '', '', '新邵县', '3');
INSERT INTO `region` VALUES ('430523', '', '', '邵阳县', '3');
INSERT INTO `region` VALUES ('430524', '', '', '隆回县', '3');
INSERT INTO `region` VALUES ('430525', '', '', '洞口县', '3');
INSERT INTO `region` VALUES ('430527', '', '', '绥宁县', '3');
INSERT INTO `region` VALUES ('430528', '', '', '新宁县', '3');
INSERT INTO `region` VALUES ('430529', '', '', '城步苗族自治县', '3');
INSERT INTO `region` VALUES ('430581', '', '', '武冈市', '3');
INSERT INTO `region` VALUES ('430600', '', '岳阳市', '', '2');
INSERT INTO `region` VALUES ('430601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430602', '', '', '岳阳楼区', '3');
INSERT INTO `region` VALUES ('430603', '', '', '云溪区', '3');
INSERT INTO `region` VALUES ('430611', '', '', '君山区', '3');
INSERT INTO `region` VALUES ('430621', '', '', '岳阳县', '3');
INSERT INTO `region` VALUES ('430623', '', '', '华容县', '3');
INSERT INTO `region` VALUES ('430624', '', '', '湘阴县', '3');
INSERT INTO `region` VALUES ('430626', '', '', '平江县', '3');
INSERT INTO `region` VALUES ('430681', '', '', '汨罗市', '3');
INSERT INTO `region` VALUES ('430682', '', '', '临湘市', '3');
INSERT INTO `region` VALUES ('430700', '', '常德市', '', '2');
INSERT INTO `region` VALUES ('430701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430702', '', '', '武陵区', '3');
INSERT INTO `region` VALUES ('430703', '', '', '鼎城区', '3');
INSERT INTO `region` VALUES ('430721', '', '', '安乡县', '3');
INSERT INTO `region` VALUES ('430722', '', '', '汉寿县', '3');
INSERT INTO `region` VALUES ('430723', '', '', '澧县', '3');
INSERT INTO `region` VALUES ('430724', '', '', '临澧县', '3');
INSERT INTO `region` VALUES ('430725', '', '', '桃源县', '3');
INSERT INTO `region` VALUES ('430726', '', '', '石门县', '3');
INSERT INTO `region` VALUES ('430781', '', '', '津市市', '3');
INSERT INTO `region` VALUES ('430800', '', '张家界市', '', '2');
INSERT INTO `region` VALUES ('430801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430802', '', '', '永定区', '3');
INSERT INTO `region` VALUES ('430811', '', '', '武陵源区', '3');
INSERT INTO `region` VALUES ('430821', '', '', '慈利县', '3');
INSERT INTO `region` VALUES ('430822', '', '', '桑植县', '3');
INSERT INTO `region` VALUES ('430900', '', '益阳市', '', '2');
INSERT INTO `region` VALUES ('430901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('430902', '', '', '资阳区', '3');
INSERT INTO `region` VALUES ('430903', '', '', '赫山区', '3');
INSERT INTO `region` VALUES ('430921', '', '', '南县', '3');
INSERT INTO `region` VALUES ('430922', '', '', '桃江县', '3');
INSERT INTO `region` VALUES ('430923', '', '', '安化县', '3');
INSERT INTO `region` VALUES ('430981', '', '', '沅江市', '3');
INSERT INTO `region` VALUES ('431000', '', '郴州市', '', '2');
INSERT INTO `region` VALUES ('431001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('431002', '', '', '北湖区', '3');
INSERT INTO `region` VALUES ('431003', '', '', '苏仙区', '3');
INSERT INTO `region` VALUES ('431021', '', '', '桂阳县', '3');
INSERT INTO `region` VALUES ('431022', '', '', '宜章县', '3');
INSERT INTO `region` VALUES ('431023', '', '', '永兴县', '3');
INSERT INTO `region` VALUES ('431024', '', '', '嘉禾县', '3');
INSERT INTO `region` VALUES ('431025', '', '', '临武县', '3');
INSERT INTO `region` VALUES ('431026', '', '', '汝城县', '3');
INSERT INTO `region` VALUES ('431027', '', '', '桂东县', '3');
INSERT INTO `region` VALUES ('431028', '', '', '安仁县', '3');
INSERT INTO `region` VALUES ('431081', '', '', '资兴市', '3');
INSERT INTO `region` VALUES ('431100', '', '永州市', '', '2');
INSERT INTO `region` VALUES ('431101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('431102', '', '', '零陵区', '3');
INSERT INTO `region` VALUES ('431103', '', '', '冷水滩区', '3');
INSERT INTO `region` VALUES ('431121', '', '', '祁阳县', '3');
INSERT INTO `region` VALUES ('431122', '', '', '东安县', '3');
INSERT INTO `region` VALUES ('431123', '', '', '双牌县', '3');
INSERT INTO `region` VALUES ('431124', '', '', '道县', '3');
INSERT INTO `region` VALUES ('431125', '', '', '江永县', '3');
INSERT INTO `region` VALUES ('431126', '', '', '宁远县', '3');
INSERT INTO `region` VALUES ('431127', '', '', '蓝山县', '3');
INSERT INTO `region` VALUES ('431128', '', '', '新田县', '3');
INSERT INTO `region` VALUES ('431129', '', '', '江华瑶族自治县', '3');
INSERT INTO `region` VALUES ('431200', '', '怀化市', '', '2');
INSERT INTO `region` VALUES ('431201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('431202', '', '', '鹤城区', '3');
INSERT INTO `region` VALUES ('431221', '', '', '中方县', '3');
INSERT INTO `region` VALUES ('431222', '', '', '沅陵县', '3');
INSERT INTO `region` VALUES ('431223', '', '', '辰溪县', '3');
INSERT INTO `region` VALUES ('431224', '', '', '溆浦县', '3');
INSERT INTO `region` VALUES ('431225', '', '', '会同县', '3');
INSERT INTO `region` VALUES ('431226', '', '', '麻阳苗族自治县', '3');
INSERT INTO `region` VALUES ('431227', '', '', '新晃侗族自治县', '3');
INSERT INTO `region` VALUES ('431228', '', '', '芷江侗族自治县', '3');
INSERT INTO `region` VALUES ('431229', '', '', '靖州苗族侗族自治县', '3');
INSERT INTO `region` VALUES ('431230', '', '', '通道侗族自治县', '3');
INSERT INTO `region` VALUES ('431281', '', '', '洪江市', '3');
INSERT INTO `region` VALUES ('431300', '', '娄底市', '', '2');
INSERT INTO `region` VALUES ('431301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('431302', '', '', '娄星区', '3');
INSERT INTO `region` VALUES ('431321', '', '', '双峰县', '3');
INSERT INTO `region` VALUES ('431322', '', '', '新化县', '3');
INSERT INTO `region` VALUES ('431381', '', '', '冷水江市', '3');
INSERT INTO `region` VALUES ('431382', '', '', '涟源市', '3');
INSERT INTO `region` VALUES ('433100', '', '湘西土家族苗族自治州', '', '2');
INSERT INTO `region` VALUES ('433101', '', '', '吉首市', '3');
INSERT INTO `region` VALUES ('433122', '', '', '泸溪县', '3');
INSERT INTO `region` VALUES ('433123', '', '', '凤凰县', '3');
INSERT INTO `region` VALUES ('433124', '', '', '花垣县', '3');
INSERT INTO `region` VALUES ('433125', '', '', '保靖县', '3');
INSERT INTO `region` VALUES ('433126', '', '', '古丈县', '3');
INSERT INTO `region` VALUES ('433127', '', '', '永顺县', '3');
INSERT INTO `region` VALUES ('433130', '', '', '龙山县', '3');
INSERT INTO `region` VALUES ('440000', '广东省', '', '', '1');
INSERT INTO `region` VALUES ('440100', '', '广州市', '', '2');
INSERT INTO `region` VALUES ('440101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440103', '', '', '荔湾区', '3');
INSERT INTO `region` VALUES ('440104', '', '', '越秀区', '3');
INSERT INTO `region` VALUES ('440105', '', '', '海珠区', '3');
INSERT INTO `region` VALUES ('440106', '', '', '天河区', '3');
INSERT INTO `region` VALUES ('440111', '', '', '白云区', '3');
INSERT INTO `region` VALUES ('440112', '', '', '黄埔区', '3');
INSERT INTO `region` VALUES ('440113', '', '', '番禺区', '3');
INSERT INTO `region` VALUES ('440114', '', '', '花都区', '3');
INSERT INTO `region` VALUES ('440115', '', '', '南沙区', '3');
INSERT INTO `region` VALUES ('440116', '', '', '萝岗区', '3');
INSERT INTO `region` VALUES ('440183', '', '', '增城市', '3');
INSERT INTO `region` VALUES ('440184', '', '', '从化市', '3');
INSERT INTO `region` VALUES ('440200', '', '韶关市', '', '2');
INSERT INTO `region` VALUES ('440201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440203', '', '', '武江区', '3');
INSERT INTO `region` VALUES ('440204', '', '', '浈江区', '3');
INSERT INTO `region` VALUES ('440205', '', '', '曲江区', '3');
INSERT INTO `region` VALUES ('440222', '', '', '始兴县', '3');
INSERT INTO `region` VALUES ('440224', '', '', '仁化县', '3');
INSERT INTO `region` VALUES ('440229', '', '', '翁源县', '3');
INSERT INTO `region` VALUES ('440232', '', '', '乳源瑶族自治县', '3');
INSERT INTO `region` VALUES ('440233', '', '', '新丰县', '3');
INSERT INTO `region` VALUES ('440281', '', '', '乐昌市', '3');
INSERT INTO `region` VALUES ('440282', '', '', '南雄市', '3');
INSERT INTO `region` VALUES ('440300', '', '深圳市', '', '2');
INSERT INTO `region` VALUES ('440301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440303', '', '', '罗湖区', '3');
INSERT INTO `region` VALUES ('440304', '', '', '福田区', '3');
INSERT INTO `region` VALUES ('440305', '', '', '南山区', '3');
INSERT INTO `region` VALUES ('440306', '', '', '宝安区', '3');
INSERT INTO `region` VALUES ('440307', '', '', '龙岗区', '3');
INSERT INTO `region` VALUES ('440308', '', '', '盐田区', '3');
INSERT INTO `region` VALUES ('440400', '', '珠海市', '', '2');
INSERT INTO `region` VALUES ('440401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440402', '', '', '香洲区', '3');
INSERT INTO `region` VALUES ('440403', '', '', '斗门区', '3');
INSERT INTO `region` VALUES ('440404', '', '', '金湾区', '3');
INSERT INTO `region` VALUES ('440500', '', '汕头市', '', '2');
INSERT INTO `region` VALUES ('440501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440507', '', '', '龙湖区', '3');
INSERT INTO `region` VALUES ('440511', '', '', '金平区', '3');
INSERT INTO `region` VALUES ('440512', '', '', '濠江区', '3');
INSERT INTO `region` VALUES ('440513', '', '', '潮阳区', '3');
INSERT INTO `region` VALUES ('440514', '', '', '潮南区', '3');
INSERT INTO `region` VALUES ('440515', '', '', '澄海区', '3');
INSERT INTO `region` VALUES ('440523', '', '', '南澳县', '3');
INSERT INTO `region` VALUES ('440600', '', '佛山市', '', '2');
INSERT INTO `region` VALUES ('440601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440604', '', '', '禅城区', '3');
INSERT INTO `region` VALUES ('440605', '', '', '南海区', '3');
INSERT INTO `region` VALUES ('440606', '', '', '顺德区', '3');
INSERT INTO `region` VALUES ('440607', '', '', '三水区', '3');
INSERT INTO `region` VALUES ('440608', '', '', '高明区', '3');
INSERT INTO `region` VALUES ('440700', '', '江门市', '', '2');
INSERT INTO `region` VALUES ('440701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440703', '', '', '蓬江区', '3');
INSERT INTO `region` VALUES ('440704', '', '', '江海区', '3');
INSERT INTO `region` VALUES ('440705', '', '', '新会区', '3');
INSERT INTO `region` VALUES ('440781', '', '', '台山市', '3');
INSERT INTO `region` VALUES ('440783', '', '', '开平市', '3');
INSERT INTO `region` VALUES ('440784', '', '', '鹤山市', '3');
INSERT INTO `region` VALUES ('440785', '', '', '恩平市', '3');
INSERT INTO `region` VALUES ('440800', '', '湛江市', '', '2');
INSERT INTO `region` VALUES ('440801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440802', '', '', '赤坎区', '3');
INSERT INTO `region` VALUES ('440803', '', '', '霞山区', '3');
INSERT INTO `region` VALUES ('440804', '', '', '坡头区', '3');
INSERT INTO `region` VALUES ('440811', '', '', '麻章区', '3');
INSERT INTO `region` VALUES ('440823', '', '', '遂溪县', '3');
INSERT INTO `region` VALUES ('440825', '', '', '徐闻县', '3');
INSERT INTO `region` VALUES ('440881', '', '', '廉江市', '3');
INSERT INTO `region` VALUES ('440882', '', '', '雷州市', '3');
INSERT INTO `region` VALUES ('440883', '', '', '吴川市', '3');
INSERT INTO `region` VALUES ('440900', '', '茂名市', '', '2');
INSERT INTO `region` VALUES ('440901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('440902', '', '', '茂南区', '3');
INSERT INTO `region` VALUES ('440903', '', '', '茂港区', '3');
INSERT INTO `region` VALUES ('440923', '', '', '电白县', '3');
INSERT INTO `region` VALUES ('440981', '', '', '高州市', '3');
INSERT INTO `region` VALUES ('440982', '', '', '化州市', '3');
INSERT INTO `region` VALUES ('440983', '', '', '信宜市', '3');
INSERT INTO `region` VALUES ('441200', '', '肇庆市', '', '2');
INSERT INTO `region` VALUES ('441201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441202', '', '', '端州区', '3');
INSERT INTO `region` VALUES ('441203', '', '', '鼎湖区', '3');
INSERT INTO `region` VALUES ('441223', '', '', '广宁县', '3');
INSERT INTO `region` VALUES ('441224', '', '', '怀集县', '3');
INSERT INTO `region` VALUES ('441225', '', '', '封开县', '3');
INSERT INTO `region` VALUES ('441226', '', '', '德庆县', '3');
INSERT INTO `region` VALUES ('441283', '', '', '高要市', '3');
INSERT INTO `region` VALUES ('441284', '', '', '四会市', '3');
INSERT INTO `region` VALUES ('441300', '', '惠州市', '', '2');
INSERT INTO `region` VALUES ('441301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441302', '', '', '惠城区', '3');
INSERT INTO `region` VALUES ('441303', '', '', '惠阳区', '3');
INSERT INTO `region` VALUES ('441322', '', '', '博罗县', '3');
INSERT INTO `region` VALUES ('441323', '', '', '惠东县', '3');
INSERT INTO `region` VALUES ('441324', '', '', '龙门县', '3');
INSERT INTO `region` VALUES ('441400', '', '梅州市', '', '2');
INSERT INTO `region` VALUES ('441401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441402', '', '', '梅江区', '3');
INSERT INTO `region` VALUES ('441421', '', '', '梅县', '3');
INSERT INTO `region` VALUES ('441422', '', '', '大埔县', '3');
INSERT INTO `region` VALUES ('441423', '', '', '丰顺县', '3');
INSERT INTO `region` VALUES ('441424', '', '', '五华县', '3');
INSERT INTO `region` VALUES ('441426', '', '', '平远县', '3');
INSERT INTO `region` VALUES ('441427', '', '', '蕉岭县', '3');
INSERT INTO `region` VALUES ('441481', '', '', '兴宁市', '3');
INSERT INTO `region` VALUES ('441500', '', '汕尾市', '', '2');
INSERT INTO `region` VALUES ('441501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441502', '', '', '城区', '3');
INSERT INTO `region` VALUES ('441521', '', '', '海丰县', '3');
INSERT INTO `region` VALUES ('441523', '', '', '陆河县', '3');
INSERT INTO `region` VALUES ('441581', '', '', '陆丰市', '3');
INSERT INTO `region` VALUES ('441600', '', '河源市', '', '2');
INSERT INTO `region` VALUES ('441601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441602', '', '', '源城区', '3');
INSERT INTO `region` VALUES ('441621', '', '', '紫金县', '3');
INSERT INTO `region` VALUES ('441622', '', '', '龙川县', '3');
INSERT INTO `region` VALUES ('441623', '', '', '连平县', '3');
INSERT INTO `region` VALUES ('441624', '', '', '和平县', '3');
INSERT INTO `region` VALUES ('441625', '', '', '东源县', '3');
INSERT INTO `region` VALUES ('441700', '', '阳江市', '', '2');
INSERT INTO `region` VALUES ('441701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441702', '', '', '江城区', '3');
INSERT INTO `region` VALUES ('441721', '', '', '阳西县', '3');
INSERT INTO `region` VALUES ('441723', '', '', '阳东县', '3');
INSERT INTO `region` VALUES ('441781', '', '', '阳春市', '3');
INSERT INTO `region` VALUES ('441800', '', '清远市', '', '2');
INSERT INTO `region` VALUES ('441801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('441802', '', '', '清城区', '3');
INSERT INTO `region` VALUES ('441803', '', '', '清新区', '3');
INSERT INTO `region` VALUES ('441821', '', '', '佛冈县', '3');
INSERT INTO `region` VALUES ('441823', '', '', '阳山县', '3');
INSERT INTO `region` VALUES ('441825', '', '', '连山壮族瑶族自治县', '3');
INSERT INTO `region` VALUES ('441826', '', '', '连南瑶族自治县', '3');
INSERT INTO `region` VALUES ('441881', '', '', '英德市', '3');
INSERT INTO `region` VALUES ('441882', '', '', '连州市', '3');
INSERT INTO `region` VALUES ('441900', '', '东莞市', '', '2');
INSERT INTO `region` VALUES ('442000', '', '中山市', '', '2');
INSERT INTO `region` VALUES ('445100', '', '潮州市', '', '2');
INSERT INTO `region` VALUES ('445101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('445102', '', '', '湘桥区', '3');
INSERT INTO `region` VALUES ('445103', '', '', '潮安区', '3');
INSERT INTO `region` VALUES ('445122', '', '', '饶平县', '3');
INSERT INTO `region` VALUES ('445200', '', '揭阳市', '', '2');
INSERT INTO `region` VALUES ('445201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('445202', '', '', '榕城区', '3');
INSERT INTO `region` VALUES ('445203', '', '', '揭东区', '3');
INSERT INTO `region` VALUES ('445222', '', '', '揭西县', '3');
INSERT INTO `region` VALUES ('445224', '', '', '惠来县', '3');
INSERT INTO `region` VALUES ('445281', '', '', '普宁市', '3');
INSERT INTO `region` VALUES ('445300', '', '云浮市', '', '2');
INSERT INTO `region` VALUES ('445301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('445302', '', '', '云城区', '3');
INSERT INTO `region` VALUES ('445321', '', '', '新兴县', '3');
INSERT INTO `region` VALUES ('445322', '', '', '郁南县', '3');
INSERT INTO `region` VALUES ('445323', '', '', '云安县', '3');
INSERT INTO `region` VALUES ('445381', '', '', '罗定市', '3');
INSERT INTO `region` VALUES ('450000', '广西壮族自治区', '', '', '1');
INSERT INTO `region` VALUES ('450100', '', '南宁市', '', '2');
INSERT INTO `region` VALUES ('450101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450102', '', '', '兴宁区', '3');
INSERT INTO `region` VALUES ('450103', '', '', '青秀区', '3');
INSERT INTO `region` VALUES ('450105', '', '', '江南区', '3');
INSERT INTO `region` VALUES ('450107', '', '', '西乡塘区', '3');
INSERT INTO `region` VALUES ('450108', '', '', '良庆区', '3');
INSERT INTO `region` VALUES ('450109', '', '', '邕宁区', '3');
INSERT INTO `region` VALUES ('450122', '', '', '武鸣县', '3');
INSERT INTO `region` VALUES ('450123', '', '', '隆安县', '3');
INSERT INTO `region` VALUES ('450124', '', '', '马山县', '3');
INSERT INTO `region` VALUES ('450125', '', '', '上林县', '3');
INSERT INTO `region` VALUES ('450126', '', '', '宾阳县', '3');
INSERT INTO `region` VALUES ('450127', '', '', '横县', '3');
INSERT INTO `region` VALUES ('450200', '', '柳州市', '', '2');
INSERT INTO `region` VALUES ('450201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450202', '', '', '城中区', '3');
INSERT INTO `region` VALUES ('450203', '', '', '鱼峰区', '3');
INSERT INTO `region` VALUES ('450204', '', '', '柳南区', '3');
INSERT INTO `region` VALUES ('450205', '', '', '柳北区', '3');
INSERT INTO `region` VALUES ('450221', '', '', '柳江县', '3');
INSERT INTO `region` VALUES ('450222', '', '', '柳城县', '3');
INSERT INTO `region` VALUES ('450223', '', '', '鹿寨县', '3');
INSERT INTO `region` VALUES ('450224', '', '', '融安县', '3');
INSERT INTO `region` VALUES ('450225', '', '', '融水苗族自治县', '3');
INSERT INTO `region` VALUES ('450226', '', '', '三江侗族自治县', '3');
INSERT INTO `region` VALUES ('450300', '', '桂林市', '', '2');
INSERT INTO `region` VALUES ('450301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450302', '', '', '秀峰区', '3');
INSERT INTO `region` VALUES ('450303', '', '', '叠彩区', '3');
INSERT INTO `region` VALUES ('450304', '', '', '象山区', '3');
INSERT INTO `region` VALUES ('450305', '', '', '七星区', '3');
INSERT INTO `region` VALUES ('450311', '', '', '雁山区', '3');
INSERT INTO `region` VALUES ('450312', '', '', '临桂区', '3');
INSERT INTO `region` VALUES ('450321', '', '', '阳朔县', '3');
INSERT INTO `region` VALUES ('450323', '', '', '灵川县', '3');
INSERT INTO `region` VALUES ('450324', '', '', '全州县', '3');
INSERT INTO `region` VALUES ('450325', '', '', '兴安县', '3');
INSERT INTO `region` VALUES ('450326', '', '', '永福县', '3');
INSERT INTO `region` VALUES ('450327', '', '', '灌阳县', '3');
INSERT INTO `region` VALUES ('450328', '', '', '龙胜各族自治县', '3');
INSERT INTO `region` VALUES ('450329', '', '', '资源县', '3');
INSERT INTO `region` VALUES ('450330', '', '', '平乐县', '3');
INSERT INTO `region` VALUES ('450331', '', '', '荔浦县', '3');
INSERT INTO `region` VALUES ('450332', '', '', '恭城瑶族自治县', '3');
INSERT INTO `region` VALUES ('450400', '', '梧州市', '', '2');
INSERT INTO `region` VALUES ('450401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450403', '', '', '万秀区', '3');
INSERT INTO `region` VALUES ('450405', '', '', '长洲区', '3');
INSERT INTO `region` VALUES ('450406', '', '', '龙圩区', '3');
INSERT INTO `region` VALUES ('450421', '', '', '苍梧县', '3');
INSERT INTO `region` VALUES ('450422', '', '', '藤县', '3');
INSERT INTO `region` VALUES ('450423', '', '', '蒙山县', '3');
INSERT INTO `region` VALUES ('450481', '', '', '岑溪市', '3');
INSERT INTO `region` VALUES ('450500', '', '北海市', '', '2');
INSERT INTO `region` VALUES ('450501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450502', '', '', '海城区', '3');
INSERT INTO `region` VALUES ('450503', '', '', '银海区', '3');
INSERT INTO `region` VALUES ('450512', '', '', '铁山港区', '3');
INSERT INTO `region` VALUES ('450521', '', '', '合浦县', '3');
INSERT INTO `region` VALUES ('450600', '', '防城港市', '', '2');
INSERT INTO `region` VALUES ('450601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450602', '', '', '港口区', '3');
INSERT INTO `region` VALUES ('450603', '', '', '防城区', '3');
INSERT INTO `region` VALUES ('450621', '', '', '上思县', '3');
INSERT INTO `region` VALUES ('450681', '', '', '东兴市', '3');
INSERT INTO `region` VALUES ('450700', '', '钦州市', '', '2');
INSERT INTO `region` VALUES ('450701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450702', '', '', '钦南区', '3');
INSERT INTO `region` VALUES ('450703', '', '', '钦北区', '3');
INSERT INTO `region` VALUES ('450721', '', '', '灵山县', '3');
INSERT INTO `region` VALUES ('450722', '', '', '浦北县', '3');
INSERT INTO `region` VALUES ('450800', '', '贵港市', '', '2');
INSERT INTO `region` VALUES ('450801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450802', '', '', '港北区', '3');
INSERT INTO `region` VALUES ('450803', '', '', '港南区', '3');
INSERT INTO `region` VALUES ('450804', '', '', '覃塘区', '3');
INSERT INTO `region` VALUES ('450821', '', '', '平南县', '3');
INSERT INTO `region` VALUES ('450881', '', '', '桂平市', '3');
INSERT INTO `region` VALUES ('450900', '', '玉林市', '', '2');
INSERT INTO `region` VALUES ('450901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('450902', '', '', '玉州区', '3');
INSERT INTO `region` VALUES ('450903', '', '', '福绵区', '3');
INSERT INTO `region` VALUES ('450921', '', '', '容县', '3');
INSERT INTO `region` VALUES ('450922', '', '', '陆川县', '3');
INSERT INTO `region` VALUES ('450923', '', '', '博白县', '3');
INSERT INTO `region` VALUES ('450924', '', '', '兴业县', '3');
INSERT INTO `region` VALUES ('450981', '', '', '北流市', '3');
INSERT INTO `region` VALUES ('451000', '', '百色市', '', '2');
INSERT INTO `region` VALUES ('451001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('451002', '', '', '右江区', '3');
INSERT INTO `region` VALUES ('451021', '', '', '田阳县', '3');
INSERT INTO `region` VALUES ('451022', '', '', '田东县', '3');
INSERT INTO `region` VALUES ('451023', '', '', '平果县', '3');
INSERT INTO `region` VALUES ('451024', '', '', '德保县', '3');
INSERT INTO `region` VALUES ('451025', '', '', '靖西县', '3');
INSERT INTO `region` VALUES ('451026', '', '', '那坡县', '3');
INSERT INTO `region` VALUES ('451027', '', '', '凌云县', '3');
INSERT INTO `region` VALUES ('451028', '', '', '乐业县', '3');
INSERT INTO `region` VALUES ('451029', '', '', '田林县', '3');
INSERT INTO `region` VALUES ('451030', '', '', '西林县', '3');
INSERT INTO `region` VALUES ('451031', '', '', '隆林各族自治县', '3');
INSERT INTO `region` VALUES ('451100', '', '贺州市', '', '2');
INSERT INTO `region` VALUES ('451101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('451102', '', '', '八步区', '3');
INSERT INTO `region` VALUES ('451121', '', '', '昭平县', '3');
INSERT INTO `region` VALUES ('451122', '', '', '钟山县', '3');
INSERT INTO `region` VALUES ('451123', '', '', '富川瑶族自治县', '3');
INSERT INTO `region` VALUES ('451200', '', '河池市', '', '2');
INSERT INTO `region` VALUES ('451201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('451202', '', '', '金城江区', '3');
INSERT INTO `region` VALUES ('451221', '', '', '南丹县', '3');
INSERT INTO `region` VALUES ('451222', '', '', '天峨县', '3');
INSERT INTO `region` VALUES ('451223', '', '', '凤山县', '3');
INSERT INTO `region` VALUES ('451224', '', '', '东兰县', '3');
INSERT INTO `region` VALUES ('451225', '', '', '罗城仫佬族自治县', '3');
INSERT INTO `region` VALUES ('451226', '', '', '环江毛南族自治县', '3');
INSERT INTO `region` VALUES ('451227', '', '', '巴马瑶族自治县', '3');
INSERT INTO `region` VALUES ('451228', '', '', '都安瑶族自治县', '3');
INSERT INTO `region` VALUES ('451229', '', '', '大化瑶族自治县', '3');
INSERT INTO `region` VALUES ('451281', '', '', '宜州市', '3');
INSERT INTO `region` VALUES ('451300', '', '来宾市', '', '2');
INSERT INTO `region` VALUES ('451301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('451302', '', '', '兴宾区', '3');
INSERT INTO `region` VALUES ('451321', '', '', '忻城县', '3');
INSERT INTO `region` VALUES ('451322', '', '', '象州县', '3');
INSERT INTO `region` VALUES ('451323', '', '', '武宣县', '3');
INSERT INTO `region` VALUES ('451324', '', '', '金秀瑶族自治县', '3');
INSERT INTO `region` VALUES ('451381', '', '', '合山市', '3');
INSERT INTO `region` VALUES ('451400', '', '崇左市', '', '2');
INSERT INTO `region` VALUES ('451401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('451402', '', '', '江州区', '3');
INSERT INTO `region` VALUES ('451421', '', '', '扶绥县', '3');
INSERT INTO `region` VALUES ('451422', '', '', '宁明县', '3');
INSERT INTO `region` VALUES ('451423', '', '', '龙州县', '3');
INSERT INTO `region` VALUES ('451424', '', '', '大新县', '3');
INSERT INTO `region` VALUES ('451425', '', '', '天等县', '3');
INSERT INTO `region` VALUES ('451481', '', '', '凭祥市', '3');
INSERT INTO `region` VALUES ('460000', '海南省', '', '', '1');
INSERT INTO `region` VALUES ('460100', '', '海口市', '', '2');
INSERT INTO `region` VALUES ('460101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('460105', '', '', '秀英区', '3');
INSERT INTO `region` VALUES ('460106', '', '', '龙华区', '3');
INSERT INTO `region` VALUES ('460107', '', '', '琼山区', '3');
INSERT INTO `region` VALUES ('460108', '', '', '美兰区', '3');
INSERT INTO `region` VALUES ('460200', '', '三亚市', '', '2');
INSERT INTO `region` VALUES ('460201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('460300', '', '三沙市', '', '2');
INSERT INTO `region` VALUES ('460321', '', '', '西沙群岛', '3');
INSERT INTO `region` VALUES ('460322', '', '', '南沙群岛', '3');
INSERT INTO `region` VALUES ('460323', '', '', '中沙群岛的岛礁及其海域', '3');
INSERT INTO `region` VALUES ('469000', '', '省直辖县级行政区划', '', '2');
INSERT INTO `region` VALUES ('469001', '', '', '五指山市', '3');
INSERT INTO `region` VALUES ('469002', '', '', '琼海市', '3');
INSERT INTO `region` VALUES ('469003', '', '', '儋州市', '3');
INSERT INTO `region` VALUES ('469005', '', '', '文昌市', '3');
INSERT INTO `region` VALUES ('469006', '', '', '万宁市', '3');
INSERT INTO `region` VALUES ('469007', '', '', '东方市', '3');
INSERT INTO `region` VALUES ('469021', '', '', '定安县', '3');
INSERT INTO `region` VALUES ('469022', '', '', '屯昌县', '3');
INSERT INTO `region` VALUES ('469023', '', '', '澄迈县', '3');
INSERT INTO `region` VALUES ('469024', '', '', '临高县', '3');
INSERT INTO `region` VALUES ('469025', '', '', '白沙黎族自治县', '3');
INSERT INTO `region` VALUES ('469026', '', '', '昌江黎族自治县', '3');
INSERT INTO `region` VALUES ('469027', '', '', '乐东黎族自治县', '3');
INSERT INTO `region` VALUES ('469028', '', '', '陵水黎族自治县', '3');
INSERT INTO `region` VALUES ('469029', '', '', '保亭黎族苗族自治县', '3');
INSERT INTO `region` VALUES ('469030', '', '', '琼中黎族苗族自治县', '3');
INSERT INTO `region` VALUES ('500000', '重庆市', '', '', '1');
INSERT INTO `region` VALUES ('500100', '', '市辖区', '', '2');
INSERT INTO `region` VALUES ('500101', '', '', '万州区', '3');
INSERT INTO `region` VALUES ('500102', '', '', '涪陵区', '3');
INSERT INTO `region` VALUES ('500103', '', '', '渝中区', '3');
INSERT INTO `region` VALUES ('500104', '', '', '大渡口区', '3');
INSERT INTO `region` VALUES ('500105', '', '', '江北区', '3');
INSERT INTO `region` VALUES ('500106', '', '', '沙坪坝区', '3');
INSERT INTO `region` VALUES ('500107', '', '', '九龙坡区', '3');
INSERT INTO `region` VALUES ('500108', '', '', '南岸区', '3');
INSERT INTO `region` VALUES ('500109', '', '', '北碚区', '3');
INSERT INTO `region` VALUES ('500110', '', '', '綦江区', '3');
INSERT INTO `region` VALUES ('500111', '', '', '大足区', '3');
INSERT INTO `region` VALUES ('500112', '', '', '渝北区', '3');
INSERT INTO `region` VALUES ('500113', '', '', '巴南区', '3');
INSERT INTO `region` VALUES ('500114', '', '', '黔江区', '3');
INSERT INTO `region` VALUES ('500115', '', '', '长寿区', '3');
INSERT INTO `region` VALUES ('500116', '', '', '江津区', '3');
INSERT INTO `region` VALUES ('500117', '', '', '合川区', '3');
INSERT INTO `region` VALUES ('500118', '', '', '永川区', '3');
INSERT INTO `region` VALUES ('500119', '', '', '南川区', '3');
INSERT INTO `region` VALUES ('500200', '', '县', '', '2');
INSERT INTO `region` VALUES ('500223', '', '', '潼南县', '3');
INSERT INTO `region` VALUES ('500224', '', '', '铜梁县', '3');
INSERT INTO `region` VALUES ('500226', '', '', '荣昌县', '3');
INSERT INTO `region` VALUES ('500227', '', '', '璧山县', '3');
INSERT INTO `region` VALUES ('500228', '', '', '梁平县', '3');
INSERT INTO `region` VALUES ('500229', '', '', '城口县', '3');
INSERT INTO `region` VALUES ('500230', '', '', '丰都县', '3');
INSERT INTO `region` VALUES ('500231', '', '', '垫江县', '3');
INSERT INTO `region` VALUES ('500232', '', '', '武隆县', '3');
INSERT INTO `region` VALUES ('500233', '', '', '忠县', '3');
INSERT INTO `region` VALUES ('500234', '', '', '开县', '3');
INSERT INTO `region` VALUES ('500235', '', '', '云阳县', '3');
INSERT INTO `region` VALUES ('500236', '', '', '奉节县', '3');
INSERT INTO `region` VALUES ('500237', '', '', '巫山县', '3');
INSERT INTO `region` VALUES ('500238', '', '', '巫溪县', '3');
INSERT INTO `region` VALUES ('500240', '', '', '石柱土家族自治县', '3');
INSERT INTO `region` VALUES ('500241', '', '', '秀山土家族苗族自治县', '3');
INSERT INTO `region` VALUES ('500242', '', '', '酉阳土家族苗族自治县', '3');
INSERT INTO `region` VALUES ('500243', '', '', '彭水苗族土家族自治县', '3');
INSERT INTO `region` VALUES ('510000', '四川省', '', '', '1');
INSERT INTO `region` VALUES ('510100', '', '成都市', '', '2');
INSERT INTO `region` VALUES ('510101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510104', '', '', '锦江区', '3');
INSERT INTO `region` VALUES ('510105', '', '', '青羊区', '3');
INSERT INTO `region` VALUES ('510106', '', '', '金牛区', '3');
INSERT INTO `region` VALUES ('510107', '', '', '武侯区', '3');
INSERT INTO `region` VALUES ('510108', '', '', '成华区', '3');
INSERT INTO `region` VALUES ('510112', '', '', '龙泉驿区', '3');
INSERT INTO `region` VALUES ('510113', '', '', '青白江区', '3');
INSERT INTO `region` VALUES ('510114', '', '', '新都区', '3');
INSERT INTO `region` VALUES ('510115', '', '', '温江区', '3');
INSERT INTO `region` VALUES ('510121', '', '', '金堂县', '3');
INSERT INTO `region` VALUES ('510122', '', '', '双流县', '3');
INSERT INTO `region` VALUES ('510124', '', '', '郫县', '3');
INSERT INTO `region` VALUES ('510129', '', '', '大邑县', '3');
INSERT INTO `region` VALUES ('510131', '', '', '蒲江县', '3');
INSERT INTO `region` VALUES ('510132', '', '', '新津县', '3');
INSERT INTO `region` VALUES ('510181', '', '', '都江堰市', '3');
INSERT INTO `region` VALUES ('510182', '', '', '彭州市', '3');
INSERT INTO `region` VALUES ('510183', '', '', '邛崃市', '3');
INSERT INTO `region` VALUES ('510184', '', '', '崇州市', '3');
INSERT INTO `region` VALUES ('510300', '', '自贡市', '', '2');
INSERT INTO `region` VALUES ('510301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510302', '', '', '自流井区', '3');
INSERT INTO `region` VALUES ('510303', '', '', '贡井区', '3');
INSERT INTO `region` VALUES ('510304', '', '', '大安区', '3');
INSERT INTO `region` VALUES ('510311', '', '', '沿滩区', '3');
INSERT INTO `region` VALUES ('510321', '', '', '荣县', '3');
INSERT INTO `region` VALUES ('510322', '', '', '富顺县', '3');
INSERT INTO `region` VALUES ('510400', '', '攀枝花市', '', '2');
INSERT INTO `region` VALUES ('510401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510402', '', '', '东区', '3');
INSERT INTO `region` VALUES ('510403', '', '', '西区', '3');
INSERT INTO `region` VALUES ('510411', '', '', '仁和区', '3');
INSERT INTO `region` VALUES ('510421', '', '', '米易县', '3');
INSERT INTO `region` VALUES ('510422', '', '', '盐边县', '3');
INSERT INTO `region` VALUES ('510500', '', '泸州市', '', '2');
INSERT INTO `region` VALUES ('510501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510502', '', '', '江阳区', '3');
INSERT INTO `region` VALUES ('510503', '', '', '纳溪区', '3');
INSERT INTO `region` VALUES ('510504', '', '', '龙马潭区', '3');
INSERT INTO `region` VALUES ('510521', '', '', '泸县', '3');
INSERT INTO `region` VALUES ('510522', '', '', '合江县', '3');
INSERT INTO `region` VALUES ('510524', '', '', '叙永县', '3');
INSERT INTO `region` VALUES ('510525', '', '', '古蔺县', '3');
INSERT INTO `region` VALUES ('510600', '', '德阳市', '', '2');
INSERT INTO `region` VALUES ('510601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510603', '', '', '旌阳区', '3');
INSERT INTO `region` VALUES ('510623', '', '', '中江县', '3');
INSERT INTO `region` VALUES ('510626', '', '', '罗江县', '3');
INSERT INTO `region` VALUES ('510681', '', '', '广汉市', '3');
INSERT INTO `region` VALUES ('510682', '', '', '什邡市', '3');
INSERT INTO `region` VALUES ('510683', '', '', '绵竹市', '3');
INSERT INTO `region` VALUES ('510700', '', '绵阳市', '', '2');
INSERT INTO `region` VALUES ('510701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510703', '', '', '涪城区', '3');
INSERT INTO `region` VALUES ('510704', '', '', '游仙区', '3');
INSERT INTO `region` VALUES ('510722', '', '', '三台县', '3');
INSERT INTO `region` VALUES ('510723', '', '', '盐亭县', '3');
INSERT INTO `region` VALUES ('510724', '', '', '安县', '3');
INSERT INTO `region` VALUES ('510725', '', '', '梓潼县', '3');
INSERT INTO `region` VALUES ('510726', '', '', '北川羌族自治县', '3');
INSERT INTO `region` VALUES ('510727', '', '', '平武县', '3');
INSERT INTO `region` VALUES ('510781', '', '', '江油市', '3');
INSERT INTO `region` VALUES ('510800', '', '广元市', '', '2');
INSERT INTO `region` VALUES ('510801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510802', '', '', '利州区', '3');
INSERT INTO `region` VALUES ('510811', '', '', '元坝区', '3');
INSERT INTO `region` VALUES ('510812', '', '', '朝天区', '3');
INSERT INTO `region` VALUES ('510821', '', '', '旺苍县', '3');
INSERT INTO `region` VALUES ('510822', '', '', '青川县', '3');
INSERT INTO `region` VALUES ('510823', '', '', '剑阁县', '3');
INSERT INTO `region` VALUES ('510824', '', '', '苍溪县', '3');
INSERT INTO `region` VALUES ('510900', '', '遂宁市', '', '2');
INSERT INTO `region` VALUES ('510901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('510903', '', '', '船山区', '3');
INSERT INTO `region` VALUES ('510904', '', '', '安居区', '3');
INSERT INTO `region` VALUES ('510921', '', '', '蓬溪县', '3');
INSERT INTO `region` VALUES ('510922', '', '', '射洪县', '3');
INSERT INTO `region` VALUES ('510923', '', '', '大英县', '3');
INSERT INTO `region` VALUES ('511000', '', '内江市', '', '2');
INSERT INTO `region` VALUES ('511001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511002', '', '', '市中区', '3');
INSERT INTO `region` VALUES ('511011', '', '', '东兴区', '3');
INSERT INTO `region` VALUES ('511024', '', '', '威远县', '3');
INSERT INTO `region` VALUES ('511025', '', '', '资中县', '3');
INSERT INTO `region` VALUES ('511028', '', '', '隆昌县', '3');
INSERT INTO `region` VALUES ('511100', '', '乐山市', '', '2');
INSERT INTO `region` VALUES ('511101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511102', '', '', '市中区', '3');
INSERT INTO `region` VALUES ('511111', '', '', '沙湾区', '3');
INSERT INTO `region` VALUES ('511112', '', '', '五通桥区', '3');
INSERT INTO `region` VALUES ('511113', '', '', '金口河区', '3');
INSERT INTO `region` VALUES ('511123', '', '', '犍为县', '3');
INSERT INTO `region` VALUES ('511124', '', '', '井研县', '3');
INSERT INTO `region` VALUES ('511126', '', '', '夹江县', '3');
INSERT INTO `region` VALUES ('511129', '', '', '沐川县', '3');
INSERT INTO `region` VALUES ('511132', '', '', '峨边彝族自治县', '3');
INSERT INTO `region` VALUES ('511133', '', '', '马边彝族自治县', '3');
INSERT INTO `region` VALUES ('511181', '', '', '峨眉山市', '3');
INSERT INTO `region` VALUES ('511300', '', '南充市', '', '2');
INSERT INTO `region` VALUES ('511301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511302', '', '', '顺庆区', '3');
INSERT INTO `region` VALUES ('511303', '', '', '高坪区', '3');
INSERT INTO `region` VALUES ('511304', '', '', '嘉陵区', '3');
INSERT INTO `region` VALUES ('511321', '', '', '南部县', '3');
INSERT INTO `region` VALUES ('511322', '', '', '营山县', '3');
INSERT INTO `region` VALUES ('511323', '', '', '蓬安县', '3');
INSERT INTO `region` VALUES ('511324', '', '', '仪陇县', '3');
INSERT INTO `region` VALUES ('511325', '', '', '西充县', '3');
INSERT INTO `region` VALUES ('511381', '', '', '阆中市', '3');
INSERT INTO `region` VALUES ('511400', '', '眉山市', '', '2');
INSERT INTO `region` VALUES ('511401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511402', '', '', '东坡区', '3');
INSERT INTO `region` VALUES ('511421', '', '', '仁寿县', '3');
INSERT INTO `region` VALUES ('511422', '', '', '彭山县', '3');
INSERT INTO `region` VALUES ('511423', '', '', '洪雅县', '3');
INSERT INTO `region` VALUES ('511424', '', '', '丹棱县', '3');
INSERT INTO `region` VALUES ('511425', '', '', '青神县', '3');
INSERT INTO `region` VALUES ('511500', '', '宜宾市', '', '2');
INSERT INTO `region` VALUES ('511501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511502', '', '', '翠屏区', '3');
INSERT INTO `region` VALUES ('511503', '', '', '南溪区', '3');
INSERT INTO `region` VALUES ('511521', '', '', '宜宾县', '3');
INSERT INTO `region` VALUES ('511523', '', '', '江安县', '3');
INSERT INTO `region` VALUES ('511524', '', '', '长宁县', '3');
INSERT INTO `region` VALUES ('511525', '', '', '高县', '3');
INSERT INTO `region` VALUES ('511526', '', '', '珙县', '3');
INSERT INTO `region` VALUES ('511527', '', '', '筠连县', '3');
INSERT INTO `region` VALUES ('511528', '', '', '兴文县', '3');
INSERT INTO `region` VALUES ('511529', '', '', '屏山县', '3');
INSERT INTO `region` VALUES ('511600', '', '广安市', '', '2');
INSERT INTO `region` VALUES ('511601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511602', '', '', '广安区', '3');
INSERT INTO `region` VALUES ('511603', '', '', '前锋区', '3');
INSERT INTO `region` VALUES ('511621', '', '', '岳池县', '3');
INSERT INTO `region` VALUES ('511622', '', '', '武胜县', '3');
INSERT INTO `region` VALUES ('511623', '', '', '邻水县', '3');
INSERT INTO `region` VALUES ('511681', '', '', '华蓥市', '3');
INSERT INTO `region` VALUES ('511700', '', '达州市', '', '2');
INSERT INTO `region` VALUES ('511701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511702', '', '', '通川区', '3');
INSERT INTO `region` VALUES ('511703', '', '', '达川区', '3');
INSERT INTO `region` VALUES ('511722', '', '', '宣汉县', '3');
INSERT INTO `region` VALUES ('511723', '', '', '开江县', '3');
INSERT INTO `region` VALUES ('511724', '', '', '大竹县', '3');
INSERT INTO `region` VALUES ('511725', '', '', '渠县', '3');
INSERT INTO `region` VALUES ('511781', '', '', '万源市', '3');
INSERT INTO `region` VALUES ('511800', '', '雅安市', '', '2');
INSERT INTO `region` VALUES ('511801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511802', '', '', '雨城区', '3');
INSERT INTO `region` VALUES ('511803', '', '', '名山区', '3');
INSERT INTO `region` VALUES ('511822', '', '', '荥经县', '3');
INSERT INTO `region` VALUES ('511823', '', '', '汉源县', '3');
INSERT INTO `region` VALUES ('511824', '', '', '石棉县', '3');
INSERT INTO `region` VALUES ('511825', '', '', '天全县', '3');
INSERT INTO `region` VALUES ('511826', '', '', '芦山县', '3');
INSERT INTO `region` VALUES ('511827', '', '', '宝兴县', '3');
INSERT INTO `region` VALUES ('511900', '', '巴中市', '', '2');
INSERT INTO `region` VALUES ('511901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('511902', '', '', '巴州区', '3');
INSERT INTO `region` VALUES ('511903', '', '', '恩阳区', '3');
INSERT INTO `region` VALUES ('511921', '', '', '通江县', '3');
INSERT INTO `region` VALUES ('511922', '', '', '南江县', '3');
INSERT INTO `region` VALUES ('511923', '', '', '平昌县', '3');
INSERT INTO `region` VALUES ('512000', '', '资阳市', '', '2');
INSERT INTO `region` VALUES ('512001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('512002', '', '', '雁江区', '3');
INSERT INTO `region` VALUES ('512021', '', '', '安岳县', '3');
INSERT INTO `region` VALUES ('512022', '', '', '乐至县', '3');
INSERT INTO `region` VALUES ('512081', '', '', '简阳市', '3');
INSERT INTO `region` VALUES ('513200', '', '阿坝藏族羌族自治州', '', '2');
INSERT INTO `region` VALUES ('513221', '', '', '汶川县', '3');
INSERT INTO `region` VALUES ('513222', '', '', '理县', '3');
INSERT INTO `region` VALUES ('513223', '', '', '茂县', '3');
INSERT INTO `region` VALUES ('513224', '', '', '松潘县', '3');
INSERT INTO `region` VALUES ('513225', '', '', '九寨沟县', '3');
INSERT INTO `region` VALUES ('513226', '', '', '金川县', '3');
INSERT INTO `region` VALUES ('513227', '', '', '小金县', '3');
INSERT INTO `region` VALUES ('513228', '', '', '黑水县', '3');
INSERT INTO `region` VALUES ('513229', '', '', '马尔康县', '3');
INSERT INTO `region` VALUES ('513230', '', '', '壤塘县', '3');
INSERT INTO `region` VALUES ('513231', '', '', '阿坝县', '3');
INSERT INTO `region` VALUES ('513232', '', '', '若尔盖县', '3');
INSERT INTO `region` VALUES ('513233', '', '', '红原县', '3');
INSERT INTO `region` VALUES ('513300', '', '甘孜藏族自治州', '', '2');
INSERT INTO `region` VALUES ('513321', '', '', '康定县', '3');
INSERT INTO `region` VALUES ('513322', '', '', '泸定县', '3');
INSERT INTO `region` VALUES ('513323', '', '', '丹巴县', '3');
INSERT INTO `region` VALUES ('513324', '', '', '九龙县', '3');
INSERT INTO `region` VALUES ('513325', '', '', '雅江县', '3');
INSERT INTO `region` VALUES ('513326', '', '', '道孚县', '3');
INSERT INTO `region` VALUES ('513327', '', '', '炉霍县', '3');
INSERT INTO `region` VALUES ('513328', '', '', '甘孜县', '3');
INSERT INTO `region` VALUES ('513329', '', '', '新龙县', '3');
INSERT INTO `region` VALUES ('513330', '', '', '德格县', '3');
INSERT INTO `region` VALUES ('513331', '', '', '白玉县', '3');
INSERT INTO `region` VALUES ('513332', '', '', '石渠县', '3');
INSERT INTO `region` VALUES ('513333', '', '', '色达县', '3');
INSERT INTO `region` VALUES ('513334', '', '', '理塘县', '3');
INSERT INTO `region` VALUES ('513335', '', '', '巴塘县', '3');
INSERT INTO `region` VALUES ('513336', '', '', '乡城县', '3');
INSERT INTO `region` VALUES ('513337', '', '', '稻城县', '3');
INSERT INTO `region` VALUES ('513338', '', '', '得荣县', '3');
INSERT INTO `region` VALUES ('513400', '', '凉山彝族自治州', '', '2');
INSERT INTO `region` VALUES ('513401', '', '', '西昌市', '3');
INSERT INTO `region` VALUES ('513422', '', '', '木里藏族自治县', '3');
INSERT INTO `region` VALUES ('513423', '', '', '盐源县', '3');
INSERT INTO `region` VALUES ('513424', '', '', '德昌县', '3');
INSERT INTO `region` VALUES ('513425', '', '', '会理县', '3');
INSERT INTO `region` VALUES ('513426', '', '', '会东县', '3');
INSERT INTO `region` VALUES ('513427', '', '', '宁南县', '3');
INSERT INTO `region` VALUES ('513428', '', '', '普格县', '3');
INSERT INTO `region` VALUES ('513429', '', '', '布拖县', '3');
INSERT INTO `region` VALUES ('513430', '', '', '金阳县', '3');
INSERT INTO `region` VALUES ('513431', '', '', '昭觉县', '3');
INSERT INTO `region` VALUES ('513432', '', '', '喜德县', '3');
INSERT INTO `region` VALUES ('513433', '', '', '冕宁县', '3');
INSERT INTO `region` VALUES ('513434', '', '', '越西县', '3');
INSERT INTO `region` VALUES ('513435', '', '', '甘洛县', '3');
INSERT INTO `region` VALUES ('513436', '', '', '美姑县', '3');
INSERT INTO `region` VALUES ('513437', '', '', '雷波县', '3');
INSERT INTO `region` VALUES ('520000', '贵州省', '', '', '1');
INSERT INTO `region` VALUES ('520100', '', '贵阳市', '', '2');
INSERT INTO `region` VALUES ('520101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('520102', '', '', '南明区', '3');
INSERT INTO `region` VALUES ('520103', '', '', '云岩区', '3');
INSERT INTO `region` VALUES ('520111', '', '', '花溪区', '3');
INSERT INTO `region` VALUES ('520112', '', '', '乌当区', '3');
INSERT INTO `region` VALUES ('520113', '', '', '白云区', '3');
INSERT INTO `region` VALUES ('520115', '', '', '观山湖区', '3');
INSERT INTO `region` VALUES ('520121', '', '', '开阳县', '3');
INSERT INTO `region` VALUES ('520122', '', '', '息烽县', '3');
INSERT INTO `region` VALUES ('520123', '', '', '修文县', '3');
INSERT INTO `region` VALUES ('520181', '', '', '清镇市', '3');
INSERT INTO `region` VALUES ('520200', '', '六盘水市', '', '2');
INSERT INTO `region` VALUES ('520201', '', '', '钟山区', '3');
INSERT INTO `region` VALUES ('520203', '', '', '六枝特区', '3');
INSERT INTO `region` VALUES ('520221', '', '', '水城县', '3');
INSERT INTO `region` VALUES ('520222', '', '', '盘县', '3');
INSERT INTO `region` VALUES ('520300', '', '遵义市', '', '2');
INSERT INTO `region` VALUES ('520301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('520302', '', '', '红花岗区', '3');
INSERT INTO `region` VALUES ('520303', '', '', '汇川区', '3');
INSERT INTO `region` VALUES ('520321', '', '', '遵义县', '3');
INSERT INTO `region` VALUES ('520322', '', '', '桐梓县', '3');
INSERT INTO `region` VALUES ('520323', '', '', '绥阳县', '3');
INSERT INTO `region` VALUES ('520324', '', '', '正安县', '3');
INSERT INTO `region` VALUES ('520325', '', '', '道真仡佬族苗族自治县', '3');
INSERT INTO `region` VALUES ('520326', '', '', '务川仡佬族苗族自治县', '3');
INSERT INTO `region` VALUES ('520327', '', '', '凤冈县', '3');
INSERT INTO `region` VALUES ('520328', '', '', '湄潭县', '3');
INSERT INTO `region` VALUES ('520329', '', '', '余庆县', '3');
INSERT INTO `region` VALUES ('520330', '', '', '习水县', '3');
INSERT INTO `region` VALUES ('520381', '', '', '赤水市', '3');
INSERT INTO `region` VALUES ('520382', '', '', '仁怀市', '3');
INSERT INTO `region` VALUES ('520400', '', '安顺市', '', '2');
INSERT INTO `region` VALUES ('520401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('520402', '', '', '西秀区', '3');
INSERT INTO `region` VALUES ('520421', '', '', '平坝县', '3');
INSERT INTO `region` VALUES ('520422', '', '', '普定县', '3');
INSERT INTO `region` VALUES ('520423', '', '', '镇宁布依族苗族自治县', '3');
INSERT INTO `region` VALUES ('520424', '', '', '关岭布依族苗族自治县', '3');
INSERT INTO `region` VALUES ('520425', '', '', '紫云苗族布依族自治县', '3');
INSERT INTO `region` VALUES ('520500', '', '毕节市', '', '2');
INSERT INTO `region` VALUES ('520501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('520502', '', '', '七星关区', '3');
INSERT INTO `region` VALUES ('520521', '', '', '大方县', '3');
INSERT INTO `region` VALUES ('520522', '', '', '黔西县', '3');
INSERT INTO `region` VALUES ('520523', '', '', '金沙县', '3');
INSERT INTO `region` VALUES ('520524', '', '', '织金县', '3');
INSERT INTO `region` VALUES ('520525', '', '', '纳雍县', '3');
INSERT INTO `region` VALUES ('520526', '', '', '威宁彝族回族苗族自治县', '3');
INSERT INTO `region` VALUES ('520527', '', '', '赫章县', '3');
INSERT INTO `region` VALUES ('520600', '', '铜仁市', '', '2');
INSERT INTO `region` VALUES ('520601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('520602', '', '', '碧江区', '3');
INSERT INTO `region` VALUES ('520603', '', '', '万山区', '3');
INSERT INTO `region` VALUES ('520621', '', '', '江口县', '3');
INSERT INTO `region` VALUES ('520622', '', '', '玉屏侗族自治县', '3');
INSERT INTO `region` VALUES ('520623', '', '', '石阡县', '3');
INSERT INTO `region` VALUES ('520624', '', '', '思南县', '3');
INSERT INTO `region` VALUES ('520625', '', '', '印江土家族苗族自治县', '3');
INSERT INTO `region` VALUES ('520626', '', '', '德江县', '3');
INSERT INTO `region` VALUES ('520627', '', '', '沿河土家族自治县', '3');
INSERT INTO `region` VALUES ('520628', '', '', '松桃苗族自治县', '3');
INSERT INTO `region` VALUES ('522300', '', '黔西南布依族苗族自治州', '', '2');
INSERT INTO `region` VALUES ('522301', '', '', '兴义市', '3');
INSERT INTO `region` VALUES ('522322', '', '', '兴仁县', '3');
INSERT INTO `region` VALUES ('522323', '', '', '普安县', '3');
INSERT INTO `region` VALUES ('522324', '', '', '晴隆县', '3');
INSERT INTO `region` VALUES ('522325', '', '', '贞丰县', '3');
INSERT INTO `region` VALUES ('522326', '', '', '望谟县', '3');
INSERT INTO `region` VALUES ('522327', '', '', '册亨县', '3');
INSERT INTO `region` VALUES ('522328', '', '', '安龙县', '3');
INSERT INTO `region` VALUES ('522600', '', '黔东南苗族侗族自治州', '', '2');
INSERT INTO `region` VALUES ('522601', '', '', '凯里市', '3');
INSERT INTO `region` VALUES ('522622', '', '', '黄平县', '3');
INSERT INTO `region` VALUES ('522623', '', '', '施秉县', '3');
INSERT INTO `region` VALUES ('522624', '', '', '三穗县', '3');
INSERT INTO `region` VALUES ('522625', '', '', '镇远县', '3');
INSERT INTO `region` VALUES ('522626', '', '', '岑巩县', '3');
INSERT INTO `region` VALUES ('522627', '', '', '天柱县', '3');
INSERT INTO `region` VALUES ('522628', '', '', '锦屏县', '3');
INSERT INTO `region` VALUES ('522629', '', '', '剑河县', '3');
INSERT INTO `region` VALUES ('522630', '', '', '台江县', '3');
INSERT INTO `region` VALUES ('522631', '', '', '黎平县', '3');
INSERT INTO `region` VALUES ('522632', '', '', '榕江县', '3');
INSERT INTO `region` VALUES ('522633', '', '', '从江县', '3');
INSERT INTO `region` VALUES ('522634', '', '', '雷山县', '3');
INSERT INTO `region` VALUES ('522635', '', '', '麻江县', '3');
INSERT INTO `region` VALUES ('522636', '', '', '丹寨县', '3');
INSERT INTO `region` VALUES ('522700', '', '黔南布依族苗族自治州', '', '2');
INSERT INTO `region` VALUES ('522701', '', '', '都匀市', '3');
INSERT INTO `region` VALUES ('522702', '', '', '福泉市', '3');
INSERT INTO `region` VALUES ('522722', '', '', '荔波县', '3');
INSERT INTO `region` VALUES ('522723', '', '', '贵定县', '3');
INSERT INTO `region` VALUES ('522725', '', '', '瓮安县', '3');
INSERT INTO `region` VALUES ('522726', '', '', '独山县', '3');
INSERT INTO `region` VALUES ('522727', '', '', '平塘县', '3');
INSERT INTO `region` VALUES ('522728', '', '', '罗甸县', '3');
INSERT INTO `region` VALUES ('522729', '', '', '长顺县', '3');
INSERT INTO `region` VALUES ('522730', '', '', '龙里县', '3');
INSERT INTO `region` VALUES ('522731', '', '', '惠水县', '3');
INSERT INTO `region` VALUES ('522732', '', '', '三都水族自治县', '3');
INSERT INTO `region` VALUES ('530000', '云南省', '', '', '1');
INSERT INTO `region` VALUES ('530100', '', '昆明市', '', '2');
INSERT INTO `region` VALUES ('530101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530102', '', '', '五华区', '3');
INSERT INTO `region` VALUES ('530103', '', '', '盘龙区', '3');
INSERT INTO `region` VALUES ('530111', '', '', '官渡区', '3');
INSERT INTO `region` VALUES ('530112', '', '', '西山区', '3');
INSERT INTO `region` VALUES ('530113', '', '', '东川区', '3');
INSERT INTO `region` VALUES ('530114', '', '', '呈贡区', '3');
INSERT INTO `region` VALUES ('530122', '', '', '晋宁县', '3');
INSERT INTO `region` VALUES ('530124', '', '', '富民县', '3');
INSERT INTO `region` VALUES ('530125', '', '', '宜良县', '3');
INSERT INTO `region` VALUES ('530126', '', '', '石林彝族自治县', '3');
INSERT INTO `region` VALUES ('530127', '', '', '嵩明县', '3');
INSERT INTO `region` VALUES ('530128', '', '', '禄劝彝族苗族自治县', '3');
INSERT INTO `region` VALUES ('530129', '', '', '寻甸回族彝族自治县', '3');
INSERT INTO `region` VALUES ('530181', '', '', '安宁市', '3');
INSERT INTO `region` VALUES ('530300', '', '曲靖市', '', '2');
INSERT INTO `region` VALUES ('530301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530302', '', '', '麒麟区', '3');
INSERT INTO `region` VALUES ('530321', '', '', '马龙县', '3');
INSERT INTO `region` VALUES ('530322', '', '', '陆良县', '3');
INSERT INTO `region` VALUES ('530323', '', '', '师宗县', '3');
INSERT INTO `region` VALUES ('530324', '', '', '罗平县', '3');
INSERT INTO `region` VALUES ('530325', '', '', '富源县', '3');
INSERT INTO `region` VALUES ('530326', '', '', '会泽县', '3');
INSERT INTO `region` VALUES ('530328', '', '', '沾益县', '3');
INSERT INTO `region` VALUES ('530381', '', '', '宣威市', '3');
INSERT INTO `region` VALUES ('530400', '', '玉溪市', '', '2');
INSERT INTO `region` VALUES ('530401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530402', '', '', '红塔区', '3');
INSERT INTO `region` VALUES ('530421', '', '', '江川县', '3');
INSERT INTO `region` VALUES ('530422', '', '', '澄江县', '3');
INSERT INTO `region` VALUES ('530423', '', '', '通海县', '3');
INSERT INTO `region` VALUES ('530424', '', '', '华宁县', '3');
INSERT INTO `region` VALUES ('530425', '', '', '易门县', '3');
INSERT INTO `region` VALUES ('530426', '', '', '峨山彝族自治县', '3');
INSERT INTO `region` VALUES ('530427', '', '', '新平彝族傣族自治县', '3');
INSERT INTO `region` VALUES ('530428', '', '', '元江哈尼族彝族傣族自治县', '3');
INSERT INTO `region` VALUES ('530500', '', '保山市', '', '2');
INSERT INTO `region` VALUES ('530501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530502', '', '', '隆阳区', '3');
INSERT INTO `region` VALUES ('530521', '', '', '施甸县', '3');
INSERT INTO `region` VALUES ('530522', '', '', '腾冲县', '3');
INSERT INTO `region` VALUES ('530523', '', '', '龙陵县', '3');
INSERT INTO `region` VALUES ('530524', '', '', '昌宁县', '3');
INSERT INTO `region` VALUES ('530600', '', '昭通市', '', '2');
INSERT INTO `region` VALUES ('530601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530602', '', '', '昭阳区', '3');
INSERT INTO `region` VALUES ('530621', '', '', '鲁甸县', '3');
INSERT INTO `region` VALUES ('530622', '', '', '巧家县', '3');
INSERT INTO `region` VALUES ('530623', '', '', '盐津县', '3');
INSERT INTO `region` VALUES ('530624', '', '', '大关县', '3');
INSERT INTO `region` VALUES ('530625', '', '', '永善县', '3');
INSERT INTO `region` VALUES ('530626', '', '', '绥江县', '3');
INSERT INTO `region` VALUES ('530627', '', '', '镇雄县', '3');
INSERT INTO `region` VALUES ('530628', '', '', '彝良县', '3');
INSERT INTO `region` VALUES ('530629', '', '', '威信县', '3');
INSERT INTO `region` VALUES ('530630', '', '', '水富县', '3');
INSERT INTO `region` VALUES ('530700', '', '丽江市', '', '2');
INSERT INTO `region` VALUES ('530701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530702', '', '', '古城区', '3');
INSERT INTO `region` VALUES ('530721', '', '', '玉龙纳西族自治县', '3');
INSERT INTO `region` VALUES ('530722', '', '', '永胜县', '3');
INSERT INTO `region` VALUES ('530723', '', '', '华坪县', '3');
INSERT INTO `region` VALUES ('530724', '', '', '宁蒗彝族自治县', '3');
INSERT INTO `region` VALUES ('530800', '', '普洱市', '', '2');
INSERT INTO `region` VALUES ('530801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530802', '', '', '思茅区', '3');
INSERT INTO `region` VALUES ('530821', '', '', '宁洱哈尼族彝族自治县', '3');
INSERT INTO `region` VALUES ('530822', '', '', '墨江哈尼族自治县', '3');
INSERT INTO `region` VALUES ('530823', '', '', '景东彝族自治县', '3');
INSERT INTO `region` VALUES ('530824', '', '', '景谷傣族彝族自治县', '3');
INSERT INTO `region` VALUES ('530825', '', '', '镇沅彝族哈尼族拉祜族自治县', '3');
INSERT INTO `region` VALUES ('530826', '', '', '江城哈尼族彝族自治县', '3');
INSERT INTO `region` VALUES ('530827', '', '', '孟连傣族拉祜族佤族自治县', '3');
INSERT INTO `region` VALUES ('530828', '', '', '澜沧拉祜族自治县', '3');
INSERT INTO `region` VALUES ('530829', '', '', '西盟佤族自治县', '3');
INSERT INTO `region` VALUES ('530900', '', '临沧市', '', '2');
INSERT INTO `region` VALUES ('530901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('530902', '', '', '临翔区', '3');
INSERT INTO `region` VALUES ('530921', '', '', '凤庆县', '3');
INSERT INTO `region` VALUES ('530922', '', '', '云县', '3');
INSERT INTO `region` VALUES ('530923', '', '', '永德县', '3');
INSERT INTO `region` VALUES ('530924', '', '', '镇康县', '3');
INSERT INTO `region` VALUES ('530925', '', '', '双江拉祜族佤族布朗族傣族自治县', '3');
INSERT INTO `region` VALUES ('530926', '', '', '耿马傣族佤族自治县', '3');
INSERT INTO `region` VALUES ('530927', '', '', '沧源佤族自治县', '3');
INSERT INTO `region` VALUES ('532300', '', '楚雄彝族自治州', '', '2');
INSERT INTO `region` VALUES ('532301', '', '', '楚雄市', '3');
INSERT INTO `region` VALUES ('532322', '', '', '双柏县', '3');
INSERT INTO `region` VALUES ('532323', '', '', '牟定县', '3');
INSERT INTO `region` VALUES ('532324', '', '', '南华县', '3');
INSERT INTO `region` VALUES ('532325', '', '', '姚安县', '3');
INSERT INTO `region` VALUES ('532326', '', '', '大姚县', '3');
INSERT INTO `region` VALUES ('532327', '', '', '永仁县', '3');
INSERT INTO `region` VALUES ('532328', '', '', '元谋县', '3');
INSERT INTO `region` VALUES ('532329', '', '', '武定县', '3');
INSERT INTO `region` VALUES ('532331', '', '', '禄丰县', '3');
INSERT INTO `region` VALUES ('532500', '', '红河哈尼族彝族自治州', '', '2');
INSERT INTO `region` VALUES ('532501', '', '', '个旧市', '3');
INSERT INTO `region` VALUES ('532502', '', '', '开远市', '3');
INSERT INTO `region` VALUES ('532503', '', '', '蒙自市', '3');
INSERT INTO `region` VALUES ('532504', '', '', '弥勒市', '3');
INSERT INTO `region` VALUES ('532523', '', '', '屏边苗族自治县', '3');
INSERT INTO `region` VALUES ('532524', '', '', '建水县', '3');
INSERT INTO `region` VALUES ('532525', '', '', '石屏县', '3');
INSERT INTO `region` VALUES ('532527', '', '', '泸西县', '3');
INSERT INTO `region` VALUES ('532528', '', '', '元阳县', '3');
INSERT INTO `region` VALUES ('532529', '', '', '红河县', '3');
INSERT INTO `region` VALUES ('532530', '', '', '金平苗族瑶族傣族自治县', '3');
INSERT INTO `region` VALUES ('532531', '', '', '绿春县', '3');
INSERT INTO `region` VALUES ('532532', '', '', '河口瑶族自治县', '3');
INSERT INTO `region` VALUES ('532600', '', '文山壮族苗族自治州', '', '2');
INSERT INTO `region` VALUES ('532601', '', '', '文山市', '3');
INSERT INTO `region` VALUES ('532622', '', '', '砚山县', '3');
INSERT INTO `region` VALUES ('532623', '', '', '西畴县', '3');
INSERT INTO `region` VALUES ('532624', '', '', '麻栗坡县', '3');
INSERT INTO `region` VALUES ('532625', '', '', '马关县', '3');
INSERT INTO `region` VALUES ('532626', '', '', '丘北县', '3');
INSERT INTO `region` VALUES ('532627', '', '', '广南县', '3');
INSERT INTO `region` VALUES ('532628', '', '', '富宁县', '3');
INSERT INTO `region` VALUES ('532800', '', '西双版纳傣族自治州', '', '2');
INSERT INTO `region` VALUES ('532801', '', '', '景洪市', '3');
INSERT INTO `region` VALUES ('532822', '', '', '勐海县', '3');
INSERT INTO `region` VALUES ('532823', '', '', '勐腊县', '3');
INSERT INTO `region` VALUES ('532900', '', '大理白族自治州', '', '2');
INSERT INTO `region` VALUES ('532901', '', '', '大理市', '3');
INSERT INTO `region` VALUES ('532922', '', '', '漾濞彝族自治县', '3');
INSERT INTO `region` VALUES ('532923', '', '', '祥云县', '3');
INSERT INTO `region` VALUES ('532924', '', '', '宾川县', '3');
INSERT INTO `region` VALUES ('532925', '', '', '弥渡县', '3');
INSERT INTO `region` VALUES ('532926', '', '', '南涧彝族自治县', '3');
INSERT INTO `region` VALUES ('532927', '', '', '巍山彝族回族自治县', '3');
INSERT INTO `region` VALUES ('532928', '', '', '永平县', '3');
INSERT INTO `region` VALUES ('532929', '', '', '云龙县', '3');
INSERT INTO `region` VALUES ('532930', '', '', '洱源县', '3');
INSERT INTO `region` VALUES ('532931', '', '', '剑川县', '3');
INSERT INTO `region` VALUES ('532932', '', '', '鹤庆县', '3');
INSERT INTO `region` VALUES ('533100', '', '德宏傣族景颇族自治州', '', '2');
INSERT INTO `region` VALUES ('533102', '', '', '瑞丽市', '3');
INSERT INTO `region` VALUES ('533103', '', '', '芒市', '3');
INSERT INTO `region` VALUES ('533122', '', '', '梁河县', '3');
INSERT INTO `region` VALUES ('533123', '', '', '盈江县', '3');
INSERT INTO `region` VALUES ('533124', '', '', '陇川县', '3');
INSERT INTO `region` VALUES ('533300', '', '怒江傈僳族自治州', '', '2');
INSERT INTO `region` VALUES ('533321', '', '', '泸水县', '3');
INSERT INTO `region` VALUES ('533323', '', '', '福贡县', '3');
INSERT INTO `region` VALUES ('533324', '', '', '贡山独龙族怒族自治县', '3');
INSERT INTO `region` VALUES ('533325', '', '', '兰坪白族普米族自治县', '3');
INSERT INTO `region` VALUES ('533400', '', '迪庆藏族自治州', '', '2');
INSERT INTO `region` VALUES ('533421', '', '', '香格里拉县', '3');
INSERT INTO `region` VALUES ('533422', '', '', '德钦县', '3');
INSERT INTO `region` VALUES ('533423', '', '', '维西傈僳族自治县', '3');
INSERT INTO `region` VALUES ('540000', '西藏自治区', '', '', '1');
INSERT INTO `region` VALUES ('540100', '', '拉萨市', '', '2');
INSERT INTO `region` VALUES ('540101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('540102', '', '', '城关区', '3');
INSERT INTO `region` VALUES ('540121', '', '', '林周县', '3');
INSERT INTO `region` VALUES ('540122', '', '', '当雄县', '3');
INSERT INTO `region` VALUES ('540123', '', '', '尼木县', '3');
INSERT INTO `region` VALUES ('540124', '', '', '曲水县', '3');
INSERT INTO `region` VALUES ('540125', '', '', '堆龙德庆县', '3');
INSERT INTO `region` VALUES ('540126', '', '', '达孜县', '3');
INSERT INTO `region` VALUES ('540127', '', '', '墨竹工卡县', '3');
INSERT INTO `region` VALUES ('542100', '', '昌都地区', '', '2');
INSERT INTO `region` VALUES ('542121', '', '', '昌都县', '3');
INSERT INTO `region` VALUES ('542122', '', '', '江达县', '3');
INSERT INTO `region` VALUES ('542123', '', '', '贡觉县', '3');
INSERT INTO `region` VALUES ('542124', '', '', '类乌齐县', '3');
INSERT INTO `region` VALUES ('542125', '', '', '丁青县', '3');
INSERT INTO `region` VALUES ('542126', '', '', '察雅县', '3');
INSERT INTO `region` VALUES ('542127', '', '', '八宿县', '3');
INSERT INTO `region` VALUES ('542128', '', '', '左贡县', '3');
INSERT INTO `region` VALUES ('542129', '', '', '芒康县', '3');
INSERT INTO `region` VALUES ('542132', '', '', '洛隆县', '3');
INSERT INTO `region` VALUES ('542133', '', '', '边坝县', '3');
INSERT INTO `region` VALUES ('542200', '', '山南地区', '', '2');
INSERT INTO `region` VALUES ('542221', '', '', '乃东县', '3');
INSERT INTO `region` VALUES ('542222', '', '', '扎囊县', '3');
INSERT INTO `region` VALUES ('542223', '', '', '贡嘎县', '3');
INSERT INTO `region` VALUES ('542224', '', '', '桑日县', '3');
INSERT INTO `region` VALUES ('542225', '', '', '琼结县', '3');
INSERT INTO `region` VALUES ('542226', '', '', '曲松县', '3');
INSERT INTO `region` VALUES ('542227', '', '', '措美县', '3');
INSERT INTO `region` VALUES ('542228', '', '', '洛扎县', '3');
INSERT INTO `region` VALUES ('542229', '', '', '加查县', '3');
INSERT INTO `region` VALUES ('542231', '', '', '隆子县', '3');
INSERT INTO `region` VALUES ('542232', '', '', '错那县', '3');
INSERT INTO `region` VALUES ('542233', '', '', '浪卡子县', '3');
INSERT INTO `region` VALUES ('542300', '', '日喀则地区', '', '2');
INSERT INTO `region` VALUES ('542301', '', '', '日喀则市', '3');
INSERT INTO `region` VALUES ('542322', '', '', '南木林县', '3');
INSERT INTO `region` VALUES ('542323', '', '', '江孜县', '3');
INSERT INTO `region` VALUES ('542324', '', '', '定日县', '3');
INSERT INTO `region` VALUES ('542325', '', '', '萨迦县', '3');
INSERT INTO `region` VALUES ('542326', '', '', '拉孜县', '3');
INSERT INTO `region` VALUES ('542327', '', '', '昂仁县', '3');
INSERT INTO `region` VALUES ('542328', '', '', '谢通门县', '3');
INSERT INTO `region` VALUES ('542329', '', '', '白朗县', '3');
INSERT INTO `region` VALUES ('542330', '', '', '仁布县', '3');
INSERT INTO `region` VALUES ('542331', '', '', '康马县', '3');
INSERT INTO `region` VALUES ('542332', '', '', '定结县', '3');
INSERT INTO `region` VALUES ('542333', '', '', '仲巴县', '3');
INSERT INTO `region` VALUES ('542334', '', '', '亚东县', '3');
INSERT INTO `region` VALUES ('542335', '', '', '吉隆县', '3');
INSERT INTO `region` VALUES ('542336', '', '', '聂拉木县', '3');
INSERT INTO `region` VALUES ('542337', '', '', '萨嘎县', '3');
INSERT INTO `region` VALUES ('542338', '', '', '岗巴县', '3');
INSERT INTO `region` VALUES ('542400', '', '那曲地区', '', '2');
INSERT INTO `region` VALUES ('542421', '', '', '那曲县', '3');
INSERT INTO `region` VALUES ('542422', '', '', '嘉黎县', '3');
INSERT INTO `region` VALUES ('542423', '', '', '比如县', '3');
INSERT INTO `region` VALUES ('542424', '', '', '聂荣县', '3');
INSERT INTO `region` VALUES ('542425', '', '', '安多县', '3');
INSERT INTO `region` VALUES ('542426', '', '', '申扎县', '3');
INSERT INTO `region` VALUES ('542427', '', '', '索县', '3');
INSERT INTO `region` VALUES ('542428', '', '', '班戈县', '3');
INSERT INTO `region` VALUES ('542429', '', '', '巴青县', '3');
INSERT INTO `region` VALUES ('542430', '', '', '尼玛县', '3');
INSERT INTO `region` VALUES ('542431', '', '', '双湖县', '3');
INSERT INTO `region` VALUES ('542500', '', '阿里地区', '', '2');
INSERT INTO `region` VALUES ('542521', '', '', '普兰县', '3');
INSERT INTO `region` VALUES ('542522', '', '', '札达县', '3');
INSERT INTO `region` VALUES ('542523', '', '', '噶尔县', '3');
INSERT INTO `region` VALUES ('542524', '', '', '日土县', '3');
INSERT INTO `region` VALUES ('542525', '', '', '革吉县', '3');
INSERT INTO `region` VALUES ('542526', '', '', '改则县', '3');
INSERT INTO `region` VALUES ('542527', '', '', '措勤县', '3');
INSERT INTO `region` VALUES ('542600', '', '林芝地区', '', '2');
INSERT INTO `region` VALUES ('542621', '', '', '林芝县', '3');
INSERT INTO `region` VALUES ('542622', '', '', '工布江达县', '3');
INSERT INTO `region` VALUES ('542623', '', '', '米林县', '3');
INSERT INTO `region` VALUES ('542624', '', '', '墨脱县', '3');
INSERT INTO `region` VALUES ('542625', '', '', '波密县', '3');
INSERT INTO `region` VALUES ('542626', '', '', '察隅县', '3');
INSERT INTO `region` VALUES ('542627', '', '', '朗县', '3');
INSERT INTO `region` VALUES ('610000', '陕西省', '', '', '1');
INSERT INTO `region` VALUES ('610100', '', '西安市', '', '2');
INSERT INTO `region` VALUES ('610101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610102', '', '', '新城区', '3');
INSERT INTO `region` VALUES ('610103', '', '', '碑林区', '3');
INSERT INTO `region` VALUES ('610104', '', '', '莲湖区', '3');
INSERT INTO `region` VALUES ('610111', '', '', '灞桥区', '3');
INSERT INTO `region` VALUES ('610112', '', '', '未央区', '3');
INSERT INTO `region` VALUES ('610113', '', '', '雁塔区', '3');
INSERT INTO `region` VALUES ('610114', '', '', '阎良区', '3');
INSERT INTO `region` VALUES ('610115', '', '', '临潼区', '3');
INSERT INTO `region` VALUES ('610116', '', '', '长安区', '3');
INSERT INTO `region` VALUES ('610122', '', '', '蓝田县', '3');
INSERT INTO `region` VALUES ('610124', '', '', '周至县', '3');
INSERT INTO `region` VALUES ('610125', '', '', '户县', '3');
INSERT INTO `region` VALUES ('610126', '', '', '高陵县', '3');
INSERT INTO `region` VALUES ('610200', '', '铜川市', '', '2');
INSERT INTO `region` VALUES ('610201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610202', '', '', '王益区', '3');
INSERT INTO `region` VALUES ('610203', '', '', '印台区', '3');
INSERT INTO `region` VALUES ('610204', '', '', '耀州区', '3');
INSERT INTO `region` VALUES ('610222', '', '', '宜君县', '3');
INSERT INTO `region` VALUES ('610300', '', '宝鸡市', '', '2');
INSERT INTO `region` VALUES ('610301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610302', '', '', '渭滨区', '3');
INSERT INTO `region` VALUES ('610303', '', '', '金台区', '3');
INSERT INTO `region` VALUES ('610304', '', '', '陈仓区', '3');
INSERT INTO `region` VALUES ('610322', '', '', '凤翔县', '3');
INSERT INTO `region` VALUES ('610323', '', '', '岐山县', '3');
INSERT INTO `region` VALUES ('610324', '', '', '扶风县', '3');
INSERT INTO `region` VALUES ('610326', '', '', '眉县', '3');
INSERT INTO `region` VALUES ('610327', '', '', '陇县', '3');
INSERT INTO `region` VALUES ('610328', '', '', '千阳县', '3');
INSERT INTO `region` VALUES ('610329', '', '', '麟游县', '3');
INSERT INTO `region` VALUES ('610330', '', '', '凤县', '3');
INSERT INTO `region` VALUES ('610331', '', '', '太白县', '3');
INSERT INTO `region` VALUES ('610400', '', '咸阳市', '', '2');
INSERT INTO `region` VALUES ('610401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610402', '', '', '秦都区', '3');
INSERT INTO `region` VALUES ('610403', '', '', '杨陵区', '3');
INSERT INTO `region` VALUES ('610404', '', '', '渭城区', '3');
INSERT INTO `region` VALUES ('610422', '', '', '三原县', '3');
INSERT INTO `region` VALUES ('610423', '', '', '泾阳县', '3');
INSERT INTO `region` VALUES ('610424', '', '', '乾县', '3');
INSERT INTO `region` VALUES ('610425', '', '', '礼泉县', '3');
INSERT INTO `region` VALUES ('610426', '', '', '永寿县', '3');
INSERT INTO `region` VALUES ('610427', '', '', '彬县', '3');
INSERT INTO `region` VALUES ('610428', '', '', '长武县', '3');
INSERT INTO `region` VALUES ('610429', '', '', '旬邑县', '3');
INSERT INTO `region` VALUES ('610430', '', '', '淳化县', '3');
INSERT INTO `region` VALUES ('610431', '', '', '武功县', '3');
INSERT INTO `region` VALUES ('610481', '', '', '兴平市', '3');
INSERT INTO `region` VALUES ('610500', '', '渭南市', '', '2');
INSERT INTO `region` VALUES ('610501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610502', '', '', '临渭区', '3');
INSERT INTO `region` VALUES ('610521', '', '', '华县', '3');
INSERT INTO `region` VALUES ('610522', '', '', '潼关县', '3');
INSERT INTO `region` VALUES ('610523', '', '', '大荔县', '3');
INSERT INTO `region` VALUES ('610524', '', '', '合阳县', '3');
INSERT INTO `region` VALUES ('610525', '', '', '澄城县', '3');
INSERT INTO `region` VALUES ('610526', '', '', '蒲城县', '3');
INSERT INTO `region` VALUES ('610527', '', '', '白水县', '3');
INSERT INTO `region` VALUES ('610528', '', '', '富平县', '3');
INSERT INTO `region` VALUES ('610581', '', '', '韩城市', '3');
INSERT INTO `region` VALUES ('610582', '', '', '华阴市', '3');
INSERT INTO `region` VALUES ('610600', '', '延安市', '', '2');
INSERT INTO `region` VALUES ('610601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610602', '', '', '宝塔区', '3');
INSERT INTO `region` VALUES ('610621', '', '', '延长县', '3');
INSERT INTO `region` VALUES ('610622', '', '', '延川县', '3');
INSERT INTO `region` VALUES ('610623', '', '', '子长县', '3');
INSERT INTO `region` VALUES ('610624', '', '', '安塞县', '3');
INSERT INTO `region` VALUES ('610625', '', '', '志丹县', '3');
INSERT INTO `region` VALUES ('610626', '', '', '吴起县', '3');
INSERT INTO `region` VALUES ('610627', '', '', '甘泉县', '3');
INSERT INTO `region` VALUES ('610628', '', '', '富县', '3');
INSERT INTO `region` VALUES ('610629', '', '', '洛川县', '3');
INSERT INTO `region` VALUES ('610630', '', '', '宜川县', '3');
INSERT INTO `region` VALUES ('610631', '', '', '黄龙县', '3');
INSERT INTO `region` VALUES ('610632', '', '', '黄陵县', '3');
INSERT INTO `region` VALUES ('610700', '', '汉中市', '', '2');
INSERT INTO `region` VALUES ('610701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610702', '', '', '汉台区', '3');
INSERT INTO `region` VALUES ('610721', '', '', '南郑县', '3');
INSERT INTO `region` VALUES ('610722', '', '', '城固县', '3');
INSERT INTO `region` VALUES ('610723', '', '', '洋县', '3');
INSERT INTO `region` VALUES ('610724', '', '', '西乡县', '3');
INSERT INTO `region` VALUES ('610725', '', '', '勉县', '3');
INSERT INTO `region` VALUES ('610726', '', '', '宁强县', '3');
INSERT INTO `region` VALUES ('610727', '', '', '略阳县', '3');
INSERT INTO `region` VALUES ('610728', '', '', '镇巴县', '3');
INSERT INTO `region` VALUES ('610729', '', '', '留坝县', '3');
INSERT INTO `region` VALUES ('610730', '', '', '佛坪县', '3');
INSERT INTO `region` VALUES ('610800', '', '榆林市', '', '2');
INSERT INTO `region` VALUES ('610801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610802', '', '', '榆阳区', '3');
INSERT INTO `region` VALUES ('610821', '', '', '神木县', '3');
INSERT INTO `region` VALUES ('610822', '', '', '府谷县', '3');
INSERT INTO `region` VALUES ('610823', '', '', '横山县', '3');
INSERT INTO `region` VALUES ('610824', '', '', '靖边县', '3');
INSERT INTO `region` VALUES ('610825', '', '', '定边县', '3');
INSERT INTO `region` VALUES ('610826', '', '', '绥德县', '3');
INSERT INTO `region` VALUES ('610827', '', '', '米脂县', '3');
INSERT INTO `region` VALUES ('610828', '', '', '佳县', '3');
INSERT INTO `region` VALUES ('610829', '', '', '吴堡县', '3');
INSERT INTO `region` VALUES ('610830', '', '', '清涧县', '3');
INSERT INTO `region` VALUES ('610831', '', '', '子洲县', '3');
INSERT INTO `region` VALUES ('610900', '', '安康市', '', '2');
INSERT INTO `region` VALUES ('610901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('610902', '', '', '汉滨区', '3');
INSERT INTO `region` VALUES ('610921', '', '', '汉阴县', '3');
INSERT INTO `region` VALUES ('610922', '', '', '石泉县', '3');
INSERT INTO `region` VALUES ('610923', '', '', '宁陕县', '3');
INSERT INTO `region` VALUES ('610924', '', '', '紫阳县', '3');
INSERT INTO `region` VALUES ('610925', '', '', '岚皋县', '3');
INSERT INTO `region` VALUES ('610926', '', '', '平利县', '3');
INSERT INTO `region` VALUES ('610927', '', '', '镇坪县', '3');
INSERT INTO `region` VALUES ('610928', '', '', '旬阳县', '3');
INSERT INTO `region` VALUES ('610929', '', '', '白河县', '3');
INSERT INTO `region` VALUES ('611000', '', '商洛市', '', '2');
INSERT INTO `region` VALUES ('611001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('611002', '', '', '商州区', '3');
INSERT INTO `region` VALUES ('611021', '', '', '洛南县', '3');
INSERT INTO `region` VALUES ('611022', '', '', '丹凤县', '3');
INSERT INTO `region` VALUES ('611023', '', '', '商南县', '3');
INSERT INTO `region` VALUES ('611024', '', '', '山阳县', '3');
INSERT INTO `region` VALUES ('611025', '', '', '镇安县', '3');
INSERT INTO `region` VALUES ('611026', '', '', '柞水县', '3');
INSERT INTO `region` VALUES ('620000', '甘肃省', '', '', '1');
INSERT INTO `region` VALUES ('620100', '', '兰州市', '', '2');
INSERT INTO `region` VALUES ('620101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620102', '', '', '城关区', '3');
INSERT INTO `region` VALUES ('620103', '', '', '七里河区', '3');
INSERT INTO `region` VALUES ('620104', '', '', '西固区', '3');
INSERT INTO `region` VALUES ('620105', '', '', '安宁区', '3');
INSERT INTO `region` VALUES ('620111', '', '', '红古区', '3');
INSERT INTO `region` VALUES ('620121', '', '', '永登县', '3');
INSERT INTO `region` VALUES ('620122', '', '', '皋兰县', '3');
INSERT INTO `region` VALUES ('620123', '', '', '榆中县', '3');
INSERT INTO `region` VALUES ('620200', '', '嘉峪关市', '', '2');
INSERT INTO `region` VALUES ('620201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620300', '', '金昌市', '', '2');
INSERT INTO `region` VALUES ('620301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620302', '', '', '金川区', '3');
INSERT INTO `region` VALUES ('620321', '', '', '永昌县', '3');
INSERT INTO `region` VALUES ('620400', '', '白银市', '', '2');
INSERT INTO `region` VALUES ('620401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620402', '', '', '白银区', '3');
INSERT INTO `region` VALUES ('620403', '', '', '平川区', '3');
INSERT INTO `region` VALUES ('620421', '', '', '靖远县', '3');
INSERT INTO `region` VALUES ('620422', '', '', '会宁县', '3');
INSERT INTO `region` VALUES ('620423', '', '', '景泰县', '3');
INSERT INTO `region` VALUES ('620500', '', '天水市', '', '2');
INSERT INTO `region` VALUES ('620501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620502', '', '', '秦州区', '3');
INSERT INTO `region` VALUES ('620503', '', '', '麦积区', '3');
INSERT INTO `region` VALUES ('620521', '', '', '清水县', '3');
INSERT INTO `region` VALUES ('620522', '', '', '秦安县', '3');
INSERT INTO `region` VALUES ('620523', '', '', '甘谷县', '3');
INSERT INTO `region` VALUES ('620524', '', '', '武山县', '3');
INSERT INTO `region` VALUES ('620525', '', '', '张家川回族自治县', '3');
INSERT INTO `region` VALUES ('620600', '', '武威市', '', '2');
INSERT INTO `region` VALUES ('620601', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620602', '', '', '凉州区', '3');
INSERT INTO `region` VALUES ('620621', '', '', '民勤县', '3');
INSERT INTO `region` VALUES ('620622', '', '', '古浪县', '3');
INSERT INTO `region` VALUES ('620623', '', '', '天祝藏族自治县', '3');
INSERT INTO `region` VALUES ('620700', '', '张掖市', '', '2');
INSERT INTO `region` VALUES ('620701', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620702', '', '', '甘州区', '3');
INSERT INTO `region` VALUES ('620721', '', '', '肃南裕固族自治县', '3');
INSERT INTO `region` VALUES ('620722', '', '', '民乐县', '3');
INSERT INTO `region` VALUES ('620723', '', '', '临泽县', '3');
INSERT INTO `region` VALUES ('620724', '', '', '高台县', '3');
INSERT INTO `region` VALUES ('620725', '', '', '山丹县', '3');
INSERT INTO `region` VALUES ('620800', '', '平凉市', '', '2');
INSERT INTO `region` VALUES ('620801', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620802', '', '', '崆峒区', '3');
INSERT INTO `region` VALUES ('620821', '', '', '泾川县', '3');
INSERT INTO `region` VALUES ('620822', '', '', '灵台县', '3');
INSERT INTO `region` VALUES ('620823', '', '', '崇信县', '3');
INSERT INTO `region` VALUES ('620824', '', '', '华亭县', '3');
INSERT INTO `region` VALUES ('620825', '', '', '庄浪县', '3');
INSERT INTO `region` VALUES ('620826', '', '', '静宁县', '3');
INSERT INTO `region` VALUES ('620900', '', '酒泉市', '', '2');
INSERT INTO `region` VALUES ('620901', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('620902', '', '', '肃州区', '3');
INSERT INTO `region` VALUES ('620921', '', '', '金塔县', '3');
INSERT INTO `region` VALUES ('620922', '', '', '瓜州县', '3');
INSERT INTO `region` VALUES ('620923', '', '', '肃北蒙古族自治县', '3');
INSERT INTO `region` VALUES ('620924', '', '', '阿克塞哈萨克族自治县', '3');
INSERT INTO `region` VALUES ('620981', '', '', '玉门市', '3');
INSERT INTO `region` VALUES ('620982', '', '', '敦煌市', '3');
INSERT INTO `region` VALUES ('621000', '', '庆阳市', '', '2');
INSERT INTO `region` VALUES ('621001', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('621002', '', '', '西峰区', '3');
INSERT INTO `region` VALUES ('621021', '', '', '庆城县', '3');
INSERT INTO `region` VALUES ('621022', '', '', '环县', '3');
INSERT INTO `region` VALUES ('621023', '', '', '华池县', '3');
INSERT INTO `region` VALUES ('621024', '', '', '合水县', '3');
INSERT INTO `region` VALUES ('621025', '', '', '正宁县', '3');
INSERT INTO `region` VALUES ('621026', '', '', '宁县', '3');
INSERT INTO `region` VALUES ('621027', '', '', '镇原县', '3');
INSERT INTO `region` VALUES ('621100', '', '定西市', '', '2');
INSERT INTO `region` VALUES ('621101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('621102', '', '', '安定区', '3');
INSERT INTO `region` VALUES ('621121', '', '', '通渭县', '3');
INSERT INTO `region` VALUES ('621122', '', '', '陇西县', '3');
INSERT INTO `region` VALUES ('621123', '', '', '渭源县', '3');
INSERT INTO `region` VALUES ('621124', '', '', '临洮县', '3');
INSERT INTO `region` VALUES ('621125', '', '', '漳县', '3');
INSERT INTO `region` VALUES ('621126', '', '', '岷县', '3');
INSERT INTO `region` VALUES ('621200', '', '陇南市', '', '2');
INSERT INTO `region` VALUES ('621201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('621202', '', '', '武都区', '3');
INSERT INTO `region` VALUES ('621221', '', '', '成县', '3');
INSERT INTO `region` VALUES ('621222', '', '', '文县', '3');
INSERT INTO `region` VALUES ('621223', '', '', '宕昌县', '3');
INSERT INTO `region` VALUES ('621224', '', '', '康县', '3');
INSERT INTO `region` VALUES ('621225', '', '', '西和县', '3');
INSERT INTO `region` VALUES ('621226', '', '', '礼县', '3');
INSERT INTO `region` VALUES ('621227', '', '', '徽县', '3');
INSERT INTO `region` VALUES ('621228', '', '', '两当县', '3');
INSERT INTO `region` VALUES ('622900', '', '临夏回族自治州', '', '2');
INSERT INTO `region` VALUES ('622901', '', '', '临夏市', '3');
INSERT INTO `region` VALUES ('622921', '', '', '临夏县', '3');
INSERT INTO `region` VALUES ('622922', '', '', '康乐县', '3');
INSERT INTO `region` VALUES ('622923', '', '', '永靖县', '3');
INSERT INTO `region` VALUES ('622924', '', '', '广河县', '3');
INSERT INTO `region` VALUES ('622925', '', '', '和政县', '3');
INSERT INTO `region` VALUES ('622926', '', '', '东乡族自治县', '3');
INSERT INTO `region` VALUES ('622927', '', '', '积石山保安族东乡族撒拉族自治县', '3');
INSERT INTO `region` VALUES ('623000', '', '甘南藏族自治州', '', '2');
INSERT INTO `region` VALUES ('623001', '', '', '合作市', '3');
INSERT INTO `region` VALUES ('623021', '', '', '临潭县', '3');
INSERT INTO `region` VALUES ('623022', '', '', '卓尼县', '3');
INSERT INTO `region` VALUES ('623023', '', '', '舟曲县', '3');
INSERT INTO `region` VALUES ('623024', '', '', '迭部县', '3');
INSERT INTO `region` VALUES ('623025', '', '', '玛曲县', '3');
INSERT INTO `region` VALUES ('623026', '', '', '碌曲县', '3');
INSERT INTO `region` VALUES ('623027', '', '', '夏河县', '3');
INSERT INTO `region` VALUES ('630000', '青海省', '', '', '1');
INSERT INTO `region` VALUES ('630100', '', '西宁市', '', '2');
INSERT INTO `region` VALUES ('630101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('630102', '', '', '城东区', '3');
INSERT INTO `region` VALUES ('630103', '', '', '城中区', '3');
INSERT INTO `region` VALUES ('630104', '', '', '城西区', '3');
INSERT INTO `region` VALUES ('630105', '', '', '城北区', '3');
INSERT INTO `region` VALUES ('630121', '', '', '大通回族土族自治县', '3');
INSERT INTO `region` VALUES ('630122', '', '', '湟中县', '3');
INSERT INTO `region` VALUES ('630123', '', '', '湟源县', '3');
INSERT INTO `region` VALUES ('630200', '', '海东市', '', '2');
INSERT INTO `region` VALUES ('630202', '', '', '乐都区', '3');
INSERT INTO `region` VALUES ('630221', '', '', '平安县', '3');
INSERT INTO `region` VALUES ('630222', '', '', '民和回族土族自治县', '3');
INSERT INTO `region` VALUES ('630223', '', '', '互助土族自治县', '3');
INSERT INTO `region` VALUES ('630224', '', '', '化隆回族自治县', '3');
INSERT INTO `region` VALUES ('630225', '', '', '循化撒拉族自治县', '3');
INSERT INTO `region` VALUES ('632200', '', '海北藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632221', '', '', '门源回族自治县', '3');
INSERT INTO `region` VALUES ('632222', '', '', '祁连县', '3');
INSERT INTO `region` VALUES ('632223', '', '', '海晏县', '3');
INSERT INTO `region` VALUES ('632224', '', '', '刚察县', '3');
INSERT INTO `region` VALUES ('632300', '', '黄南藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632321', '', '', '同仁县', '3');
INSERT INTO `region` VALUES ('632322', '', '', '尖扎县', '3');
INSERT INTO `region` VALUES ('632323', '', '', '泽库县', '3');
INSERT INTO `region` VALUES ('632324', '', '', '河南蒙古族自治县', '3');
INSERT INTO `region` VALUES ('632500', '', '海南藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632521', '', '', '共和县', '3');
INSERT INTO `region` VALUES ('632522', '', '', '同德县', '3');
INSERT INTO `region` VALUES ('632523', '', '', '贵德县', '3');
INSERT INTO `region` VALUES ('632524', '', '', '兴海县', '3');
INSERT INTO `region` VALUES ('632525', '', '', '贵南县', '3');
INSERT INTO `region` VALUES ('632600', '', '果洛藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632621', '', '', '玛沁县', '3');
INSERT INTO `region` VALUES ('632622', '', '', '班玛县', '3');
INSERT INTO `region` VALUES ('632623', '', '', '甘德县', '3');
INSERT INTO `region` VALUES ('632624', '', '', '达日县', '3');
INSERT INTO `region` VALUES ('632625', '', '', '久治县', '3');
INSERT INTO `region` VALUES ('632626', '', '', '玛多县', '3');
INSERT INTO `region` VALUES ('632700', '', '玉树藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632701', '', '', '玉树市', '3');
INSERT INTO `region` VALUES ('632722', '', '', '杂多县', '3');
INSERT INTO `region` VALUES ('632723', '', '', '称多县', '3');
INSERT INTO `region` VALUES ('632724', '', '', '治多县', '3');
INSERT INTO `region` VALUES ('632725', '', '', '囊谦县', '3');
INSERT INTO `region` VALUES ('632726', '', '', '曲麻莱县', '3');
INSERT INTO `region` VALUES ('632800', '', '海西蒙古族藏族自治州', '', '2');
INSERT INTO `region` VALUES ('632801', '', '', '格尔木市', '3');
INSERT INTO `region` VALUES ('632802', '', '', '德令哈市', '3');
INSERT INTO `region` VALUES ('632821', '', '', '乌兰县', '3');
INSERT INTO `region` VALUES ('632822', '', '', '都兰县', '3');
INSERT INTO `region` VALUES ('632823', '', '', '天峻县', '3');
INSERT INTO `region` VALUES ('640000', '宁夏回族自治区', '', '', '1');
INSERT INTO `region` VALUES ('640100', '', '银川市', '', '2');
INSERT INTO `region` VALUES ('640101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('640104', '', '', '兴庆区', '3');
INSERT INTO `region` VALUES ('640105', '', '', '西夏区', '3');
INSERT INTO `region` VALUES ('640106', '', '', '金凤区', '3');
INSERT INTO `region` VALUES ('640121', '', '', '永宁县', '3');
INSERT INTO `region` VALUES ('640122', '', '', '贺兰县', '3');
INSERT INTO `region` VALUES ('640181', '', '', '灵武市', '3');
INSERT INTO `region` VALUES ('640200', '', '石嘴山市', '', '2');
INSERT INTO `region` VALUES ('640201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('640202', '', '', '大武口区', '3');
INSERT INTO `region` VALUES ('640205', '', '', '惠农区', '3');
INSERT INTO `region` VALUES ('640221', '', '', '平罗县', '3');
INSERT INTO `region` VALUES ('640300', '', '吴忠市', '', '2');
INSERT INTO `region` VALUES ('640301', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('640302', '', '', '利通区', '3');
INSERT INTO `region` VALUES ('640303', '', '', '红寺堡区', '3');
INSERT INTO `region` VALUES ('640323', '', '', '盐池县', '3');
INSERT INTO `region` VALUES ('640324', '', '', '同心县', '3');
INSERT INTO `region` VALUES ('640381', '', '', '青铜峡市', '3');
INSERT INTO `region` VALUES ('640400', '', '固原市', '', '2');
INSERT INTO `region` VALUES ('640401', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('640402', '', '', '原州区', '3');
INSERT INTO `region` VALUES ('640422', '', '', '西吉县', '3');
INSERT INTO `region` VALUES ('640423', '', '', '隆德县', '3');
INSERT INTO `region` VALUES ('640424', '', '', '泾源县', '3');
INSERT INTO `region` VALUES ('640425', '', '', '彭阳县', '3');
INSERT INTO `region` VALUES ('640500', '', '中卫市', '', '2');
INSERT INTO `region` VALUES ('640501', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('640502', '', '', '沙坡头区', '3');
INSERT INTO `region` VALUES ('640521', '', '', '中宁县', '3');
INSERT INTO `region` VALUES ('640522', '', '', '海原县', '3');
INSERT INTO `region` VALUES ('650000', '新疆维吾尔自治区', '', '', '1');
INSERT INTO `region` VALUES ('650100', '', '乌鲁木齐市', '', '2');
INSERT INTO `region` VALUES ('650101', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('650102', '', '', '天山区', '3');
INSERT INTO `region` VALUES ('650103', '', '', '沙依巴克区', '3');
INSERT INTO `region` VALUES ('650104', '', '', '新市区', '3');
INSERT INTO `region` VALUES ('650105', '', '', '水磨沟区', '3');
INSERT INTO `region` VALUES ('650106', '', '', '头屯河区', '3');
INSERT INTO `region` VALUES ('650107', '', '', '达坂城区', '3');
INSERT INTO `region` VALUES ('650109', '', '', '米东区', '3');
INSERT INTO `region` VALUES ('650121', '', '', '乌鲁木齐县', '3');
INSERT INTO `region` VALUES ('650200', '', '克拉玛依市', '', '2');
INSERT INTO `region` VALUES ('650201', '', '', '市辖区', '3');
INSERT INTO `region` VALUES ('650202', '', '', '独山子区', '3');
INSERT INTO `region` VALUES ('650203', '', '', '克拉玛依区', '3');
INSERT INTO `region` VALUES ('650204', '', '', '白碱滩区', '3');
INSERT INTO `region` VALUES ('650205', '', '', '乌尔禾区', '3');
INSERT INTO `region` VALUES ('652100', '', '吐鲁番地区', '', '2');
INSERT INTO `region` VALUES ('652101', '', '', '吐鲁番市', '3');
INSERT INTO `region` VALUES ('652122', '', '', '鄯善县', '3');
INSERT INTO `region` VALUES ('652123', '', '', '托克逊县', '3');
INSERT INTO `region` VALUES ('652200', '', '哈密地区', '', '2');
INSERT INTO `region` VALUES ('652201', '', '', '哈密市', '3');
INSERT INTO `region` VALUES ('652222', '', '', '巴里坤哈萨克自治县', '3');
INSERT INTO `region` VALUES ('652223', '', '', '伊吾县', '3');
INSERT INTO `region` VALUES ('652300', '', '昌吉回族自治州', '', '2');
INSERT INTO `region` VALUES ('652301', '', '', '昌吉市', '3');
INSERT INTO `region` VALUES ('652302', '', '', '阜康市', '3');
INSERT INTO `region` VALUES ('652323', '', '', '呼图壁县', '3');
INSERT INTO `region` VALUES ('652324', '', '', '玛纳斯县', '3');
INSERT INTO `region` VALUES ('652325', '', '', '奇台县', '3');
INSERT INTO `region` VALUES ('652327', '', '', '吉木萨尔县', '3');
INSERT INTO `region` VALUES ('652328', '', '', '木垒哈萨克自治县', '3');
INSERT INTO `region` VALUES ('652700', '', '博尔塔拉蒙古自治州', '', '2');
INSERT INTO `region` VALUES ('652701', '', '', '博乐市', '3');
INSERT INTO `region` VALUES ('652702', '', '', '阿拉山口市', '3');
INSERT INTO `region` VALUES ('652722', '', '', '精河县', '3');
INSERT INTO `region` VALUES ('652723', '', '', '温泉县', '3');
INSERT INTO `region` VALUES ('652800', '', '巴音郭楞蒙古自治州', '', '2');
INSERT INTO `region` VALUES ('652801', '', '', '库尔勒市', '3');
INSERT INTO `region` VALUES ('652822', '', '', '轮台县', '3');
INSERT INTO `region` VALUES ('652823', '', '', '尉犁县', '3');
INSERT INTO `region` VALUES ('652824', '', '', '若羌县', '3');
INSERT INTO `region` VALUES ('652825', '', '', '且末县', '3');
INSERT INTO `region` VALUES ('652826', '', '', '焉耆回族自治县', '3');
INSERT INTO `region` VALUES ('652827', '', '', '和静县', '3');
INSERT INTO `region` VALUES ('652828', '', '', '和硕县', '3');
INSERT INTO `region` VALUES ('652829', '', '', '博湖县', '3');
INSERT INTO `region` VALUES ('652900', '', '阿克苏地区', '', '2');
INSERT INTO `region` VALUES ('652901', '', '', '阿克苏市', '3');
INSERT INTO `region` VALUES ('652922', '', '', '温宿县', '3');
INSERT INTO `region` VALUES ('652923', '', '', '库车县', '3');
INSERT INTO `region` VALUES ('652924', '', '', '沙雅县', '3');
INSERT INTO `region` VALUES ('652925', '', '', '新和县', '3');
INSERT INTO `region` VALUES ('652926', '', '', '拜城县', '3');
INSERT INTO `region` VALUES ('652927', '', '', '乌什县', '3');
INSERT INTO `region` VALUES ('652928', '', '', '阿瓦提县', '3');
INSERT INTO `region` VALUES ('652929', '', '', '柯坪县', '3');
INSERT INTO `region` VALUES ('653000', '', '克孜勒苏柯尔克孜自治州', '', '2');
INSERT INTO `region` VALUES ('653001', '', '', '阿图什市', '3');
INSERT INTO `region` VALUES ('653022', '', '', '阿克陶县', '3');
INSERT INTO `region` VALUES ('653023', '', '', '阿合奇县', '3');
INSERT INTO `region` VALUES ('653024', '', '', '乌恰县', '3');
INSERT INTO `region` VALUES ('653100', '', '喀什地区', '', '2');
INSERT INTO `region` VALUES ('653101', '', '', '喀什市', '3');
INSERT INTO `region` VALUES ('653121', '', '', '疏附县', '3');
INSERT INTO `region` VALUES ('653122', '', '', '疏勒县', '3');
INSERT INTO `region` VALUES ('653123', '', '', '英吉沙县', '3');
INSERT INTO `region` VALUES ('653124', '', '', '泽普县', '3');
INSERT INTO `region` VALUES ('653125', '', '', '莎车县', '3');
INSERT INTO `region` VALUES ('653126', '', '', '叶城县', '3');
INSERT INTO `region` VALUES ('653127', '', '', '麦盖提县', '3');
INSERT INTO `region` VALUES ('653128', '', '', '岳普湖县', '3');
INSERT INTO `region` VALUES ('653129', '', '', '伽师县', '3');
INSERT INTO `region` VALUES ('653130', '', '', '巴楚县', '3');
INSERT INTO `region` VALUES ('653131', '', '', '塔什库尔干塔吉克自治县', '3');
INSERT INTO `region` VALUES ('653200', '', '和田地区', '', '2');
INSERT INTO `region` VALUES ('653201', '', '', '和田市', '3');
INSERT INTO `region` VALUES ('653221', '', '', '和田县', '3');
INSERT INTO `region` VALUES ('653222', '', '', '墨玉县', '3');
INSERT INTO `region` VALUES ('653223', '', '', '皮山县', '3');
INSERT INTO `region` VALUES ('653224', '', '', '洛浦县', '3');
INSERT INTO `region` VALUES ('653225', '', '', '策勒县', '3');
INSERT INTO `region` VALUES ('653226', '', '', '于田县', '3');
INSERT INTO `region` VALUES ('653227', '', '', '民丰县', '3');
INSERT INTO `region` VALUES ('654000', '', '伊犁哈萨克自治州', '', '2');
INSERT INTO `region` VALUES ('654002', '', '', '伊宁市', '3');
INSERT INTO `region` VALUES ('654003', '', '', '奎屯市', '3');
INSERT INTO `region` VALUES ('654021', '', '', '伊宁县', '3');
INSERT INTO `region` VALUES ('654022', '', '', '察布查尔锡伯自治县', '3');
INSERT INTO `region` VALUES ('654023', '', '', '霍城县', '3');
INSERT INTO `region` VALUES ('654024', '', '', '巩留县', '3');
INSERT INTO `region` VALUES ('654025', '', '', '新源县', '3');
INSERT INTO `region` VALUES ('654026', '', '', '昭苏县', '3');
INSERT INTO `region` VALUES ('654027', '', '', '特克斯县', '3');
INSERT INTO `region` VALUES ('654028', '', '', '尼勒克县', '3');
INSERT INTO `region` VALUES ('654200', '', '塔城地区', '', '2');
INSERT INTO `region` VALUES ('654201', '', '', '塔城市', '3');
INSERT INTO `region` VALUES ('654202', '', '', '乌苏市', '3');
INSERT INTO `region` VALUES ('654221', '', '', '额敏县', '3');
INSERT INTO `region` VALUES ('654223', '', '', '沙湾县', '3');
INSERT INTO `region` VALUES ('654224', '', '', '托里县', '3');
INSERT INTO `region` VALUES ('654225', '', '', '裕民县', '3');
INSERT INTO `region` VALUES ('654226', '', '', '和布克赛尔蒙古自治县', '3');
INSERT INTO `region` VALUES ('654300', '', '阿勒泰地区', '', '2');
INSERT INTO `region` VALUES ('654301', '', '', '阿勒泰市', '3');
INSERT INTO `region` VALUES ('654321', '', '', '布尔津县', '3');
INSERT INTO `region` VALUES ('654322', '', '', '富蕴县', '3');
INSERT INTO `region` VALUES ('654323', '', '', '福海县', '3');
INSERT INTO `region` VALUES ('654324', '', '', '哈巴河县', '3');
INSERT INTO `region` VALUES ('654325', '', '', '青河县', '3');
INSERT INTO `region` VALUES ('654326', '', '', '吉木乃县', '3');
INSERT INTO `region` VALUES ('659000', '', '自治区直辖县级行政区划', '', '2');
INSERT INTO `region` VALUES ('659001', '', '', '石河子市', '3');
INSERT INTO `region` VALUES ('659002', '', '', '阿拉尔市', '3');
INSERT INTO `region` VALUES ('659003', '', '', '图木舒克市', '3');
INSERT INTO `region` VALUES ('659004', '', '', '五家渠市', '3');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL COMMENT '角色描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '区工作人员', '在区网点工作的人员的角色');
INSERT INTO `role` VALUES ('2', '市工作人员', '在市网点工作的人员的角色');
INSERT INTO `role` VALUES ('3', '省工作人员', '在省网点工作的人员的角色');
INSERT INTO `role` VALUES ('4', '快递员', '负责运输包裹的角色');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `rid` int(11) NOT NULL COMMENT '角色id',
  `pid` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`rid`,`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1');
INSERT INTO `role_permission` VALUES ('2', '2');
INSERT INTO `role_permission` VALUES ('3', '2');
INSERT INTO `role_permission` VALUES ('4', '3');

-- ----------------------------
-- Table structure for transhistory
-- ----------------------------
DROP TABLE IF EXISTS `transhistory`;
CREATE TABLE `transhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eid` char(15) DEFAULT NULL COMMENT '快件id',
  `lat` double DEFAULT NULL COMMENT '坐标x',
  `lon` double DEFAULT NULL COMMENT '坐标y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transhistory
-- ----------------------------
INSERT INTO `transhistory` VALUES ('34', '134010200000001', '34.819926', '113.537187');
INSERT INTO `transhistory` VALUES ('35', '134010200000001', '34.820304', '113.536975');
INSERT INTO `transhistory` VALUES ('36', '134010200000001', '34.819993', '113.53723');
INSERT INTO `transhistory` VALUES ('37', '134010200000001', '34.820093', '113.537243');
INSERT INTO `transhistory` VALUES ('38', '134010200000001', '34.820109', '113.537347');
INSERT INTO `transhistory` VALUES ('39', '134010200000001', '34.820112', '113.537455');
INSERT INTO `transhistory` VALUES ('40', '134010200000001', '34.820093', '113.537562');
INSERT INTO `transhistory` VALUES ('41', '134010200000001', '34.820078', '113.537664');
INSERT INTO `transhistory` VALUES ('42', '134010200000001', '34.82003', '113.53778');
INSERT INTO `transhistory` VALUES ('43', '134010200000001', '34.820038', '113.537881');
INSERT INTO `transhistory` VALUES ('44', '134010200000001', '34.820039', '113.538001');
INSERT INTO `transhistory` VALUES ('45', '134010200000001', '34.820017', '113.538101');
INSERT INTO `transhistory` VALUES ('46', '134010200000001', '34.820009', '113.538215');
INSERT INTO `transhistory` VALUES ('47', '134010200000001', '34.819989', '113.538328');
INSERT INTO `transhistory` VALUES ('48', '134010200000001', '34.819978', '113.538431');
INSERT INTO `transhistory` VALUES ('49', '134010200000001', '34.819986', '113.538538');
INSERT INTO `transhistory` VALUES ('50', '134010200000001', '34.819995', '113.538641');
INSERT INTO `transhistory` VALUES ('51', '134010200000001', '34.81999', '113.538743');
INSERT INTO `transhistory` VALUES ('52', '134010200000001', '34.820009', '113.538846');
INSERT INTO `transhistory` VALUES ('53', '134010200000001', '34.819992', '113.538969');
INSERT INTO `transhistory` VALUES ('54', '134010200000001', '34.819998', '113.539069');
INSERT INTO `transhistory` VALUES ('55', '134010200000001', '34.819993', '113.539175');
INSERT INTO `transhistory` VALUES ('56', '134010200000001', '34.819974', '113.539288');
INSERT INTO `transhistory` VALUES ('57', '134010200000001', '34.819948', '113.539406');
INSERT INTO `transhistory` VALUES ('58', '134010200000001', '34.819932', '113.539512');
INSERT INTO `transhistory` VALUES ('59', '134010200000001', '34.819941', '113.539651');
INSERT INTO `transhistory` VALUES ('60', '134010200000001', '34.819922', '113.539753');
INSERT INTO `transhistory` VALUES ('61', '134010200000001', '34.819939', '113.539855');
INSERT INTO `transhistory` VALUES ('62', '134010200000001', '34.819953', '113.53996');
INSERT INTO `transhistory` VALUES ('63', '134010200000001', '34.820055', '113.540016');
INSERT INTO `transhistory` VALUES ('64', '134010200000001', '34.820156', '113.540094');
INSERT INTO `transhistory` VALUES ('65', '134010200000001', '34.820266', '113.540055');
INSERT INTO `transhistory` VALUES ('66', '134010200000001', '34.820371', '113.540019');
INSERT INTO `transhistory` VALUES ('67', '134010200000001', '34.820475', '113.539979');
INSERT INTO `transhistory` VALUES ('68', '134010200000001', '34.820578', '113.539945');
INSERT INTO `transhistory` VALUES ('69', '134010200000001', '34.820682', '113.539964');
INSERT INTO `transhistory` VALUES ('70', '134010200000001', '34.820792', '113.539982');
INSERT INTO `transhistory` VALUES ('71', '134010200000001', '34.820902', '113.539972');
INSERT INTO `transhistory` VALUES ('72', '134010200000001', '34.821008', '113.539987');
INSERT INTO `transhistory` VALUES ('73', '134010200000001', '34.821108', '113.539973');
INSERT INTO `transhistory` VALUES ('74', '134010200000001', '34.82118', '113.540083');
INSERT INTO `transhistory` VALUES ('75', '134010200000001', '34.821259', '113.540186');
INSERT INTO `transhistory` VALUES ('76', '134010200000001', '34.821278', '113.540287');
INSERT INTO `transhistory` VALUES ('77', '134010200000001', '34.821323', '113.540399');
INSERT INTO `transhistory` VALUES ('78', '134010200000001', '34.821321', '113.540504');
INSERT INTO `transhistory` VALUES ('79', '134010200000001', '34.821278', '113.540611');
INSERT INTO `transhistory` VALUES ('80', '134010200000001', '34.82128', '113.540713');
INSERT INTO `transhistory` VALUES ('81', '134010200000001', '34.821287', '113.540818');
INSERT INTO `transhistory` VALUES ('82', '134010200000001', '34.821281', '113.540932');
INSERT INTO `transhistory` VALUES ('83', '134010200000001', '34.821267', '113.541034');
INSERT INTO `transhistory` VALUES ('84', '134010200000001', '34.821255', '113.541141');
INSERT INTO `transhistory` VALUES ('85', '134010200000001', '34.821323', '113.541246');
INSERT INTO `transhistory` VALUES ('86', '134010200000001', '34.821363', '113.541355');
INSERT INTO `transhistory` VALUES ('87', '134010200000001', '34.821366', '113.541455');
INSERT INTO `transhistory` VALUES ('88', '134010200000001', '34.821479', '113.541539');
INSERT INTO `transhistory` VALUES ('89', '134010200000001', '34.82158', '113.541586');
INSERT INTO `transhistory` VALUES ('90', '134010200000001', '34.821686', '113.541597');
INSERT INTO `transhistory` VALUES ('91', '134010200000001', '34.821799', '113.541554');
INSERT INTO `transhistory` VALUES ('92', '134010200000001', '34.821908', '113.541511');
INSERT INTO `transhistory` VALUES ('93', '134010200000001', '34.822016', '113.54148');
INSERT INTO `transhistory` VALUES ('94', '134010200000001', '34.822136', '113.541441');
INSERT INTO `transhistory` VALUES ('95', '134010200000001', '34.822237', '113.541423');
INSERT INTO `transhistory` VALUES ('96', '134010200000001', '34.822342', '113.541393');
INSERT INTO `transhistory` VALUES ('97', '134010200000001', '34.822451', '113.541347');
INSERT INTO `transhistory` VALUES ('98', '134010200000001', '34.822556', '113.541281');
INSERT INTO `transhistory` VALUES ('99', '134010200000001', '34.822659', '113.541264');
INSERT INTO `transhistory` VALUES ('100', '134010200000001', '34.822764', '113.541231');
INSERT INTO `transhistory` VALUES ('101', '134010200000001', '34.822869', '113.541206');
INSERT INTO `transhistory` VALUES ('102', '134010200000001', '34.82297', '113.541211');
INSERT INTO `transhistory` VALUES ('103', '134010200000001', '34.823073', '113.541201');
INSERT INTO `transhistory` VALUES ('104', '134010200000001', '34.823178', '113.541198');
INSERT INTO `transhistory` VALUES ('105', '134010200000001', '34.823285', '113.541231');
INSERT INTO `transhistory` VALUES ('106', '134010200000001', '34.823386', '113.541303');
INSERT INTO `transhistory` VALUES ('107', '134010200000001', '34.823445', '113.541403');
INSERT INTO `transhistory` VALUES ('108', '134010200000001', '34.823444', '113.541513');
INSERT INTO `transhistory` VALUES ('109', '134010200000001', '34.823425', '113.541619');
INSERT INTO `transhistory` VALUES ('110', '141010200000003', '34.822568', '113.541496');
INSERT INTO `transhistory` VALUES ('111', '141010200000003', '5e-324', '5e-324');
INSERT INTO `transhistory` VALUES ('112', '141010200000003', '34.822711', '113.541715');
INSERT INTO `transhistory` VALUES ('113', '141010200000003', '34.822569', '113.541618');
INSERT INTO `transhistory` VALUES ('114', '141010200000003', '34.8223', '113.541633');
INSERT INTO `transhistory` VALUES ('115', '141010200000003', '34.82256', '113.541445');
INSERT INTO `transhistory` VALUES ('116', '141010200000003', '5e-324', '5e-324');
INSERT INTO `transhistory` VALUES ('117', '141010200000003', '34.822544', '113.541439');
INSERT INTO `transhistory` VALUES ('118', '141010200000003', '5e-324', '5e-324');
INSERT INTO `transhistory` VALUES ('119', '134010200000002', '34.822539', '113.541422');
INSERT INTO `transhistory` VALUES ('120', '134010200000002', '5e-324', '5e-324');
INSERT INTO `transhistory` VALUES ('121', '134010200000002', '34.822712', '113.541825');
INSERT INTO `transhistory` VALUES ('122', '141010200000005', '34.822489', '113.541253');
INSERT INTO `transhistory` VALUES ('123', '141010200000005', '5e-324', '5e-324');
INSERT INTO `transhistory` VALUES ('124', '141010200000005', '34.822504', '113.541339');
INSERT INTO `transhistory` VALUES ('125', '141010200000005', '34.822558', '113.54151');
INSERT INTO `transhistory` VALUES ('126', '141010200000005', '34.822496', '113.541315');
INSERT INTO `transhistory` VALUES ('127', '141010200000005', '5e-324', '5e-324');

-- ----------------------------
-- Table structure for transnode
-- ----------------------------
DROP TABLE IF EXISTS `transnode`;
CREATE TABLE `transnode` (
  `id` char(8) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '分为省、市、区',
  `region_code` char(6) DEFAULT NULL COMMENT '区域码',
  `lat` double DEFAULT NULL COMMENT '坐标x',
  `lon` double DEFAULT NULL COMMENT '坐标y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transnode
-- ----------------------------
INSERT INTO `transnode` VALUES ('11000000', '北京市分拣中心', '1', '110000', null, null);
INSERT INTO `transnode` VALUES ('11010000', '市辖区分拣中心', '2', '110100', null, null);
INSERT INTO `transnode` VALUES ('11010100', '东城区网点', '3', '110101', null, null);
INSERT INTO `transnode` VALUES ('11010200', '西城区网点', '3', '110102', null, null);
INSERT INTO `transnode` VALUES ('11010500', '朝阳区网点', '3', '110105', null, null);
INSERT INTO `transnode` VALUES ('11010600', '丰台区网点', '3', '110106', null, null);
INSERT INTO `transnode` VALUES ('11010700', '石景山区网点', '3', '110107', null, null);
INSERT INTO `transnode` VALUES ('11010800', '海淀区网点', '3', '110108', null, null);
INSERT INTO `transnode` VALUES ('11010900', '门头沟区网点', '3', '110109', null, null);
INSERT INTO `transnode` VALUES ('11011100', '房山区网点', '3', '110111', null, null);
INSERT INTO `transnode` VALUES ('11011200', '通州区网点', '3', '110112', null, null);
INSERT INTO `transnode` VALUES ('11011300', '顺义区网点', '3', '110113', null, null);
INSERT INTO `transnode` VALUES ('11011400', '昌平区网点', '3', '110114', null, null);
INSERT INTO `transnode` VALUES ('11011500', '大兴区网点', '3', '110115', null, null);
INSERT INTO `transnode` VALUES ('11011600', '怀柔区网点', '3', '110116', null, null);
INSERT INTO `transnode` VALUES ('11011700', '平谷区网点', '3', '110117', null, null);
INSERT INTO `transnode` VALUES ('11020000', '县分拣中心', '2', '110200', null, null);
INSERT INTO `transnode` VALUES ('11022800', '密云县网点', '3', '110228', null, null);
INSERT INTO `transnode` VALUES ('11022900', '延庆县网点', '3', '110229', null, null);
INSERT INTO `transnode` VALUES ('12000000', '天津市分拣中心', '1', '120000', null, null);
INSERT INTO `transnode` VALUES ('12010000', '市辖区分拣中心', '2', '120100', null, null);
INSERT INTO `transnode` VALUES ('12010100', '和平区网点', '3', '120101', null, null);
INSERT INTO `transnode` VALUES ('12010200', '河东区网点', '3', '120102', null, null);
INSERT INTO `transnode` VALUES ('12010300', '河西区网点', '3', '120103', null, null);
INSERT INTO `transnode` VALUES ('12010400', '南开区网点', '3', '120104', null, null);
INSERT INTO `transnode` VALUES ('12010500', '河北区网点', '3', '120105', null, null);
INSERT INTO `transnode` VALUES ('12010600', '红桥区网点', '3', '120106', null, null);
INSERT INTO `transnode` VALUES ('12011000', '东丽区网点', '3', '120110', null, null);
INSERT INTO `transnode` VALUES ('12011100', '西青区网点', '3', '120111', null, null);
INSERT INTO `transnode` VALUES ('12011200', '津南区网点', '3', '120112', null, null);
INSERT INTO `transnode` VALUES ('12011300', '北辰区网点', '3', '120113', null, null);
INSERT INTO `transnode` VALUES ('12011400', '武清区网点', '3', '120114', null, null);
INSERT INTO `transnode` VALUES ('12011500', '宝坻区网点', '3', '120115', null, null);
INSERT INTO `transnode` VALUES ('12011600', '滨海新区网点', '3', '120116', null, null);
INSERT INTO `transnode` VALUES ('12020000', '县分拣中心', '2', '120200', null, null);
INSERT INTO `transnode` VALUES ('12022100', '宁河县网点', '3', '120221', null, null);
INSERT INTO `transnode` VALUES ('12022300', '静海县网点', '3', '120223', null, null);
INSERT INTO `transnode` VALUES ('12022500', '蓟县网点', '3', '120225', null, null);
INSERT INTO `transnode` VALUES ('13000000', '河北省分拣中心', '1', '130000', null, null);
INSERT INTO `transnode` VALUES ('13010000', '石家庄市分拣中心', '2', '130100', null, null);
INSERT INTO `transnode` VALUES ('13010100', '市辖区网点', '3', '130101', null, null);
INSERT INTO `transnode` VALUES ('13010200', '长安区网点', '3', '130102', null, null);
INSERT INTO `transnode` VALUES ('13010300', '桥东区网点', '3', '130103', null, null);
INSERT INTO `transnode` VALUES ('13010400', '桥西区网点', '3', '130104', null, null);
INSERT INTO `transnode` VALUES ('13010500', '新华区网点', '3', '130105', null, null);
INSERT INTO `transnode` VALUES ('13010700', '井陉矿区网点', '3', '130107', null, null);
INSERT INTO `transnode` VALUES ('13010800', '裕华区网点', '3', '130108', null, null);
INSERT INTO `transnode` VALUES ('13012100', '井陉县网点', '3', '130121', null, null);
INSERT INTO `transnode` VALUES ('13012300', '正定县网点', '3', '130123', null, null);
INSERT INTO `transnode` VALUES ('13012400', '栾城县网点', '3', '130124', null, null);
INSERT INTO `transnode` VALUES ('13012500', '行唐县网点', '3', '130125', null, null);
INSERT INTO `transnode` VALUES ('13012600', '灵寿县网点', '3', '130126', null, null);
INSERT INTO `transnode` VALUES ('13012700', '高邑县网点', '3', '130127', null, null);
INSERT INTO `transnode` VALUES ('13012800', '深泽县网点', '3', '130128', null, null);
INSERT INTO `transnode` VALUES ('13012900', '赞皇县网点', '3', '130129', null, null);
INSERT INTO `transnode` VALUES ('13013000', '无极县网点', '3', '130130', null, null);
INSERT INTO `transnode` VALUES ('13013100', '平山县网点', '3', '130131', null, null);
INSERT INTO `transnode` VALUES ('13013200', '元氏县网点', '3', '130132', null, null);
INSERT INTO `transnode` VALUES ('13013300', '赵县网点', '3', '130133', null, null);
INSERT INTO `transnode` VALUES ('13018100', '辛集市网点', '3', '130181', null, null);
INSERT INTO `transnode` VALUES ('13018200', '藁城市网点', '3', '130182', null, null);
INSERT INTO `transnode` VALUES ('13018300', '晋州市网点', '3', '130183', null, null);
INSERT INTO `transnode` VALUES ('13018400', '新乐市网点', '3', '130184', null, null);
INSERT INTO `transnode` VALUES ('13018500', '鹿泉市网点', '3', '130185', null, null);
INSERT INTO `transnode` VALUES ('13020000', '唐山市分拣中心', '2', '130200', null, null);
INSERT INTO `transnode` VALUES ('13020100', '市辖区网点', '3', '130201', null, null);
INSERT INTO `transnode` VALUES ('13020200', '路南区网点', '3', '130202', null, null);
INSERT INTO `transnode` VALUES ('13020300', '路北区网点', '3', '130203', null, null);
INSERT INTO `transnode` VALUES ('13020400', '古冶区网点', '3', '130204', null, null);
INSERT INTO `transnode` VALUES ('13020500', '开平区网点', '3', '130205', null, null);
INSERT INTO `transnode` VALUES ('13020700', '丰南区网点', '3', '130207', null, null);
INSERT INTO `transnode` VALUES ('13020800', '丰润区网点', '3', '130208', null, null);
INSERT INTO `transnode` VALUES ('13020900', '曹妃甸区网点', '3', '130209', null, null);
INSERT INTO `transnode` VALUES ('13022300', '滦县网点', '3', '130223', null, null);
INSERT INTO `transnode` VALUES ('13022400', '滦南县网点', '3', '130224', null, null);
INSERT INTO `transnode` VALUES ('13022500', '乐亭县网点', '3', '130225', null, null);
INSERT INTO `transnode` VALUES ('13022700', '迁西县网点', '3', '130227', null, null);
INSERT INTO `transnode` VALUES ('13022900', '玉田县网点', '3', '130229', null, null);
INSERT INTO `transnode` VALUES ('13028100', '遵化市网点', '3', '130281', null, null);
INSERT INTO `transnode` VALUES ('13028300', '迁安市网点', '3', '130283', null, null);
INSERT INTO `transnode` VALUES ('13030000', '秦皇岛市分拣中心', '2', '130300', null, null);
INSERT INTO `transnode` VALUES ('13030100', '市辖区网点', '3', '130301', null, null);
INSERT INTO `transnode` VALUES ('13030200', '海港区网点', '3', '130302', null, null);
INSERT INTO `transnode` VALUES ('13030300', '山海关区网点', '3', '130303', null, null);
INSERT INTO `transnode` VALUES ('13030400', '北戴河区网点', '3', '130304', null, null);
INSERT INTO `transnode` VALUES ('13032100', '青龙满族自治县网点', '3', '130321', null, null);
INSERT INTO `transnode` VALUES ('13032200', '昌黎县网点', '3', '130322', null, null);
INSERT INTO `transnode` VALUES ('13032300', '抚宁县网点', '3', '130323', null, null);
INSERT INTO `transnode` VALUES ('13032400', '卢龙县网点', '3', '130324', null, null);
INSERT INTO `transnode` VALUES ('13040000', '邯郸市分拣中心', '2', '130400', null, null);
INSERT INTO `transnode` VALUES ('13040100', '市辖区网点', '3', '130401', null, null);
INSERT INTO `transnode` VALUES ('13040200', '邯山区网点', '3', '130402', null, null);
INSERT INTO `transnode` VALUES ('13040300', '丛台区网点', '3', '130403', null, null);
INSERT INTO `transnode` VALUES ('13040400', '复兴区网点', '3', '130404', null, null);
INSERT INTO `transnode` VALUES ('13040600', '峰峰矿区网点', '3', '130406', null, null);
INSERT INTO `transnode` VALUES ('13042100', '邯郸县网点', '3', '130421', null, null);
INSERT INTO `transnode` VALUES ('13042300', '临漳县网点', '3', '130423', null, null);
INSERT INTO `transnode` VALUES ('13042400', '成安县网点', '3', '130424', null, null);
INSERT INTO `transnode` VALUES ('13042500', '大名县网点', '3', '130425', null, null);
INSERT INTO `transnode` VALUES ('13042600', '涉县网点', '3', '130426', null, null);
INSERT INTO `transnode` VALUES ('13042700', '磁县网点', '3', '130427', null, null);
INSERT INTO `transnode` VALUES ('13042800', '肥乡县网点', '3', '130428', null, null);
INSERT INTO `transnode` VALUES ('13042900', '永年县网点', '3', '130429', null, null);
INSERT INTO `transnode` VALUES ('13043000', '邱县网点', '3', '130430', null, null);
INSERT INTO `transnode` VALUES ('13043100', '鸡泽县网点', '3', '130431', null, null);
INSERT INTO `transnode` VALUES ('13043200', '广平县网点', '3', '130432', null, null);
INSERT INTO `transnode` VALUES ('13043300', '馆陶县网点', '3', '130433', null, null);
INSERT INTO `transnode` VALUES ('13043400', '魏县网点', '3', '130434', null, null);
INSERT INTO `transnode` VALUES ('13043500', '曲周县网点', '3', '130435', null, null);
INSERT INTO `transnode` VALUES ('13048100', '武安市网点', '3', '130481', null, null);
INSERT INTO `transnode` VALUES ('13050000', '邢台市分拣中心', '2', '130500', null, null);
INSERT INTO `transnode` VALUES ('13050100', '市辖区网点', '3', '130501', null, null);
INSERT INTO `transnode` VALUES ('13050200', '桥东区网点', '3', '130502', null, null);
INSERT INTO `transnode` VALUES ('13050300', '桥西区网点', '3', '130503', null, null);
INSERT INTO `transnode` VALUES ('13052100', '邢台县网点', '3', '130521', null, null);
INSERT INTO `transnode` VALUES ('13052200', '临城县网点', '3', '130522', null, null);
INSERT INTO `transnode` VALUES ('13052300', '内丘县网点', '3', '130523', null, null);
INSERT INTO `transnode` VALUES ('13052400', '柏乡县网点', '3', '130524', null, null);
INSERT INTO `transnode` VALUES ('13052500', '隆尧县网点', '3', '130525', null, null);
INSERT INTO `transnode` VALUES ('13052600', '任县网点', '3', '130526', null, null);
INSERT INTO `transnode` VALUES ('13052700', '南和县网点', '3', '130527', null, null);
INSERT INTO `transnode` VALUES ('13052800', '宁晋县网点', '3', '130528', null, null);
INSERT INTO `transnode` VALUES ('13052900', '巨鹿县网点', '3', '130529', null, null);
INSERT INTO `transnode` VALUES ('13053000', '新河县网点', '3', '130530', null, null);
INSERT INTO `transnode` VALUES ('13053100', '广宗县网点', '3', '130531', null, null);
INSERT INTO `transnode` VALUES ('13053200', '平乡县网点', '3', '130532', null, null);
INSERT INTO `transnode` VALUES ('13053300', '威县网点', '3', '130533', null, null);
INSERT INTO `transnode` VALUES ('13053400', '清河县网点', '3', '130534', null, null);
INSERT INTO `transnode` VALUES ('13053500', '临西县网点', '3', '130535', null, null);
INSERT INTO `transnode` VALUES ('13058100', '南宫市网点', '3', '130581', null, null);
INSERT INTO `transnode` VALUES ('13058200', '沙河市网点', '3', '130582', null, null);
INSERT INTO `transnode` VALUES ('13060000', '保定市分拣中心', '2', '130600', null, null);
INSERT INTO `transnode` VALUES ('13060100', '市辖区网点', '3', '130601', null, null);
INSERT INTO `transnode` VALUES ('13060200', '新市区网点', '3', '130602', null, null);
INSERT INTO `transnode` VALUES ('13060300', '北市区网点', '3', '130603', null, null);
INSERT INTO `transnode` VALUES ('13060400', '南市区网点', '3', '130604', null, null);
INSERT INTO `transnode` VALUES ('13062100', '满城县网点', '3', '130621', null, null);
INSERT INTO `transnode` VALUES ('13062200', '清苑县网点', '3', '130622', null, null);
INSERT INTO `transnode` VALUES ('13062300', '涞水县网点', '3', '130623', null, null);
INSERT INTO `transnode` VALUES ('13062400', '阜平县网点', '3', '130624', null, null);
INSERT INTO `transnode` VALUES ('13062500', '徐水县网点', '3', '130625', null, null);
INSERT INTO `transnode` VALUES ('13062600', '定兴县网点', '3', '130626', null, null);
INSERT INTO `transnode` VALUES ('13062700', '唐县网点', '3', '130627', null, null);
INSERT INTO `transnode` VALUES ('13062800', '高阳县网点', '3', '130628', null, null);
INSERT INTO `transnode` VALUES ('13062900', '容城县网点', '3', '130629', null, null);
INSERT INTO `transnode` VALUES ('13063000', '涞源县网点', '3', '130630', null, null);
INSERT INTO `transnode` VALUES ('13063100', '望都县网点', '3', '130631', null, null);
INSERT INTO `transnode` VALUES ('13063200', '安新县网点', '3', '130632', null, null);
INSERT INTO `transnode` VALUES ('13063300', '易县网点', '3', '130633', null, null);
INSERT INTO `transnode` VALUES ('13063400', '曲阳县网点', '3', '130634', null, null);
INSERT INTO `transnode` VALUES ('13063500', '蠡县网点', '3', '130635', null, null);
INSERT INTO `transnode` VALUES ('13063600', '顺平县网点', '3', '130636', null, null);
INSERT INTO `transnode` VALUES ('13063700', '博野县网点', '3', '130637', null, null);
INSERT INTO `transnode` VALUES ('13063800', '雄县网点', '3', '130638', null, null);
INSERT INTO `transnode` VALUES ('13068100', '涿州市网点', '3', '130681', null, null);
INSERT INTO `transnode` VALUES ('13068200', '定州市网点', '3', '130682', null, null);
INSERT INTO `transnode` VALUES ('13068300', '安国市网点', '3', '130683', null, null);
INSERT INTO `transnode` VALUES ('13068400', '高碑店市网点', '3', '130684', null, null);
INSERT INTO `transnode` VALUES ('13070000', '张家口市分拣中心', '2', '130700', null, null);
INSERT INTO `transnode` VALUES ('13070100', '市辖区网点', '3', '130701', null, null);
INSERT INTO `transnode` VALUES ('13070200', '桥东区网点', '3', '130702', null, null);
INSERT INTO `transnode` VALUES ('13070300', '桥西区网点', '3', '130703', null, null);
INSERT INTO `transnode` VALUES ('13070500', '宣化区网点', '3', '130705', null, null);
INSERT INTO `transnode` VALUES ('13070600', '下花园区网点', '3', '130706', null, null);
INSERT INTO `transnode` VALUES ('13072100', '宣化县网点', '3', '130721', null, null);
INSERT INTO `transnode` VALUES ('13072200', '张北县网点', '3', '130722', null, null);
INSERT INTO `transnode` VALUES ('13072300', '康保县网点', '3', '130723', null, null);
INSERT INTO `transnode` VALUES ('13072400', '沽源县网点', '3', '130724', null, null);
INSERT INTO `transnode` VALUES ('13072500', '尚义县网点', '3', '130725', null, null);
INSERT INTO `transnode` VALUES ('13072600', '蔚县网点', '3', '130726', null, null);
INSERT INTO `transnode` VALUES ('13072700', '阳原县网点', '3', '130727', null, null);
INSERT INTO `transnode` VALUES ('13072800', '怀安县网点', '3', '130728', null, null);
INSERT INTO `transnode` VALUES ('13072900', '万全县网点', '3', '130729', null, null);
INSERT INTO `transnode` VALUES ('13073000', '怀来县网点', '3', '130730', null, null);
INSERT INTO `transnode` VALUES ('13073100', '涿鹿县网点', '3', '130731', null, null);
INSERT INTO `transnode` VALUES ('13073200', '赤城县网点', '3', '130732', null, null);
INSERT INTO `transnode` VALUES ('13073300', '崇礼县网点', '3', '130733', null, null);
INSERT INTO `transnode` VALUES ('13080000', '承德市分拣中心', '2', '130800', null, null);
INSERT INTO `transnode` VALUES ('13080100', '市辖区网点', '3', '130801', null, null);
INSERT INTO `transnode` VALUES ('13080200', '双桥区网点', '3', '130802', null, null);
INSERT INTO `transnode` VALUES ('13080300', '双滦区网点', '3', '130803', null, null);
INSERT INTO `transnode` VALUES ('13080400', '鹰手营子矿区网点', '3', '130804', null, null);
INSERT INTO `transnode` VALUES ('13082100', '承德县网点', '3', '130821', null, null);
INSERT INTO `transnode` VALUES ('13082200', '兴隆县网点', '3', '130822', null, null);
INSERT INTO `transnode` VALUES ('13082300', '平泉县网点', '3', '130823', null, null);
INSERT INTO `transnode` VALUES ('13082400', '滦平县网点', '3', '130824', null, null);
INSERT INTO `transnode` VALUES ('13082500', '隆化县网点', '3', '130825', null, null);
INSERT INTO `transnode` VALUES ('13082600', '丰宁满族自治县网点', '3', '130826', null, null);
INSERT INTO `transnode` VALUES ('13082700', '宽城满族自治县网点', '3', '130827', null, null);
INSERT INTO `transnode` VALUES ('13082800', '围场满族蒙古族自治县网点', '3', '130828', null, null);
INSERT INTO `transnode` VALUES ('13090000', '沧州市分拣中心', '2', '130900', null, null);
INSERT INTO `transnode` VALUES ('13090100', '市辖区网点', '3', '130901', null, null);
INSERT INTO `transnode` VALUES ('13090200', '新华区网点', '3', '130902', null, null);
INSERT INTO `transnode` VALUES ('13090300', '运河区网点', '3', '130903', null, null);
INSERT INTO `transnode` VALUES ('13092100', '沧县网点', '3', '130921', null, null);
INSERT INTO `transnode` VALUES ('13092200', '青县网点', '3', '130922', null, null);
INSERT INTO `transnode` VALUES ('13092300', '东光县网点', '3', '130923', null, null);
INSERT INTO `transnode` VALUES ('13092400', '海兴县网点', '3', '130924', null, null);
INSERT INTO `transnode` VALUES ('13092500', '盐山县网点', '3', '130925', null, null);
INSERT INTO `transnode` VALUES ('13092600', '肃宁县网点', '3', '130926', null, null);
INSERT INTO `transnode` VALUES ('13092700', '南皮县网点', '3', '130927', null, null);
INSERT INTO `transnode` VALUES ('13092800', '吴桥县网点', '3', '130928', null, null);
INSERT INTO `transnode` VALUES ('13092900', '献县网点', '3', '130929', null, null);
INSERT INTO `transnode` VALUES ('13093000', '孟村回族自治县网点', '3', '130930', null, null);
INSERT INTO `transnode` VALUES ('13098100', '泊头市网点', '3', '130981', null, null);
INSERT INTO `transnode` VALUES ('13098200', '任丘市网点', '3', '130982', null, null);
INSERT INTO `transnode` VALUES ('13098300', '黄骅市网点', '3', '130983', null, null);
INSERT INTO `transnode` VALUES ('13098400', '河间市网点', '3', '130984', null, null);
INSERT INTO `transnode` VALUES ('13100000', '廊坊市分拣中心', '2', '131000', null, null);
INSERT INTO `transnode` VALUES ('13100100', '市辖区网点', '3', '131001', null, null);
INSERT INTO `transnode` VALUES ('13100200', '安次区网点', '3', '131002', null, null);
INSERT INTO `transnode` VALUES ('13100300', '广阳区网点', '3', '131003', null, null);
INSERT INTO `transnode` VALUES ('13102200', '固安县网点', '3', '131022', null, null);
INSERT INTO `transnode` VALUES ('13102300', '永清县网点', '3', '131023', null, null);
INSERT INTO `transnode` VALUES ('13102400', '香河县网点', '3', '131024', null, null);
INSERT INTO `transnode` VALUES ('13102500', '大城县网点', '3', '131025', null, null);
INSERT INTO `transnode` VALUES ('13102600', '文安县网点', '3', '131026', null, null);
INSERT INTO `transnode` VALUES ('13102800', '大厂回族自治县网点', '3', '131028', null, null);
INSERT INTO `transnode` VALUES ('13108100', '霸州市网点', '3', '131081', null, null);
INSERT INTO `transnode` VALUES ('13108200', '三河市网点', '3', '131082', null, null);
INSERT INTO `transnode` VALUES ('13110000', '衡水市分拣中心', '2', '131100', null, null);
INSERT INTO `transnode` VALUES ('13110100', '市辖区网点', '3', '131101', null, null);
INSERT INTO `transnode` VALUES ('13110200', '桃城区网点', '3', '131102', null, null);
INSERT INTO `transnode` VALUES ('13112100', '枣强县网点', '3', '131121', null, null);
INSERT INTO `transnode` VALUES ('13112200', '武邑县网点', '3', '131122', null, null);
INSERT INTO `transnode` VALUES ('13112300', '武强县网点', '3', '131123', null, null);
INSERT INTO `transnode` VALUES ('13112400', '饶阳县网点', '3', '131124', null, null);
INSERT INTO `transnode` VALUES ('13112500', '安平县网点', '3', '131125', null, null);
INSERT INTO `transnode` VALUES ('13112600', '故城县网点', '3', '131126', null, null);
INSERT INTO `transnode` VALUES ('13112700', '景县网点', '3', '131127', null, null);
INSERT INTO `transnode` VALUES ('13112800', '阜城县网点', '3', '131128', null, null);
INSERT INTO `transnode` VALUES ('13118100', '冀州市网点', '3', '131181', null, null);
INSERT INTO `transnode` VALUES ('13118200', '深州市网点', '3', '131182', null, null);
INSERT INTO `transnode` VALUES ('14000000', '山西省分拣中心', '1', '140000', null, null);
INSERT INTO `transnode` VALUES ('14010000', '太原市分拣中心', '2', '140100', null, null);
INSERT INTO `transnode` VALUES ('14010100', '市辖区网点', '3', '140101', null, null);
INSERT INTO `transnode` VALUES ('14010500', '小店区网点', '3', '140105', null, null);
INSERT INTO `transnode` VALUES ('14010600', '迎泽区网点', '3', '140106', null, null);
INSERT INTO `transnode` VALUES ('14010700', '杏花岭区网点', '3', '140107', null, null);
INSERT INTO `transnode` VALUES ('14010800', '尖草坪区网点', '3', '140108', null, null);
INSERT INTO `transnode` VALUES ('14010900', '万柏林区网点', '3', '140109', null, null);
INSERT INTO `transnode` VALUES ('14011000', '晋源区网点', '3', '140110', null, null);
INSERT INTO `transnode` VALUES ('14012100', '清徐县网点', '3', '140121', null, null);
INSERT INTO `transnode` VALUES ('14012200', '阳曲县网点', '3', '140122', null, null);
INSERT INTO `transnode` VALUES ('14012300', '娄烦县网点', '3', '140123', null, null);
INSERT INTO `transnode` VALUES ('14018100', '古交市网点', '3', '140181', null, null);
INSERT INTO `transnode` VALUES ('14020000', '大同市分拣中心', '2', '140200', null, null);
INSERT INTO `transnode` VALUES ('14020100', '市辖区网点', '3', '140201', null, null);
INSERT INTO `transnode` VALUES ('14020200', '城区网点', '3', '140202', null, null);
INSERT INTO `transnode` VALUES ('14020300', '矿区网点', '3', '140203', null, null);
INSERT INTO `transnode` VALUES ('14021100', '南郊区网点', '3', '140211', null, null);
INSERT INTO `transnode` VALUES ('14021200', '新荣区网点', '3', '140212', null, null);
INSERT INTO `transnode` VALUES ('14022100', '阳高县网点', '3', '140221', null, null);
INSERT INTO `transnode` VALUES ('14022200', '天镇县网点', '3', '140222', null, null);
INSERT INTO `transnode` VALUES ('14022300', '广灵县网点', '3', '140223', null, null);
INSERT INTO `transnode` VALUES ('14022400', '灵丘县网点', '3', '140224', null, null);
INSERT INTO `transnode` VALUES ('14022500', '浑源县网点', '3', '140225', null, null);
INSERT INTO `transnode` VALUES ('14022600', '左云县网点', '3', '140226', null, null);
INSERT INTO `transnode` VALUES ('14022700', '大同县网点', '3', '140227', null, null);
INSERT INTO `transnode` VALUES ('14030000', '阳泉市分拣中心', '2', '140300', null, null);
INSERT INTO `transnode` VALUES ('14030100', '市辖区网点', '3', '140301', null, null);
INSERT INTO `transnode` VALUES ('14030200', '城区网点', '3', '140302', null, null);
INSERT INTO `transnode` VALUES ('14030300', '矿区网点', '3', '140303', null, null);
INSERT INTO `transnode` VALUES ('14031100', '郊区网点', '3', '140311', null, null);
INSERT INTO `transnode` VALUES ('14032100', '平定县网点', '3', '140321', null, null);
INSERT INTO `transnode` VALUES ('14032200', '盂县网点', '3', '140322', null, null);
INSERT INTO `transnode` VALUES ('14040000', '长治市分拣中心', '2', '140400', null, null);
INSERT INTO `transnode` VALUES ('14040100', '市辖区网点', '3', '140401', null, null);
INSERT INTO `transnode` VALUES ('14040200', '城区网点', '3', '140402', null, null);
INSERT INTO `transnode` VALUES ('14041100', '郊区网点', '3', '140411', null, null);
INSERT INTO `transnode` VALUES ('14042100', '长治县网点', '3', '140421', null, null);
INSERT INTO `transnode` VALUES ('14042300', '襄垣县网点', '3', '140423', null, null);
INSERT INTO `transnode` VALUES ('14042400', '屯留县网点', '3', '140424', null, null);
INSERT INTO `transnode` VALUES ('14042500', '平顺县网点', '3', '140425', null, null);
INSERT INTO `transnode` VALUES ('14042600', '黎城县网点', '3', '140426', null, null);
INSERT INTO `transnode` VALUES ('14042700', '壶关县网点', '3', '140427', null, null);
INSERT INTO `transnode` VALUES ('14042800', '长子县网点', '3', '140428', null, null);
INSERT INTO `transnode` VALUES ('14042900', '武乡县网点', '3', '140429', null, null);
INSERT INTO `transnode` VALUES ('14043000', '沁县网点', '3', '140430', null, null);
INSERT INTO `transnode` VALUES ('14043100', '沁源县网点', '3', '140431', null, null);
INSERT INTO `transnode` VALUES ('14048100', '潞城市网点', '3', '140481', null, null);
INSERT INTO `transnode` VALUES ('14050000', '晋城市分拣中心', '2', '140500', null, null);
INSERT INTO `transnode` VALUES ('14050100', '市辖区网点', '3', '140501', null, null);
INSERT INTO `transnode` VALUES ('14050200', '城区网点', '3', '140502', null, null);
INSERT INTO `transnode` VALUES ('14052100', '沁水县网点', '3', '140521', null, null);
INSERT INTO `transnode` VALUES ('14052200', '阳城县网点', '3', '140522', null, null);
INSERT INTO `transnode` VALUES ('14052400', '陵川县网点', '3', '140524', null, null);
INSERT INTO `transnode` VALUES ('14052500', '泽州县网点', '3', '140525', null, null);
INSERT INTO `transnode` VALUES ('14058100', '高平市网点', '3', '140581', null, null);
INSERT INTO `transnode` VALUES ('14060000', '朔州市分拣中心', '2', '140600', null, null);
INSERT INTO `transnode` VALUES ('14060100', '市辖区网点', '3', '140601', null, null);
INSERT INTO `transnode` VALUES ('14060200', '朔城区网点', '3', '140602', null, null);
INSERT INTO `transnode` VALUES ('14060300', '平鲁区网点', '3', '140603', null, null);
INSERT INTO `transnode` VALUES ('14062100', '山阴县网点', '3', '140621', null, null);
INSERT INTO `transnode` VALUES ('14062200', '应县网点', '3', '140622', null, null);
INSERT INTO `transnode` VALUES ('14062300', '右玉县网点', '3', '140623', null, null);
INSERT INTO `transnode` VALUES ('14062400', '怀仁县网点', '3', '140624', null, null);
INSERT INTO `transnode` VALUES ('14070000', '晋中市分拣中心', '2', '140700', null, null);
INSERT INTO `transnode` VALUES ('14070100', '市辖区网点', '3', '140701', null, null);
INSERT INTO `transnode` VALUES ('14070200', '榆次区网点', '3', '140702', null, null);
INSERT INTO `transnode` VALUES ('14072100', '榆社县网点', '3', '140721', null, null);
INSERT INTO `transnode` VALUES ('14072200', '左权县网点', '3', '140722', null, null);
INSERT INTO `transnode` VALUES ('14072300', '和顺县网点', '3', '140723', null, null);
INSERT INTO `transnode` VALUES ('14072400', '昔阳县网点', '3', '140724', null, null);
INSERT INTO `transnode` VALUES ('14072500', '寿阳县网点', '3', '140725', null, null);
INSERT INTO `transnode` VALUES ('14072600', '太谷县网点', '3', '140726', null, null);
INSERT INTO `transnode` VALUES ('14072700', '祁县网点', '3', '140727', null, null);
INSERT INTO `transnode` VALUES ('14072800', '平遥县网点', '3', '140728', null, null);
INSERT INTO `transnode` VALUES ('14072900', '灵石县网点', '3', '140729', null, null);
INSERT INTO `transnode` VALUES ('14078100', '介休市网点', '3', '140781', null, null);
INSERT INTO `transnode` VALUES ('14080000', '运城市分拣中心', '2', '140800', null, null);
INSERT INTO `transnode` VALUES ('14080100', '市辖区网点', '3', '140801', null, null);
INSERT INTO `transnode` VALUES ('14080200', '盐湖区网点', '3', '140802', null, null);
INSERT INTO `transnode` VALUES ('14082100', '临猗县网点', '3', '140821', null, null);
INSERT INTO `transnode` VALUES ('14082200', '万荣县网点', '3', '140822', null, null);
INSERT INTO `transnode` VALUES ('14082300', '闻喜县网点', '3', '140823', null, null);
INSERT INTO `transnode` VALUES ('14082400', '稷山县网点', '3', '140824', null, null);
INSERT INTO `transnode` VALUES ('14082500', '新绛县网点', '3', '140825', null, null);
INSERT INTO `transnode` VALUES ('14082600', '绛县网点', '3', '140826', null, null);
INSERT INTO `transnode` VALUES ('14082700', '垣曲县网点', '3', '140827', null, null);
INSERT INTO `transnode` VALUES ('14082800', '夏县网点', '3', '140828', null, null);
INSERT INTO `transnode` VALUES ('14082900', '平陆县网点', '3', '140829', null, null);
INSERT INTO `transnode` VALUES ('14083000', '芮城县网点', '3', '140830', null, null);
INSERT INTO `transnode` VALUES ('14088100', '永济市网点', '3', '140881', null, null);
INSERT INTO `transnode` VALUES ('14088200', '河津市网点', '3', '140882', null, null);
INSERT INTO `transnode` VALUES ('14090000', '忻州市分拣中心', '2', '140900', null, null);
INSERT INTO `transnode` VALUES ('14090100', '市辖区网点', '3', '140901', null, null);
INSERT INTO `transnode` VALUES ('14090200', '忻府区网点', '3', '140902', null, null);
INSERT INTO `transnode` VALUES ('14092100', '定襄县网点', '3', '140921', null, null);
INSERT INTO `transnode` VALUES ('14092200', '五台县网点', '3', '140922', null, null);
INSERT INTO `transnode` VALUES ('14092300', '代县网点', '3', '140923', null, null);
INSERT INTO `transnode` VALUES ('14092400', '繁峙县网点', '3', '140924', null, null);
INSERT INTO `transnode` VALUES ('14092500', '宁武县网点', '3', '140925', null, null);
INSERT INTO `transnode` VALUES ('14092600', '静乐县网点', '3', '140926', null, null);
INSERT INTO `transnode` VALUES ('14092700', '神池县网点', '3', '140927', null, null);
INSERT INTO `transnode` VALUES ('14092800', '五寨县网点', '3', '140928', null, null);
INSERT INTO `transnode` VALUES ('14092900', '岢岚县网点', '3', '140929', null, null);
INSERT INTO `transnode` VALUES ('14093000', '河曲县网点', '3', '140930', null, null);
INSERT INTO `transnode` VALUES ('14093100', '保德县网点', '3', '140931', null, null);
INSERT INTO `transnode` VALUES ('14093200', '偏关县网点', '3', '140932', null, null);
INSERT INTO `transnode` VALUES ('14098100', '原平市网点', '3', '140981', null, null);
INSERT INTO `transnode` VALUES ('14100000', '临汾市分拣中心', '2', '141000', null, null);
INSERT INTO `transnode` VALUES ('14100100', '市辖区网点', '3', '141001', null, null);
INSERT INTO `transnode` VALUES ('14100200', '尧都区网点', '3', '141002', null, null);
INSERT INTO `transnode` VALUES ('14102100', '曲沃县网点', '3', '141021', null, null);
INSERT INTO `transnode` VALUES ('14102200', '翼城县网点', '3', '141022', null, null);
INSERT INTO `transnode` VALUES ('14102300', '襄汾县网点', '3', '141023', null, null);
INSERT INTO `transnode` VALUES ('14102400', '洪洞县网点', '3', '141024', null, null);
INSERT INTO `transnode` VALUES ('14102500', '古县网点', '3', '141025', null, null);
INSERT INTO `transnode` VALUES ('14102600', '安泽县网点', '3', '141026', null, null);
INSERT INTO `transnode` VALUES ('14102700', '浮山县网点', '3', '141027', null, null);
INSERT INTO `transnode` VALUES ('14102800', '吉县网点', '3', '141028', null, null);
INSERT INTO `transnode` VALUES ('14102900', '乡宁县网点', '3', '141029', null, null);
INSERT INTO `transnode` VALUES ('14103000', '大宁县网点', '3', '141030', null, null);
INSERT INTO `transnode` VALUES ('14103100', '隰县网点', '3', '141031', null, null);
INSERT INTO `transnode` VALUES ('14103200', '永和县网点', '3', '141032', null, null);
INSERT INTO `transnode` VALUES ('14103300', '蒲县网点', '3', '141033', null, null);
INSERT INTO `transnode` VALUES ('14103400', '汾西县网点', '3', '141034', null, null);
INSERT INTO `transnode` VALUES ('14108100', '侯马市网点', '3', '141081', null, null);
INSERT INTO `transnode` VALUES ('14108200', '霍州市网点', '3', '141082', null, null);
INSERT INTO `transnode` VALUES ('14110000', '吕梁市分拣中心', '2', '141100', null, null);
INSERT INTO `transnode` VALUES ('14110100', '市辖区网点', '3', '141101', null, null);
INSERT INTO `transnode` VALUES ('14110200', '离石区网点', '3', '141102', null, null);
INSERT INTO `transnode` VALUES ('14112100', '文水县网点', '3', '141121', null, null);
INSERT INTO `transnode` VALUES ('14112200', '交城县网点', '3', '141122', null, null);
INSERT INTO `transnode` VALUES ('14112300', '兴县网点', '3', '141123', null, null);
INSERT INTO `transnode` VALUES ('14112400', '临县网点', '3', '141124', null, null);
INSERT INTO `transnode` VALUES ('14112500', '柳林县网点', '3', '141125', null, null);
INSERT INTO `transnode` VALUES ('14112600', '石楼县网点', '3', '141126', null, null);
INSERT INTO `transnode` VALUES ('14112700', '岚县网点', '3', '141127', null, null);
INSERT INTO `transnode` VALUES ('14112800', '方山县网点', '3', '141128', null, null);
INSERT INTO `transnode` VALUES ('14112900', '中阳县网点', '3', '141129', null, null);
INSERT INTO `transnode` VALUES ('14113000', '交口县网点', '3', '141130', null, null);
INSERT INTO `transnode` VALUES ('14118100', '孝义市网点', '3', '141181', null, null);
INSERT INTO `transnode` VALUES ('14118200', '汾阳市网点', '3', '141182', null, null);
INSERT INTO `transnode` VALUES ('15000000', '内蒙古自治区分拣中心', '1', '150000', null, null);
INSERT INTO `transnode` VALUES ('15010000', '呼和浩特市分拣中心', '2', '150100', null, null);
INSERT INTO `transnode` VALUES ('15010100', '市辖区网点', '3', '150101', null, null);
INSERT INTO `transnode` VALUES ('15010200', '新城区网点', '3', '150102', null, null);
INSERT INTO `transnode` VALUES ('15010300', '回民区网点', '3', '150103', null, null);
INSERT INTO `transnode` VALUES ('15010400', '玉泉区网点', '3', '150104', null, null);
INSERT INTO `transnode` VALUES ('15010500', '赛罕区网点', '3', '150105', null, null);
INSERT INTO `transnode` VALUES ('15012100', '土默特左旗网点', '3', '150121', null, null);
INSERT INTO `transnode` VALUES ('15012200', '托克托县网点', '3', '150122', null, null);
INSERT INTO `transnode` VALUES ('15012300', '和林格尔县网点', '3', '150123', null, null);
INSERT INTO `transnode` VALUES ('15012400', '清水河县网点', '3', '150124', null, null);
INSERT INTO `transnode` VALUES ('15012500', '武川县网点', '3', '150125', null, null);
INSERT INTO `transnode` VALUES ('15020000', '包头市分拣中心', '2', '150200', null, null);
INSERT INTO `transnode` VALUES ('15020100', '市辖区网点', '3', '150201', null, null);
INSERT INTO `transnode` VALUES ('15020200', '东河区网点', '3', '150202', null, null);
INSERT INTO `transnode` VALUES ('15020300', '昆都仑区网点', '3', '150203', null, null);
INSERT INTO `transnode` VALUES ('15020400', '青山区网点', '3', '150204', null, null);
INSERT INTO `transnode` VALUES ('15020500', '石拐区网点', '3', '150205', null, null);
INSERT INTO `transnode` VALUES ('15020600', '白云鄂博矿区网点', '3', '150206', null, null);
INSERT INTO `transnode` VALUES ('15020700', '九原区网点', '3', '150207', null, null);
INSERT INTO `transnode` VALUES ('15022100', '土默特右旗网点', '3', '150221', null, null);
INSERT INTO `transnode` VALUES ('15022200', '固阳县网点', '3', '150222', null, null);
INSERT INTO `transnode` VALUES ('15022300', '达尔罕茂明安联合旗网点', '3', '150223', null, null);
INSERT INTO `transnode` VALUES ('15030000', '乌海市分拣中心', '2', '150300', null, null);
INSERT INTO `transnode` VALUES ('15030100', '市辖区网点', '3', '150301', null, null);
INSERT INTO `transnode` VALUES ('15030200', '海勃湾区网点', '3', '150302', null, null);
INSERT INTO `transnode` VALUES ('15030300', '海南区网点', '3', '150303', null, null);
INSERT INTO `transnode` VALUES ('15030400', '乌达区网点', '3', '150304', null, null);
INSERT INTO `transnode` VALUES ('15040000', '赤峰市分拣中心', '2', '150400', null, null);
INSERT INTO `transnode` VALUES ('15040100', '市辖区网点', '3', '150401', null, null);
INSERT INTO `transnode` VALUES ('15040200', '红山区网点', '3', '150402', null, null);
INSERT INTO `transnode` VALUES ('15040300', '元宝山区网点', '3', '150403', null, null);
INSERT INTO `transnode` VALUES ('15040400', '松山区网点', '3', '150404', null, null);
INSERT INTO `transnode` VALUES ('15042100', '阿鲁科尔沁旗网点', '3', '150421', null, null);
INSERT INTO `transnode` VALUES ('15042200', '巴林左旗网点', '3', '150422', null, null);
INSERT INTO `transnode` VALUES ('15042300', '巴林右旗网点', '3', '150423', null, null);
INSERT INTO `transnode` VALUES ('15042400', '林西县网点', '3', '150424', null, null);
INSERT INTO `transnode` VALUES ('15042500', '克什克腾旗网点', '3', '150425', null, null);
INSERT INTO `transnode` VALUES ('15042600', '翁牛特旗网点', '3', '150426', null, null);
INSERT INTO `transnode` VALUES ('15042800', '喀喇沁旗网点', '3', '150428', null, null);
INSERT INTO `transnode` VALUES ('15042900', '宁城县网点', '3', '150429', null, null);
INSERT INTO `transnode` VALUES ('15043000', '敖汉旗网点', '3', '150430', null, null);
INSERT INTO `transnode` VALUES ('15050000', '通辽市分拣中心', '2', '150500', null, null);
INSERT INTO `transnode` VALUES ('15050100', '市辖区网点', '3', '150501', null, null);
INSERT INTO `transnode` VALUES ('15050200', '科尔沁区网点', '3', '150502', null, null);
INSERT INTO `transnode` VALUES ('15052100', '科尔沁左翼中旗网点', '3', '150521', null, null);
INSERT INTO `transnode` VALUES ('15052200', '科尔沁左翼后旗网点', '3', '150522', null, null);
INSERT INTO `transnode` VALUES ('15052300', '开鲁县网点', '3', '150523', null, null);
INSERT INTO `transnode` VALUES ('15052400', '库伦旗网点', '3', '150524', null, null);
INSERT INTO `transnode` VALUES ('15052500', '奈曼旗网点', '3', '150525', null, null);
INSERT INTO `transnode` VALUES ('15052600', '扎鲁特旗网点', '3', '150526', null, null);
INSERT INTO `transnode` VALUES ('15058100', '霍林郭勒市网点', '3', '150581', null, null);
INSERT INTO `transnode` VALUES ('15060000', '鄂尔多斯市分拣中心', '2', '150600', null, null);
INSERT INTO `transnode` VALUES ('15060100', '市辖区网点', '3', '150601', null, null);
INSERT INTO `transnode` VALUES ('15060200', '东胜区网点', '3', '150602', null, null);
INSERT INTO `transnode` VALUES ('15062100', '达拉特旗网点', '3', '150621', null, null);
INSERT INTO `transnode` VALUES ('15062200', '准格尔旗网点', '3', '150622', null, null);
INSERT INTO `transnode` VALUES ('15062300', '鄂托克前旗网点', '3', '150623', null, null);
INSERT INTO `transnode` VALUES ('15062400', '鄂托克旗网点', '3', '150624', null, null);
INSERT INTO `transnode` VALUES ('15062500', '杭锦旗网点', '3', '150625', null, null);
INSERT INTO `transnode` VALUES ('15062600', '乌审旗网点', '3', '150626', null, null);
INSERT INTO `transnode` VALUES ('15062700', '伊金霍洛旗网点', '3', '150627', null, null);
INSERT INTO `transnode` VALUES ('15070000', '呼伦贝尔市分拣中心', '2', '150700', null, null);
INSERT INTO `transnode` VALUES ('15070100', '市辖区网点', '3', '150701', null, null);
INSERT INTO `transnode` VALUES ('15070200', '海拉尔区网点', '3', '150702', null, null);
INSERT INTO `transnode` VALUES ('15070300', '扎赉诺尔区网点', '3', '150703', null, null);
INSERT INTO `transnode` VALUES ('15072100', '阿荣旗网点', '3', '150721', null, null);
INSERT INTO `transnode` VALUES ('15072200', '莫力达瓦达斡尔族自治旗网点', '3', '150722', null, null);
INSERT INTO `transnode` VALUES ('15072300', '鄂伦春自治旗网点', '3', '150723', null, null);
INSERT INTO `transnode` VALUES ('15072400', '鄂温克族自治旗网点', '3', '150724', null, null);
INSERT INTO `transnode` VALUES ('15072500', '陈巴尔虎旗网点', '3', '150725', null, null);
INSERT INTO `transnode` VALUES ('15072600', '新巴尔虎左旗网点', '3', '150726', null, null);
INSERT INTO `transnode` VALUES ('15072700', '新巴尔虎右旗网点', '3', '150727', null, null);
INSERT INTO `transnode` VALUES ('15078100', '满洲里市网点', '3', '150781', null, null);
INSERT INTO `transnode` VALUES ('15078200', '牙克石市网点', '3', '150782', null, null);
INSERT INTO `transnode` VALUES ('15078300', '扎兰屯市网点', '3', '150783', null, null);
INSERT INTO `transnode` VALUES ('15078400', '额尔古纳市网点', '3', '150784', null, null);
INSERT INTO `transnode` VALUES ('15078500', '根河市网点', '3', '150785', null, null);
INSERT INTO `transnode` VALUES ('15080000', '巴彦淖尔市分拣中心', '2', '150800', null, null);
INSERT INTO `transnode` VALUES ('15080100', '市辖区网点', '3', '150801', null, null);
INSERT INTO `transnode` VALUES ('15080200', '临河区网点', '3', '150802', null, null);
INSERT INTO `transnode` VALUES ('15082100', '五原县网点', '3', '150821', null, null);
INSERT INTO `transnode` VALUES ('15082200', '磴口县网点', '3', '150822', null, null);
INSERT INTO `transnode` VALUES ('15082300', '乌拉特前旗网点', '3', '150823', null, null);
INSERT INTO `transnode` VALUES ('15082400', '乌拉特中旗网点', '3', '150824', null, null);
INSERT INTO `transnode` VALUES ('15082500', '乌拉特后旗网点', '3', '150825', null, null);
INSERT INTO `transnode` VALUES ('15082600', '杭锦后旗网点', '3', '150826', null, null);
INSERT INTO `transnode` VALUES ('15090000', '乌兰察布市分拣中心', '2', '150900', null, null);
INSERT INTO `transnode` VALUES ('15090100', '市辖区网点', '3', '150901', null, null);
INSERT INTO `transnode` VALUES ('15090200', '集宁区网点', '3', '150902', null, null);
INSERT INTO `transnode` VALUES ('15092100', '卓资县网点', '3', '150921', null, null);
INSERT INTO `transnode` VALUES ('15092200', '化德县网点', '3', '150922', null, null);
INSERT INTO `transnode` VALUES ('15092300', '商都县网点', '3', '150923', null, null);
INSERT INTO `transnode` VALUES ('15092400', '兴和县网点', '3', '150924', null, null);
INSERT INTO `transnode` VALUES ('15092500', '凉城县网点', '3', '150925', null, null);
INSERT INTO `transnode` VALUES ('15092600', '察哈尔右翼前旗网点', '3', '150926', null, null);
INSERT INTO `transnode` VALUES ('15092700', '察哈尔右翼中旗网点', '3', '150927', null, null);
INSERT INTO `transnode` VALUES ('15092800', '察哈尔右翼后旗网点', '3', '150928', null, null);
INSERT INTO `transnode` VALUES ('15092900', '四子王旗网点', '3', '150929', null, null);
INSERT INTO `transnode` VALUES ('15098100', '丰镇市网点', '3', '150981', null, null);
INSERT INTO `transnode` VALUES ('15220000', '兴安盟分拣中心', '2', '152200', null, null);
INSERT INTO `transnode` VALUES ('15220100', '乌兰浩特市网点', '3', '152201', null, null);
INSERT INTO `transnode` VALUES ('15220200', '阿尔山市网点', '3', '152202', null, null);
INSERT INTO `transnode` VALUES ('15222100', '科尔沁右翼前旗网点', '3', '152221', null, null);
INSERT INTO `transnode` VALUES ('15222200', '科尔沁右翼中旗网点', '3', '152222', null, null);
INSERT INTO `transnode` VALUES ('15222300', '扎赉特旗网点', '3', '152223', null, null);
INSERT INTO `transnode` VALUES ('15222400', '突泉县网点', '3', '152224', null, null);
INSERT INTO `transnode` VALUES ('15250000', '锡林郭勒盟分拣中心', '2', '152500', null, null);
INSERT INTO `transnode` VALUES ('15250100', '二连浩特市网点', '3', '152501', null, null);
INSERT INTO `transnode` VALUES ('15250200', '锡林浩特市网点', '3', '152502', null, null);
INSERT INTO `transnode` VALUES ('15252200', '阿巴嘎旗网点', '3', '152522', null, null);
INSERT INTO `transnode` VALUES ('15252300', '苏尼特左旗网点', '3', '152523', null, null);
INSERT INTO `transnode` VALUES ('15252400', '苏尼特右旗网点', '3', '152524', null, null);
INSERT INTO `transnode` VALUES ('15252500', '东乌珠穆沁旗网点', '3', '152525', null, null);
INSERT INTO `transnode` VALUES ('15252600', '西乌珠穆沁旗网点', '3', '152526', null, null);
INSERT INTO `transnode` VALUES ('15252700', '太仆寺旗网点', '3', '152527', null, null);
INSERT INTO `transnode` VALUES ('15252800', '镶黄旗网点', '3', '152528', null, null);
INSERT INTO `transnode` VALUES ('15252900', '正镶白旗网点', '3', '152529', null, null);
INSERT INTO `transnode` VALUES ('15253000', '正蓝旗网点', '3', '152530', null, null);
INSERT INTO `transnode` VALUES ('15253100', '多伦县网点', '3', '152531', null, null);
INSERT INTO `transnode` VALUES ('15290000', '阿拉善盟分拣中心', '2', '152900', null, null);
INSERT INTO `transnode` VALUES ('15292100', '阿拉善左旗网点', '3', '152921', null, null);
INSERT INTO `transnode` VALUES ('15292200', '阿拉善右旗网点', '3', '152922', null, null);
INSERT INTO `transnode` VALUES ('15292300', '额济纳旗网点', '3', '152923', null, null);
INSERT INTO `transnode` VALUES ('21000000', '辽宁省分拣中心', '1', '210000', null, null);
INSERT INTO `transnode` VALUES ('21010000', '沈阳市分拣中心', '2', '210100', null, null);
INSERT INTO `transnode` VALUES ('21010100', '市辖区网点', '3', '210101', null, null);
INSERT INTO `transnode` VALUES ('21010200', '和平区网点', '3', '210102', null, null);
INSERT INTO `transnode` VALUES ('21010300', '沈河区网点', '3', '210103', null, null);
INSERT INTO `transnode` VALUES ('21010400', '大东区网点', '3', '210104', null, null);
INSERT INTO `transnode` VALUES ('21010500', '皇姑区网点', '3', '210105', null, null);
INSERT INTO `transnode` VALUES ('21010600', '铁西区网点', '3', '210106', null, null);
INSERT INTO `transnode` VALUES ('21011100', '苏家屯区网点', '3', '210111', null, null);
INSERT INTO `transnode` VALUES ('21011200', '东陵区网点', '3', '210112', null, null);
INSERT INTO `transnode` VALUES ('21011300', '沈北新区网点', '3', '210113', null, null);
INSERT INTO `transnode` VALUES ('21011400', '于洪区网点', '3', '210114', null, null);
INSERT INTO `transnode` VALUES ('21012200', '辽中县网点', '3', '210122', null, null);
INSERT INTO `transnode` VALUES ('21012300', '康平县网点', '3', '210123', null, null);
INSERT INTO `transnode` VALUES ('21012400', '法库县网点', '3', '210124', null, null);
INSERT INTO `transnode` VALUES ('21018100', '新民市网点', '3', '210181', null, null);
INSERT INTO `transnode` VALUES ('21020000', '大连市分拣中心', '2', '210200', null, null);
INSERT INTO `transnode` VALUES ('21020100', '市辖区网点', '3', '210201', null, null);
INSERT INTO `transnode` VALUES ('21020200', '中山区网点', '3', '210202', null, null);
INSERT INTO `transnode` VALUES ('21020300', '西岗区网点', '3', '210203', null, null);
INSERT INTO `transnode` VALUES ('21020400', '沙河口区网点', '3', '210204', null, null);
INSERT INTO `transnode` VALUES ('21021100', '甘井子区网点', '3', '210211', null, null);
INSERT INTO `transnode` VALUES ('21021200', '旅顺口区网点', '3', '210212', null, null);
INSERT INTO `transnode` VALUES ('21021300', '金州区网点', '3', '210213', null, null);
INSERT INTO `transnode` VALUES ('21022400', '长海县网点', '3', '210224', null, null);
INSERT INTO `transnode` VALUES ('21028100', '瓦房店市网点', '3', '210281', null, null);
INSERT INTO `transnode` VALUES ('21028200', '普兰店市网点', '3', '210282', null, null);
INSERT INTO `transnode` VALUES ('21028300', '庄河市网点', '3', '210283', null, null);
INSERT INTO `transnode` VALUES ('21030000', '鞍山市分拣中心', '2', '210300', null, null);
INSERT INTO `transnode` VALUES ('21030100', '市辖区网点', '3', '210301', null, null);
INSERT INTO `transnode` VALUES ('21030200', '铁东区网点', '3', '210302', null, null);
INSERT INTO `transnode` VALUES ('21030300', '铁西区网点', '3', '210303', null, null);
INSERT INTO `transnode` VALUES ('21030400', '立山区网点', '3', '210304', null, null);
INSERT INTO `transnode` VALUES ('21031100', '千山区网点', '3', '210311', null, null);
INSERT INTO `transnode` VALUES ('21032100', '台安县网点', '3', '210321', null, null);
INSERT INTO `transnode` VALUES ('21032300', '岫岩满族自治县网点', '3', '210323', null, null);
INSERT INTO `transnode` VALUES ('21038100', '海城市网点', '3', '210381', null, null);
INSERT INTO `transnode` VALUES ('21040000', '抚顺市分拣中心', '2', '210400', null, null);
INSERT INTO `transnode` VALUES ('21040100', '市辖区网点', '3', '210401', null, null);
INSERT INTO `transnode` VALUES ('21040200', '新抚区网点', '3', '210402', null, null);
INSERT INTO `transnode` VALUES ('21040300', '东洲区网点', '3', '210403', null, null);
INSERT INTO `transnode` VALUES ('21040400', '望花区网点', '3', '210404', null, null);
INSERT INTO `transnode` VALUES ('21041100', '顺城区网点', '3', '210411', null, null);
INSERT INTO `transnode` VALUES ('21042100', '抚顺县网点', '3', '210421', null, null);
INSERT INTO `transnode` VALUES ('21042200', '新宾满族自治县网点', '3', '210422', null, null);
INSERT INTO `transnode` VALUES ('21042300', '清原满族自治县网点', '3', '210423', null, null);
INSERT INTO `transnode` VALUES ('21050000', '本溪市分拣中心', '2', '210500', null, null);
INSERT INTO `transnode` VALUES ('21050100', '市辖区网点', '3', '210501', null, null);
INSERT INTO `transnode` VALUES ('21050200', '平山区网点', '3', '210502', null, null);
INSERT INTO `transnode` VALUES ('21050300', '溪湖区网点', '3', '210503', null, null);
INSERT INTO `transnode` VALUES ('21050400', '明山区网点', '3', '210504', null, null);
INSERT INTO `transnode` VALUES ('21050500', '南芬区网点', '3', '210505', null, null);
INSERT INTO `transnode` VALUES ('21052100', '本溪满族自治县网点', '3', '210521', null, null);
INSERT INTO `transnode` VALUES ('21052200', '桓仁满族自治县网点', '3', '210522', null, null);
INSERT INTO `transnode` VALUES ('21060000', '丹东市分拣中心', '2', '210600', null, null);
INSERT INTO `transnode` VALUES ('21060100', '市辖区网点', '3', '210601', null, null);
INSERT INTO `transnode` VALUES ('21060200', '元宝区网点', '3', '210602', null, null);
INSERT INTO `transnode` VALUES ('21060300', '振兴区网点', '3', '210603', null, null);
INSERT INTO `transnode` VALUES ('21060400', '振安区网点', '3', '210604', null, null);
INSERT INTO `transnode` VALUES ('21062400', '宽甸满族自治县网点', '3', '210624', null, null);
INSERT INTO `transnode` VALUES ('21068100', '东港市网点', '3', '210681', null, null);
INSERT INTO `transnode` VALUES ('21068200', '凤城市网点', '3', '210682', null, null);
INSERT INTO `transnode` VALUES ('21070000', '锦州市分拣中心', '2', '210700', null, null);
INSERT INTO `transnode` VALUES ('21070100', '市辖区网点', '3', '210701', null, null);
INSERT INTO `transnode` VALUES ('21070200', '古塔区网点', '3', '210702', null, null);
INSERT INTO `transnode` VALUES ('21070300', '凌河区网点', '3', '210703', null, null);
INSERT INTO `transnode` VALUES ('21071100', '太和区网点', '3', '210711', null, null);
INSERT INTO `transnode` VALUES ('21072600', '黑山县网点', '3', '210726', null, null);
INSERT INTO `transnode` VALUES ('21072700', '义县网点', '3', '210727', null, null);
INSERT INTO `transnode` VALUES ('21078100', '凌海市网点', '3', '210781', null, null);
INSERT INTO `transnode` VALUES ('21078200', '北镇市网点', '3', '210782', null, null);
INSERT INTO `transnode` VALUES ('21080000', '营口市分拣中心', '2', '210800', null, null);
INSERT INTO `transnode` VALUES ('21080100', '市辖区网点', '3', '210801', null, null);
INSERT INTO `transnode` VALUES ('21080200', '站前区网点', '3', '210802', null, null);
INSERT INTO `transnode` VALUES ('21080300', '西市区网点', '3', '210803', null, null);
INSERT INTO `transnode` VALUES ('21080400', '鲅鱼圈区网点', '3', '210804', null, null);
INSERT INTO `transnode` VALUES ('21081100', '老边区网点', '3', '210811', null, null);
INSERT INTO `transnode` VALUES ('21088100', '盖州市网点', '3', '210881', null, null);
INSERT INTO `transnode` VALUES ('21088200', '大石桥市网点', '3', '210882', null, null);
INSERT INTO `transnode` VALUES ('21090000', '阜新市分拣中心', '2', '210900', null, null);
INSERT INTO `transnode` VALUES ('21090100', '市辖区网点', '3', '210901', null, null);
INSERT INTO `transnode` VALUES ('21090200', '海州区网点', '3', '210902', null, null);
INSERT INTO `transnode` VALUES ('21090300', '新邱区网点', '3', '210903', null, null);
INSERT INTO `transnode` VALUES ('21090400', '太平区网点', '3', '210904', null, null);
INSERT INTO `transnode` VALUES ('21090500', '清河门区网点', '3', '210905', null, null);
INSERT INTO `transnode` VALUES ('21091100', '细河区网点', '3', '210911', null, null);
INSERT INTO `transnode` VALUES ('21092100', '阜新蒙古族自治县网点', '3', '210921', null, null);
INSERT INTO `transnode` VALUES ('21092200', '彰武县网点', '3', '210922', null, null);
INSERT INTO `transnode` VALUES ('21100000', '辽阳市分拣中心', '2', '211000', null, null);
INSERT INTO `transnode` VALUES ('21100100', '市辖区网点', '3', '211001', null, null);
INSERT INTO `transnode` VALUES ('21100200', '白塔区网点', '3', '211002', null, null);
INSERT INTO `transnode` VALUES ('21100300', '文圣区网点', '3', '211003', null, null);
INSERT INTO `transnode` VALUES ('21100400', '宏伟区网点', '3', '211004', null, null);
INSERT INTO `transnode` VALUES ('21100500', '弓长岭区网点', '3', '211005', null, null);
INSERT INTO `transnode` VALUES ('21101100', '太子河区网点', '3', '211011', null, null);
INSERT INTO `transnode` VALUES ('21102100', '辽阳县网点', '3', '211021', null, null);
INSERT INTO `transnode` VALUES ('21108100', '灯塔市网点', '3', '211081', null, null);
INSERT INTO `transnode` VALUES ('21110000', '盘锦市分拣中心', '2', '211100', null, null);
INSERT INTO `transnode` VALUES ('21110100', '市辖区网点', '3', '211101', null, null);
INSERT INTO `transnode` VALUES ('21110200', '双台子区网点', '3', '211102', null, null);
INSERT INTO `transnode` VALUES ('21110300', '兴隆台区网点', '3', '211103', null, null);
INSERT INTO `transnode` VALUES ('21112100', '大洼县网点', '3', '211121', null, null);
INSERT INTO `transnode` VALUES ('21112200', '盘山县网点', '3', '211122', null, null);
INSERT INTO `transnode` VALUES ('21120000', '铁岭市分拣中心', '2', '211200', null, null);
INSERT INTO `transnode` VALUES ('21120100', '市辖区网点', '3', '211201', null, null);
INSERT INTO `transnode` VALUES ('21120200', '银州区网点', '3', '211202', null, null);
INSERT INTO `transnode` VALUES ('21120400', '清河区网点', '3', '211204', null, null);
INSERT INTO `transnode` VALUES ('21122100', '铁岭县网点', '3', '211221', null, null);
INSERT INTO `transnode` VALUES ('21122300', '西丰县网点', '3', '211223', null, null);
INSERT INTO `transnode` VALUES ('21122400', '昌图县网点', '3', '211224', null, null);
INSERT INTO `transnode` VALUES ('21128100', '调兵山市网点', '3', '211281', null, null);
INSERT INTO `transnode` VALUES ('21128200', '开原市网点', '3', '211282', null, null);
INSERT INTO `transnode` VALUES ('21130000', '朝阳市分拣中心', '2', '211300', null, null);
INSERT INTO `transnode` VALUES ('21130100', '市辖区网点', '3', '211301', null, null);
INSERT INTO `transnode` VALUES ('21130200', '双塔区网点', '3', '211302', null, null);
INSERT INTO `transnode` VALUES ('21130300', '龙城区网点', '3', '211303', null, null);
INSERT INTO `transnode` VALUES ('21132100', '朝阳县网点', '3', '211321', null, null);
INSERT INTO `transnode` VALUES ('21132200', '建平县网点', '3', '211322', null, null);
INSERT INTO `transnode` VALUES ('21132400', '喀喇沁左翼蒙古族自治县网点', '3', '211324', null, null);
INSERT INTO `transnode` VALUES ('21138100', '北票市网点', '3', '211381', null, null);
INSERT INTO `transnode` VALUES ('21138200', '凌源市网点', '3', '211382', null, null);
INSERT INTO `transnode` VALUES ('21140000', '葫芦岛市分拣中心', '2', '211400', null, null);
INSERT INTO `transnode` VALUES ('21140100', '市辖区网点', '3', '211401', null, null);
INSERT INTO `transnode` VALUES ('21140200', '连山区网点', '3', '211402', null, null);
INSERT INTO `transnode` VALUES ('21140300', '龙港区网点', '3', '211403', null, null);
INSERT INTO `transnode` VALUES ('21140400', '南票区网点', '3', '211404', null, null);
INSERT INTO `transnode` VALUES ('21142100', '绥中县网点', '3', '211421', null, null);
INSERT INTO `transnode` VALUES ('21142200', '建昌县网点', '3', '211422', null, null);
INSERT INTO `transnode` VALUES ('21148100', '兴城市网点', '3', '211481', null, null);
INSERT INTO `transnode` VALUES ('22000000', '吉林省分拣中心', '1', '220000', null, null);
INSERT INTO `transnode` VALUES ('22010000', '长春市分拣中心', '2', '220100', null, null);
INSERT INTO `transnode` VALUES ('22010100', '市辖区网点', '3', '220101', null, null);
INSERT INTO `transnode` VALUES ('22010200', '南关区网点', '3', '220102', null, null);
INSERT INTO `transnode` VALUES ('22010300', '宽城区网点', '3', '220103', null, null);
INSERT INTO `transnode` VALUES ('22010400', '朝阳区网点', '3', '220104', null, null);
INSERT INTO `transnode` VALUES ('22010500', '二道区网点', '3', '220105', null, null);
INSERT INTO `transnode` VALUES ('22010600', '绿园区网点', '3', '220106', null, null);
INSERT INTO `transnode` VALUES ('22011200', '双阳区网点', '3', '220112', null, null);
INSERT INTO `transnode` VALUES ('22012200', '农安县网点', '3', '220122', null, null);
INSERT INTO `transnode` VALUES ('22018100', '九台市网点', '3', '220181', null, null);
INSERT INTO `transnode` VALUES ('22018200', '榆树市网点', '3', '220182', null, null);
INSERT INTO `transnode` VALUES ('22018300', '德惠市网点', '3', '220183', null, null);
INSERT INTO `transnode` VALUES ('22020000', '吉林市分拣中心', '2', '220200', null, null);
INSERT INTO `transnode` VALUES ('22020100', '市辖区网点', '3', '220201', null, null);
INSERT INTO `transnode` VALUES ('22020200', '昌邑区网点', '3', '220202', null, null);
INSERT INTO `transnode` VALUES ('22020300', '龙潭区网点', '3', '220203', null, null);
INSERT INTO `transnode` VALUES ('22020400', '船营区网点', '3', '220204', null, null);
INSERT INTO `transnode` VALUES ('22021100', '丰满区网点', '3', '220211', null, null);
INSERT INTO `transnode` VALUES ('22022100', '永吉县网点', '3', '220221', null, null);
INSERT INTO `transnode` VALUES ('22028100', '蛟河市网点', '3', '220281', null, null);
INSERT INTO `transnode` VALUES ('22028200', '桦甸市网点', '3', '220282', null, null);
INSERT INTO `transnode` VALUES ('22028300', '舒兰市网点', '3', '220283', null, null);
INSERT INTO `transnode` VALUES ('22028400', '磐石市网点', '3', '220284', null, null);
INSERT INTO `transnode` VALUES ('22030000', '四平市分拣中心', '2', '220300', null, null);
INSERT INTO `transnode` VALUES ('22030100', '市辖区网点', '3', '220301', null, null);
INSERT INTO `transnode` VALUES ('22030200', '铁西区网点', '3', '220302', null, null);
INSERT INTO `transnode` VALUES ('22030300', '铁东区网点', '3', '220303', null, null);
INSERT INTO `transnode` VALUES ('22032200', '梨树县网点', '3', '220322', null, null);
INSERT INTO `transnode` VALUES ('22032300', '伊通满族自治县网点', '3', '220323', null, null);
INSERT INTO `transnode` VALUES ('22038100', '公主岭市网点', '3', '220381', null, null);
INSERT INTO `transnode` VALUES ('22038200', '双辽市网点', '3', '220382', null, null);
INSERT INTO `transnode` VALUES ('22040000', '辽源市分拣中心', '2', '220400', null, null);
INSERT INTO `transnode` VALUES ('22040100', '市辖区网点', '3', '220401', null, null);
INSERT INTO `transnode` VALUES ('22040200', '龙山区网点', '3', '220402', null, null);
INSERT INTO `transnode` VALUES ('22040300', '西安区网点', '3', '220403', null, null);
INSERT INTO `transnode` VALUES ('22042100', '东丰县网点', '3', '220421', null, null);
INSERT INTO `transnode` VALUES ('22042200', '东辽县网点', '3', '220422', null, null);
INSERT INTO `transnode` VALUES ('22050000', '通化市分拣中心', '2', '220500', null, null);
INSERT INTO `transnode` VALUES ('22050100', '市辖区网点', '3', '220501', null, null);
INSERT INTO `transnode` VALUES ('22050200', '东昌区网点', '3', '220502', null, null);
INSERT INTO `transnode` VALUES ('22050300', '二道江区网点', '3', '220503', null, null);
INSERT INTO `transnode` VALUES ('22052100', '通化县网点', '3', '220521', null, null);
INSERT INTO `transnode` VALUES ('22052300', '辉南县网点', '3', '220523', null, null);
INSERT INTO `transnode` VALUES ('22052400', '柳河县网点', '3', '220524', null, null);
INSERT INTO `transnode` VALUES ('22058100', '梅河口市网点', '3', '220581', null, null);
INSERT INTO `transnode` VALUES ('22058200', '集安市网点', '3', '220582', null, null);
INSERT INTO `transnode` VALUES ('22060000', '白山市分拣中心', '2', '220600', null, null);
INSERT INTO `transnode` VALUES ('22060100', '市辖区网点', '3', '220601', null, null);
INSERT INTO `transnode` VALUES ('22060200', '浑江区网点', '3', '220602', null, null);
INSERT INTO `transnode` VALUES ('22060500', '江源区网点', '3', '220605', null, null);
INSERT INTO `transnode` VALUES ('22062100', '抚松县网点', '3', '220621', null, null);
INSERT INTO `transnode` VALUES ('22062200', '靖宇县网点', '3', '220622', null, null);
INSERT INTO `transnode` VALUES ('22062300', '长白朝鲜族自治县网点', '3', '220623', null, null);
INSERT INTO `transnode` VALUES ('22068100', '临江市网点', '3', '220681', null, null);
INSERT INTO `transnode` VALUES ('22070000', '松原市分拣中心', '2', '220700', null, null);
INSERT INTO `transnode` VALUES ('22070100', '市辖区网点', '3', '220701', null, null);
INSERT INTO `transnode` VALUES ('22070200', '宁江区网点', '3', '220702', null, null);
INSERT INTO `transnode` VALUES ('22072100', '前郭尔罗斯蒙古族自治县网点', '3', '220721', null, null);
INSERT INTO `transnode` VALUES ('22072200', '长岭县网点', '3', '220722', null, null);
INSERT INTO `transnode` VALUES ('22072300', '乾安县网点', '3', '220723', null, null);
INSERT INTO `transnode` VALUES ('22078100', '扶余市网点', '3', '220781', null, null);
INSERT INTO `transnode` VALUES ('22080000', '白城市分拣中心', '2', '220800', null, null);
INSERT INTO `transnode` VALUES ('22080100', '市辖区网点', '3', '220801', null, null);
INSERT INTO `transnode` VALUES ('22080200', '洮北区网点', '3', '220802', null, null);
INSERT INTO `transnode` VALUES ('22082100', '镇赉县网点', '3', '220821', null, null);
INSERT INTO `transnode` VALUES ('22082200', '通榆县网点', '3', '220822', null, null);
INSERT INTO `transnode` VALUES ('22088100', '洮南市网点', '3', '220881', null, null);
INSERT INTO `transnode` VALUES ('22088200', '大安市网点', '3', '220882', null, null);
INSERT INTO `transnode` VALUES ('22240000', '延边朝鲜族自治州分拣中心', '2', '222400', null, null);
INSERT INTO `transnode` VALUES ('22240100', '延吉市网点', '3', '222401', null, null);
INSERT INTO `transnode` VALUES ('22240200', '图们市网点', '3', '222402', null, null);
INSERT INTO `transnode` VALUES ('22240300', '敦化市网点', '3', '222403', null, null);
INSERT INTO `transnode` VALUES ('22240400', '珲春市网点', '3', '222404', null, null);
INSERT INTO `transnode` VALUES ('22240500', '龙井市网点', '3', '222405', null, null);
INSERT INTO `transnode` VALUES ('22240600', '和龙市网点', '3', '222406', null, null);
INSERT INTO `transnode` VALUES ('22242400', '汪清县网点', '3', '222424', null, null);
INSERT INTO `transnode` VALUES ('22242600', '安图县网点', '3', '222426', null, null);
INSERT INTO `transnode` VALUES ('23000000', '黑龙江省分拣中心', '1', '230000', null, null);
INSERT INTO `transnode` VALUES ('23010000', '哈尔滨市分拣中心', '2', '230100', null, null);
INSERT INTO `transnode` VALUES ('23010100', '市辖区网点', '3', '230101', null, null);
INSERT INTO `transnode` VALUES ('23010200', '道里区网点', '3', '230102', null, null);
INSERT INTO `transnode` VALUES ('23010300', '南岗区网点', '3', '230103', null, null);
INSERT INTO `transnode` VALUES ('23010400', '道外区网点', '3', '230104', null, null);
INSERT INTO `transnode` VALUES ('23010800', '平房区网点', '3', '230108', null, null);
INSERT INTO `transnode` VALUES ('23010900', '松北区网点', '3', '230109', null, null);
INSERT INTO `transnode` VALUES ('23011000', '香坊区网点', '3', '230110', null, null);
INSERT INTO `transnode` VALUES ('23011100', '呼兰区网点', '3', '230111', null, null);
INSERT INTO `transnode` VALUES ('23011200', '阿城区网点', '3', '230112', null, null);
INSERT INTO `transnode` VALUES ('23012300', '依兰县网点', '3', '230123', null, null);
INSERT INTO `transnode` VALUES ('23012400', '方正县网点', '3', '230124', null, null);
INSERT INTO `transnode` VALUES ('23012500', '宾县网点', '3', '230125', null, null);
INSERT INTO `transnode` VALUES ('23012600', '巴彦县网点', '3', '230126', null, null);
INSERT INTO `transnode` VALUES ('23012700', '木兰县网点', '3', '230127', null, null);
INSERT INTO `transnode` VALUES ('23012800', '通河县网点', '3', '230128', null, null);
INSERT INTO `transnode` VALUES ('23012900', '延寿县网点', '3', '230129', null, null);
INSERT INTO `transnode` VALUES ('23018200', '双城市网点', '3', '230182', null, null);
INSERT INTO `transnode` VALUES ('23018300', '尚志市网点', '3', '230183', null, null);
INSERT INTO `transnode` VALUES ('23018400', '五常市网点', '3', '230184', null, null);
INSERT INTO `transnode` VALUES ('23020000', '齐齐哈尔市分拣中心', '2', '230200', null, null);
INSERT INTO `transnode` VALUES ('23020100', '市辖区网点', '3', '230201', null, null);
INSERT INTO `transnode` VALUES ('23020200', '龙沙区网点', '3', '230202', null, null);
INSERT INTO `transnode` VALUES ('23020300', '建华区网点', '3', '230203', null, null);
INSERT INTO `transnode` VALUES ('23020400', '铁锋区网点', '3', '230204', null, null);
INSERT INTO `transnode` VALUES ('23020500', '昂昂溪区网点', '3', '230205', null, null);
INSERT INTO `transnode` VALUES ('23020600', '富拉尔基区网点', '3', '230206', null, null);
INSERT INTO `transnode` VALUES ('23020700', '碾子山区网点', '3', '230207', null, null);
INSERT INTO `transnode` VALUES ('23020800', '梅里斯达斡尔族区网点', '3', '230208', null, null);
INSERT INTO `transnode` VALUES ('23022100', '龙江县网点', '3', '230221', null, null);
INSERT INTO `transnode` VALUES ('23022300', '依安县网点', '3', '230223', null, null);
INSERT INTO `transnode` VALUES ('23022400', '泰来县网点', '3', '230224', null, null);
INSERT INTO `transnode` VALUES ('23022500', '甘南县网点', '3', '230225', null, null);
INSERT INTO `transnode` VALUES ('23022700', '富裕县网点', '3', '230227', null, null);
INSERT INTO `transnode` VALUES ('23022900', '克山县网点', '3', '230229', null, null);
INSERT INTO `transnode` VALUES ('23023000', '克东县网点', '3', '230230', null, null);
INSERT INTO `transnode` VALUES ('23023100', '拜泉县网点', '3', '230231', null, null);
INSERT INTO `transnode` VALUES ('23028100', '讷河市网点', '3', '230281', null, null);
INSERT INTO `transnode` VALUES ('23030000', '鸡西市分拣中心', '2', '230300', null, null);
INSERT INTO `transnode` VALUES ('23030100', '市辖区网点', '3', '230301', null, null);
INSERT INTO `transnode` VALUES ('23030200', '鸡冠区网点', '3', '230302', null, null);
INSERT INTO `transnode` VALUES ('23030300', '恒山区网点', '3', '230303', null, null);
INSERT INTO `transnode` VALUES ('23030400', '滴道区网点', '3', '230304', null, null);
INSERT INTO `transnode` VALUES ('23030500', '梨树区网点', '3', '230305', null, null);
INSERT INTO `transnode` VALUES ('23030600', '城子河区网点', '3', '230306', null, null);
INSERT INTO `transnode` VALUES ('23030700', '麻山区网点', '3', '230307', null, null);
INSERT INTO `transnode` VALUES ('23032100', '鸡东县网点', '3', '230321', null, null);
INSERT INTO `transnode` VALUES ('23038100', '虎林市网点', '3', '230381', null, null);
INSERT INTO `transnode` VALUES ('23038200', '密山市网点', '3', '230382', null, null);
INSERT INTO `transnode` VALUES ('23040000', '鹤岗市分拣中心', '2', '230400', null, null);
INSERT INTO `transnode` VALUES ('23040100', '市辖区网点', '3', '230401', null, null);
INSERT INTO `transnode` VALUES ('23040200', '向阳区网点', '3', '230402', null, null);
INSERT INTO `transnode` VALUES ('23040300', '工农区网点', '3', '230403', null, null);
INSERT INTO `transnode` VALUES ('23040400', '南山区网点', '3', '230404', null, null);
INSERT INTO `transnode` VALUES ('23040500', '兴安区网点', '3', '230405', null, null);
INSERT INTO `transnode` VALUES ('23040600', '东山区网点', '3', '230406', null, null);
INSERT INTO `transnode` VALUES ('23040700', '兴山区网点', '3', '230407', null, null);
INSERT INTO `transnode` VALUES ('23042100', '萝北县网点', '3', '230421', null, null);
INSERT INTO `transnode` VALUES ('23042200', '绥滨县网点', '3', '230422', null, null);
INSERT INTO `transnode` VALUES ('23050000', '双鸭山市分拣中心', '2', '230500', null, null);
INSERT INTO `transnode` VALUES ('23050100', '市辖区网点', '3', '230501', null, null);
INSERT INTO `transnode` VALUES ('23050200', '尖山区网点', '3', '230502', null, null);
INSERT INTO `transnode` VALUES ('23050300', '岭东区网点', '3', '230503', null, null);
INSERT INTO `transnode` VALUES ('23050500', '四方台区网点', '3', '230505', null, null);
INSERT INTO `transnode` VALUES ('23050600', '宝山区网点', '3', '230506', null, null);
INSERT INTO `transnode` VALUES ('23052100', '集贤县网点', '3', '230521', null, null);
INSERT INTO `transnode` VALUES ('23052200', '友谊县网点', '3', '230522', null, null);
INSERT INTO `transnode` VALUES ('23052300', '宝清县网点', '3', '230523', null, null);
INSERT INTO `transnode` VALUES ('23052400', '饶河县网点', '3', '230524', null, null);
INSERT INTO `transnode` VALUES ('23060000', '大庆市分拣中心', '2', '230600', null, null);
INSERT INTO `transnode` VALUES ('23060100', '市辖区网点', '3', '230601', null, null);
INSERT INTO `transnode` VALUES ('23060200', '萨尔图区网点', '3', '230602', null, null);
INSERT INTO `transnode` VALUES ('23060300', '龙凤区网点', '3', '230603', null, null);
INSERT INTO `transnode` VALUES ('23060400', '让胡路区网点', '3', '230604', null, null);
INSERT INTO `transnode` VALUES ('23060500', '红岗区网点', '3', '230605', null, null);
INSERT INTO `transnode` VALUES ('23060600', '大同区网点', '3', '230606', null, null);
INSERT INTO `transnode` VALUES ('23062100', '肇州县网点', '3', '230621', null, null);
INSERT INTO `transnode` VALUES ('23062200', '肇源县网点', '3', '230622', null, null);
INSERT INTO `transnode` VALUES ('23062300', '林甸县网点', '3', '230623', null, null);
INSERT INTO `transnode` VALUES ('23062400', '杜尔伯特蒙古族自治县网点', '3', '230624', null, null);
INSERT INTO `transnode` VALUES ('23070000', '伊春市分拣中心', '2', '230700', null, null);
INSERT INTO `transnode` VALUES ('23070100', '市辖区网点', '3', '230701', null, null);
INSERT INTO `transnode` VALUES ('23070200', '伊春区网点', '3', '230702', null, null);
INSERT INTO `transnode` VALUES ('23070300', '南岔区网点', '3', '230703', null, null);
INSERT INTO `transnode` VALUES ('23070400', '友好区网点', '3', '230704', null, null);
INSERT INTO `transnode` VALUES ('23070500', '西林区网点', '3', '230705', null, null);
INSERT INTO `transnode` VALUES ('23070600', '翠峦区网点', '3', '230706', null, null);
INSERT INTO `transnode` VALUES ('23070700', '新青区网点', '3', '230707', null, null);
INSERT INTO `transnode` VALUES ('23070800', '美溪区网点', '3', '230708', null, null);
INSERT INTO `transnode` VALUES ('23070900', '金山屯区网点', '3', '230709', null, null);
INSERT INTO `transnode` VALUES ('23071000', '五营区网点', '3', '230710', null, null);
INSERT INTO `transnode` VALUES ('23071100', '乌马河区网点', '3', '230711', null, null);
INSERT INTO `transnode` VALUES ('23071200', '汤旺河区网点', '3', '230712', null, null);
INSERT INTO `transnode` VALUES ('23071300', '带岭区网点', '3', '230713', null, null);
INSERT INTO `transnode` VALUES ('23071400', '乌伊岭区网点', '3', '230714', null, null);
INSERT INTO `transnode` VALUES ('23071500', '红星区网点', '3', '230715', null, null);
INSERT INTO `transnode` VALUES ('23071600', '上甘岭区网点', '3', '230716', null, null);
INSERT INTO `transnode` VALUES ('23072200', '嘉荫县网点', '3', '230722', null, null);
INSERT INTO `transnode` VALUES ('23078100', '铁力市网点', '3', '230781', null, null);
INSERT INTO `transnode` VALUES ('23080000', '佳木斯市分拣中心', '2', '230800', null, null);
INSERT INTO `transnode` VALUES ('23080100', '市辖区网点', '3', '230801', null, null);
INSERT INTO `transnode` VALUES ('23080300', '向阳区网点', '3', '230803', null, null);
INSERT INTO `transnode` VALUES ('23080400', '前进区网点', '3', '230804', null, null);
INSERT INTO `transnode` VALUES ('23080500', '东风区网点', '3', '230805', null, null);
INSERT INTO `transnode` VALUES ('23081100', '郊区网点', '3', '230811', null, null);
INSERT INTO `transnode` VALUES ('23082200', '桦南县网点', '3', '230822', null, null);
INSERT INTO `transnode` VALUES ('23082600', '桦川县网点', '3', '230826', null, null);
INSERT INTO `transnode` VALUES ('23082800', '汤原县网点', '3', '230828', null, null);
INSERT INTO `transnode` VALUES ('23083300', '抚远县网点', '3', '230833', null, null);
INSERT INTO `transnode` VALUES ('23088100', '同江市网点', '3', '230881', null, null);
INSERT INTO `transnode` VALUES ('23088200', '富锦市网点', '3', '230882', null, null);
INSERT INTO `transnode` VALUES ('23090000', '七台河市分拣中心', '2', '230900', null, null);
INSERT INTO `transnode` VALUES ('23090100', '市辖区网点', '3', '230901', null, null);
INSERT INTO `transnode` VALUES ('23090200', '新兴区网点', '3', '230902', null, null);
INSERT INTO `transnode` VALUES ('23090300', '桃山区网点', '3', '230903', null, null);
INSERT INTO `transnode` VALUES ('23090400', '茄子河区网点', '3', '230904', null, null);
INSERT INTO `transnode` VALUES ('23092100', '勃利县网点', '3', '230921', null, null);
INSERT INTO `transnode` VALUES ('23100000', '牡丹江市分拣中心', '2', '231000', null, null);
INSERT INTO `transnode` VALUES ('23100100', '市辖区网点', '3', '231001', null, null);
INSERT INTO `transnode` VALUES ('23100200', '东安区网点', '3', '231002', null, null);
INSERT INTO `transnode` VALUES ('23100300', '阳明区网点', '3', '231003', null, null);
INSERT INTO `transnode` VALUES ('23100400', '爱民区网点', '3', '231004', null, null);
INSERT INTO `transnode` VALUES ('23100500', '西安区网点', '3', '231005', null, null);
INSERT INTO `transnode` VALUES ('23102400', '东宁县网点', '3', '231024', null, null);
INSERT INTO `transnode` VALUES ('23102500', '林口县网点', '3', '231025', null, null);
INSERT INTO `transnode` VALUES ('23108100', '绥芬河市网点', '3', '231081', null, null);
INSERT INTO `transnode` VALUES ('23108300', '海林市网点', '3', '231083', null, null);
INSERT INTO `transnode` VALUES ('23108400', '宁安市网点', '3', '231084', null, null);
INSERT INTO `transnode` VALUES ('23108500', '穆棱市网点', '3', '231085', null, null);
INSERT INTO `transnode` VALUES ('23110000', '黑河市分拣中心', '2', '231100', null, null);
INSERT INTO `transnode` VALUES ('23110100', '市辖区网点', '3', '231101', null, null);
INSERT INTO `transnode` VALUES ('23110200', '爱辉区网点', '3', '231102', null, null);
INSERT INTO `transnode` VALUES ('23112100', '嫩江县网点', '3', '231121', null, null);
INSERT INTO `transnode` VALUES ('23112300', '逊克县网点', '3', '231123', null, null);
INSERT INTO `transnode` VALUES ('23112400', '孙吴县网点', '3', '231124', null, null);
INSERT INTO `transnode` VALUES ('23118100', '北安市网点', '3', '231181', null, null);
INSERT INTO `transnode` VALUES ('23118200', '五大连池市网点', '3', '231182', null, null);
INSERT INTO `transnode` VALUES ('23120000', '绥化市分拣中心', '2', '231200', null, null);
INSERT INTO `transnode` VALUES ('23120100', '市辖区网点', '3', '231201', null, null);
INSERT INTO `transnode` VALUES ('23120200', '北林区网点', '3', '231202', null, null);
INSERT INTO `transnode` VALUES ('23122100', '望奎县网点', '3', '231221', null, null);
INSERT INTO `transnode` VALUES ('23122200', '兰西县网点', '3', '231222', null, null);
INSERT INTO `transnode` VALUES ('23122300', '青冈县网点', '3', '231223', null, null);
INSERT INTO `transnode` VALUES ('23122400', '庆安县网点', '3', '231224', null, null);
INSERT INTO `transnode` VALUES ('23122500', '明水县网点', '3', '231225', null, null);
INSERT INTO `transnode` VALUES ('23122600', '绥棱县网点', '3', '231226', null, null);
INSERT INTO `transnode` VALUES ('23128100', '安达市网点', '3', '231281', null, null);
INSERT INTO `transnode` VALUES ('23128200', '肇东市网点', '3', '231282', null, null);
INSERT INTO `transnode` VALUES ('23128300', '海伦市网点', '3', '231283', null, null);
INSERT INTO `transnode` VALUES ('23270000', '大兴安岭地区分拣中心', '2', '232700', null, null);
INSERT INTO `transnode` VALUES ('23272100', '呼玛县网点', '3', '232721', null, null);
INSERT INTO `transnode` VALUES ('23272200', '塔河县网点', '3', '232722', null, null);
INSERT INTO `transnode` VALUES ('23272300', '漠河县网点', '3', '232723', null, null);
INSERT INTO `transnode` VALUES ('31000000', '上海市分拣中心', '1', '310000', null, null);
INSERT INTO `transnode` VALUES ('31010000', '市辖区分拣中心', '2', '310100', null, null);
INSERT INTO `transnode` VALUES ('31010100', '黄浦区网点', '3', '310101', null, null);
INSERT INTO `transnode` VALUES ('31010400', '徐汇区网点', '3', '310104', null, null);
INSERT INTO `transnode` VALUES ('31010500', '长宁区网点', '3', '310105', null, null);
INSERT INTO `transnode` VALUES ('31010600', '静安区网点', '3', '310106', null, null);
INSERT INTO `transnode` VALUES ('31010700', '普陀区网点', '3', '310107', null, null);
INSERT INTO `transnode` VALUES ('31010800', '闸北区网点', '3', '310108', null, null);
INSERT INTO `transnode` VALUES ('31010900', '虹口区网点', '3', '310109', null, null);
INSERT INTO `transnode` VALUES ('31011000', '杨浦区网点', '3', '310110', null, null);
INSERT INTO `transnode` VALUES ('31011200', '闵行区网点', '3', '310112', null, null);
INSERT INTO `transnode` VALUES ('31011300', '宝山区网点', '3', '310113', null, null);
INSERT INTO `transnode` VALUES ('31011400', '嘉定区网点', '3', '310114', null, null);
INSERT INTO `transnode` VALUES ('31011500', '浦东新区网点', '3', '310115', null, null);
INSERT INTO `transnode` VALUES ('31011600', '金山区网点', '3', '310116', null, null);
INSERT INTO `transnode` VALUES ('31011700', '松江区网点', '3', '310117', null, null);
INSERT INTO `transnode` VALUES ('31011800', '青浦区网点', '3', '310118', null, null);
INSERT INTO `transnode` VALUES ('31012000', '奉贤区网点', '3', '310120', null, null);
INSERT INTO `transnode` VALUES ('31020000', '县分拣中心', '2', '310200', null, null);
INSERT INTO `transnode` VALUES ('31023000', '崇明县网点', '3', '310230', null, null);
INSERT INTO `transnode` VALUES ('32000000', '江苏省分拣中心', '1', '320000', null, null);
INSERT INTO `transnode` VALUES ('32010000', '南京市分拣中心', '2', '320100', null, null);
INSERT INTO `transnode` VALUES ('32010100', '市辖区网点', '3', '320101', null, null);
INSERT INTO `transnode` VALUES ('32010200', '玄武区网点', '3', '320102', null, null);
INSERT INTO `transnode` VALUES ('32010400', '秦淮区网点', '3', '320104', null, null);
INSERT INTO `transnode` VALUES ('32010500', '建邺区网点', '3', '320105', null, null);
INSERT INTO `transnode` VALUES ('32010600', '鼓楼区网点', '3', '320106', null, null);
INSERT INTO `transnode` VALUES ('32011100', '浦口区网点', '3', '320111', null, null);
INSERT INTO `transnode` VALUES ('32011300', '栖霞区网点', '3', '320113', null, null);
INSERT INTO `transnode` VALUES ('32011400', '雨花台区网点', '3', '320114', null, null);
INSERT INTO `transnode` VALUES ('32011500', '江宁区网点', '3', '320115', null, null);
INSERT INTO `transnode` VALUES ('32011600', '六合区网点', '3', '320116', null, null);
INSERT INTO `transnode` VALUES ('32011700', '溧水区网点', '3', '320117', null, null);
INSERT INTO `transnode` VALUES ('32011800', '高淳区网点', '3', '320118', null, null);
INSERT INTO `transnode` VALUES ('32020000', '无锡市分拣中心', '2', '320200', null, null);
INSERT INTO `transnode` VALUES ('32020100', '市辖区网点', '3', '320201', null, null);
INSERT INTO `transnode` VALUES ('32020200', '崇安区网点', '3', '320202', null, null);
INSERT INTO `transnode` VALUES ('32020300', '南长区网点', '3', '320203', null, null);
INSERT INTO `transnode` VALUES ('32020400', '北塘区网点', '3', '320204', null, null);
INSERT INTO `transnode` VALUES ('32020500', '锡山区网点', '3', '320205', null, null);
INSERT INTO `transnode` VALUES ('32020600', '惠山区网点', '3', '320206', null, null);
INSERT INTO `transnode` VALUES ('32021100', '滨湖区网点', '3', '320211', null, null);
INSERT INTO `transnode` VALUES ('32028100', '江阴市网点', '3', '320281', null, null);
INSERT INTO `transnode` VALUES ('32028200', '宜兴市网点', '3', '320282', null, null);
INSERT INTO `transnode` VALUES ('32030000', '徐州市分拣中心', '2', '320300', null, null);
INSERT INTO `transnode` VALUES ('32030100', '市辖区网点', '3', '320301', null, null);
INSERT INTO `transnode` VALUES ('32030200', '鼓楼区网点', '3', '320302', null, null);
INSERT INTO `transnode` VALUES ('32030300', '云龙区网点', '3', '320303', null, null);
INSERT INTO `transnode` VALUES ('32030500', '贾汪区网点', '3', '320305', null, null);
INSERT INTO `transnode` VALUES ('32031100', '泉山区网点', '3', '320311', null, null);
INSERT INTO `transnode` VALUES ('32031200', '铜山区网点', '3', '320312', null, null);
INSERT INTO `transnode` VALUES ('32032100', '丰县网点', '3', '320321', null, null);
INSERT INTO `transnode` VALUES ('32032200', '沛县网点', '3', '320322', null, null);
INSERT INTO `transnode` VALUES ('32032400', '睢宁县网点', '3', '320324', null, null);
INSERT INTO `transnode` VALUES ('32038100', '新沂市网点', '3', '320381', null, null);
INSERT INTO `transnode` VALUES ('32038200', '邳州市网点', '3', '320382', null, null);
INSERT INTO `transnode` VALUES ('32040000', '常州市分拣中心', '2', '320400', null, null);
INSERT INTO `transnode` VALUES ('32040100', '市辖区网点', '3', '320401', null, null);
INSERT INTO `transnode` VALUES ('32040200', '天宁区网点', '3', '320402', null, null);
INSERT INTO `transnode` VALUES ('32040400', '钟楼区网点', '3', '320404', null, null);
INSERT INTO `transnode` VALUES ('32040500', '戚墅堰区网点', '3', '320405', null, null);
INSERT INTO `transnode` VALUES ('32041100', '新北区网点', '3', '320411', null, null);
INSERT INTO `transnode` VALUES ('32041200', '武进区网点', '3', '320412', null, null);
INSERT INTO `transnode` VALUES ('32048100', '溧阳市网点', '3', '320481', null, null);
INSERT INTO `transnode` VALUES ('32048200', '金坛市网点', '3', '320482', null, null);
INSERT INTO `transnode` VALUES ('32050000', '苏州市分拣中心', '2', '320500', null, null);
INSERT INTO `transnode` VALUES ('32050100', '市辖区网点', '3', '320501', null, null);
INSERT INTO `transnode` VALUES ('32050500', '虎丘区网点', '3', '320505', null, null);
INSERT INTO `transnode` VALUES ('32050600', '吴中区网点', '3', '320506', null, null);
INSERT INTO `transnode` VALUES ('32050700', '相城区网点', '3', '320507', null, null);
INSERT INTO `transnode` VALUES ('32050800', '姑苏区网点', '3', '320508', null, null);
INSERT INTO `transnode` VALUES ('32050900', '吴江区网点', '3', '320509', null, null);
INSERT INTO `transnode` VALUES ('32058100', '常熟市网点', '3', '320581', null, null);
INSERT INTO `transnode` VALUES ('32058200', '张家港市网点', '3', '320582', null, null);
INSERT INTO `transnode` VALUES ('32058300', '昆山市网点', '3', '320583', null, null);
INSERT INTO `transnode` VALUES ('32058500', '太仓市网点', '3', '320585', null, null);
INSERT INTO `transnode` VALUES ('32060000', '南通市分拣中心', '2', '320600', null, null);
INSERT INTO `transnode` VALUES ('32060100', '市辖区网点', '3', '320601', null, null);
INSERT INTO `transnode` VALUES ('32060200', '崇川区网点', '3', '320602', null, null);
INSERT INTO `transnode` VALUES ('32061100', '港闸区网点', '3', '320611', null, null);
INSERT INTO `transnode` VALUES ('32061200', '通州区网点', '3', '320612', null, null);
INSERT INTO `transnode` VALUES ('32062100', '海安县网点', '3', '320621', null, null);
INSERT INTO `transnode` VALUES ('32062300', '如东县网点', '3', '320623', null, null);
INSERT INTO `transnode` VALUES ('32068100', '启东市网点', '3', '320681', null, null);
INSERT INTO `transnode` VALUES ('32068200', '如皋市网点', '3', '320682', null, null);
INSERT INTO `transnode` VALUES ('32068400', '海门市网点', '3', '320684', null, null);
INSERT INTO `transnode` VALUES ('32070000', '连云港市分拣中心', '2', '320700', null, null);
INSERT INTO `transnode` VALUES ('32070100', '市辖区网点', '3', '320701', null, null);
INSERT INTO `transnode` VALUES ('32070300', '连云区网点', '3', '320703', null, null);
INSERT INTO `transnode` VALUES ('32070500', '新浦区网点', '3', '320705', null, null);
INSERT INTO `transnode` VALUES ('32070600', '海州区网点', '3', '320706', null, null);
INSERT INTO `transnode` VALUES ('32072100', '赣榆县网点', '3', '320721', null, null);
INSERT INTO `transnode` VALUES ('32072200', '东海县网点', '3', '320722', null, null);
INSERT INTO `transnode` VALUES ('32072300', '灌云县网点', '3', '320723', null, null);
INSERT INTO `transnode` VALUES ('32072400', '灌南县网点', '3', '320724', null, null);
INSERT INTO `transnode` VALUES ('32080000', '淮安市分拣中心', '2', '320800', null, null);
INSERT INTO `transnode` VALUES ('32080100', '市辖区网点', '3', '320801', null, null);
INSERT INTO `transnode` VALUES ('32080200', '清河区网点', '3', '320802', null, null);
INSERT INTO `transnode` VALUES ('32080300', '淮安区网点', '3', '320803', null, null);
INSERT INTO `transnode` VALUES ('32080400', '淮阴区网点', '3', '320804', null, null);
INSERT INTO `transnode` VALUES ('32081100', '清浦区网点', '3', '320811', null, null);
INSERT INTO `transnode` VALUES ('32082600', '涟水县网点', '3', '320826', null, null);
INSERT INTO `transnode` VALUES ('32082900', '洪泽县网点', '3', '320829', null, null);
INSERT INTO `transnode` VALUES ('32083000', '盱眙县网点', '3', '320830', null, null);
INSERT INTO `transnode` VALUES ('32083100', '金湖县网点', '3', '320831', null, null);
INSERT INTO `transnode` VALUES ('32090000', '盐城市分拣中心', '2', '320900', null, null);
INSERT INTO `transnode` VALUES ('32090100', '市辖区网点', '3', '320901', null, null);
INSERT INTO `transnode` VALUES ('32090200', '亭湖区网点', '3', '320902', null, null);
INSERT INTO `transnode` VALUES ('32090300', '盐都区网点', '3', '320903', null, null);
INSERT INTO `transnode` VALUES ('32092100', '响水县网点', '3', '320921', null, null);
INSERT INTO `transnode` VALUES ('32092200', '滨海县网点', '3', '320922', null, null);
INSERT INTO `transnode` VALUES ('32092300', '阜宁县网点', '3', '320923', null, null);
INSERT INTO `transnode` VALUES ('32092400', '射阳县网点', '3', '320924', null, null);
INSERT INTO `transnode` VALUES ('32092500', '建湖县网点', '3', '320925', null, null);
INSERT INTO `transnode` VALUES ('32098100', '东台市网点', '3', '320981', null, null);
INSERT INTO `transnode` VALUES ('32098200', '大丰市网点', '3', '320982', null, null);
INSERT INTO `transnode` VALUES ('32100000', '扬州市分拣中心', '2', '321000', null, null);
INSERT INTO `transnode` VALUES ('32100100', '市辖区网点', '3', '321001', null, null);
INSERT INTO `transnode` VALUES ('32100200', '广陵区网点', '3', '321002', null, null);
INSERT INTO `transnode` VALUES ('32100300', '邗江区网点', '3', '321003', null, null);
INSERT INTO `transnode` VALUES ('32101200', '江都区网点', '3', '321012', null, null);
INSERT INTO `transnode` VALUES ('32102300', '宝应县网点', '3', '321023', null, null);
INSERT INTO `transnode` VALUES ('32108100', '仪征市网点', '3', '321081', null, null);
INSERT INTO `transnode` VALUES ('32108400', '高邮市网点', '3', '321084', null, null);
INSERT INTO `transnode` VALUES ('32110000', '镇江市分拣中心', '2', '321100', null, null);
INSERT INTO `transnode` VALUES ('32110100', '市辖区网点', '3', '321101', null, null);
INSERT INTO `transnode` VALUES ('32110200', '京口区网点', '3', '321102', null, null);
INSERT INTO `transnode` VALUES ('32111100', '润州区网点', '3', '321111', null, null);
INSERT INTO `transnode` VALUES ('32111200', '丹徒区网点', '3', '321112', null, null);
INSERT INTO `transnode` VALUES ('32118100', '丹阳市网点', '3', '321181', null, null);
INSERT INTO `transnode` VALUES ('32118200', '扬中市网点', '3', '321182', null, null);
INSERT INTO `transnode` VALUES ('32118300', '句容市网点', '3', '321183', null, null);
INSERT INTO `transnode` VALUES ('32120000', '泰州市分拣中心', '2', '321200', null, null);
INSERT INTO `transnode` VALUES ('32120100', '市辖区网点', '3', '321201', null, null);
INSERT INTO `transnode` VALUES ('32120200', '海陵区网点', '3', '321202', null, null);
INSERT INTO `transnode` VALUES ('32120300', '高港区网点', '3', '321203', null, null);
INSERT INTO `transnode` VALUES ('32120400', '姜堰区网点', '3', '321204', null, null);
INSERT INTO `transnode` VALUES ('32128100', '兴化市网点', '3', '321281', null, null);
INSERT INTO `transnode` VALUES ('32128200', '靖江市网点', '3', '321282', null, null);
INSERT INTO `transnode` VALUES ('32128300', '泰兴市网点', '3', '321283', null, null);
INSERT INTO `transnode` VALUES ('32130000', '宿迁市分拣中心', '2', '321300', null, null);
INSERT INTO `transnode` VALUES ('32130100', '市辖区网点', '3', '321301', null, null);
INSERT INTO `transnode` VALUES ('32130200', '宿城区网点', '3', '321302', null, null);
INSERT INTO `transnode` VALUES ('32131100', '宿豫区网点', '3', '321311', null, null);
INSERT INTO `transnode` VALUES ('32132200', '沭阳县网点', '3', '321322', null, null);
INSERT INTO `transnode` VALUES ('32132300', '泗阳县网点', '3', '321323', null, null);
INSERT INTO `transnode` VALUES ('32132400', '泗洪县网点', '3', '321324', null, null);
INSERT INTO `transnode` VALUES ('33000000', '浙江省分拣中心', '1', '330000', null, null);
INSERT INTO `transnode` VALUES ('33010000', '杭州市分拣中心', '2', '330100', null, null);
INSERT INTO `transnode` VALUES ('33010100', '市辖区网点', '3', '330101', null, null);
INSERT INTO `transnode` VALUES ('33010200', '上城区网点', '3', '330102', null, null);
INSERT INTO `transnode` VALUES ('33010300', '下城区网点', '3', '330103', null, null);
INSERT INTO `transnode` VALUES ('33010400', '江干区网点', '3', '330104', null, null);
INSERT INTO `transnode` VALUES ('33010500', '拱墅区网点', '3', '330105', null, null);
INSERT INTO `transnode` VALUES ('33010600', '西湖区网点', '3', '330106', null, null);
INSERT INTO `transnode` VALUES ('33010800', '滨江区网点', '3', '330108', null, null);
INSERT INTO `transnode` VALUES ('33010900', '萧山区网点', '3', '330109', null, null);
INSERT INTO `transnode` VALUES ('33011000', '余杭区网点', '3', '330110', null, null);
INSERT INTO `transnode` VALUES ('33012200', '桐庐县网点', '3', '330122', null, null);
INSERT INTO `transnode` VALUES ('33012700', '淳安县网点', '3', '330127', null, null);
INSERT INTO `transnode` VALUES ('33018200', '建德市网点', '3', '330182', null, null);
INSERT INTO `transnode` VALUES ('33018300', '富阳市网点', '3', '330183', null, null);
INSERT INTO `transnode` VALUES ('33018500', '临安市网点', '3', '330185', null, null);
INSERT INTO `transnode` VALUES ('33020000', '宁波市分拣中心', '2', '330200', null, null);
INSERT INTO `transnode` VALUES ('33020100', '市辖区网点', '3', '330201', null, null);
INSERT INTO `transnode` VALUES ('33020300', '海曙区网点', '3', '330203', null, null);
INSERT INTO `transnode` VALUES ('33020400', '江东区网点', '3', '330204', null, null);
INSERT INTO `transnode` VALUES ('33020500', '江北区网点', '3', '330205', null, null);
INSERT INTO `transnode` VALUES ('33020600', '北仑区网点', '3', '330206', null, null);
INSERT INTO `transnode` VALUES ('33021100', '镇海区网点', '3', '330211', null, null);
INSERT INTO `transnode` VALUES ('33021200', '鄞州区网点', '3', '330212', null, null);
INSERT INTO `transnode` VALUES ('33022500', '象山县网点', '3', '330225', null, null);
INSERT INTO `transnode` VALUES ('33022600', '宁海县网点', '3', '330226', null, null);
INSERT INTO `transnode` VALUES ('33028100', '余姚市网点', '3', '330281', null, null);
INSERT INTO `transnode` VALUES ('33028200', '慈溪市网点', '3', '330282', null, null);
INSERT INTO `transnode` VALUES ('33028300', '奉化市网点', '3', '330283', null, null);
INSERT INTO `transnode` VALUES ('33030000', '温州市分拣中心', '2', '330300', null, null);
INSERT INTO `transnode` VALUES ('33030100', '市辖区网点', '3', '330301', null, null);
INSERT INTO `transnode` VALUES ('33030200', '鹿城区网点', '3', '330302', null, null);
INSERT INTO `transnode` VALUES ('33030300', '龙湾区网点', '3', '330303', null, null);
INSERT INTO `transnode` VALUES ('33030400', '瓯海区网点', '3', '330304', null, null);
INSERT INTO `transnode` VALUES ('33032200', '洞头县网点', '3', '330322', null, null);
INSERT INTO `transnode` VALUES ('33032400', '永嘉县网点', '3', '330324', null, null);
INSERT INTO `transnode` VALUES ('33032600', '平阳县网点', '3', '330326', null, null);
INSERT INTO `transnode` VALUES ('33032700', '苍南县网点', '3', '330327', null, null);
INSERT INTO `transnode` VALUES ('33032800', '文成县网点', '3', '330328', null, null);
INSERT INTO `transnode` VALUES ('33032900', '泰顺县网点', '3', '330329', null, null);
INSERT INTO `transnode` VALUES ('33038100', '瑞安市网点', '3', '330381', null, null);
INSERT INTO `transnode` VALUES ('33038200', '乐清市网点', '3', '330382', null, null);
INSERT INTO `transnode` VALUES ('33040000', '嘉兴市分拣中心', '2', '330400', null, null);
INSERT INTO `transnode` VALUES ('33040100', '市辖区网点', '3', '330401', null, null);
INSERT INTO `transnode` VALUES ('33040200', '南湖区网点', '3', '330402', null, null);
INSERT INTO `transnode` VALUES ('33041100', '秀洲区网点', '3', '330411', null, null);
INSERT INTO `transnode` VALUES ('33042100', '嘉善县网点', '3', '330421', null, null);
INSERT INTO `transnode` VALUES ('33042400', '海盐县网点', '3', '330424', null, null);
INSERT INTO `transnode` VALUES ('33048100', '海宁市网点', '3', '330481', null, null);
INSERT INTO `transnode` VALUES ('33048200', '平湖市网点', '3', '330482', null, null);
INSERT INTO `transnode` VALUES ('33048300', '桐乡市网点', '3', '330483', null, null);
INSERT INTO `transnode` VALUES ('33050000', '湖州市分拣中心', '2', '330500', null, null);
INSERT INTO `transnode` VALUES ('33050100', '市辖区网点', '3', '330501', null, null);
INSERT INTO `transnode` VALUES ('33050200', '吴兴区网点', '3', '330502', null, null);
INSERT INTO `transnode` VALUES ('33050300', '南浔区网点', '3', '330503', null, null);
INSERT INTO `transnode` VALUES ('33052100', '德清县网点', '3', '330521', null, null);
INSERT INTO `transnode` VALUES ('33052200', '长兴县网点', '3', '330522', null, null);
INSERT INTO `transnode` VALUES ('33052300', '安吉县网点', '3', '330523', null, null);
INSERT INTO `transnode` VALUES ('33060000', '绍兴市分拣中心', '2', '330600', null, null);
INSERT INTO `transnode` VALUES ('33060100', '市辖区网点', '3', '330601', null, null);
INSERT INTO `transnode` VALUES ('33060200', '越城区网点', '3', '330602', null, null);
INSERT INTO `transnode` VALUES ('33062100', '绍兴县网点', '3', '330621', null, null);
INSERT INTO `transnode` VALUES ('33062400', '新昌县网点', '3', '330624', null, null);
INSERT INTO `transnode` VALUES ('33068100', '诸暨市网点', '3', '330681', null, null);
INSERT INTO `transnode` VALUES ('33068200', '上虞市网点', '3', '330682', null, null);
INSERT INTO `transnode` VALUES ('33068300', '嵊州市网点', '3', '330683', null, null);
INSERT INTO `transnode` VALUES ('33070000', '金华市分拣中心', '2', '330700', null, null);
INSERT INTO `transnode` VALUES ('33070100', '市辖区网点', '3', '330701', null, null);
INSERT INTO `transnode` VALUES ('33070200', '婺城区网点', '3', '330702', null, null);
INSERT INTO `transnode` VALUES ('33070300', '金东区网点', '3', '330703', null, null);
INSERT INTO `transnode` VALUES ('33072300', '武义县网点', '3', '330723', null, null);
INSERT INTO `transnode` VALUES ('33072600', '浦江县网点', '3', '330726', null, null);
INSERT INTO `transnode` VALUES ('33072700', '磐安县网点', '3', '330727', null, null);
INSERT INTO `transnode` VALUES ('33078100', '兰溪市网点', '3', '330781', null, null);
INSERT INTO `transnode` VALUES ('33078200', '义乌市网点', '3', '330782', null, null);
INSERT INTO `transnode` VALUES ('33078300', '东阳市网点', '3', '330783', null, null);
INSERT INTO `transnode` VALUES ('33078400', '永康市网点', '3', '330784', null, null);
INSERT INTO `transnode` VALUES ('33080000', '衢州市分拣中心', '2', '330800', null, null);
INSERT INTO `transnode` VALUES ('33080100', '市辖区网点', '3', '330801', null, null);
INSERT INTO `transnode` VALUES ('33080200', '柯城区网点', '3', '330802', null, null);
INSERT INTO `transnode` VALUES ('33080300', '衢江区网点', '3', '330803', null, null);
INSERT INTO `transnode` VALUES ('33082200', '常山县网点', '3', '330822', null, null);
INSERT INTO `transnode` VALUES ('33082400', '开化县网点', '3', '330824', null, null);
INSERT INTO `transnode` VALUES ('33082500', '龙游县网点', '3', '330825', null, null);
INSERT INTO `transnode` VALUES ('33088100', '江山市网点', '3', '330881', null, null);
INSERT INTO `transnode` VALUES ('33090000', '舟山市分拣中心', '2', '330900', null, null);
INSERT INTO `transnode` VALUES ('33090100', '市辖区网点', '3', '330901', null, null);
INSERT INTO `transnode` VALUES ('33090200', '定海区网点', '3', '330902', null, null);
INSERT INTO `transnode` VALUES ('33090300', '普陀区网点', '3', '330903', null, null);
INSERT INTO `transnode` VALUES ('33092100', '岱山县网点', '3', '330921', null, null);
INSERT INTO `transnode` VALUES ('33092200', '嵊泗县网点', '3', '330922', null, null);
INSERT INTO `transnode` VALUES ('33100000', '台州市分拣中心', '2', '331000', null, null);
INSERT INTO `transnode` VALUES ('33100100', '市辖区网点', '3', '331001', null, null);
INSERT INTO `transnode` VALUES ('33100200', '椒江区网点', '3', '331002', null, null);
INSERT INTO `transnode` VALUES ('33100300', '黄岩区网点', '3', '331003', null, null);
INSERT INTO `transnode` VALUES ('33100400', '路桥区网点', '3', '331004', null, null);
INSERT INTO `transnode` VALUES ('33102100', '玉环县网点', '3', '331021', null, null);
INSERT INTO `transnode` VALUES ('33102200', '三门县网点', '3', '331022', null, null);
INSERT INTO `transnode` VALUES ('33102300', '天台县网点', '3', '331023', null, null);
INSERT INTO `transnode` VALUES ('33102400', '仙居县网点', '3', '331024', null, null);
INSERT INTO `transnode` VALUES ('33108100', '温岭市网点', '3', '331081', null, null);
INSERT INTO `transnode` VALUES ('33108200', '临海市网点', '3', '331082', null, null);
INSERT INTO `transnode` VALUES ('33110000', '丽水市分拣中心', '2', '331100', null, null);
INSERT INTO `transnode` VALUES ('33110100', '市辖区网点', '3', '331101', null, null);
INSERT INTO `transnode` VALUES ('33110200', '莲都区网点', '3', '331102', null, null);
INSERT INTO `transnode` VALUES ('33112100', '青田县网点', '3', '331121', null, null);
INSERT INTO `transnode` VALUES ('33112200', '缙云县网点', '3', '331122', null, null);
INSERT INTO `transnode` VALUES ('33112300', '遂昌县网点', '3', '331123', null, null);
INSERT INTO `transnode` VALUES ('33112400', '松阳县网点', '3', '331124', null, null);
INSERT INTO `transnode` VALUES ('33112500', '云和县网点', '3', '331125', null, null);
INSERT INTO `transnode` VALUES ('33112600', '庆元县网点', '3', '331126', null, null);
INSERT INTO `transnode` VALUES ('33112700', '景宁畲族自治县网点', '3', '331127', null, null);
INSERT INTO `transnode` VALUES ('33118100', '龙泉市网点', '3', '331181', null, null);
INSERT INTO `transnode` VALUES ('34000000', '安徽省分拣中心', '1', '340000', '32.076904', '117.147926');
INSERT INTO `transnode` VALUES ('34010000', '合肥市分拣中心', '2', '340100', '31.799305', '117.230766');
INSERT INTO `transnode` VALUES ('34010100', '市辖区网点', '3', '340101', null, null);
INSERT INTO `transnode` VALUES ('34010200', '瑶海区网点', '3', '340102', '31.799305', '117.280448');
INSERT INTO `transnode` VALUES ('34010300', '庐阳区网点', '3', '340103', null, null);
INSERT INTO `transnode` VALUES ('34010400', '蜀山区网点', '3', '340104', null, null);
INSERT INTO `transnode` VALUES ('34011100', '包河区网点', '3', '340111', null, null);
INSERT INTO `transnode` VALUES ('34012100', '长丰县网点', '3', '340121', null, null);
INSERT INTO `transnode` VALUES ('34012200', '肥东县网点', '3', '340122', null, null);
INSERT INTO `transnode` VALUES ('34012300', '肥西县网点', '3', '340123', null, null);
INSERT INTO `transnode` VALUES ('34012400', '庐江县网点', '3', '340124', null, null);
INSERT INTO `transnode` VALUES ('34018100', '巢湖市网点', '3', '340181', null, null);
INSERT INTO `transnode` VALUES ('34020000', '芜湖市分拣中心', '2', '340200', null, null);
INSERT INTO `transnode` VALUES ('34020100', '市辖区网点', '3', '340201', null, null);
INSERT INTO `transnode` VALUES ('34020200', '镜湖区网点', '3', '340202', null, null);
INSERT INTO `transnode` VALUES ('34020300', '弋江区网点', '3', '340203', null, null);
INSERT INTO `transnode` VALUES ('34020700', '鸠江区网点', '3', '340207', null, null);
INSERT INTO `transnode` VALUES ('34020800', '三山区网点', '3', '340208', null, null);
INSERT INTO `transnode` VALUES ('34022100', '芜湖县网点', '3', '340221', null, null);
INSERT INTO `transnode` VALUES ('34022200', '繁昌县网点', '3', '340222', null, null);
INSERT INTO `transnode` VALUES ('34022300', '南陵县网点', '3', '340223', null, null);
INSERT INTO `transnode` VALUES ('34022500', '无为县网点', '3', '340225', null, null);
INSERT INTO `transnode` VALUES ('34030000', '蚌埠市分拣中心', '2', '340300', null, null);
INSERT INTO `transnode` VALUES ('34030100', '市辖区网点', '3', '340301', null, null);
INSERT INTO `transnode` VALUES ('34030200', '龙子湖区网点', '3', '340302', null, null);
INSERT INTO `transnode` VALUES ('34030300', '蚌山区网点', '3', '340303', null, null);
INSERT INTO `transnode` VALUES ('34030400', '禹会区网点', '3', '340304', null, null);
INSERT INTO `transnode` VALUES ('34031100', '淮上区网点', '3', '340311', null, null);
INSERT INTO `transnode` VALUES ('34032100', '怀远县网点', '3', '340321', null, null);
INSERT INTO `transnode` VALUES ('34032200', '五河县网点', '3', '340322', null, null);
INSERT INTO `transnode` VALUES ('34032300', '固镇县网点', '3', '340323', null, null);
INSERT INTO `transnode` VALUES ('34040000', '淮南市分拣中心', '2', '340400', null, null);
INSERT INTO `transnode` VALUES ('34040100', '市辖区网点', '3', '340401', null, null);
INSERT INTO `transnode` VALUES ('34040200', '大通区网点', '3', '340402', null, null);
INSERT INTO `transnode` VALUES ('34040300', '田家庵区网点', '3', '340403', null, null);
INSERT INTO `transnode` VALUES ('34040400', '谢家集区网点', '3', '340404', null, null);
INSERT INTO `transnode` VALUES ('34040500', '八公山区网点', '3', '340405', null, null);
INSERT INTO `transnode` VALUES ('34040600', '潘集区网点', '3', '340406', null, null);
INSERT INTO `transnode` VALUES ('34042100', '凤台县网点', '3', '340421', null, null);
INSERT INTO `transnode` VALUES ('34050000', '马鞍山市分拣中心', '2', '340500', null, null);
INSERT INTO `transnode` VALUES ('34050100', '市辖区网点', '3', '340501', null, null);
INSERT INTO `transnode` VALUES ('34050300', '花山区网点', '3', '340503', null, null);
INSERT INTO `transnode` VALUES ('34050400', '雨山区网点', '3', '340504', null, null);
INSERT INTO `transnode` VALUES ('34050600', '博望区网点', '3', '340506', null, null);
INSERT INTO `transnode` VALUES ('34052100', '当涂县网点', '3', '340521', null, null);
INSERT INTO `transnode` VALUES ('34052200', '含山县网点', '3', '340522', null, null);
INSERT INTO `transnode` VALUES ('34052300', '和县网点', '3', '340523', null, null);
INSERT INTO `transnode` VALUES ('34060000', '淮北市分拣中心', '2', '340600', null, null);
INSERT INTO `transnode` VALUES ('34060100', '市辖区网点', '3', '340601', null, null);
INSERT INTO `transnode` VALUES ('34060200', '杜集区网点', '3', '340602', null, null);
INSERT INTO `transnode` VALUES ('34060300', '相山区网点', '3', '340603', null, null);
INSERT INTO `transnode` VALUES ('34060400', '烈山区网点', '3', '340604', null, null);
INSERT INTO `transnode` VALUES ('34062100', '濉溪县网点', '3', '340621', null, null);
INSERT INTO `transnode` VALUES ('34070000', '铜陵市分拣中心', '2', '340700', null, null);
INSERT INTO `transnode` VALUES ('34070100', '市辖区网点', '3', '340701', null, null);
INSERT INTO `transnode` VALUES ('34070200', '铜官山区网点', '3', '340702', null, null);
INSERT INTO `transnode` VALUES ('34070300', '狮子山区网点', '3', '340703', null, null);
INSERT INTO `transnode` VALUES ('34071100', '郊区网点', '3', '340711', null, null);
INSERT INTO `transnode` VALUES ('34072100', '铜陵县网点', '3', '340721', null, null);
INSERT INTO `transnode` VALUES ('34080000', '安庆市分拣中心', '2', '340800', null, null);
INSERT INTO `transnode` VALUES ('34080100', '市辖区网点', '3', '340801', null, null);
INSERT INTO `transnode` VALUES ('34080200', '迎江区网点', '3', '340802', null, null);
INSERT INTO `transnode` VALUES ('34080300', '大观区网点', '3', '340803', null, null);
INSERT INTO `transnode` VALUES ('34081100', '宜秀区网点', '3', '340811', null, null);
INSERT INTO `transnode` VALUES ('34082200', '怀宁县网点', '3', '340822', null, null);
INSERT INTO `transnode` VALUES ('34082300', '枞阳县网点', '3', '340823', null, null);
INSERT INTO `transnode` VALUES ('34082400', '潜山县网点', '3', '340824', null, null);
INSERT INTO `transnode` VALUES ('34082500', '太湖县网点', '3', '340825', null, null);
INSERT INTO `transnode` VALUES ('34082600', '宿松县网点', '3', '340826', null, null);
INSERT INTO `transnode` VALUES ('34082700', '望江县网点', '3', '340827', null, null);
INSERT INTO `transnode` VALUES ('34082800', '岳西县网点', '3', '340828', null, null);
INSERT INTO `transnode` VALUES ('34088100', '桐城市网点', '3', '340881', null, null);
INSERT INTO `transnode` VALUES ('34100000', '黄山市分拣中心', '2', '341000', null, null);
INSERT INTO `transnode` VALUES ('34100100', '市辖区网点', '3', '341001', null, null);
INSERT INTO `transnode` VALUES ('34100200', '屯溪区网点', '3', '341002', null, null);
INSERT INTO `transnode` VALUES ('34100300', '黄山区网点', '3', '341003', null, null);
INSERT INTO `transnode` VALUES ('34100400', '徽州区网点', '3', '341004', null, null);
INSERT INTO `transnode` VALUES ('34102100', '歙县网点', '3', '341021', null, null);
INSERT INTO `transnode` VALUES ('34102200', '休宁县网点', '3', '341022', null, null);
INSERT INTO `transnode` VALUES ('34102300', '黟县网点', '3', '341023', null, null);
INSERT INTO `transnode` VALUES ('34102400', '祁门县网点', '3', '341024', null, null);
INSERT INTO `transnode` VALUES ('34110000', '滁州市分拣中心', '2', '341100', null, null);
INSERT INTO `transnode` VALUES ('34110100', '市辖区网点', '3', '341101', null, null);
INSERT INTO `transnode` VALUES ('34110200', '琅琊区网点', '3', '341102', null, null);
INSERT INTO `transnode` VALUES ('34110300', '南谯区网点', '3', '341103', null, null);
INSERT INTO `transnode` VALUES ('34112200', '来安县网点', '3', '341122', null, null);
INSERT INTO `transnode` VALUES ('34112400', '全椒县网点', '3', '341124', null, null);
INSERT INTO `transnode` VALUES ('34112500', '定远县网点', '3', '341125', null, null);
INSERT INTO `transnode` VALUES ('34112600', '凤阳县网点', '3', '341126', null, null);
INSERT INTO `transnode` VALUES ('34118100', '天长市网点', '3', '341181', null, null);
INSERT INTO `transnode` VALUES ('34118200', '明光市网点', '3', '341182', null, null);
INSERT INTO `transnode` VALUES ('34120000', '阜阳市分拣中心', '2', '341200', null, null);
INSERT INTO `transnode` VALUES ('34120100', '市辖区网点', '3', '341201', null, null);
INSERT INTO `transnode` VALUES ('34120200', '颍州区网点', '3', '341202', null, null);
INSERT INTO `transnode` VALUES ('34120300', '颍东区网点', '3', '341203', null, null);
INSERT INTO `transnode` VALUES ('34120400', '颍泉区网点', '3', '341204', null, null);
INSERT INTO `transnode` VALUES ('34122100', '临泉县网点', '3', '341221', null, null);
INSERT INTO `transnode` VALUES ('34122200', '太和县网点', '3', '341222', null, null);
INSERT INTO `transnode` VALUES ('34122500', '阜南县网点', '3', '341225', null, null);
INSERT INTO `transnode` VALUES ('34122600', '颍上县网点', '3', '341226', null, null);
INSERT INTO `transnode` VALUES ('34128200', '界首市网点', '3', '341282', null, null);
INSERT INTO `transnode` VALUES ('34130000', '宿州市分拣中心', '2', '341300', null, null);
INSERT INTO `transnode` VALUES ('34130100', '市辖区网点', '3', '341301', null, null);
INSERT INTO `transnode` VALUES ('34130200', '埇桥区网点', '3', '341302', null, null);
INSERT INTO `transnode` VALUES ('34132100', '砀山县网点', '3', '341321', null, null);
INSERT INTO `transnode` VALUES ('34132200', '萧县网点', '3', '341322', null, null);
INSERT INTO `transnode` VALUES ('34132300', '灵璧县网点', '3', '341323', null, null);
INSERT INTO `transnode` VALUES ('34132400', '泗县网点', '3', '341324', null, null);
INSERT INTO `transnode` VALUES ('34150000', '六安市分拣中心', '2', '341500', null, null);
INSERT INTO `transnode` VALUES ('34150100', '市辖区网点', '3', '341501', null, null);
INSERT INTO `transnode` VALUES ('34150200', '金安区网点', '3', '341502', null, null);
INSERT INTO `transnode` VALUES ('34150300', '裕安区网点', '3', '341503', null, null);
INSERT INTO `transnode` VALUES ('34152100', '寿县网点', '3', '341521', null, null);
INSERT INTO `transnode` VALUES ('34152200', '霍邱县网点', '3', '341522', null, null);
INSERT INTO `transnode` VALUES ('34152300', '舒城县网点', '3', '341523', null, null);
INSERT INTO `transnode` VALUES ('34152400', '金寨县网点', '3', '341524', null, null);
INSERT INTO `transnode` VALUES ('34152500', '霍山县网点', '3', '341525', null, null);
INSERT INTO `transnode` VALUES ('34160000', '亳州市分拣中心', '2', '341600', null, null);
INSERT INTO `transnode` VALUES ('34160100', '市辖区网点', '3', '341601', null, null);
INSERT INTO `transnode` VALUES ('34160200', '谯城区网点', '3', '341602', null, null);
INSERT INTO `transnode` VALUES ('34162100', '涡阳县网点', '3', '341621', null, null);
INSERT INTO `transnode` VALUES ('34162200', '蒙城县网点', '3', '341622', null, null);
INSERT INTO `transnode` VALUES ('34162300', '利辛县网点', '3', '341623', null, null);
INSERT INTO `transnode` VALUES ('34170000', '池州市分拣中心', '2', '341700', null, null);
INSERT INTO `transnode` VALUES ('34170100', '市辖区网点', '3', '341701', null, null);
INSERT INTO `transnode` VALUES ('34170200', '贵池区网点', '3', '341702', null, null);
INSERT INTO `transnode` VALUES ('34172100', '东至县网点', '3', '341721', null, null);
INSERT INTO `transnode` VALUES ('34172200', '石台县网点', '3', '341722', null, null);
INSERT INTO `transnode` VALUES ('34172300', '青阳县网点', '3', '341723', null, null);
INSERT INTO `transnode` VALUES ('34180000', '宣城市分拣中心', '2', '341800', null, null);
INSERT INTO `transnode` VALUES ('34180100', '市辖区网点', '3', '341801', null, null);
INSERT INTO `transnode` VALUES ('34180200', '宣州区网点', '3', '341802', null, null);
INSERT INTO `transnode` VALUES ('34182100', '郎溪县网点', '3', '341821', null, null);
INSERT INTO `transnode` VALUES ('34182200', '广德县网点', '3', '341822', null, null);
INSERT INTO `transnode` VALUES ('34182300', '泾县网点', '3', '341823', null, null);
INSERT INTO `transnode` VALUES ('34182400', '绩溪县网点', '3', '341824', null, null);
INSERT INTO `transnode` VALUES ('34182500', '旌德县网点', '3', '341825', null, null);
INSERT INTO `transnode` VALUES ('34188100', '宁国市网点', '3', '341881', null, null);
INSERT INTO `transnode` VALUES ('35000000', '福建省分拣中心', '1', '350000', null, null);
INSERT INTO `transnode` VALUES ('35010000', '福州市分拣中心', '2', '350100', null, null);
INSERT INTO `transnode` VALUES ('35010100', '市辖区网点', '3', '350101', null, null);
INSERT INTO `transnode` VALUES ('35010200', '鼓楼区网点', '3', '350102', null, null);
INSERT INTO `transnode` VALUES ('35010300', '台江区网点', '3', '350103', null, null);
INSERT INTO `transnode` VALUES ('35010400', '仓山区网点', '3', '350104', null, null);
INSERT INTO `transnode` VALUES ('35010500', '马尾区网点', '3', '350105', null, null);
INSERT INTO `transnode` VALUES ('35011100', '晋安区网点', '3', '350111', null, null);
INSERT INTO `transnode` VALUES ('35012100', '闽侯县网点', '3', '350121', null, null);
INSERT INTO `transnode` VALUES ('35012200', '连江县网点', '3', '350122', null, null);
INSERT INTO `transnode` VALUES ('35012300', '罗源县网点', '3', '350123', null, null);
INSERT INTO `transnode` VALUES ('35012400', '闽清县网点', '3', '350124', null, null);
INSERT INTO `transnode` VALUES ('35012500', '永泰县网点', '3', '350125', null, null);
INSERT INTO `transnode` VALUES ('35012800', '平潭县网点', '3', '350128', null, null);
INSERT INTO `transnode` VALUES ('35018100', '福清市网点', '3', '350181', null, null);
INSERT INTO `transnode` VALUES ('35018200', '长乐市网点', '3', '350182', null, null);
INSERT INTO `transnode` VALUES ('35020000', '厦门市分拣中心', '2', '350200', null, null);
INSERT INTO `transnode` VALUES ('35020100', '市辖区网点', '3', '350201', null, null);
INSERT INTO `transnode` VALUES ('35020300', '思明区网点', '3', '350203', null, null);
INSERT INTO `transnode` VALUES ('35020500', '海沧区网点', '3', '350205', null, null);
INSERT INTO `transnode` VALUES ('35020600', '湖里区网点', '3', '350206', null, null);
INSERT INTO `transnode` VALUES ('35021100', '集美区网点', '3', '350211', null, null);
INSERT INTO `transnode` VALUES ('35021200', '同安区网点', '3', '350212', null, null);
INSERT INTO `transnode` VALUES ('35021300', '翔安区网点', '3', '350213', null, null);
INSERT INTO `transnode` VALUES ('35030000', '莆田市分拣中心', '2', '350300', null, null);
INSERT INTO `transnode` VALUES ('35030100', '市辖区网点', '3', '350301', null, null);
INSERT INTO `transnode` VALUES ('35030200', '城厢区网点', '3', '350302', null, null);
INSERT INTO `transnode` VALUES ('35030300', '涵江区网点', '3', '350303', null, null);
INSERT INTO `transnode` VALUES ('35030400', '荔城区网点', '3', '350304', null, null);
INSERT INTO `transnode` VALUES ('35030500', '秀屿区网点', '3', '350305', null, null);
INSERT INTO `transnode` VALUES ('35032200', '仙游县网点', '3', '350322', null, null);
INSERT INTO `transnode` VALUES ('35040000', '三明市分拣中心', '2', '350400', null, null);
INSERT INTO `transnode` VALUES ('35040100', '市辖区网点', '3', '350401', null, null);
INSERT INTO `transnode` VALUES ('35040200', '梅列区网点', '3', '350402', null, null);
INSERT INTO `transnode` VALUES ('35040300', '三元区网点', '3', '350403', null, null);
INSERT INTO `transnode` VALUES ('35042100', '明溪县网点', '3', '350421', null, null);
INSERT INTO `transnode` VALUES ('35042300', '清流县网点', '3', '350423', null, null);
INSERT INTO `transnode` VALUES ('35042400', '宁化县网点', '3', '350424', null, null);
INSERT INTO `transnode` VALUES ('35042500', '大田县网点', '3', '350425', null, null);
INSERT INTO `transnode` VALUES ('35042600', '尤溪县网点', '3', '350426', null, null);
INSERT INTO `transnode` VALUES ('35042700', '沙县网点', '3', '350427', null, null);
INSERT INTO `transnode` VALUES ('35042800', '将乐县网点', '3', '350428', null, null);
INSERT INTO `transnode` VALUES ('35042900', '泰宁县网点', '3', '350429', null, null);
INSERT INTO `transnode` VALUES ('35043000', '建宁县网点', '3', '350430', null, null);
INSERT INTO `transnode` VALUES ('35048100', '永安市网点', '3', '350481', null, null);
INSERT INTO `transnode` VALUES ('35050000', '泉州市分拣中心', '2', '350500', null, null);
INSERT INTO `transnode` VALUES ('35050100', '市辖区网点', '3', '350501', null, null);
INSERT INTO `transnode` VALUES ('35050200', '鲤城区网点', '3', '350502', null, null);
INSERT INTO `transnode` VALUES ('35050300', '丰泽区网点', '3', '350503', null, null);
INSERT INTO `transnode` VALUES ('35050400', '洛江区网点', '3', '350504', null, null);
INSERT INTO `transnode` VALUES ('35050500', '泉港区网点', '3', '350505', null, null);
INSERT INTO `transnode` VALUES ('35052100', '惠安县网点', '3', '350521', null, null);
INSERT INTO `transnode` VALUES ('35052400', '安溪县网点', '3', '350524', null, null);
INSERT INTO `transnode` VALUES ('35052500', '永春县网点', '3', '350525', null, null);
INSERT INTO `transnode` VALUES ('35052600', '德化县网点', '3', '350526', null, null);
INSERT INTO `transnode` VALUES ('35052700', '金门县网点', '3', '350527', null, null);
INSERT INTO `transnode` VALUES ('35058100', '石狮市网点', '3', '350581', null, null);
INSERT INTO `transnode` VALUES ('35058200', '晋江市网点', '3', '350582', null, null);
INSERT INTO `transnode` VALUES ('35058300', '南安市网点', '3', '350583', null, null);
INSERT INTO `transnode` VALUES ('35060000', '漳州市分拣中心', '2', '350600', null, null);
INSERT INTO `transnode` VALUES ('35060100', '市辖区网点', '3', '350601', null, null);
INSERT INTO `transnode` VALUES ('35060200', '芗城区网点', '3', '350602', null, null);
INSERT INTO `transnode` VALUES ('35060300', '龙文区网点', '3', '350603', null, null);
INSERT INTO `transnode` VALUES ('35062200', '云霄县网点', '3', '350622', null, null);
INSERT INTO `transnode` VALUES ('35062300', '漳浦县网点', '3', '350623', null, null);
INSERT INTO `transnode` VALUES ('35062400', '诏安县网点', '3', '350624', null, null);
INSERT INTO `transnode` VALUES ('35062500', '长泰县网点', '3', '350625', null, null);
INSERT INTO `transnode` VALUES ('35062600', '东山县网点', '3', '350626', null, null);
INSERT INTO `transnode` VALUES ('35062700', '南靖县网点', '3', '350627', null, null);
INSERT INTO `transnode` VALUES ('35062800', '平和县网点', '3', '350628', null, null);
INSERT INTO `transnode` VALUES ('35062900', '华安县网点', '3', '350629', null, null);
INSERT INTO `transnode` VALUES ('35068100', '龙海市网点', '3', '350681', null, null);
INSERT INTO `transnode` VALUES ('35070000', '南平市分拣中心', '2', '350700', null, null);
INSERT INTO `transnode` VALUES ('35070100', '市辖区网点', '3', '350701', null, null);
INSERT INTO `transnode` VALUES ('35070200', '延平区网点', '3', '350702', null, null);
INSERT INTO `transnode` VALUES ('35072100', '顺昌县网点', '3', '350721', null, null);
INSERT INTO `transnode` VALUES ('35072200', '浦城县网点', '3', '350722', null, null);
INSERT INTO `transnode` VALUES ('35072300', '光泽县网点', '3', '350723', null, null);
INSERT INTO `transnode` VALUES ('35072400', '松溪县网点', '3', '350724', null, null);
INSERT INTO `transnode` VALUES ('35072500', '政和县网点', '3', '350725', null, null);
INSERT INTO `transnode` VALUES ('35078100', '邵武市网点', '3', '350781', null, null);
INSERT INTO `transnode` VALUES ('35078200', '武夷山市网点', '3', '350782', null, null);
INSERT INTO `transnode` VALUES ('35078300', '建瓯市网点', '3', '350783', null, null);
INSERT INTO `transnode` VALUES ('35078400', '建阳市网点', '3', '350784', null, null);
INSERT INTO `transnode` VALUES ('35080000', '龙岩市分拣中心', '2', '350800', null, null);
INSERT INTO `transnode` VALUES ('35080100', '市辖区网点', '3', '350801', null, null);
INSERT INTO `transnode` VALUES ('35080200', '新罗区网点', '3', '350802', null, null);
INSERT INTO `transnode` VALUES ('35082100', '长汀县网点', '3', '350821', null, null);
INSERT INTO `transnode` VALUES ('35082200', '永定县网点', '3', '350822', null, null);
INSERT INTO `transnode` VALUES ('35082300', '上杭县网点', '3', '350823', null, null);
INSERT INTO `transnode` VALUES ('35082400', '武平县网点', '3', '350824', null, null);
INSERT INTO `transnode` VALUES ('35082500', '连城县网点', '3', '350825', null, null);
INSERT INTO `transnode` VALUES ('35088100', '漳平市网点', '3', '350881', null, null);
INSERT INTO `transnode` VALUES ('35090000', '宁德市分拣中心', '2', '350900', null, null);
INSERT INTO `transnode` VALUES ('35090100', '市辖区网点', '3', '350901', null, null);
INSERT INTO `transnode` VALUES ('35090200', '蕉城区网点', '3', '350902', null, null);
INSERT INTO `transnode` VALUES ('35092100', '霞浦县网点', '3', '350921', null, null);
INSERT INTO `transnode` VALUES ('35092200', '古田县网点', '3', '350922', null, null);
INSERT INTO `transnode` VALUES ('35092300', '屏南县网点', '3', '350923', null, null);
INSERT INTO `transnode` VALUES ('35092400', '寿宁县网点', '3', '350924', null, null);
INSERT INTO `transnode` VALUES ('35092500', '周宁县网点', '3', '350925', null, null);
INSERT INTO `transnode` VALUES ('35092600', '柘荣县网点', '3', '350926', null, null);
INSERT INTO `transnode` VALUES ('35098100', '福安市网点', '3', '350981', null, null);
INSERT INTO `transnode` VALUES ('35098200', '福鼎市网点', '3', '350982', null, null);
INSERT INTO `transnode` VALUES ('36000000', '江西省分拣中心', '1', '360000', null, null);
INSERT INTO `transnode` VALUES ('36010000', '南昌市分拣中心', '2', '360100', null, null);
INSERT INTO `transnode` VALUES ('36010100', '市辖区网点', '3', '360101', null, null);
INSERT INTO `transnode` VALUES ('36010200', '东湖区网点', '3', '360102', null, null);
INSERT INTO `transnode` VALUES ('36010300', '西湖区网点', '3', '360103', null, null);
INSERT INTO `transnode` VALUES ('36010400', '青云谱区网点', '3', '360104', null, null);
INSERT INTO `transnode` VALUES ('36010500', '湾里区网点', '3', '360105', null, null);
INSERT INTO `transnode` VALUES ('36011100', '青山湖区网点', '3', '360111', null, null);
INSERT INTO `transnode` VALUES ('36012100', '南昌县网点', '3', '360121', null, null);
INSERT INTO `transnode` VALUES ('36012200', '新建县网点', '3', '360122', null, null);
INSERT INTO `transnode` VALUES ('36012300', '安义县网点', '3', '360123', null, null);
INSERT INTO `transnode` VALUES ('36012400', '进贤县网点', '3', '360124', null, null);
INSERT INTO `transnode` VALUES ('36020000', '景德镇市分拣中心', '2', '360200', null, null);
INSERT INTO `transnode` VALUES ('36020100', '市辖区网点', '3', '360201', null, null);
INSERT INTO `transnode` VALUES ('36020200', '昌江区网点', '3', '360202', null, null);
INSERT INTO `transnode` VALUES ('36020300', '珠山区网点', '3', '360203', null, null);
INSERT INTO `transnode` VALUES ('36022200', '浮梁县网点', '3', '360222', null, null);
INSERT INTO `transnode` VALUES ('36028100', '乐平市网点', '3', '360281', null, null);
INSERT INTO `transnode` VALUES ('36030000', '萍乡市分拣中心', '2', '360300', null, null);
INSERT INTO `transnode` VALUES ('36030100', '市辖区网点', '3', '360301', null, null);
INSERT INTO `transnode` VALUES ('36030200', '安源区网点', '3', '360302', null, null);
INSERT INTO `transnode` VALUES ('36031300', '湘东区网点', '3', '360313', null, null);
INSERT INTO `transnode` VALUES ('36032100', '莲花县网点', '3', '360321', null, null);
INSERT INTO `transnode` VALUES ('36032200', '上栗县网点', '3', '360322', null, null);
INSERT INTO `transnode` VALUES ('36032300', '芦溪县网点', '3', '360323', null, null);
INSERT INTO `transnode` VALUES ('36040000', '九江市分拣中心', '2', '360400', null, null);
INSERT INTO `transnode` VALUES ('36040100', '市辖区网点', '3', '360401', null, null);
INSERT INTO `transnode` VALUES ('36040200', '庐山区网点', '3', '360402', null, null);
INSERT INTO `transnode` VALUES ('36040300', '浔阳区网点', '3', '360403', null, null);
INSERT INTO `transnode` VALUES ('36042100', '九江县网点', '3', '360421', null, null);
INSERT INTO `transnode` VALUES ('36042300', '武宁县网点', '3', '360423', null, null);
INSERT INTO `transnode` VALUES ('36042400', '修水县网点', '3', '360424', null, null);
INSERT INTO `transnode` VALUES ('36042500', '永修县网点', '3', '360425', null, null);
INSERT INTO `transnode` VALUES ('36042600', '德安县网点', '3', '360426', null, null);
INSERT INTO `transnode` VALUES ('36042700', '星子县网点', '3', '360427', null, null);
INSERT INTO `transnode` VALUES ('36042800', '都昌县网点', '3', '360428', null, null);
INSERT INTO `transnode` VALUES ('36042900', '湖口县网点', '3', '360429', null, null);
INSERT INTO `transnode` VALUES ('36043000', '彭泽县网点', '3', '360430', null, null);
INSERT INTO `transnode` VALUES ('36048100', '瑞昌市网点', '3', '360481', null, null);
INSERT INTO `transnode` VALUES ('36048200', '共青城市网点', '3', '360482', null, null);
INSERT INTO `transnode` VALUES ('36050000', '新余市分拣中心', '2', '360500', null, null);
INSERT INTO `transnode` VALUES ('36050100', '市辖区网点', '3', '360501', null, null);
INSERT INTO `transnode` VALUES ('36050200', '渝水区网点', '3', '360502', null, null);
INSERT INTO `transnode` VALUES ('36052100', '分宜县网点', '3', '360521', null, null);
INSERT INTO `transnode` VALUES ('36060000', '鹰潭市分拣中心', '2', '360600', null, null);
INSERT INTO `transnode` VALUES ('36060100', '市辖区网点', '3', '360601', null, null);
INSERT INTO `transnode` VALUES ('36060200', '月湖区网点', '3', '360602', null, null);
INSERT INTO `transnode` VALUES ('36062200', '余江县网点', '3', '360622', null, null);
INSERT INTO `transnode` VALUES ('36068100', '贵溪市网点', '3', '360681', null, null);
INSERT INTO `transnode` VALUES ('36070000', '赣州市分拣中心', '2', '360700', null, null);
INSERT INTO `transnode` VALUES ('36070100', '市辖区网点', '3', '360701', null, null);
INSERT INTO `transnode` VALUES ('36070200', '章贡区网点', '3', '360702', null, null);
INSERT INTO `transnode` VALUES ('36072100', '赣县网点', '3', '360721', null, null);
INSERT INTO `transnode` VALUES ('36072200', '信丰县网点', '3', '360722', null, null);
INSERT INTO `transnode` VALUES ('36072300', '大余县网点', '3', '360723', null, null);
INSERT INTO `transnode` VALUES ('36072400', '上犹县网点', '3', '360724', null, null);
INSERT INTO `transnode` VALUES ('36072500', '崇义县网点', '3', '360725', null, null);
INSERT INTO `transnode` VALUES ('36072600', '安远县网点', '3', '360726', null, null);
INSERT INTO `transnode` VALUES ('36072700', '龙南县网点', '3', '360727', null, null);
INSERT INTO `transnode` VALUES ('36072800', '定南县网点', '3', '360728', null, null);
INSERT INTO `transnode` VALUES ('36072900', '全南县网点', '3', '360729', null, null);
INSERT INTO `transnode` VALUES ('36073000', '宁都县网点', '3', '360730', null, null);
INSERT INTO `transnode` VALUES ('36073100', '于都县网点', '3', '360731', null, null);
INSERT INTO `transnode` VALUES ('36073200', '兴国县网点', '3', '360732', null, null);
INSERT INTO `transnode` VALUES ('36073300', '会昌县网点', '3', '360733', null, null);
INSERT INTO `transnode` VALUES ('36073400', '寻乌县网点', '3', '360734', null, null);
INSERT INTO `transnode` VALUES ('36073500', '石城县网点', '3', '360735', null, null);
INSERT INTO `transnode` VALUES ('36078100', '瑞金市网点', '3', '360781', null, null);
INSERT INTO `transnode` VALUES ('36078200', '南康市网点', '3', '360782', null, null);
INSERT INTO `transnode` VALUES ('36080000', '吉安市分拣中心', '2', '360800', null, null);
INSERT INTO `transnode` VALUES ('36080100', '市辖区网点', '3', '360801', null, null);
INSERT INTO `transnode` VALUES ('36080200', '吉州区网点', '3', '360802', null, null);
INSERT INTO `transnode` VALUES ('36080300', '青原区网点', '3', '360803', null, null);
INSERT INTO `transnode` VALUES ('36082100', '吉安县网点', '3', '360821', null, null);
INSERT INTO `transnode` VALUES ('36082200', '吉水县网点', '3', '360822', null, null);
INSERT INTO `transnode` VALUES ('36082300', '峡江县网点', '3', '360823', null, null);
INSERT INTO `transnode` VALUES ('36082400', '新干县网点', '3', '360824', null, null);
INSERT INTO `transnode` VALUES ('36082500', '永丰县网点', '3', '360825', null, null);
INSERT INTO `transnode` VALUES ('36082600', '泰和县网点', '3', '360826', null, null);
INSERT INTO `transnode` VALUES ('36082700', '遂川县网点', '3', '360827', null, null);
INSERT INTO `transnode` VALUES ('36082800', '万安县网点', '3', '360828', null, null);
INSERT INTO `transnode` VALUES ('36082900', '安福县网点', '3', '360829', null, null);
INSERT INTO `transnode` VALUES ('36083000', '永新县网点', '3', '360830', null, null);
INSERT INTO `transnode` VALUES ('36088100', '井冈山市网点', '3', '360881', null, null);
INSERT INTO `transnode` VALUES ('36090000', '宜春市分拣中心', '2', '360900', null, null);
INSERT INTO `transnode` VALUES ('36090100', '市辖区网点', '3', '360901', null, null);
INSERT INTO `transnode` VALUES ('36090200', '袁州区网点', '3', '360902', null, null);
INSERT INTO `transnode` VALUES ('36092100', '奉新县网点', '3', '360921', null, null);
INSERT INTO `transnode` VALUES ('36092200', '万载县网点', '3', '360922', null, null);
INSERT INTO `transnode` VALUES ('36092300', '上高县网点', '3', '360923', null, null);
INSERT INTO `transnode` VALUES ('36092400', '宜丰县网点', '3', '360924', null, null);
INSERT INTO `transnode` VALUES ('36092500', '靖安县网点', '3', '360925', null, null);
INSERT INTO `transnode` VALUES ('36092600', '铜鼓县网点', '3', '360926', null, null);
INSERT INTO `transnode` VALUES ('36098100', '丰城市网点', '3', '360981', null, null);
INSERT INTO `transnode` VALUES ('36098200', '樟树市网点', '3', '360982', null, null);
INSERT INTO `transnode` VALUES ('36098300', '高安市网点', '3', '360983', null, null);
INSERT INTO `transnode` VALUES ('36100000', '抚州市分拣中心', '2', '361000', null, null);
INSERT INTO `transnode` VALUES ('36100100', '市辖区网点', '3', '361001', null, null);
INSERT INTO `transnode` VALUES ('36100200', '临川区网点', '3', '361002', null, null);
INSERT INTO `transnode` VALUES ('36102100', '南城县网点', '3', '361021', null, null);
INSERT INTO `transnode` VALUES ('36102200', '黎川县网点', '3', '361022', null, null);
INSERT INTO `transnode` VALUES ('36102300', '南丰县网点', '3', '361023', null, null);
INSERT INTO `transnode` VALUES ('36102400', '崇仁县网点', '3', '361024', null, null);
INSERT INTO `transnode` VALUES ('36102500', '乐安县网点', '3', '361025', null, null);
INSERT INTO `transnode` VALUES ('36102600', '宜黄县网点', '3', '361026', null, null);
INSERT INTO `transnode` VALUES ('36102700', '金溪县网点', '3', '361027', null, null);
INSERT INTO `transnode` VALUES ('36102800', '资溪县网点', '3', '361028', null, null);
INSERT INTO `transnode` VALUES ('36102900', '东乡县网点', '3', '361029', null, null);
INSERT INTO `transnode` VALUES ('36103000', '广昌县网点', '3', '361030', null, null);
INSERT INTO `transnode` VALUES ('36110000', '上饶市分拣中心', '2', '361100', null, null);
INSERT INTO `transnode` VALUES ('36110100', '市辖区网点', '3', '361101', null, null);
INSERT INTO `transnode` VALUES ('36110200', '信州区网点', '3', '361102', null, null);
INSERT INTO `transnode` VALUES ('36112100', '上饶县网点', '3', '361121', null, null);
INSERT INTO `transnode` VALUES ('36112200', '广丰县网点', '3', '361122', null, null);
INSERT INTO `transnode` VALUES ('36112300', '玉山县网点', '3', '361123', null, null);
INSERT INTO `transnode` VALUES ('36112400', '铅山县网点', '3', '361124', null, null);
INSERT INTO `transnode` VALUES ('36112500', '横峰县网点', '3', '361125', null, null);
INSERT INTO `transnode` VALUES ('36112600', '弋阳县网点', '3', '361126', null, null);
INSERT INTO `transnode` VALUES ('36112700', '余干县网点', '3', '361127', null, null);
INSERT INTO `transnode` VALUES ('36112800', '鄱阳县网点', '3', '361128', null, null);
INSERT INTO `transnode` VALUES ('36112900', '万年县网点', '3', '361129', null, null);
INSERT INTO `transnode` VALUES ('36113000', '婺源县网点', '3', '361130', null, null);
INSERT INTO `transnode` VALUES ('36118100', '德兴市网点', '3', '361181', null, null);
INSERT INTO `transnode` VALUES ('37000000', '山东省分拣中心', '1', '370000', null, null);
INSERT INTO `transnode` VALUES ('37010000', '济南市分拣中心', '2', '370100', null, null);
INSERT INTO `transnode` VALUES ('37010100', '市辖区网点', '3', '370101', null, null);
INSERT INTO `transnode` VALUES ('37010200', '历下区网点', '3', '370102', null, null);
INSERT INTO `transnode` VALUES ('37010300', '市中区网点', '3', '370103', null, null);
INSERT INTO `transnode` VALUES ('37010400', '槐荫区网点', '3', '370104', null, null);
INSERT INTO `transnode` VALUES ('37010500', '天桥区网点', '3', '370105', null, null);
INSERT INTO `transnode` VALUES ('37011200', '历城区网点', '3', '370112', null, null);
INSERT INTO `transnode` VALUES ('37011300', '长清区网点', '3', '370113', null, null);
INSERT INTO `transnode` VALUES ('37012400', '平阴县网点', '3', '370124', null, null);
INSERT INTO `transnode` VALUES ('37012500', '济阳县网点', '3', '370125', null, null);
INSERT INTO `transnode` VALUES ('37012600', '商河县网点', '3', '370126', null, null);
INSERT INTO `transnode` VALUES ('37018100', '章丘市网点', '3', '370181', null, null);
INSERT INTO `transnode` VALUES ('37020000', '青岛市分拣中心', '2', '370200', null, null);
INSERT INTO `transnode` VALUES ('37020100', '市辖区网点', '3', '370201', null, null);
INSERT INTO `transnode` VALUES ('37020200', '市南区网点', '3', '370202', null, null);
INSERT INTO `transnode` VALUES ('37020300', '市北区网点', '3', '370203', null, null);
INSERT INTO `transnode` VALUES ('37021100', '黄岛区网点', '3', '370211', null, null);
INSERT INTO `transnode` VALUES ('37021200', '崂山区网点', '3', '370212', null, null);
INSERT INTO `transnode` VALUES ('37021300', '李沧区网点', '3', '370213', null, null);
INSERT INTO `transnode` VALUES ('37021400', '城阳区网点', '3', '370214', null, null);
INSERT INTO `transnode` VALUES ('37028100', '胶州市网点', '3', '370281', null, null);
INSERT INTO `transnode` VALUES ('37028200', '即墨市网点', '3', '370282', null, null);
INSERT INTO `transnode` VALUES ('37028300', '平度市网点', '3', '370283', null, null);
INSERT INTO `transnode` VALUES ('37028500', '莱西市网点', '3', '370285', null, null);
INSERT INTO `transnode` VALUES ('37030000', '淄博市分拣中心', '2', '370300', null, null);
INSERT INTO `transnode` VALUES ('37030100', '市辖区网点', '3', '370301', null, null);
INSERT INTO `transnode` VALUES ('37030200', '淄川区网点', '3', '370302', null, null);
INSERT INTO `transnode` VALUES ('37030300', '张店区网点', '3', '370303', null, null);
INSERT INTO `transnode` VALUES ('37030400', '博山区网点', '3', '370304', null, null);
INSERT INTO `transnode` VALUES ('37030500', '临淄区网点', '3', '370305', null, null);
INSERT INTO `transnode` VALUES ('37030600', '周村区网点', '3', '370306', null, null);
INSERT INTO `transnode` VALUES ('37032100', '桓台县网点', '3', '370321', null, null);
INSERT INTO `transnode` VALUES ('37032200', '高青县网点', '3', '370322', null, null);
INSERT INTO `transnode` VALUES ('37032300', '沂源县网点', '3', '370323', null, null);
INSERT INTO `transnode` VALUES ('37040000', '枣庄市分拣中心', '2', '370400', null, null);
INSERT INTO `transnode` VALUES ('37040100', '市辖区网点', '3', '370401', null, null);
INSERT INTO `transnode` VALUES ('37040200', '市中区网点', '3', '370402', null, null);
INSERT INTO `transnode` VALUES ('37040300', '薛城区网点', '3', '370403', null, null);
INSERT INTO `transnode` VALUES ('37040400', '峄城区网点', '3', '370404', null, null);
INSERT INTO `transnode` VALUES ('37040500', '台儿庄区网点', '3', '370405', null, null);
INSERT INTO `transnode` VALUES ('37040600', '山亭区网点', '3', '370406', null, null);
INSERT INTO `transnode` VALUES ('37048100', '滕州市网点', '3', '370481', null, null);
INSERT INTO `transnode` VALUES ('37050000', '东营市分拣中心', '2', '370500', null, null);
INSERT INTO `transnode` VALUES ('37050100', '市辖区网点', '3', '370501', null, null);
INSERT INTO `transnode` VALUES ('37050200', '东营区网点', '3', '370502', null, null);
INSERT INTO `transnode` VALUES ('37050300', '河口区网点', '3', '370503', null, null);
INSERT INTO `transnode` VALUES ('37052100', '垦利县网点', '3', '370521', null, null);
INSERT INTO `transnode` VALUES ('37052200', '利津县网点', '3', '370522', null, null);
INSERT INTO `transnode` VALUES ('37052300', '广饶县网点', '3', '370523', null, null);
INSERT INTO `transnode` VALUES ('37060000', '烟台市分拣中心', '2', '370600', null, null);
INSERT INTO `transnode` VALUES ('37060100', '市辖区网点', '3', '370601', null, null);
INSERT INTO `transnode` VALUES ('37060200', '芝罘区网点', '3', '370602', null, null);
INSERT INTO `transnode` VALUES ('37061100', '福山区网点', '3', '370611', null, null);
INSERT INTO `transnode` VALUES ('37061200', '牟平区网点', '3', '370612', null, null);
INSERT INTO `transnode` VALUES ('37061300', '莱山区网点', '3', '370613', null, null);
INSERT INTO `transnode` VALUES ('37063400', '长岛县网点', '3', '370634', null, null);
INSERT INTO `transnode` VALUES ('37068100', '龙口市网点', '3', '370681', null, null);
INSERT INTO `transnode` VALUES ('37068200', '莱阳市网点', '3', '370682', null, null);
INSERT INTO `transnode` VALUES ('37068300', '莱州市网点', '3', '370683', null, null);
INSERT INTO `transnode` VALUES ('37068400', '蓬莱市网点', '3', '370684', null, null);
INSERT INTO `transnode` VALUES ('37068500', '招远市网点', '3', '370685', null, null);
INSERT INTO `transnode` VALUES ('37068600', '栖霞市网点', '3', '370686', null, null);
INSERT INTO `transnode` VALUES ('37068700', '海阳市网点', '3', '370687', null, null);
INSERT INTO `transnode` VALUES ('37070000', '潍坊市分拣中心', '2', '370700', null, null);
INSERT INTO `transnode` VALUES ('37070100', '市辖区网点', '3', '370701', null, null);
INSERT INTO `transnode` VALUES ('37070200', '潍城区网点', '3', '370702', null, null);
INSERT INTO `transnode` VALUES ('37070300', '寒亭区网点', '3', '370703', null, null);
INSERT INTO `transnode` VALUES ('37070400', '坊子区网点', '3', '370704', null, null);
INSERT INTO `transnode` VALUES ('37070500', '奎文区网点', '3', '370705', null, null);
INSERT INTO `transnode` VALUES ('37072400', '临朐县网点', '3', '370724', null, null);
INSERT INTO `transnode` VALUES ('37072500', '昌乐县网点', '3', '370725', null, null);
INSERT INTO `transnode` VALUES ('37078100', '青州市网点', '3', '370781', null, null);
INSERT INTO `transnode` VALUES ('37078200', '诸城市网点', '3', '370782', null, null);
INSERT INTO `transnode` VALUES ('37078300', '寿光市网点', '3', '370783', null, null);
INSERT INTO `transnode` VALUES ('37078400', '安丘市网点', '3', '370784', null, null);
INSERT INTO `transnode` VALUES ('37078500', '高密市网点', '3', '370785', null, null);
INSERT INTO `transnode` VALUES ('37078600', '昌邑市网点', '3', '370786', null, null);
INSERT INTO `transnode` VALUES ('37080000', '济宁市分拣中心', '2', '370800', null, null);
INSERT INTO `transnode` VALUES ('37080100', '市辖区网点', '3', '370801', null, null);
INSERT INTO `transnode` VALUES ('37080200', '市中区网点', '3', '370802', null, null);
INSERT INTO `transnode` VALUES ('37081100', '任城区网点', '3', '370811', null, null);
INSERT INTO `transnode` VALUES ('37082600', '微山县网点', '3', '370826', null, null);
INSERT INTO `transnode` VALUES ('37082700', '鱼台县网点', '3', '370827', null, null);
INSERT INTO `transnode` VALUES ('37082800', '金乡县网点', '3', '370828', null, null);
INSERT INTO `transnode` VALUES ('37082900', '嘉祥县网点', '3', '370829', null, null);
INSERT INTO `transnode` VALUES ('37083000', '汶上县网点', '3', '370830', null, null);
INSERT INTO `transnode` VALUES ('37083100', '泗水县网点', '3', '370831', null, null);
INSERT INTO `transnode` VALUES ('37083200', '梁山县网点', '3', '370832', null, null);
INSERT INTO `transnode` VALUES ('37088100', '曲阜市网点', '3', '370881', null, null);
INSERT INTO `transnode` VALUES ('37088200', '兖州市网点', '3', '370882', null, null);
INSERT INTO `transnode` VALUES ('37088300', '邹城市网点', '3', '370883', null, null);
INSERT INTO `transnode` VALUES ('37090000', '泰安市分拣中心', '2', '370900', null, null);
INSERT INTO `transnode` VALUES ('37090100', '市辖区网点', '3', '370901', null, null);
INSERT INTO `transnode` VALUES ('37090200', '泰山区网点', '3', '370902', null, null);
INSERT INTO `transnode` VALUES ('37091100', '岱岳区网点', '3', '370911', null, null);
INSERT INTO `transnode` VALUES ('37092100', '宁阳县网点', '3', '370921', null, null);
INSERT INTO `transnode` VALUES ('37092300', '东平县网点', '3', '370923', null, null);
INSERT INTO `transnode` VALUES ('37098200', '新泰市网点', '3', '370982', null, null);
INSERT INTO `transnode` VALUES ('37098300', '肥城市网点', '3', '370983', null, null);
INSERT INTO `transnode` VALUES ('37100000', '威海市分拣中心', '2', '371000', null, null);
INSERT INTO `transnode` VALUES ('37100100', '市辖区网点', '3', '371001', null, null);
INSERT INTO `transnode` VALUES ('37100200', '环翠区网点', '3', '371002', null, null);
INSERT INTO `transnode` VALUES ('37108100', '文登市网点', '3', '371081', null, null);
INSERT INTO `transnode` VALUES ('37108200', '荣成市网点', '3', '371082', null, null);
INSERT INTO `transnode` VALUES ('37108300', '乳山市网点', '3', '371083', null, null);
INSERT INTO `transnode` VALUES ('37110000', '日照市分拣中心', '2', '371100', null, null);
INSERT INTO `transnode` VALUES ('37110100', '市辖区网点', '3', '371101', null, null);
INSERT INTO `transnode` VALUES ('37110200', '东港区网点', '3', '371102', null, null);
INSERT INTO `transnode` VALUES ('37110300', '岚山区网点', '3', '371103', null, null);
INSERT INTO `transnode` VALUES ('37112100', '五莲县网点', '3', '371121', null, null);
INSERT INTO `transnode` VALUES ('37112200', '莒县网点', '3', '371122', null, null);
INSERT INTO `transnode` VALUES ('37120000', '莱芜市分拣中心', '2', '371200', null, null);
INSERT INTO `transnode` VALUES ('37120100', '市辖区网点', '3', '371201', null, null);
INSERT INTO `transnode` VALUES ('37120200', '莱城区网点', '3', '371202', null, null);
INSERT INTO `transnode` VALUES ('37120300', '钢城区网点', '3', '371203', null, null);
INSERT INTO `transnode` VALUES ('37130000', '临沂市分拣中心', '2', '371300', null, null);
INSERT INTO `transnode` VALUES ('37130100', '市辖区网点', '3', '371301', null, null);
INSERT INTO `transnode` VALUES ('37130200', '兰山区网点', '3', '371302', null, null);
INSERT INTO `transnode` VALUES ('37131100', '罗庄区网点', '3', '371311', null, null);
INSERT INTO `transnode` VALUES ('37131200', '河东区网点', '3', '371312', null, null);
INSERT INTO `transnode` VALUES ('37132100', '沂南县网点', '3', '371321', null, null);
INSERT INTO `transnode` VALUES ('37132200', '郯城县网点', '3', '371322', null, null);
INSERT INTO `transnode` VALUES ('37132300', '沂水县网点', '3', '371323', null, null);
INSERT INTO `transnode` VALUES ('37132400', '苍山县网点', '3', '371324', null, null);
INSERT INTO `transnode` VALUES ('37132500', '费县网点', '3', '371325', null, null);
INSERT INTO `transnode` VALUES ('37132600', '平邑县网点', '3', '371326', null, null);
INSERT INTO `transnode` VALUES ('37132700', '莒南县网点', '3', '371327', null, null);
INSERT INTO `transnode` VALUES ('37132800', '蒙阴县网点', '3', '371328', null, null);
INSERT INTO `transnode` VALUES ('37132900', '临沭县网点', '3', '371329', null, null);
INSERT INTO `transnode` VALUES ('37140000', '德州市分拣中心', '2', '371400', null, null);
INSERT INTO `transnode` VALUES ('37140100', '市辖区网点', '3', '371401', null, null);
INSERT INTO `transnode` VALUES ('37140200', '德城区网点', '3', '371402', null, null);
INSERT INTO `transnode` VALUES ('37142100', '陵县网点', '3', '371421', null, null);
INSERT INTO `transnode` VALUES ('37142200', '宁津县网点', '3', '371422', null, null);
INSERT INTO `transnode` VALUES ('37142300', '庆云县网点', '3', '371423', null, null);
INSERT INTO `transnode` VALUES ('37142400', '临邑县网点', '3', '371424', null, null);
INSERT INTO `transnode` VALUES ('37142500', '齐河县网点', '3', '371425', null, null);
INSERT INTO `transnode` VALUES ('37142600', '平原县网点', '3', '371426', null, null);
INSERT INTO `transnode` VALUES ('37142700', '夏津县网点', '3', '371427', null, null);
INSERT INTO `transnode` VALUES ('37142800', '武城县网点', '3', '371428', null, null);
INSERT INTO `transnode` VALUES ('37148100', '乐陵市网点', '3', '371481', null, null);
INSERT INTO `transnode` VALUES ('37148200', '禹城市网点', '3', '371482', null, null);
INSERT INTO `transnode` VALUES ('37150000', '聊城市分拣中心', '2', '371500', null, null);
INSERT INTO `transnode` VALUES ('37150100', '市辖区网点', '3', '371501', null, null);
INSERT INTO `transnode` VALUES ('37150200', '东昌府区网点', '3', '371502', null, null);
INSERT INTO `transnode` VALUES ('37152100', '阳谷县网点', '3', '371521', null, null);
INSERT INTO `transnode` VALUES ('37152200', '莘县网点', '3', '371522', null, null);
INSERT INTO `transnode` VALUES ('37152300', '茌平县网点', '3', '371523', null, null);
INSERT INTO `transnode` VALUES ('37152400', '东阿县网点', '3', '371524', null, null);
INSERT INTO `transnode` VALUES ('37152500', '冠县网点', '3', '371525', null, null);
INSERT INTO `transnode` VALUES ('37152600', '高唐县网点', '3', '371526', null, null);
INSERT INTO `transnode` VALUES ('37158100', '临清市网点', '3', '371581', null, null);
INSERT INTO `transnode` VALUES ('37160000', '滨州市分拣中心', '2', '371600', null, null);
INSERT INTO `transnode` VALUES ('37160100', '市辖区网点', '3', '371601', null, null);
INSERT INTO `transnode` VALUES ('37160200', '滨城区网点', '3', '371602', null, null);
INSERT INTO `transnode` VALUES ('37162100', '惠民县网点', '3', '371621', null, null);
INSERT INTO `transnode` VALUES ('37162200', '阳信县网点', '3', '371622', null, null);
INSERT INTO `transnode` VALUES ('37162300', '无棣县网点', '3', '371623', null, null);
INSERT INTO `transnode` VALUES ('37162400', '沾化县网点', '3', '371624', null, null);
INSERT INTO `transnode` VALUES ('37162500', '博兴县网点', '3', '371625', null, null);
INSERT INTO `transnode` VALUES ('37162600', '邹平县网点', '3', '371626', null, null);
INSERT INTO `transnode` VALUES ('37170000', '菏泽市分拣中心', '2', '371700', null, null);
INSERT INTO `transnode` VALUES ('37170100', '市辖区网点', '3', '371701', null, null);
INSERT INTO `transnode` VALUES ('37170200', '牡丹区网点', '3', '371702', null, null);
INSERT INTO `transnode` VALUES ('37172100', '曹县网点', '3', '371721', null, null);
INSERT INTO `transnode` VALUES ('37172200', '单县网点', '3', '371722', null, null);
INSERT INTO `transnode` VALUES ('37172300', '成武县网点', '3', '371723', null, null);
INSERT INTO `transnode` VALUES ('37172400', '巨野县网点', '3', '371724', null, null);
INSERT INTO `transnode` VALUES ('37172500', '郓城县网点', '3', '371725', null, null);
INSERT INTO `transnode` VALUES ('37172600', '鄄城县网点', '3', '371726', null, null);
INSERT INTO `transnode` VALUES ('37172700', '定陶县网点', '3', '371727', null, null);
INSERT INTO `transnode` VALUES ('37172800', '东明县网点', '3', '371728', null, null);
INSERT INTO `transnode` VALUES ('41000000', '河南省分拣中心', '1', '410000', '34.717786', '113.64279');
INSERT INTO `transnode` VALUES ('41010000', '郑州市分拣中心', '2', '410100', '34.754918', '113.661836');
INSERT INTO `transnode` VALUES ('41010100', '市辖区网点', '3', '410101', null, null);
INSERT INTO `transnode` VALUES ('41010200', '中原区网点', '3', '410102', '34.813561', '113.530751');
INSERT INTO `transnode` VALUES ('41010300', '二七区网点', '3', '410103', null, null);
INSERT INTO `transnode` VALUES ('41010400', '管城回族区网点', '3', '410104', null, null);
INSERT INTO `transnode` VALUES ('41010500', '金水区网点', '3', '410105', null, null);
INSERT INTO `transnode` VALUES ('41010600', '上街区网点', '3', '410106', null, null);
INSERT INTO `transnode` VALUES ('41010800', '惠济区网点', '3', '410108', null, null);
INSERT INTO `transnode` VALUES ('41012200', '中牟县网点', '3', '410122', null, null);
INSERT INTO `transnode` VALUES ('41018100', '巩义市网点', '3', '410181', null, null);
INSERT INTO `transnode` VALUES ('41018200', '荥阳市网点', '3', '410182', null, null);
INSERT INTO `transnode` VALUES ('41018300', '新密市网点', '3', '410183', null, null);
INSERT INTO `transnode` VALUES ('41018400', '新郑市网点', '3', '410184', null, null);
INSERT INTO `transnode` VALUES ('41018500', '登封市网点', '3', '410185', null, null);
INSERT INTO `transnode` VALUES ('41020000', '开封市分拣中心', '2', '410200', null, null);
INSERT INTO `transnode` VALUES ('41020100', '市辖区网点', '3', '410201', null, null);
INSERT INTO `transnode` VALUES ('41020200', '龙亭区网点', '3', '410202', null, null);
INSERT INTO `transnode` VALUES ('41020300', '顺河回族区网点', '3', '410203', null, null);
INSERT INTO `transnode` VALUES ('41020400', '鼓楼区网点', '3', '410204', null, null);
INSERT INTO `transnode` VALUES ('41020500', '禹王台区网点', '3', '410205', null, null);
INSERT INTO `transnode` VALUES ('41021100', '金明区网点', '3', '410211', null, null);
INSERT INTO `transnode` VALUES ('41022100', '杞县网点', '3', '410221', null, null);
INSERT INTO `transnode` VALUES ('41022200', '通许县网点', '3', '410222', null, null);
INSERT INTO `transnode` VALUES ('41022300', '尉氏县网点', '3', '410223', null, null);
INSERT INTO `transnode` VALUES ('41022400', '开封县网点', '3', '410224', null, null);
INSERT INTO `transnode` VALUES ('41022500', '兰考县网点', '3', '410225', null, null);
INSERT INTO `transnode` VALUES ('41030000', '洛阳市分拣中心', '2', '410300', null, null);
INSERT INTO `transnode` VALUES ('41030100', '市辖区网点', '3', '410301', null, null);
INSERT INTO `transnode` VALUES ('41030200', '老城区网点', '3', '410302', null, null);
INSERT INTO `transnode` VALUES ('41030300', '西工区网点', '3', '410303', null, null);
INSERT INTO `transnode` VALUES ('41030400', '瀍河回族区网点', '3', '410304', null, null);
INSERT INTO `transnode` VALUES ('41030500', '涧西区网点', '3', '410305', null, null);
INSERT INTO `transnode` VALUES ('41030600', '吉利区网点', '3', '410306', null, null);
INSERT INTO `transnode` VALUES ('41031100', '洛龙区网点', '3', '410311', null, null);
INSERT INTO `transnode` VALUES ('41032200', '孟津县网点', '3', '410322', null, null);
INSERT INTO `transnode` VALUES ('41032300', '新安县网点', '3', '410323', null, null);
INSERT INTO `transnode` VALUES ('41032400', '栾川县网点', '3', '410324', null, null);
INSERT INTO `transnode` VALUES ('41032500', '嵩县网点', '3', '410325', null, null);
INSERT INTO `transnode` VALUES ('41032600', '汝阳县网点', '3', '410326', null, null);
INSERT INTO `transnode` VALUES ('41032700', '宜阳县网点', '3', '410327', null, null);
INSERT INTO `transnode` VALUES ('41032800', '洛宁县网点', '3', '410328', null, null);
INSERT INTO `transnode` VALUES ('41032900', '伊川县网点', '3', '410329', null, null);
INSERT INTO `transnode` VALUES ('41038100', '偃师市网点', '3', '410381', null, null);
INSERT INTO `transnode` VALUES ('41040000', '平顶山市分拣中心', '2', '410400', null, null);
INSERT INTO `transnode` VALUES ('41040100', '市辖区网点', '3', '410401', null, null);
INSERT INTO `transnode` VALUES ('41040200', '新华区网点', '3', '410402', null, null);
INSERT INTO `transnode` VALUES ('41040300', '卫东区网点', '3', '410403', null, null);
INSERT INTO `transnode` VALUES ('41040400', '石龙区网点', '3', '410404', null, null);
INSERT INTO `transnode` VALUES ('41041100', '湛河区网点', '3', '410411', null, null);
INSERT INTO `transnode` VALUES ('41042100', '宝丰县网点', '3', '410421', null, null);
INSERT INTO `transnode` VALUES ('41042200', '叶县网点', '3', '410422', null, null);
INSERT INTO `transnode` VALUES ('41042300', '鲁山县网点', '3', '410423', null, null);
INSERT INTO `transnode` VALUES ('41042500', '郏县网点', '3', '410425', null, null);
INSERT INTO `transnode` VALUES ('41048100', '舞钢市网点', '3', '410481', null, null);
INSERT INTO `transnode` VALUES ('41048200', '汝州市网点', '3', '410482', null, null);
INSERT INTO `transnode` VALUES ('41050000', '安阳市分拣中心', '2', '410500', null, null);
INSERT INTO `transnode` VALUES ('41050100', '市辖区网点', '3', '410501', null, null);
INSERT INTO `transnode` VALUES ('41050200', '文峰区网点', '3', '410502', null, null);
INSERT INTO `transnode` VALUES ('41050300', '北关区网点', '3', '410503', null, null);
INSERT INTO `transnode` VALUES ('41050500', '殷都区网点', '3', '410505', null, null);
INSERT INTO `transnode` VALUES ('41050600', '龙安区网点', '3', '410506', null, null);
INSERT INTO `transnode` VALUES ('41052200', '安阳县网点', '3', '410522', null, null);
INSERT INTO `transnode` VALUES ('41052300', '汤阴县网点', '3', '410523', null, null);
INSERT INTO `transnode` VALUES ('41052600', '滑县网点', '3', '410526', null, null);
INSERT INTO `transnode` VALUES ('41052700', '内黄县网点', '3', '410527', null, null);
INSERT INTO `transnode` VALUES ('41058100', '林州市网点', '3', '410581', null, null);
INSERT INTO `transnode` VALUES ('41060000', '鹤壁市分拣中心', '2', '410600', null, null);
INSERT INTO `transnode` VALUES ('41060100', '市辖区网点', '3', '410601', null, null);
INSERT INTO `transnode` VALUES ('41060200', '鹤山区网点', '3', '410602', null, null);
INSERT INTO `transnode` VALUES ('41060300', '山城区网点', '3', '410603', null, null);
INSERT INTO `transnode` VALUES ('41061100', '淇滨区网点', '3', '410611', null, null);
INSERT INTO `transnode` VALUES ('41062100', '浚县网点', '3', '410621', null, null);
INSERT INTO `transnode` VALUES ('41062200', '淇县网点', '3', '410622', null, null);
INSERT INTO `transnode` VALUES ('41070000', '新乡市分拣中心', '2', '410700', null, null);
INSERT INTO `transnode` VALUES ('41070100', '市辖区网点', '3', '410701', null, null);
INSERT INTO `transnode` VALUES ('41070200', '红旗区网点', '3', '410702', null, null);
INSERT INTO `transnode` VALUES ('41070300', '卫滨区网点', '3', '410703', null, null);
INSERT INTO `transnode` VALUES ('41070400', '凤泉区网点', '3', '410704', null, null);
INSERT INTO `transnode` VALUES ('41071100', '牧野区网点', '3', '410711', null, null);
INSERT INTO `transnode` VALUES ('41072100', '新乡县网点', '3', '410721', null, null);
INSERT INTO `transnode` VALUES ('41072400', '获嘉县网点', '3', '410724', null, null);
INSERT INTO `transnode` VALUES ('41072500', '原阳县网点', '3', '410725', null, null);
INSERT INTO `transnode` VALUES ('41072600', '延津县网点', '3', '410726', null, null);
INSERT INTO `transnode` VALUES ('41072700', '封丘县网点', '3', '410727', null, null);
INSERT INTO `transnode` VALUES ('41072800', '长垣县网点', '3', '410728', null, null);
INSERT INTO `transnode` VALUES ('41078100', '卫辉市网点', '3', '410781', null, null);
INSERT INTO `transnode` VALUES ('41078200', '辉县市网点', '3', '410782', null, null);
INSERT INTO `transnode` VALUES ('41080000', '焦作市分拣中心', '2', '410800', null, null);
INSERT INTO `transnode` VALUES ('41080100', '市辖区网点', '3', '410801', null, null);
INSERT INTO `transnode` VALUES ('41080200', '解放区网点', '3', '410802', null, null);
INSERT INTO `transnode` VALUES ('41080300', '中站区网点', '3', '410803', null, null);
INSERT INTO `transnode` VALUES ('41080400', '马村区网点', '3', '410804', null, null);
INSERT INTO `transnode` VALUES ('41081100', '山阳区网点', '3', '410811', null, null);
INSERT INTO `transnode` VALUES ('41082100', '修武县网点', '3', '410821', null, null);
INSERT INTO `transnode` VALUES ('41082200', '博爱县网点', '3', '410822', null, null);
INSERT INTO `transnode` VALUES ('41082300', '武陟县网点', '3', '410823', null, null);
INSERT INTO `transnode` VALUES ('41082500', '温县网点', '3', '410825', null, null);
INSERT INTO `transnode` VALUES ('41088200', '沁阳市网点', '3', '410882', null, null);
INSERT INTO `transnode` VALUES ('41088300', '孟州市网点', '3', '410883', null, null);
INSERT INTO `transnode` VALUES ('41090000', '濮阳市分拣中心', '2', '410900', null, null);
INSERT INTO `transnode` VALUES ('41090100', '市辖区网点', '3', '410901', null, null);
INSERT INTO `transnode` VALUES ('41090200', '华龙区网点', '3', '410902', null, null);
INSERT INTO `transnode` VALUES ('41092200', '清丰县网点', '3', '410922', null, null);
INSERT INTO `transnode` VALUES ('41092300', '南乐县网点', '3', '410923', null, null);
INSERT INTO `transnode` VALUES ('41092600', '范县网点', '3', '410926', null, null);
INSERT INTO `transnode` VALUES ('41092700', '台前县网点', '3', '410927', null, null);
INSERT INTO `transnode` VALUES ('41092800', '濮阳县网点', '3', '410928', null, null);
INSERT INTO `transnode` VALUES ('41100000', '许昌市分拣中心', '2', '411000', null, null);
INSERT INTO `transnode` VALUES ('41100100', '市辖区网点', '3', '411001', null, null);
INSERT INTO `transnode` VALUES ('41100200', '魏都区网点', '3', '411002', null, null);
INSERT INTO `transnode` VALUES ('41102300', '许昌县网点', '3', '411023', null, null);
INSERT INTO `transnode` VALUES ('41102400', '鄢陵县网点', '3', '411024', null, null);
INSERT INTO `transnode` VALUES ('41102500', '襄城县网点', '3', '411025', null, null);
INSERT INTO `transnode` VALUES ('41108100', '禹州市网点', '3', '411081', null, null);
INSERT INTO `transnode` VALUES ('41108200', '长葛市网点', '3', '411082', null, null);
INSERT INTO `transnode` VALUES ('41110000', '漯河市分拣中心', '2', '411100', null, null);
INSERT INTO `transnode` VALUES ('41110100', '市辖区网点', '3', '411101', null, null);
INSERT INTO `transnode` VALUES ('41110200', '源汇区网点', '3', '411102', null, null);
INSERT INTO `transnode` VALUES ('41110300', '郾城区网点', '3', '411103', null, null);
INSERT INTO `transnode` VALUES ('41110400', '召陵区网点', '3', '411104', null, null);
INSERT INTO `transnode` VALUES ('41112100', '舞阳县网点', '3', '411121', null, null);
INSERT INTO `transnode` VALUES ('41112200', '临颍县网点', '3', '411122', null, null);
INSERT INTO `transnode` VALUES ('41120000', '三门峡市分拣中心', '2', '411200', null, null);
INSERT INTO `transnode` VALUES ('41120100', '市辖区网点', '3', '411201', null, null);
INSERT INTO `transnode` VALUES ('41120200', '湖滨区网点', '3', '411202', null, null);
INSERT INTO `transnode` VALUES ('41122100', '渑池县网点', '3', '411221', null, null);
INSERT INTO `transnode` VALUES ('41122200', '陕县网点', '3', '411222', null, null);
INSERT INTO `transnode` VALUES ('41122400', '卢氏县网点', '3', '411224', null, null);
INSERT INTO `transnode` VALUES ('41128100', '义马市网点', '3', '411281', null, null);
INSERT INTO `transnode` VALUES ('41128200', '灵宝市网点', '3', '411282', null, null);
INSERT INTO `transnode` VALUES ('41130000', '南阳市分拣中心', '2', '411300', null, null);
INSERT INTO `transnode` VALUES ('41130100', '市辖区网点', '3', '411301', null, null);
INSERT INTO `transnode` VALUES ('41130200', '宛城区网点', '3', '411302', null, null);
INSERT INTO `transnode` VALUES ('41130300', '卧龙区网点', '3', '411303', null, null);
INSERT INTO `transnode` VALUES ('41132100', '南召县网点', '3', '411321', null, null);
INSERT INTO `transnode` VALUES ('41132200', '方城县网点', '3', '411322', null, null);
INSERT INTO `transnode` VALUES ('41132300', '西峡县网点', '3', '411323', null, null);
INSERT INTO `transnode` VALUES ('41132400', '镇平县网点', '3', '411324', null, null);
INSERT INTO `transnode` VALUES ('41132500', '内乡县网点', '3', '411325', null, null);
INSERT INTO `transnode` VALUES ('41132600', '淅川县网点', '3', '411326', null, null);
INSERT INTO `transnode` VALUES ('41132700', '社旗县网点', '3', '411327', null, null);
INSERT INTO `transnode` VALUES ('41132800', '唐河县网点', '3', '411328', null, null);
INSERT INTO `transnode` VALUES ('41132900', '新野县网点', '3', '411329', null, null);
INSERT INTO `transnode` VALUES ('41133000', '桐柏县网点', '3', '411330', null, null);
INSERT INTO `transnode` VALUES ('41138100', '邓州市网点', '3', '411381', null, null);
INSERT INTO `transnode` VALUES ('41140000', '商丘市分拣中心', '2', '411400', null, null);
INSERT INTO `transnode` VALUES ('41140100', '市辖区网点', '3', '411401', null, null);
INSERT INTO `transnode` VALUES ('41140200', '梁园区网点', '3', '411402', null, null);
INSERT INTO `transnode` VALUES ('41140300', '睢阳区网点', '3', '411403', null, null);
INSERT INTO `transnode` VALUES ('41142100', '民权县网点', '3', '411421', null, null);
INSERT INTO `transnode` VALUES ('41142200', '睢县网点', '3', '411422', null, null);
INSERT INTO `transnode` VALUES ('41142300', '宁陵县网点', '3', '411423', null, null);
INSERT INTO `transnode` VALUES ('41142400', '柘城县网点', '3', '411424', null, null);
INSERT INTO `transnode` VALUES ('41142500', '虞城县网点', '3', '411425', null, null);
INSERT INTO `transnode` VALUES ('41142600', '夏邑县网点', '3', '411426', null, null);
INSERT INTO `transnode` VALUES ('41148100', '永城市网点', '3', '411481', null, null);
INSERT INTO `transnode` VALUES ('41150000', '信阳市分拣中心', '2', '411500', null, null);
INSERT INTO `transnode` VALUES ('41150100', '市辖区网点', '3', '411501', null, null);
INSERT INTO `transnode` VALUES ('41150200', '浉河区网点', '3', '411502', null, null);
INSERT INTO `transnode` VALUES ('41150300', '平桥区网点', '3', '411503', null, null);
INSERT INTO `transnode` VALUES ('41152100', '罗山县网点', '3', '411521', null, null);
INSERT INTO `transnode` VALUES ('41152200', '光山县网点', '3', '411522', null, null);
INSERT INTO `transnode` VALUES ('41152300', '新县网点', '3', '411523', null, null);
INSERT INTO `transnode` VALUES ('41152400', '商城县网点', '3', '411524', null, null);
INSERT INTO `transnode` VALUES ('41152500', '固始县网点', '3', '411525', null, null);
INSERT INTO `transnode` VALUES ('41152600', '潢川县网点', '3', '411526', null, null);
INSERT INTO `transnode` VALUES ('41152700', '淮滨县网点', '3', '411527', null, null);
INSERT INTO `transnode` VALUES ('41152800', '息县网点', '3', '411528', null, null);
INSERT INTO `transnode` VALUES ('41160000', '周口市分拣中心', '2', '411600', null, null);
INSERT INTO `transnode` VALUES ('41160100', '市辖区网点', '3', '411601', null, null);
INSERT INTO `transnode` VALUES ('41160200', '川汇区网点', '3', '411602', null, null);
INSERT INTO `transnode` VALUES ('41162100', '扶沟县网点', '3', '411621', null, null);
INSERT INTO `transnode` VALUES ('41162200', '西华县网点', '3', '411622', null, null);
INSERT INTO `transnode` VALUES ('41162300', '商水县网点', '3', '411623', null, null);
INSERT INTO `transnode` VALUES ('41162400', '沈丘县网点', '3', '411624', null, null);
INSERT INTO `transnode` VALUES ('41162500', '郸城县网点', '3', '411625', null, null);
INSERT INTO `transnode` VALUES ('41162600', '淮阳县网点', '3', '411626', null, null);
INSERT INTO `transnode` VALUES ('41162700', '太康县网点', '3', '411627', null, null);
INSERT INTO `transnode` VALUES ('41162800', '鹿邑县网点', '3', '411628', null, null);
INSERT INTO `transnode` VALUES ('41168100', '项城市网点', '3', '411681', null, null);
INSERT INTO `transnode` VALUES ('41170000', '驻马店市分拣中心', '2', '411700', null, null);
INSERT INTO `transnode` VALUES ('41170100', '市辖区网点', '3', '411701', null, null);
INSERT INTO `transnode` VALUES ('41170200', '驿城区网点', '3', '411702', null, null);
INSERT INTO `transnode` VALUES ('41172100', '西平县网点', '3', '411721', null, null);
INSERT INTO `transnode` VALUES ('41172200', '上蔡县网点', '3', '411722', null, null);
INSERT INTO `transnode` VALUES ('41172300', '平舆县网点', '3', '411723', null, null);
INSERT INTO `transnode` VALUES ('41172400', '正阳县网点', '3', '411724', null, null);
INSERT INTO `transnode` VALUES ('41172500', '确山县网点', '3', '411725', null, null);
INSERT INTO `transnode` VALUES ('41172600', '泌阳县网点', '3', '411726', null, null);
INSERT INTO `transnode` VALUES ('41172700', '汝南县网点', '3', '411727', null, null);
INSERT INTO `transnode` VALUES ('41172800', '遂平县网点', '3', '411728', null, null);
INSERT INTO `transnode` VALUES ('41172900', '新蔡县网点', '3', '411729', null, null);
INSERT INTO `transnode` VALUES ('41900000', '省直辖县级行政区划分拣中心', '2', '419000', null, null);
INSERT INTO `transnode` VALUES ('41900100', '济源市网点', '3', '419001', null, null);
INSERT INTO `transnode` VALUES ('42000000', '湖北省分拣中心', '1', '420000', null, null);
INSERT INTO `transnode` VALUES ('42010000', '武汉市分拣中心', '2', '420100', null, null);
INSERT INTO `transnode` VALUES ('42010100', '市辖区网点', '3', '420101', null, null);
INSERT INTO `transnode` VALUES ('42010200', '江岸区网点', '3', '420102', null, null);
INSERT INTO `transnode` VALUES ('42010300', '江汉区网点', '3', '420103', null, null);
INSERT INTO `transnode` VALUES ('42010400', '硚口区网点', '3', '420104', null, null);
INSERT INTO `transnode` VALUES ('42010500', '汉阳区网点', '3', '420105', null, null);
INSERT INTO `transnode` VALUES ('42010600', '武昌区网点', '3', '420106', null, null);
INSERT INTO `transnode` VALUES ('42010700', '青山区网点', '3', '420107', null, null);
INSERT INTO `transnode` VALUES ('42011100', '洪山区网点', '3', '420111', null, null);
INSERT INTO `transnode` VALUES ('42011200', '东西湖区网点', '3', '420112', null, null);
INSERT INTO `transnode` VALUES ('42011300', '汉南区网点', '3', '420113', null, null);
INSERT INTO `transnode` VALUES ('42011400', '蔡甸区网点', '3', '420114', null, null);
INSERT INTO `transnode` VALUES ('42011500', '江夏区网点', '3', '420115', null, null);
INSERT INTO `transnode` VALUES ('42011600', '黄陂区网点', '3', '420116', null, null);
INSERT INTO `transnode` VALUES ('42011700', '新洲区网点', '3', '420117', null, null);
INSERT INTO `transnode` VALUES ('42020000', '黄石市分拣中心', '2', '420200', null, null);
INSERT INTO `transnode` VALUES ('42020100', '市辖区网点', '3', '420201', null, null);
INSERT INTO `transnode` VALUES ('42020200', '黄石港区网点', '3', '420202', null, null);
INSERT INTO `transnode` VALUES ('42020300', '西塞山区网点', '3', '420203', null, null);
INSERT INTO `transnode` VALUES ('42020400', '下陆区网点', '3', '420204', null, null);
INSERT INTO `transnode` VALUES ('42020500', '铁山区网点', '3', '420205', null, null);
INSERT INTO `transnode` VALUES ('42022200', '阳新县网点', '3', '420222', null, null);
INSERT INTO `transnode` VALUES ('42028100', '大冶市网点', '3', '420281', null, null);
INSERT INTO `transnode` VALUES ('42030000', '十堰市分拣中心', '2', '420300', null, null);
INSERT INTO `transnode` VALUES ('42030100', '市辖区网点', '3', '420301', null, null);
INSERT INTO `transnode` VALUES ('42030200', '茅箭区网点', '3', '420302', null, null);
INSERT INTO `transnode` VALUES ('42030300', '张湾区网点', '3', '420303', null, null);
INSERT INTO `transnode` VALUES ('42032100', '郧县网点', '3', '420321', null, null);
INSERT INTO `transnode` VALUES ('42032200', '郧西县网点', '3', '420322', null, null);
INSERT INTO `transnode` VALUES ('42032300', '竹山县网点', '3', '420323', null, null);
INSERT INTO `transnode` VALUES ('42032400', '竹溪县网点', '3', '420324', null, null);
INSERT INTO `transnode` VALUES ('42032500', '房县网点', '3', '420325', null, null);
INSERT INTO `transnode` VALUES ('42038100', '丹江口市网点', '3', '420381', null, null);
INSERT INTO `transnode` VALUES ('42050000', '宜昌市分拣中心', '2', '420500', null, null);
INSERT INTO `transnode` VALUES ('42050100', '市辖区网点', '3', '420501', null, null);
INSERT INTO `transnode` VALUES ('42050200', '西陵区网点', '3', '420502', null, null);
INSERT INTO `transnode` VALUES ('42050300', '伍家岗区网点', '3', '420503', null, null);
INSERT INTO `transnode` VALUES ('42050400', '点军区网点', '3', '420504', null, null);
INSERT INTO `transnode` VALUES ('42050500', '猇亭区网点', '3', '420505', null, null);
INSERT INTO `transnode` VALUES ('42050600', '夷陵区网点', '3', '420506', null, null);
INSERT INTO `transnode` VALUES ('42052500', '远安县网点', '3', '420525', null, null);
INSERT INTO `transnode` VALUES ('42052600', '兴山县网点', '3', '420526', null, null);
INSERT INTO `transnode` VALUES ('42052700', '秭归县网点', '3', '420527', null, null);
INSERT INTO `transnode` VALUES ('42052800', '长阳土家族自治县网点', '3', '420528', null, null);
INSERT INTO `transnode` VALUES ('42052900', '五峰土家族自治县网点', '3', '420529', null, null);
INSERT INTO `transnode` VALUES ('42058100', '宜都市网点', '3', '420581', null, null);
INSERT INTO `transnode` VALUES ('42058200', '当阳市网点', '3', '420582', null, null);
INSERT INTO `transnode` VALUES ('42058300', '枝江市网点', '3', '420583', null, null);
INSERT INTO `transnode` VALUES ('42060000', '襄阳市分拣中心', '2', '420600', null, null);
INSERT INTO `transnode` VALUES ('42060100', '市辖区网点', '3', '420601', null, null);
INSERT INTO `transnode` VALUES ('42060200', '襄城区网点', '3', '420602', null, null);
INSERT INTO `transnode` VALUES ('42060600', '樊城区网点', '3', '420606', null, null);
INSERT INTO `transnode` VALUES ('42060700', '襄州区网点', '3', '420607', null, null);
INSERT INTO `transnode` VALUES ('42062400', '南漳县网点', '3', '420624', null, null);
INSERT INTO `transnode` VALUES ('42062500', '谷城县网点', '3', '420625', null, null);
INSERT INTO `transnode` VALUES ('42062600', '保康县网点', '3', '420626', null, null);
INSERT INTO `transnode` VALUES ('42068200', '老河口市网点', '3', '420682', null, null);
INSERT INTO `transnode` VALUES ('42068300', '枣阳市网点', '3', '420683', null, null);
INSERT INTO `transnode` VALUES ('42068400', '宜城市网点', '3', '420684', null, null);
INSERT INTO `transnode` VALUES ('42070000', '鄂州市分拣中心', '2', '420700', null, null);
INSERT INTO `transnode` VALUES ('42070100', '市辖区网点', '3', '420701', null, null);
INSERT INTO `transnode` VALUES ('42070200', '梁子湖区网点', '3', '420702', null, null);
INSERT INTO `transnode` VALUES ('42070300', '华容区网点', '3', '420703', null, null);
INSERT INTO `transnode` VALUES ('42070400', '鄂城区网点', '3', '420704', null, null);
INSERT INTO `transnode` VALUES ('42080000', '荆门市分拣中心', '2', '420800', null, null);
INSERT INTO `transnode` VALUES ('42080100', '市辖区网点', '3', '420801', null, null);
INSERT INTO `transnode` VALUES ('42080200', '东宝区网点', '3', '420802', null, null);
INSERT INTO `transnode` VALUES ('42080400', '掇刀区网点', '3', '420804', null, null);
INSERT INTO `transnode` VALUES ('42082100', '京山县网点', '3', '420821', null, null);
INSERT INTO `transnode` VALUES ('42082200', '沙洋县网点', '3', '420822', null, null);
INSERT INTO `transnode` VALUES ('42088100', '钟祥市网点', '3', '420881', null, null);
INSERT INTO `transnode` VALUES ('42090000', '孝感市分拣中心', '2', '420900', null, null);
INSERT INTO `transnode` VALUES ('42090100', '市辖区网点', '3', '420901', null, null);
INSERT INTO `transnode` VALUES ('42090200', '孝南区网点', '3', '420902', null, null);
INSERT INTO `transnode` VALUES ('42092100', '孝昌县网点', '3', '420921', null, null);
INSERT INTO `transnode` VALUES ('42092200', '大悟县网点', '3', '420922', null, null);
INSERT INTO `transnode` VALUES ('42092300', '云梦县网点', '3', '420923', null, null);
INSERT INTO `transnode` VALUES ('42098100', '应城市网点', '3', '420981', null, null);
INSERT INTO `transnode` VALUES ('42098200', '安陆市网点', '3', '420982', null, null);
INSERT INTO `transnode` VALUES ('42098400', '汉川市网点', '3', '420984', null, null);
INSERT INTO `transnode` VALUES ('42100000', '荆州市分拣中心', '2', '421000', null, null);
INSERT INTO `transnode` VALUES ('42100100', '市辖区网点', '3', '421001', null, null);
INSERT INTO `transnode` VALUES ('42100200', '沙市区网点', '3', '421002', null, null);
INSERT INTO `transnode` VALUES ('42100300', '荆州区网点', '3', '421003', null, null);
INSERT INTO `transnode` VALUES ('42102200', '公安县网点', '3', '421022', null, null);
INSERT INTO `transnode` VALUES ('42102300', '监利县网点', '3', '421023', null, null);
INSERT INTO `transnode` VALUES ('42102400', '江陵县网点', '3', '421024', null, null);
INSERT INTO `transnode` VALUES ('42108100', '石首市网点', '3', '421081', null, null);
INSERT INTO `transnode` VALUES ('42108300', '洪湖市网点', '3', '421083', null, null);
INSERT INTO `transnode` VALUES ('42108700', '松滋市网点', '3', '421087', null, null);
INSERT INTO `transnode` VALUES ('42110000', '黄冈市分拣中心', '2', '421100', null, null);
INSERT INTO `transnode` VALUES ('42110100', '市辖区网点', '3', '421101', null, null);
INSERT INTO `transnode` VALUES ('42110200', '黄州区网点', '3', '421102', null, null);
INSERT INTO `transnode` VALUES ('42112100', '团风县网点', '3', '421121', null, null);
INSERT INTO `transnode` VALUES ('42112200', '红安县网点', '3', '421122', null, null);
INSERT INTO `transnode` VALUES ('42112300', '罗田县网点', '3', '421123', null, null);
INSERT INTO `transnode` VALUES ('42112400', '英山县网点', '3', '421124', null, null);
INSERT INTO `transnode` VALUES ('42112500', '浠水县网点', '3', '421125', null, null);
INSERT INTO `transnode` VALUES ('42112600', '蕲春县网点', '3', '421126', null, null);
INSERT INTO `transnode` VALUES ('42112700', '黄梅县网点', '3', '421127', null, null);
INSERT INTO `transnode` VALUES ('42118100', '麻城市网点', '3', '421181', null, null);
INSERT INTO `transnode` VALUES ('42118200', '武穴市网点', '3', '421182', null, null);
INSERT INTO `transnode` VALUES ('42120000', '咸宁市分拣中心', '2', '421200', null, null);
INSERT INTO `transnode` VALUES ('42120100', '市辖区网点', '3', '421201', null, null);
INSERT INTO `transnode` VALUES ('42120200', '咸安区网点', '3', '421202', null, null);
INSERT INTO `transnode` VALUES ('42122100', '嘉鱼县网点', '3', '421221', null, null);
INSERT INTO `transnode` VALUES ('42122200', '通城县网点', '3', '421222', null, null);
INSERT INTO `transnode` VALUES ('42122300', '崇阳县网点', '3', '421223', null, null);
INSERT INTO `transnode` VALUES ('42122400', '通山县网点', '3', '421224', null, null);
INSERT INTO `transnode` VALUES ('42128100', '赤壁市网点', '3', '421281', null, null);
INSERT INTO `transnode` VALUES ('42130000', '随州市分拣中心', '2', '421300', null, null);
INSERT INTO `transnode` VALUES ('42130100', '市辖区网点', '3', '421301', null, null);
INSERT INTO `transnode` VALUES ('42130300', '曾都区网点', '3', '421303', null, null);
INSERT INTO `transnode` VALUES ('42132100', '随县网点', '3', '421321', null, null);
INSERT INTO `transnode` VALUES ('42138100', '广水市网点', '3', '421381', null, null);
INSERT INTO `transnode` VALUES ('42280000', '恩施土家族苗族自治州分拣中心', '2', '422800', null, null);
INSERT INTO `transnode` VALUES ('42280100', '恩施市网点', '3', '422801', null, null);
INSERT INTO `transnode` VALUES ('42280200', '利川市网点', '3', '422802', null, null);
INSERT INTO `transnode` VALUES ('42282200', '建始县网点', '3', '422822', null, null);
INSERT INTO `transnode` VALUES ('42282300', '巴东县网点', '3', '422823', null, null);
INSERT INTO `transnode` VALUES ('42282500', '宣恩县网点', '3', '422825', null, null);
INSERT INTO `transnode` VALUES ('42282600', '咸丰县网点', '3', '422826', null, null);
INSERT INTO `transnode` VALUES ('42282700', '来凤县网点', '3', '422827', null, null);
INSERT INTO `transnode` VALUES ('42282800', '鹤峰县网点', '3', '422828', null, null);
INSERT INTO `transnode` VALUES ('42900000', '省直辖县级行政区划分拣中心', '2', '429000', null, null);
INSERT INTO `transnode` VALUES ('42900400', '仙桃市网点', '3', '429004', null, null);
INSERT INTO `transnode` VALUES ('42900500', '潜江市网点', '3', '429005', null, null);
INSERT INTO `transnode` VALUES ('42900600', '天门市网点', '3', '429006', null, null);
INSERT INTO `transnode` VALUES ('42902100', '神农架林区网点', '3', '429021', null, null);
INSERT INTO `transnode` VALUES ('43000000', '湖南省分拣中心', '1', '430000', null, null);
INSERT INTO `transnode` VALUES ('43010000', '长沙市分拣中心', '2', '430100', null, null);
INSERT INTO `transnode` VALUES ('43010100', '市辖区网点', '3', '430101', null, null);
INSERT INTO `transnode` VALUES ('43010200', '芙蓉区网点', '3', '430102', null, null);
INSERT INTO `transnode` VALUES ('43010300', '天心区网点', '3', '430103', null, null);
INSERT INTO `transnode` VALUES ('43010400', '岳麓区网点', '3', '430104', null, null);
INSERT INTO `transnode` VALUES ('43010500', '开福区网点', '3', '430105', null, null);
INSERT INTO `transnode` VALUES ('43011100', '雨花区网点', '3', '430111', null, null);
INSERT INTO `transnode` VALUES ('43011200', '望城区网点', '3', '430112', null, null);
INSERT INTO `transnode` VALUES ('43012100', '长沙县网点', '3', '430121', null, null);
INSERT INTO `transnode` VALUES ('43012400', '宁乡县网点', '3', '430124', null, null);
INSERT INTO `transnode` VALUES ('43018100', '浏阳市网点', '3', '430181', null, null);
INSERT INTO `transnode` VALUES ('43020000', '株洲市分拣中心', '2', '430200', null, null);
INSERT INTO `transnode` VALUES ('43020100', '市辖区网点', '3', '430201', null, null);
INSERT INTO `transnode` VALUES ('43020200', '荷塘区网点', '3', '430202', null, null);
INSERT INTO `transnode` VALUES ('43020300', '芦淞区网点', '3', '430203', null, null);
INSERT INTO `transnode` VALUES ('43020400', '石峰区网点', '3', '430204', null, null);
INSERT INTO `transnode` VALUES ('43021100', '天元区网点', '3', '430211', null, null);
INSERT INTO `transnode` VALUES ('43022100', '株洲县网点', '3', '430221', null, null);
INSERT INTO `transnode` VALUES ('43022300', '攸县网点', '3', '430223', null, null);
INSERT INTO `transnode` VALUES ('43022400', '茶陵县网点', '3', '430224', null, null);
INSERT INTO `transnode` VALUES ('43022500', '炎陵县网点', '3', '430225', null, null);
INSERT INTO `transnode` VALUES ('43028100', '醴陵市网点', '3', '430281', null, null);
INSERT INTO `transnode` VALUES ('43030000', '湘潭市分拣中心', '2', '430300', null, null);
INSERT INTO `transnode` VALUES ('43030100', '市辖区网点', '3', '430301', null, null);
INSERT INTO `transnode` VALUES ('43030200', '雨湖区网点', '3', '430302', null, null);
INSERT INTO `transnode` VALUES ('43030400', '岳塘区网点', '3', '430304', null, null);
INSERT INTO `transnode` VALUES ('43032100', '湘潭县网点', '3', '430321', null, null);
INSERT INTO `transnode` VALUES ('43038100', '湘乡市网点', '3', '430381', null, null);
INSERT INTO `transnode` VALUES ('43038200', '韶山市网点', '3', '430382', null, null);
INSERT INTO `transnode` VALUES ('43040000', '衡阳市分拣中心', '2', '430400', null, null);
INSERT INTO `transnode` VALUES ('43040100', '市辖区网点', '3', '430401', null, null);
INSERT INTO `transnode` VALUES ('43040500', '珠晖区网点', '3', '430405', null, null);
INSERT INTO `transnode` VALUES ('43040600', '雁峰区网点', '3', '430406', null, null);
INSERT INTO `transnode` VALUES ('43040700', '石鼓区网点', '3', '430407', null, null);
INSERT INTO `transnode` VALUES ('43040800', '蒸湘区网点', '3', '430408', null, null);
INSERT INTO `transnode` VALUES ('43041200', '南岳区网点', '3', '430412', null, null);
INSERT INTO `transnode` VALUES ('43042100', '衡阳县网点', '3', '430421', null, null);
INSERT INTO `transnode` VALUES ('43042200', '衡南县网点', '3', '430422', null, null);
INSERT INTO `transnode` VALUES ('43042300', '衡山县网点', '3', '430423', null, null);
INSERT INTO `transnode` VALUES ('43042400', '衡东县网点', '3', '430424', null, null);
INSERT INTO `transnode` VALUES ('43042600', '祁东县网点', '3', '430426', null, null);
INSERT INTO `transnode` VALUES ('43048100', '耒阳市网点', '3', '430481', null, null);
INSERT INTO `transnode` VALUES ('43048200', '常宁市网点', '3', '430482', null, null);
INSERT INTO `transnode` VALUES ('43050000', '邵阳市分拣中心', '2', '430500', null, null);
INSERT INTO `transnode` VALUES ('43050100', '市辖区网点', '3', '430501', null, null);
INSERT INTO `transnode` VALUES ('43050200', '双清区网点', '3', '430502', null, null);
INSERT INTO `transnode` VALUES ('43050300', '大祥区网点', '3', '430503', null, null);
INSERT INTO `transnode` VALUES ('43051100', '北塔区网点', '3', '430511', null, null);
INSERT INTO `transnode` VALUES ('43052100', '邵东县网点', '3', '430521', null, null);
INSERT INTO `transnode` VALUES ('43052200', '新邵县网点', '3', '430522', null, null);
INSERT INTO `transnode` VALUES ('43052300', '邵阳县网点', '3', '430523', null, null);
INSERT INTO `transnode` VALUES ('43052400', '隆回县网点', '3', '430524', null, null);
INSERT INTO `transnode` VALUES ('43052500', '洞口县网点', '3', '430525', null, null);
INSERT INTO `transnode` VALUES ('43052700', '绥宁县网点', '3', '430527', null, null);
INSERT INTO `transnode` VALUES ('43052800', '新宁县网点', '3', '430528', null, null);
INSERT INTO `transnode` VALUES ('43052900', '城步苗族自治县网点', '3', '430529', null, null);
INSERT INTO `transnode` VALUES ('43058100', '武冈市网点', '3', '430581', null, null);
INSERT INTO `transnode` VALUES ('43060000', '岳阳市分拣中心', '2', '430600', null, null);
INSERT INTO `transnode` VALUES ('43060100', '市辖区网点', '3', '430601', null, null);
INSERT INTO `transnode` VALUES ('43060200', '岳阳楼区网点', '3', '430602', null, null);
INSERT INTO `transnode` VALUES ('43060300', '云溪区网点', '3', '430603', null, null);
INSERT INTO `transnode` VALUES ('43061100', '君山区网点', '3', '430611', null, null);
INSERT INTO `transnode` VALUES ('43062100', '岳阳县网点', '3', '430621', null, null);
INSERT INTO `transnode` VALUES ('43062300', '华容县网点', '3', '430623', null, null);
INSERT INTO `transnode` VALUES ('43062400', '湘阴县网点', '3', '430624', null, null);
INSERT INTO `transnode` VALUES ('43062600', '平江县网点', '3', '430626', null, null);
INSERT INTO `transnode` VALUES ('43068100', '汨罗市网点', '3', '430681', null, null);
INSERT INTO `transnode` VALUES ('43068200', '临湘市网点', '3', '430682', null, null);
INSERT INTO `transnode` VALUES ('43070000', '常德市分拣中心', '2', '430700', null, null);
INSERT INTO `transnode` VALUES ('43070100', '市辖区网点', '3', '430701', null, null);
INSERT INTO `transnode` VALUES ('43070200', '武陵区网点', '3', '430702', null, null);
INSERT INTO `transnode` VALUES ('43070300', '鼎城区网点', '3', '430703', null, null);
INSERT INTO `transnode` VALUES ('43072100', '安乡县网点', '3', '430721', null, null);
INSERT INTO `transnode` VALUES ('43072200', '汉寿县网点', '3', '430722', null, null);
INSERT INTO `transnode` VALUES ('43072300', '澧县网点', '3', '430723', null, null);
INSERT INTO `transnode` VALUES ('43072400', '临澧县网点', '3', '430724', null, null);
INSERT INTO `transnode` VALUES ('43072500', '桃源县网点', '3', '430725', null, null);
INSERT INTO `transnode` VALUES ('43072600', '石门县网点', '3', '430726', null, null);
INSERT INTO `transnode` VALUES ('43078100', '津市市网点', '3', '430781', null, null);
INSERT INTO `transnode` VALUES ('43080000', '张家界市分拣中心', '2', '430800', null, null);
INSERT INTO `transnode` VALUES ('43080100', '市辖区网点', '3', '430801', null, null);
INSERT INTO `transnode` VALUES ('43080200', '永定区网点', '3', '430802', null, null);
INSERT INTO `transnode` VALUES ('43081100', '武陵源区网点', '3', '430811', null, null);
INSERT INTO `transnode` VALUES ('43082100', '慈利县网点', '3', '430821', null, null);
INSERT INTO `transnode` VALUES ('43082200', '桑植县网点', '3', '430822', null, null);
INSERT INTO `transnode` VALUES ('43090000', '益阳市分拣中心', '2', '430900', null, null);
INSERT INTO `transnode` VALUES ('43090100', '市辖区网点', '3', '430901', null, null);
INSERT INTO `transnode` VALUES ('43090200', '资阳区网点', '3', '430902', null, null);
INSERT INTO `transnode` VALUES ('43090300', '赫山区网点', '3', '430903', null, null);
INSERT INTO `transnode` VALUES ('43092100', '南县网点', '3', '430921', null, null);
INSERT INTO `transnode` VALUES ('43092200', '桃江县网点', '3', '430922', null, null);
INSERT INTO `transnode` VALUES ('43092300', '安化县网点', '3', '430923', null, null);
INSERT INTO `transnode` VALUES ('43098100', '沅江市网点', '3', '430981', null, null);
INSERT INTO `transnode` VALUES ('43100000', '郴州市分拣中心', '2', '431000', null, null);
INSERT INTO `transnode` VALUES ('43100100', '市辖区网点', '3', '431001', null, null);
INSERT INTO `transnode` VALUES ('43100200', '北湖区网点', '3', '431002', null, null);
INSERT INTO `transnode` VALUES ('43100300', '苏仙区网点', '3', '431003', null, null);
INSERT INTO `transnode` VALUES ('43102100', '桂阳县网点', '3', '431021', null, null);
INSERT INTO `transnode` VALUES ('43102200', '宜章县网点', '3', '431022', null, null);
INSERT INTO `transnode` VALUES ('43102300', '永兴县网点', '3', '431023', null, null);
INSERT INTO `transnode` VALUES ('43102400', '嘉禾县网点', '3', '431024', null, null);
INSERT INTO `transnode` VALUES ('43102500', '临武县网点', '3', '431025', null, null);
INSERT INTO `transnode` VALUES ('43102600', '汝城县网点', '3', '431026', null, null);
INSERT INTO `transnode` VALUES ('43102700', '桂东县网点', '3', '431027', null, null);
INSERT INTO `transnode` VALUES ('43102800', '安仁县网点', '3', '431028', null, null);
INSERT INTO `transnode` VALUES ('43108100', '资兴市网点', '3', '431081', null, null);
INSERT INTO `transnode` VALUES ('43110000', '永州市分拣中心', '2', '431100', null, null);
INSERT INTO `transnode` VALUES ('43110100', '市辖区网点', '3', '431101', null, null);
INSERT INTO `transnode` VALUES ('43110200', '零陵区网点', '3', '431102', null, null);
INSERT INTO `transnode` VALUES ('43110300', '冷水滩区网点', '3', '431103', null, null);
INSERT INTO `transnode` VALUES ('43112100', '祁阳县网点', '3', '431121', null, null);
INSERT INTO `transnode` VALUES ('43112200', '东安县网点', '3', '431122', null, null);
INSERT INTO `transnode` VALUES ('43112300', '双牌县网点', '3', '431123', null, null);
INSERT INTO `transnode` VALUES ('43112400', '道县网点', '3', '431124', null, null);
INSERT INTO `transnode` VALUES ('43112500', '江永县网点', '3', '431125', null, null);
INSERT INTO `transnode` VALUES ('43112600', '宁远县网点', '3', '431126', null, null);
INSERT INTO `transnode` VALUES ('43112700', '蓝山县网点', '3', '431127', null, null);
INSERT INTO `transnode` VALUES ('43112800', '新田县网点', '3', '431128', null, null);
INSERT INTO `transnode` VALUES ('43112900', '江华瑶族自治县网点', '3', '431129', null, null);
INSERT INTO `transnode` VALUES ('43120000', '怀化市分拣中心', '2', '431200', null, null);
INSERT INTO `transnode` VALUES ('43120100', '市辖区网点', '3', '431201', null, null);
INSERT INTO `transnode` VALUES ('43120200', '鹤城区网点', '3', '431202', null, null);
INSERT INTO `transnode` VALUES ('43122100', '中方县网点', '3', '431221', null, null);
INSERT INTO `transnode` VALUES ('43122200', '沅陵县网点', '3', '431222', null, null);
INSERT INTO `transnode` VALUES ('43122300', '辰溪县网点', '3', '431223', null, null);
INSERT INTO `transnode` VALUES ('43122400', '溆浦县网点', '3', '431224', null, null);
INSERT INTO `transnode` VALUES ('43122500', '会同县网点', '3', '431225', null, null);
INSERT INTO `transnode` VALUES ('43122600', '麻阳苗族自治县网点', '3', '431226', null, null);
INSERT INTO `transnode` VALUES ('43122700', '新晃侗族自治县网点', '3', '431227', null, null);
INSERT INTO `transnode` VALUES ('43122800', '芷江侗族自治县网点', '3', '431228', null, null);
INSERT INTO `transnode` VALUES ('43122900', '靖州苗族侗族自治县网点', '3', '431229', null, null);
INSERT INTO `transnode` VALUES ('43123000', '通道侗族自治县网点', '3', '431230', null, null);
INSERT INTO `transnode` VALUES ('43128100', '洪江市网点', '3', '431281', null, null);
INSERT INTO `transnode` VALUES ('43130000', '娄底市分拣中心', '2', '431300', null, null);
INSERT INTO `transnode` VALUES ('43130100', '市辖区网点', '3', '431301', null, null);
INSERT INTO `transnode` VALUES ('43130200', '娄星区网点', '3', '431302', null, null);
INSERT INTO `transnode` VALUES ('43132100', '双峰县网点', '3', '431321', null, null);
INSERT INTO `transnode` VALUES ('43132200', '新化县网点', '3', '431322', null, null);
INSERT INTO `transnode` VALUES ('43138100', '冷水江市网点', '3', '431381', null, null);
INSERT INTO `transnode` VALUES ('43138200', '涟源市网点', '3', '431382', null, null);
INSERT INTO `transnode` VALUES ('43310000', '湘西土家族苗族自治州分拣中心', '2', '433100', null, null);
INSERT INTO `transnode` VALUES ('43310100', '吉首市网点', '3', '433101', null, null);
INSERT INTO `transnode` VALUES ('43312200', '泸溪县网点', '3', '433122', null, null);
INSERT INTO `transnode` VALUES ('43312300', '凤凰县网点', '3', '433123', null, null);
INSERT INTO `transnode` VALUES ('43312400', '花垣县网点', '3', '433124', null, null);
INSERT INTO `transnode` VALUES ('43312500', '保靖县网点', '3', '433125', null, null);
INSERT INTO `transnode` VALUES ('43312600', '古丈县网点', '3', '433126', null, null);
INSERT INTO `transnode` VALUES ('43312700', '永顺县网点', '3', '433127', null, null);
INSERT INTO `transnode` VALUES ('43313000', '龙山县网点', '3', '433130', null, null);
INSERT INTO `transnode` VALUES ('44000000', '广东省分拣中心', '1', '440000', null, null);
INSERT INTO `transnode` VALUES ('44010000', '广州市分拣中心', '2', '440100', null, null);
INSERT INTO `transnode` VALUES ('44010100', '市辖区网点', '3', '440101', null, null);
INSERT INTO `transnode` VALUES ('44010300', '荔湾区网点', '3', '440103', null, null);
INSERT INTO `transnode` VALUES ('44010400', '越秀区网点', '3', '440104', null, null);
INSERT INTO `transnode` VALUES ('44010500', '海珠区网点', '3', '440105', null, null);
INSERT INTO `transnode` VALUES ('44010600', '天河区网点', '3', '440106', null, null);
INSERT INTO `transnode` VALUES ('44011100', '白云区网点', '3', '440111', null, null);
INSERT INTO `transnode` VALUES ('44011200', '黄埔区网点', '3', '440112', null, null);
INSERT INTO `transnode` VALUES ('44011300', '番禺区网点', '3', '440113', null, null);
INSERT INTO `transnode` VALUES ('44011400', '花都区网点', '3', '440114', null, null);
INSERT INTO `transnode` VALUES ('44011500', '南沙区网点', '3', '440115', null, null);
INSERT INTO `transnode` VALUES ('44011600', '萝岗区网点', '3', '440116', null, null);
INSERT INTO `transnode` VALUES ('44018300', '增城市网点', '3', '440183', null, null);
INSERT INTO `transnode` VALUES ('44018400', '从化市网点', '3', '440184', null, null);
INSERT INTO `transnode` VALUES ('44020000', '韶关市分拣中心', '2', '440200', null, null);
INSERT INTO `transnode` VALUES ('44020100', '市辖区网点', '3', '440201', null, null);
INSERT INTO `transnode` VALUES ('44020300', '武江区网点', '3', '440203', null, null);
INSERT INTO `transnode` VALUES ('44020400', '浈江区网点', '3', '440204', null, null);
INSERT INTO `transnode` VALUES ('44020500', '曲江区网点', '3', '440205', null, null);
INSERT INTO `transnode` VALUES ('44022200', '始兴县网点', '3', '440222', null, null);
INSERT INTO `transnode` VALUES ('44022400', '仁化县网点', '3', '440224', null, null);
INSERT INTO `transnode` VALUES ('44022900', '翁源县网点', '3', '440229', null, null);
INSERT INTO `transnode` VALUES ('44023200', '乳源瑶族自治县网点', '3', '440232', null, null);
INSERT INTO `transnode` VALUES ('44023300', '新丰县网点', '3', '440233', null, null);
INSERT INTO `transnode` VALUES ('44028100', '乐昌市网点', '3', '440281', null, null);
INSERT INTO `transnode` VALUES ('44028200', '南雄市网点', '3', '440282', null, null);
INSERT INTO `transnode` VALUES ('44030000', '深圳市分拣中心', '2', '440300', null, null);
INSERT INTO `transnode` VALUES ('44030100', '市辖区网点', '3', '440301', null, null);
INSERT INTO `transnode` VALUES ('44030300', '罗湖区网点', '3', '440303', null, null);
INSERT INTO `transnode` VALUES ('44030400', '福田区网点', '3', '440304', null, null);
INSERT INTO `transnode` VALUES ('44030500', '南山区网点', '3', '440305', null, null);
INSERT INTO `transnode` VALUES ('44030600', '宝安区网点', '3', '440306', null, null);
INSERT INTO `transnode` VALUES ('44030700', '龙岗区网点', '3', '440307', null, null);
INSERT INTO `transnode` VALUES ('44030800', '盐田区网点', '3', '440308', null, null);
INSERT INTO `transnode` VALUES ('44040000', '珠海市分拣中心', '2', '440400', null, null);
INSERT INTO `transnode` VALUES ('44040100', '市辖区网点', '3', '440401', null, null);
INSERT INTO `transnode` VALUES ('44040200', '香洲区网点', '3', '440402', null, null);
INSERT INTO `transnode` VALUES ('44040300', '斗门区网点', '3', '440403', null, null);
INSERT INTO `transnode` VALUES ('44040400', '金湾区网点', '3', '440404', null, null);
INSERT INTO `transnode` VALUES ('44050000', '汕头市分拣中心', '2', '440500', null, null);
INSERT INTO `transnode` VALUES ('44050100', '市辖区网点', '3', '440501', null, null);
INSERT INTO `transnode` VALUES ('44050700', '龙湖区网点', '3', '440507', null, null);
INSERT INTO `transnode` VALUES ('44051100', '金平区网点', '3', '440511', null, null);
INSERT INTO `transnode` VALUES ('44051200', '濠江区网点', '3', '440512', null, null);
INSERT INTO `transnode` VALUES ('44051300', '潮阳区网点', '3', '440513', null, null);
INSERT INTO `transnode` VALUES ('44051400', '潮南区网点', '3', '440514', null, null);
INSERT INTO `transnode` VALUES ('44051500', '澄海区网点', '3', '440515', null, null);
INSERT INTO `transnode` VALUES ('44052300', '南澳县网点', '3', '440523', null, null);
INSERT INTO `transnode` VALUES ('44060000', '佛山市分拣中心', '2', '440600', null, null);
INSERT INTO `transnode` VALUES ('44060100', '市辖区网点', '3', '440601', null, null);
INSERT INTO `transnode` VALUES ('44060400', '禅城区网点', '3', '440604', null, null);
INSERT INTO `transnode` VALUES ('44060500', '南海区网点', '3', '440605', null, null);
INSERT INTO `transnode` VALUES ('44060600', '顺德区网点', '3', '440606', null, null);
INSERT INTO `transnode` VALUES ('44060700', '三水区网点', '3', '440607', null, null);
INSERT INTO `transnode` VALUES ('44060800', '高明区网点', '3', '440608', null, null);
INSERT INTO `transnode` VALUES ('44070000', '江门市分拣中心', '2', '440700', null, null);
INSERT INTO `transnode` VALUES ('44070100', '市辖区网点', '3', '440701', null, null);
INSERT INTO `transnode` VALUES ('44070300', '蓬江区网点', '3', '440703', null, null);
INSERT INTO `transnode` VALUES ('44070400', '江海区网点', '3', '440704', null, null);
INSERT INTO `transnode` VALUES ('44070500', '新会区网点', '3', '440705', null, null);
INSERT INTO `transnode` VALUES ('44078100', '台山市网点', '3', '440781', null, null);
INSERT INTO `transnode` VALUES ('44078300', '开平市网点', '3', '440783', null, null);
INSERT INTO `transnode` VALUES ('44078400', '鹤山市网点', '3', '440784', null, null);
INSERT INTO `transnode` VALUES ('44078500', '恩平市网点', '3', '440785', null, null);
INSERT INTO `transnode` VALUES ('44080000', '湛江市分拣中心', '2', '440800', null, null);
INSERT INTO `transnode` VALUES ('44080100', '市辖区网点', '3', '440801', null, null);
INSERT INTO `transnode` VALUES ('44080200', '赤坎区网点', '3', '440802', null, null);
INSERT INTO `transnode` VALUES ('44080300', '霞山区网点', '3', '440803', null, null);
INSERT INTO `transnode` VALUES ('44080400', '坡头区网点', '3', '440804', null, null);
INSERT INTO `transnode` VALUES ('44081100', '麻章区网点', '3', '440811', null, null);
INSERT INTO `transnode` VALUES ('44082300', '遂溪县网点', '3', '440823', null, null);
INSERT INTO `transnode` VALUES ('44082500', '徐闻县网点', '3', '440825', null, null);
INSERT INTO `transnode` VALUES ('44088100', '廉江市网点', '3', '440881', null, null);
INSERT INTO `transnode` VALUES ('44088200', '雷州市网点', '3', '440882', null, null);
INSERT INTO `transnode` VALUES ('44088300', '吴川市网点', '3', '440883', null, null);
INSERT INTO `transnode` VALUES ('44090000', '茂名市分拣中心', '2', '440900', null, null);
INSERT INTO `transnode` VALUES ('44090100', '市辖区网点', '3', '440901', null, null);
INSERT INTO `transnode` VALUES ('44090200', '茂南区网点', '3', '440902', null, null);
INSERT INTO `transnode` VALUES ('44090300', '茂港区网点', '3', '440903', null, null);
INSERT INTO `transnode` VALUES ('44092300', '电白县网点', '3', '440923', null, null);
INSERT INTO `transnode` VALUES ('44098100', '高州市网点', '3', '440981', null, null);
INSERT INTO `transnode` VALUES ('44098200', '化州市网点', '3', '440982', null, null);
INSERT INTO `transnode` VALUES ('44098300', '信宜市网点', '3', '440983', null, null);
INSERT INTO `transnode` VALUES ('44120000', '肇庆市分拣中心', '2', '441200', null, null);
INSERT INTO `transnode` VALUES ('44120100', '市辖区网点', '3', '441201', null, null);
INSERT INTO `transnode` VALUES ('44120200', '端州区网点', '3', '441202', null, null);
INSERT INTO `transnode` VALUES ('44120300', '鼎湖区网点', '3', '441203', null, null);
INSERT INTO `transnode` VALUES ('44122300', '广宁县网点', '3', '441223', null, null);
INSERT INTO `transnode` VALUES ('44122400', '怀集县网点', '3', '441224', null, null);
INSERT INTO `transnode` VALUES ('44122500', '封开县网点', '3', '441225', null, null);
INSERT INTO `transnode` VALUES ('44122600', '德庆县网点', '3', '441226', null, null);
INSERT INTO `transnode` VALUES ('44128300', '高要市网点', '3', '441283', null, null);
INSERT INTO `transnode` VALUES ('44128400', '四会市网点', '3', '441284', null, null);
INSERT INTO `transnode` VALUES ('44130000', '惠州市分拣中心', '2', '441300', null, null);
INSERT INTO `transnode` VALUES ('44130100', '市辖区网点', '3', '441301', null, null);
INSERT INTO `transnode` VALUES ('44130200', '惠城区网点', '3', '441302', null, null);
INSERT INTO `transnode` VALUES ('44130300', '惠阳区网点', '3', '441303', null, null);
INSERT INTO `transnode` VALUES ('44132200', '博罗县网点', '3', '441322', null, null);
INSERT INTO `transnode` VALUES ('44132300', '惠东县网点', '3', '441323', null, null);
INSERT INTO `transnode` VALUES ('44132400', '龙门县网点', '3', '441324', null, null);
INSERT INTO `transnode` VALUES ('44140000', '梅州市分拣中心', '2', '441400', null, null);
INSERT INTO `transnode` VALUES ('44140100', '市辖区网点', '3', '441401', null, null);
INSERT INTO `transnode` VALUES ('44140200', '梅江区网点', '3', '441402', null, null);
INSERT INTO `transnode` VALUES ('44142100', '梅县网点', '3', '441421', null, null);
INSERT INTO `transnode` VALUES ('44142200', '大埔县网点', '3', '441422', null, null);
INSERT INTO `transnode` VALUES ('44142300', '丰顺县网点', '3', '441423', null, null);
INSERT INTO `transnode` VALUES ('44142400', '五华县网点', '3', '441424', null, null);
INSERT INTO `transnode` VALUES ('44142600', '平远县网点', '3', '441426', null, null);
INSERT INTO `transnode` VALUES ('44142700', '蕉岭县网点', '3', '441427', null, null);
INSERT INTO `transnode` VALUES ('44148100', '兴宁市网点', '3', '441481', null, null);
INSERT INTO `transnode` VALUES ('44150000', '汕尾市分拣中心', '2', '441500', null, null);
INSERT INTO `transnode` VALUES ('44150100', '市辖区网点', '3', '441501', null, null);
INSERT INTO `transnode` VALUES ('44150200', '城区网点', '3', '441502', null, null);
INSERT INTO `transnode` VALUES ('44152100', '海丰县网点', '3', '441521', null, null);
INSERT INTO `transnode` VALUES ('44152300', '陆河县网点', '3', '441523', null, null);
INSERT INTO `transnode` VALUES ('44158100', '陆丰市网点', '3', '441581', null, null);
INSERT INTO `transnode` VALUES ('44160000', '河源市分拣中心', '2', '441600', null, null);
INSERT INTO `transnode` VALUES ('44160100', '市辖区网点', '3', '441601', null, null);
INSERT INTO `transnode` VALUES ('44160200', '源城区网点', '3', '441602', null, null);
INSERT INTO `transnode` VALUES ('44162100', '紫金县网点', '3', '441621', null, null);
INSERT INTO `transnode` VALUES ('44162200', '龙川县网点', '3', '441622', null, null);
INSERT INTO `transnode` VALUES ('44162300', '连平县网点', '3', '441623', null, null);
INSERT INTO `transnode` VALUES ('44162400', '和平县网点', '3', '441624', null, null);
INSERT INTO `transnode` VALUES ('44162500', '东源县网点', '3', '441625', null, null);
INSERT INTO `transnode` VALUES ('44170000', '阳江市分拣中心', '2', '441700', null, null);
INSERT INTO `transnode` VALUES ('44170100', '市辖区网点', '3', '441701', null, null);
INSERT INTO `transnode` VALUES ('44170200', '江城区网点', '3', '441702', null, null);
INSERT INTO `transnode` VALUES ('44172100', '阳西县网点', '3', '441721', null, null);
INSERT INTO `transnode` VALUES ('44172300', '阳东县网点', '3', '441723', null, null);
INSERT INTO `transnode` VALUES ('44178100', '阳春市网点', '3', '441781', null, null);
INSERT INTO `transnode` VALUES ('44180000', '清远市分拣中心', '2', '441800', null, null);
INSERT INTO `transnode` VALUES ('44180100', '市辖区网点', '3', '441801', null, null);
INSERT INTO `transnode` VALUES ('44180200', '清城区网点', '3', '441802', null, null);
INSERT INTO `transnode` VALUES ('44180300', '清新区网点', '3', '441803', null, null);
INSERT INTO `transnode` VALUES ('44182100', '佛冈县网点', '3', '441821', null, null);
INSERT INTO `transnode` VALUES ('44182300', '阳山县网点', '3', '441823', null, null);
INSERT INTO `transnode` VALUES ('44182500', '连山壮族瑶族自治县网点', '3', '441825', null, null);
INSERT INTO `transnode` VALUES ('44182600', '连南瑶族自治县网点', '3', '441826', null, null);
INSERT INTO `transnode` VALUES ('44188100', '英德市网点', '3', '441881', null, null);
INSERT INTO `transnode` VALUES ('44188200', '连州市网点', '3', '441882', null, null);
INSERT INTO `transnode` VALUES ('44190000', '东莞市分拣中心', '2', '441900', null, null);
INSERT INTO `transnode` VALUES ('44200000', '中山市分拣中心', '2', '442000', null, null);
INSERT INTO `transnode` VALUES ('44510000', '潮州市分拣中心', '2', '445100', null, null);
INSERT INTO `transnode` VALUES ('44510100', '市辖区网点', '3', '445101', null, null);
INSERT INTO `transnode` VALUES ('44510200', '湘桥区网点', '3', '445102', null, null);
INSERT INTO `transnode` VALUES ('44510300', '潮安区网点', '3', '445103', null, null);
INSERT INTO `transnode` VALUES ('44512200', '饶平县网点', '3', '445122', null, null);
INSERT INTO `transnode` VALUES ('44520000', '揭阳市分拣中心', '2', '445200', null, null);
INSERT INTO `transnode` VALUES ('44520100', '市辖区网点', '3', '445201', null, null);
INSERT INTO `transnode` VALUES ('44520200', '榕城区网点', '3', '445202', null, null);
INSERT INTO `transnode` VALUES ('44520300', '揭东区网点', '3', '445203', null, null);
INSERT INTO `transnode` VALUES ('44522200', '揭西县网点', '3', '445222', null, null);
INSERT INTO `transnode` VALUES ('44522400', '惠来县网点', '3', '445224', null, null);
INSERT INTO `transnode` VALUES ('44528100', '普宁市网点', '3', '445281', null, null);
INSERT INTO `transnode` VALUES ('44530000', '云浮市分拣中心', '2', '445300', null, null);
INSERT INTO `transnode` VALUES ('44530100', '市辖区网点', '3', '445301', null, null);
INSERT INTO `transnode` VALUES ('44530200', '云城区网点', '3', '445302', null, null);
INSERT INTO `transnode` VALUES ('44532100', '新兴县网点', '3', '445321', null, null);
INSERT INTO `transnode` VALUES ('44532200', '郁南县网点', '3', '445322', null, null);
INSERT INTO `transnode` VALUES ('44532300', '云安县网点', '3', '445323', null, null);
INSERT INTO `transnode` VALUES ('44538100', '罗定市网点', '3', '445381', null, null);
INSERT INTO `transnode` VALUES ('45000000', '广西壮族自治区分拣中心', '1', '450000', null, null);
INSERT INTO `transnode` VALUES ('45010000', '南宁市分拣中心', '2', '450100', null, null);
INSERT INTO `transnode` VALUES ('45010100', '市辖区网点', '3', '450101', null, null);
INSERT INTO `transnode` VALUES ('45010200', '兴宁区网点', '3', '450102', null, null);
INSERT INTO `transnode` VALUES ('45010300', '青秀区网点', '3', '450103', null, null);
INSERT INTO `transnode` VALUES ('45010500', '江南区网点', '3', '450105', null, null);
INSERT INTO `transnode` VALUES ('45010700', '西乡塘区网点', '3', '450107', null, null);
INSERT INTO `transnode` VALUES ('45010800', '良庆区网点', '3', '450108', null, null);
INSERT INTO `transnode` VALUES ('45010900', '邕宁区网点', '3', '450109', null, null);
INSERT INTO `transnode` VALUES ('45012200', '武鸣县网点', '3', '450122', null, null);
INSERT INTO `transnode` VALUES ('45012300', '隆安县网点', '3', '450123', null, null);
INSERT INTO `transnode` VALUES ('45012400', '马山县网点', '3', '450124', null, null);
INSERT INTO `transnode` VALUES ('45012500', '上林县网点', '3', '450125', null, null);
INSERT INTO `transnode` VALUES ('45012600', '宾阳县网点', '3', '450126', null, null);
INSERT INTO `transnode` VALUES ('45012700', '横县网点', '3', '450127', null, null);
INSERT INTO `transnode` VALUES ('45020000', '柳州市分拣中心', '2', '450200', null, null);
INSERT INTO `transnode` VALUES ('45020100', '市辖区网点', '3', '450201', null, null);
INSERT INTO `transnode` VALUES ('45020200', '城中区网点', '3', '450202', null, null);
INSERT INTO `transnode` VALUES ('45020300', '鱼峰区网点', '3', '450203', null, null);
INSERT INTO `transnode` VALUES ('45020400', '柳南区网点', '3', '450204', null, null);
INSERT INTO `transnode` VALUES ('45020500', '柳北区网点', '3', '450205', null, null);
INSERT INTO `transnode` VALUES ('45022100', '柳江县网点', '3', '450221', null, null);
INSERT INTO `transnode` VALUES ('45022200', '柳城县网点', '3', '450222', null, null);
INSERT INTO `transnode` VALUES ('45022300', '鹿寨县网点', '3', '450223', null, null);
INSERT INTO `transnode` VALUES ('45022400', '融安县网点', '3', '450224', null, null);
INSERT INTO `transnode` VALUES ('45022500', '融水苗族自治县网点', '3', '450225', null, null);
INSERT INTO `transnode` VALUES ('45022600', '三江侗族自治县网点', '3', '450226', null, null);
INSERT INTO `transnode` VALUES ('45030000', '桂林市分拣中心', '2', '450300', null, null);
INSERT INTO `transnode` VALUES ('45030100', '市辖区网点', '3', '450301', null, null);
INSERT INTO `transnode` VALUES ('45030200', '秀峰区网点', '3', '450302', null, null);
INSERT INTO `transnode` VALUES ('45030300', '叠彩区网点', '3', '450303', null, null);
INSERT INTO `transnode` VALUES ('45030400', '象山区网点', '3', '450304', null, null);
INSERT INTO `transnode` VALUES ('45030500', '七星区网点', '3', '450305', null, null);
INSERT INTO `transnode` VALUES ('45031100', '雁山区网点', '3', '450311', null, null);
INSERT INTO `transnode` VALUES ('45031200', '临桂区网点', '3', '450312', null, null);
INSERT INTO `transnode` VALUES ('45032100', '阳朔县网点', '3', '450321', null, null);
INSERT INTO `transnode` VALUES ('45032300', '灵川县网点', '3', '450323', null, null);
INSERT INTO `transnode` VALUES ('45032400', '全州县网点', '3', '450324', null, null);
INSERT INTO `transnode` VALUES ('45032500', '兴安县网点', '3', '450325', null, null);
INSERT INTO `transnode` VALUES ('45032600', '永福县网点', '3', '450326', null, null);
INSERT INTO `transnode` VALUES ('45032700', '灌阳县网点', '3', '450327', null, null);
INSERT INTO `transnode` VALUES ('45032800', '龙胜各族自治县网点', '3', '450328', null, null);
INSERT INTO `transnode` VALUES ('45032900', '资源县网点', '3', '450329', null, null);
INSERT INTO `transnode` VALUES ('45033000', '平乐县网点', '3', '450330', null, null);
INSERT INTO `transnode` VALUES ('45033100', '荔浦县网点', '3', '450331', null, null);
INSERT INTO `transnode` VALUES ('45033200', '恭城瑶族自治县网点', '3', '450332', null, null);
INSERT INTO `transnode` VALUES ('45040000', '梧州市分拣中心', '2', '450400', null, null);
INSERT INTO `transnode` VALUES ('45040100', '市辖区网点', '3', '450401', null, null);
INSERT INTO `transnode` VALUES ('45040300', '万秀区网点', '3', '450403', null, null);
INSERT INTO `transnode` VALUES ('45040500', '长洲区网点', '3', '450405', null, null);
INSERT INTO `transnode` VALUES ('45040600', '龙圩区网点', '3', '450406', null, null);
INSERT INTO `transnode` VALUES ('45042100', '苍梧县网点', '3', '450421', null, null);
INSERT INTO `transnode` VALUES ('45042200', '藤县网点', '3', '450422', null, null);
INSERT INTO `transnode` VALUES ('45042300', '蒙山县网点', '3', '450423', null, null);
INSERT INTO `transnode` VALUES ('45048100', '岑溪市网点', '3', '450481', null, null);
INSERT INTO `transnode` VALUES ('45050000', '北海市分拣中心', '2', '450500', null, null);
INSERT INTO `transnode` VALUES ('45050100', '市辖区网点', '3', '450501', null, null);
INSERT INTO `transnode` VALUES ('45050200', '海城区网点', '3', '450502', null, null);
INSERT INTO `transnode` VALUES ('45050300', '银海区网点', '3', '450503', null, null);
INSERT INTO `transnode` VALUES ('45051200', '铁山港区网点', '3', '450512', null, null);
INSERT INTO `transnode` VALUES ('45052100', '合浦县网点', '3', '450521', null, null);
INSERT INTO `transnode` VALUES ('45060000', '防城港市分拣中心', '2', '450600', null, null);
INSERT INTO `transnode` VALUES ('45060100', '市辖区网点', '3', '450601', null, null);
INSERT INTO `transnode` VALUES ('45060200', '港口区网点', '3', '450602', null, null);
INSERT INTO `transnode` VALUES ('45060300', '防城区网点', '3', '450603', null, null);
INSERT INTO `transnode` VALUES ('45062100', '上思县网点', '3', '450621', null, null);
INSERT INTO `transnode` VALUES ('45068100', '东兴市网点', '3', '450681', null, null);
INSERT INTO `transnode` VALUES ('45070000', '钦州市分拣中心', '2', '450700', null, null);
INSERT INTO `transnode` VALUES ('45070100', '市辖区网点', '3', '450701', null, null);
INSERT INTO `transnode` VALUES ('45070200', '钦南区网点', '3', '450702', null, null);
INSERT INTO `transnode` VALUES ('45070300', '钦北区网点', '3', '450703', null, null);
INSERT INTO `transnode` VALUES ('45072100', '灵山县网点', '3', '450721', null, null);
INSERT INTO `transnode` VALUES ('45072200', '浦北县网点', '3', '450722', null, null);
INSERT INTO `transnode` VALUES ('45080000', '贵港市分拣中心', '2', '450800', null, null);
INSERT INTO `transnode` VALUES ('45080100', '市辖区网点', '3', '450801', null, null);
INSERT INTO `transnode` VALUES ('45080200', '港北区网点', '3', '450802', null, null);
INSERT INTO `transnode` VALUES ('45080300', '港南区网点', '3', '450803', null, null);
INSERT INTO `transnode` VALUES ('45080400', '覃塘区网点', '3', '450804', null, null);
INSERT INTO `transnode` VALUES ('45082100', '平南县网点', '3', '450821', null, null);
INSERT INTO `transnode` VALUES ('45088100', '桂平市网点', '3', '450881', null, null);
INSERT INTO `transnode` VALUES ('45090000', '玉林市分拣中心', '2', '450900', null, null);
INSERT INTO `transnode` VALUES ('45090100', '市辖区网点', '3', '450901', null, null);
INSERT INTO `transnode` VALUES ('45090200', '玉州区网点', '3', '450902', null, null);
INSERT INTO `transnode` VALUES ('45090300', '福绵区网点', '3', '450903', null, null);
INSERT INTO `transnode` VALUES ('45092100', '容县网点', '3', '450921', null, null);
INSERT INTO `transnode` VALUES ('45092200', '陆川县网点', '3', '450922', null, null);
INSERT INTO `transnode` VALUES ('45092300', '博白县网点', '3', '450923', null, null);
INSERT INTO `transnode` VALUES ('45092400', '兴业县网点', '3', '450924', null, null);
INSERT INTO `transnode` VALUES ('45098100', '北流市网点', '3', '450981', null, null);
INSERT INTO `transnode` VALUES ('45100000', '百色市分拣中心', '2', '451000', null, null);
INSERT INTO `transnode` VALUES ('45100100', '市辖区网点', '3', '451001', null, null);
INSERT INTO `transnode` VALUES ('45100200', '右江区网点', '3', '451002', null, null);
INSERT INTO `transnode` VALUES ('45102100', '田阳县网点', '3', '451021', null, null);
INSERT INTO `transnode` VALUES ('45102200', '田东县网点', '3', '451022', null, null);
INSERT INTO `transnode` VALUES ('45102300', '平果县网点', '3', '451023', null, null);
INSERT INTO `transnode` VALUES ('45102400', '德保县网点', '3', '451024', null, null);
INSERT INTO `transnode` VALUES ('45102500', '靖西县网点', '3', '451025', null, null);
INSERT INTO `transnode` VALUES ('45102600', '那坡县网点', '3', '451026', null, null);
INSERT INTO `transnode` VALUES ('45102700', '凌云县网点', '3', '451027', null, null);
INSERT INTO `transnode` VALUES ('45102800', '乐业县网点', '3', '451028', null, null);
INSERT INTO `transnode` VALUES ('45102900', '田林县网点', '3', '451029', null, null);
INSERT INTO `transnode` VALUES ('45103000', '西林县网点', '3', '451030', null, null);
INSERT INTO `transnode` VALUES ('45103100', '隆林各族自治县网点', '3', '451031', null, null);
INSERT INTO `transnode` VALUES ('45110000', '贺州市分拣中心', '2', '451100', null, null);
INSERT INTO `transnode` VALUES ('45110100', '市辖区网点', '3', '451101', null, null);
INSERT INTO `transnode` VALUES ('45110200', '八步区网点', '3', '451102', null, null);
INSERT INTO `transnode` VALUES ('45112100', '昭平县网点', '3', '451121', null, null);
INSERT INTO `transnode` VALUES ('45112200', '钟山县网点', '3', '451122', null, null);
INSERT INTO `transnode` VALUES ('45112300', '富川瑶族自治县网点', '3', '451123', null, null);
INSERT INTO `transnode` VALUES ('45120000', '河池市分拣中心', '2', '451200', null, null);
INSERT INTO `transnode` VALUES ('45120100', '市辖区网点', '3', '451201', null, null);
INSERT INTO `transnode` VALUES ('45120200', '金城江区网点', '3', '451202', null, null);
INSERT INTO `transnode` VALUES ('45122100', '南丹县网点', '3', '451221', null, null);
INSERT INTO `transnode` VALUES ('45122200', '天峨县网点', '3', '451222', null, null);
INSERT INTO `transnode` VALUES ('45122300', '凤山县网点', '3', '451223', null, null);
INSERT INTO `transnode` VALUES ('45122400', '东兰县网点', '3', '451224', null, null);
INSERT INTO `transnode` VALUES ('45122500', '罗城仫佬族自治县网点', '3', '451225', null, null);
INSERT INTO `transnode` VALUES ('45122600', '环江毛南族自治县网点', '3', '451226', null, null);
INSERT INTO `transnode` VALUES ('45122700', '巴马瑶族自治县网点', '3', '451227', null, null);
INSERT INTO `transnode` VALUES ('45122800', '都安瑶族自治县网点', '3', '451228', null, null);
INSERT INTO `transnode` VALUES ('45122900', '大化瑶族自治县网点', '3', '451229', null, null);
INSERT INTO `transnode` VALUES ('45128100', '宜州市网点', '3', '451281', null, null);
INSERT INTO `transnode` VALUES ('45130000', '来宾市分拣中心', '2', '451300', null, null);
INSERT INTO `transnode` VALUES ('45130100', '市辖区网点', '3', '451301', null, null);
INSERT INTO `transnode` VALUES ('45130200', '兴宾区网点', '3', '451302', null, null);
INSERT INTO `transnode` VALUES ('45132100', '忻城县网点', '3', '451321', null, null);
INSERT INTO `transnode` VALUES ('45132200', '象州县网点', '3', '451322', null, null);
INSERT INTO `transnode` VALUES ('45132300', '武宣县网点', '3', '451323', null, null);
INSERT INTO `transnode` VALUES ('45132400', '金秀瑶族自治县网点', '3', '451324', null, null);
INSERT INTO `transnode` VALUES ('45138100', '合山市网点', '3', '451381', null, null);
INSERT INTO `transnode` VALUES ('45140000', '崇左市分拣中心', '2', '451400', null, null);
INSERT INTO `transnode` VALUES ('45140100', '市辖区网点', '3', '451401', null, null);
INSERT INTO `transnode` VALUES ('45140200', '江州区网点', '3', '451402', null, null);
INSERT INTO `transnode` VALUES ('45142100', '扶绥县网点', '3', '451421', null, null);
INSERT INTO `transnode` VALUES ('45142200', '宁明县网点', '3', '451422', null, null);
INSERT INTO `transnode` VALUES ('45142300', '龙州县网点', '3', '451423', null, null);
INSERT INTO `transnode` VALUES ('45142400', '大新县网点', '3', '451424', null, null);
INSERT INTO `transnode` VALUES ('45142500', '天等县网点', '3', '451425', null, null);
INSERT INTO `transnode` VALUES ('45148100', '凭祥市网点', '3', '451481', null, null);
INSERT INTO `transnode` VALUES ('46000000', '海南省分拣中心', '1', '460000', null, null);
INSERT INTO `transnode` VALUES ('46010000', '海口市分拣中心', '2', '460100', null, null);
INSERT INTO `transnode` VALUES ('46010100', '市辖区网点', '3', '460101', null, null);
INSERT INTO `transnode` VALUES ('46010500', '秀英区网点', '3', '460105', null, null);
INSERT INTO `transnode` VALUES ('46010600', '龙华区网点', '3', '460106', null, null);
INSERT INTO `transnode` VALUES ('46010700', '琼山区网点', '3', '460107', null, null);
INSERT INTO `transnode` VALUES ('46010800', '美兰区网点', '3', '460108', null, null);
INSERT INTO `transnode` VALUES ('46020000', '三亚市分拣中心', '2', '460200', null, null);
INSERT INTO `transnode` VALUES ('46020100', '市辖区网点', '3', '460201', null, null);
INSERT INTO `transnode` VALUES ('46030000', '三沙市分拣中心', '2', '460300', null, null);
INSERT INTO `transnode` VALUES ('46032100', '西沙群岛网点', '3', '460321', null, null);
INSERT INTO `transnode` VALUES ('46032200', '南沙群岛网点', '3', '460322', null, null);
INSERT INTO `transnode` VALUES ('46032300', '中沙群岛的岛礁及其海域网点', '3', '460323', null, null);
INSERT INTO `transnode` VALUES ('46900000', '省直辖县级行政区划分拣中心', '2', '469000', null, null);
INSERT INTO `transnode` VALUES ('46900100', '五指山市网点', '3', '469001', null, null);
INSERT INTO `transnode` VALUES ('46900200', '琼海市网点', '3', '469002', null, null);
INSERT INTO `transnode` VALUES ('46900300', '儋州市网点', '3', '469003', null, null);
INSERT INTO `transnode` VALUES ('46900500', '文昌市网点', '3', '469005', null, null);
INSERT INTO `transnode` VALUES ('46900600', '万宁市网点', '3', '469006', null, null);
INSERT INTO `transnode` VALUES ('46900700', '东方市网点', '3', '469007', null, null);
INSERT INTO `transnode` VALUES ('46902100', '定安县网点', '3', '469021', null, null);
INSERT INTO `transnode` VALUES ('46902200', '屯昌县网点', '3', '469022', null, null);
INSERT INTO `transnode` VALUES ('46902300', '澄迈县网点', '3', '469023', null, null);
INSERT INTO `transnode` VALUES ('46902400', '临高县网点', '3', '469024', null, null);
INSERT INTO `transnode` VALUES ('46902500', '白沙黎族自治县网点', '3', '469025', null, null);
INSERT INTO `transnode` VALUES ('46902600', '昌江黎族自治县网点', '3', '469026', null, null);
INSERT INTO `transnode` VALUES ('46902700', '乐东黎族自治县网点', '3', '469027', null, null);
INSERT INTO `transnode` VALUES ('46902800', '陵水黎族自治县网点', '3', '469028', null, null);
INSERT INTO `transnode` VALUES ('46902900', '保亭黎族苗族自治县网点', '3', '469029', null, null);
INSERT INTO `transnode` VALUES ('46903000', '琼中黎族苗族自治县网点', '3', '469030', null, null);
INSERT INTO `transnode` VALUES ('50000000', '重庆市分拣中心', '1', '500000', null, null);
INSERT INTO `transnode` VALUES ('50010000', '市辖区分拣中心', '2', '500100', null, null);
INSERT INTO `transnode` VALUES ('50010100', '万州区网点', '3', '500101', null, null);
INSERT INTO `transnode` VALUES ('50010200', '涪陵区网点', '3', '500102', null, null);
INSERT INTO `transnode` VALUES ('50010300', '渝中区网点', '3', '500103', null, null);
INSERT INTO `transnode` VALUES ('50010400', '大渡口区网点', '3', '500104', null, null);
INSERT INTO `transnode` VALUES ('50010500', '江北区网点', '3', '500105', null, null);
INSERT INTO `transnode` VALUES ('50010600', '沙坪坝区网点', '3', '500106', null, null);
INSERT INTO `transnode` VALUES ('50010700', '九龙坡区网点', '3', '500107', null, null);
INSERT INTO `transnode` VALUES ('50010800', '南岸区网点', '3', '500108', null, null);
INSERT INTO `transnode` VALUES ('50010900', '北碚区网点', '3', '500109', null, null);
INSERT INTO `transnode` VALUES ('50011000', '綦江区网点', '3', '500110', null, null);
INSERT INTO `transnode` VALUES ('50011100', '大足区网点', '3', '500111', null, null);
INSERT INTO `transnode` VALUES ('50011200', '渝北区网点', '3', '500112', null, null);
INSERT INTO `transnode` VALUES ('50011300', '巴南区网点', '3', '500113', null, null);
INSERT INTO `transnode` VALUES ('50011400', '黔江区网点', '3', '500114', null, null);
INSERT INTO `transnode` VALUES ('50011500', '长寿区网点', '3', '500115', null, null);
INSERT INTO `transnode` VALUES ('50011600', '江津区网点', '3', '500116', null, null);
INSERT INTO `transnode` VALUES ('50011700', '合川区网点', '3', '500117', null, null);
INSERT INTO `transnode` VALUES ('50011800', '永川区网点', '3', '500118', null, null);
INSERT INTO `transnode` VALUES ('50011900', '南川区网点', '3', '500119', null, null);
INSERT INTO `transnode` VALUES ('50020000', '县分拣中心', '2', '500200', null, null);
INSERT INTO `transnode` VALUES ('50022300', '潼南县网点', '3', '500223', null, null);
INSERT INTO `transnode` VALUES ('50022400', '铜梁县网点', '3', '500224', null, null);
INSERT INTO `transnode` VALUES ('50022600', '荣昌县网点', '3', '500226', null, null);
INSERT INTO `transnode` VALUES ('50022700', '璧山县网点', '3', '500227', null, null);
INSERT INTO `transnode` VALUES ('50022800', '梁平县网点', '3', '500228', null, null);
INSERT INTO `transnode` VALUES ('50022900', '城口县网点', '3', '500229', null, null);
INSERT INTO `transnode` VALUES ('50023000', '丰都县网点', '3', '500230', null, null);
INSERT INTO `transnode` VALUES ('50023100', '垫江县网点', '3', '500231', null, null);
INSERT INTO `transnode` VALUES ('50023200', '武隆县网点', '3', '500232', null, null);
INSERT INTO `transnode` VALUES ('50023300', '忠县网点', '3', '500233', null, null);
INSERT INTO `transnode` VALUES ('50023400', '开县网点', '3', '500234', null, null);
INSERT INTO `transnode` VALUES ('50023500', '云阳县网点', '3', '500235', null, null);
INSERT INTO `transnode` VALUES ('50023600', '奉节县网点', '3', '500236', null, null);
INSERT INTO `transnode` VALUES ('50023700', '巫山县网点', '3', '500237', null, null);
INSERT INTO `transnode` VALUES ('50023800', '巫溪县网点', '3', '500238', null, null);
INSERT INTO `transnode` VALUES ('50024000', '石柱土家族自治县网点', '3', '500240', null, null);
INSERT INTO `transnode` VALUES ('50024100', '秀山土家族苗族自治县网点', '3', '500241', null, null);
INSERT INTO `transnode` VALUES ('50024200', '酉阳土家族苗族自治县网点', '3', '500242', null, null);
INSERT INTO `transnode` VALUES ('50024300', '彭水苗族土家族自治县网点', '3', '500243', null, null);
INSERT INTO `transnode` VALUES ('51000000', '四川省分拣中心', '1', '510000', null, null);
INSERT INTO `transnode` VALUES ('51010000', '成都市分拣中心', '2', '510100', null, null);
INSERT INTO `transnode` VALUES ('51010100', '市辖区网点', '3', '510101', null, null);
INSERT INTO `transnode` VALUES ('51010400', '锦江区网点', '3', '510104', null, null);
INSERT INTO `transnode` VALUES ('51010500', '青羊区网点', '3', '510105', null, null);
INSERT INTO `transnode` VALUES ('51010600', '金牛区网点', '3', '510106', null, null);
INSERT INTO `transnode` VALUES ('51010700', '武侯区网点', '3', '510107', null, null);
INSERT INTO `transnode` VALUES ('51010800', '成华区网点', '3', '510108', null, null);
INSERT INTO `transnode` VALUES ('51011200', '龙泉驿区网点', '3', '510112', null, null);
INSERT INTO `transnode` VALUES ('51011300', '青白江区网点', '3', '510113', null, null);
INSERT INTO `transnode` VALUES ('51011400', '新都区网点', '3', '510114', null, null);
INSERT INTO `transnode` VALUES ('51011500', '温江区网点', '3', '510115', null, null);
INSERT INTO `transnode` VALUES ('51012100', '金堂县网点', '3', '510121', null, null);
INSERT INTO `transnode` VALUES ('51012200', '双流县网点', '3', '510122', null, null);
INSERT INTO `transnode` VALUES ('51012400', '郫县网点', '3', '510124', null, null);
INSERT INTO `transnode` VALUES ('51012900', '大邑县网点', '3', '510129', null, null);
INSERT INTO `transnode` VALUES ('51013100', '蒲江县网点', '3', '510131', null, null);
INSERT INTO `transnode` VALUES ('51013200', '新津县网点', '3', '510132', null, null);
INSERT INTO `transnode` VALUES ('51018100', '都江堰市网点', '3', '510181', null, null);
INSERT INTO `transnode` VALUES ('51018200', '彭州市网点', '3', '510182', null, null);
INSERT INTO `transnode` VALUES ('51018300', '邛崃市网点', '3', '510183', null, null);
INSERT INTO `transnode` VALUES ('51018400', '崇州市网点', '3', '510184', null, null);
INSERT INTO `transnode` VALUES ('51030000', '自贡市分拣中心', '2', '510300', null, null);
INSERT INTO `transnode` VALUES ('51030100', '市辖区网点', '3', '510301', null, null);
INSERT INTO `transnode` VALUES ('51030200', '自流井区网点', '3', '510302', null, null);
INSERT INTO `transnode` VALUES ('51030300', '贡井区网点', '3', '510303', null, null);
INSERT INTO `transnode` VALUES ('51030400', '大安区网点', '3', '510304', null, null);
INSERT INTO `transnode` VALUES ('51031100', '沿滩区网点', '3', '510311', null, null);
INSERT INTO `transnode` VALUES ('51032100', '荣县网点', '3', '510321', null, null);
INSERT INTO `transnode` VALUES ('51032200', '富顺县网点', '3', '510322', null, null);
INSERT INTO `transnode` VALUES ('51040000', '攀枝花市分拣中心', '2', '510400', null, null);
INSERT INTO `transnode` VALUES ('51040100', '市辖区网点', '3', '510401', null, null);
INSERT INTO `transnode` VALUES ('51040200', '东区网点', '3', '510402', null, null);
INSERT INTO `transnode` VALUES ('51040300', '西区网点', '3', '510403', null, null);
INSERT INTO `transnode` VALUES ('51041100', '仁和区网点', '3', '510411', null, null);
INSERT INTO `transnode` VALUES ('51042100', '米易县网点', '3', '510421', null, null);
INSERT INTO `transnode` VALUES ('51042200', '盐边县网点', '3', '510422', null, null);
INSERT INTO `transnode` VALUES ('51050000', '泸州市分拣中心', '2', '510500', null, null);
INSERT INTO `transnode` VALUES ('51050100', '市辖区网点', '3', '510501', null, null);
INSERT INTO `transnode` VALUES ('51050200', '江阳区网点', '3', '510502', null, null);
INSERT INTO `transnode` VALUES ('51050300', '纳溪区网点', '3', '510503', null, null);
INSERT INTO `transnode` VALUES ('51050400', '龙马潭区网点', '3', '510504', null, null);
INSERT INTO `transnode` VALUES ('51052100', '泸县网点', '3', '510521', null, null);
INSERT INTO `transnode` VALUES ('51052200', '合江县网点', '3', '510522', null, null);
INSERT INTO `transnode` VALUES ('51052400', '叙永县网点', '3', '510524', null, null);
INSERT INTO `transnode` VALUES ('51052500', '古蔺县网点', '3', '510525', null, null);
INSERT INTO `transnode` VALUES ('51060000', '德阳市分拣中心', '2', '510600', null, null);
INSERT INTO `transnode` VALUES ('51060100', '市辖区网点', '3', '510601', null, null);
INSERT INTO `transnode` VALUES ('51060300', '旌阳区网点', '3', '510603', null, null);
INSERT INTO `transnode` VALUES ('51062300', '中江县网点', '3', '510623', null, null);
INSERT INTO `transnode` VALUES ('51062600', '罗江县网点', '3', '510626', null, null);
INSERT INTO `transnode` VALUES ('51068100', '广汉市网点', '3', '510681', null, null);
INSERT INTO `transnode` VALUES ('51068200', '什邡市网点', '3', '510682', null, null);
INSERT INTO `transnode` VALUES ('51068300', '绵竹市网点', '3', '510683', null, null);
INSERT INTO `transnode` VALUES ('51070000', '绵阳市分拣中心', '2', '510700', null, null);
INSERT INTO `transnode` VALUES ('51070100', '市辖区网点', '3', '510701', null, null);
INSERT INTO `transnode` VALUES ('51070300', '涪城区网点', '3', '510703', null, null);
INSERT INTO `transnode` VALUES ('51070400', '游仙区网点', '3', '510704', null, null);
INSERT INTO `transnode` VALUES ('51072200', '三台县网点', '3', '510722', null, null);
INSERT INTO `transnode` VALUES ('51072300', '盐亭县网点', '3', '510723', null, null);
INSERT INTO `transnode` VALUES ('51072400', '安县网点', '3', '510724', null, null);
INSERT INTO `transnode` VALUES ('51072500', '梓潼县网点', '3', '510725', null, null);
INSERT INTO `transnode` VALUES ('51072600', '北川羌族自治县网点', '3', '510726', null, null);
INSERT INTO `transnode` VALUES ('51072700', '平武县网点', '3', '510727', null, null);
INSERT INTO `transnode` VALUES ('51078100', '江油市网点', '3', '510781', null, null);
INSERT INTO `transnode` VALUES ('51080000', '广元市分拣中心', '2', '510800', null, null);
INSERT INTO `transnode` VALUES ('51080100', '市辖区网点', '3', '510801', null, null);
INSERT INTO `transnode` VALUES ('51080200', '利州区网点', '3', '510802', null, null);
INSERT INTO `transnode` VALUES ('51081100', '元坝区网点', '3', '510811', null, null);
INSERT INTO `transnode` VALUES ('51081200', '朝天区网点', '3', '510812', null, null);
INSERT INTO `transnode` VALUES ('51082100', '旺苍县网点', '3', '510821', null, null);
INSERT INTO `transnode` VALUES ('51082200', '青川县网点', '3', '510822', null, null);
INSERT INTO `transnode` VALUES ('51082300', '剑阁县网点', '3', '510823', null, null);
INSERT INTO `transnode` VALUES ('51082400', '苍溪县网点', '3', '510824', null, null);
INSERT INTO `transnode` VALUES ('51090000', '遂宁市分拣中心', '2', '510900', null, null);
INSERT INTO `transnode` VALUES ('51090100', '市辖区网点', '3', '510901', null, null);
INSERT INTO `transnode` VALUES ('51090300', '船山区网点', '3', '510903', null, null);
INSERT INTO `transnode` VALUES ('51090400', '安居区网点', '3', '510904', null, null);
INSERT INTO `transnode` VALUES ('51092100', '蓬溪县网点', '3', '510921', null, null);
INSERT INTO `transnode` VALUES ('51092200', '射洪县网点', '3', '510922', null, null);
INSERT INTO `transnode` VALUES ('51092300', '大英县网点', '3', '510923', null, null);
INSERT INTO `transnode` VALUES ('51100000', '内江市分拣中心', '2', '511000', null, null);
INSERT INTO `transnode` VALUES ('51100100', '市辖区网点', '3', '511001', null, null);
INSERT INTO `transnode` VALUES ('51100200', '市中区网点', '3', '511002', null, null);
INSERT INTO `transnode` VALUES ('51101100', '东兴区网点', '3', '511011', null, null);
INSERT INTO `transnode` VALUES ('51102400', '威远县网点', '3', '511024', null, null);
INSERT INTO `transnode` VALUES ('51102500', '资中县网点', '3', '511025', null, null);
INSERT INTO `transnode` VALUES ('51102800', '隆昌县网点', '3', '511028', null, null);
INSERT INTO `transnode` VALUES ('51110000', '乐山市分拣中心', '2', '511100', null, null);
INSERT INTO `transnode` VALUES ('51110100', '市辖区网点', '3', '511101', null, null);
INSERT INTO `transnode` VALUES ('51110200', '市中区网点', '3', '511102', null, null);
INSERT INTO `transnode` VALUES ('51111100', '沙湾区网点', '3', '511111', null, null);
INSERT INTO `transnode` VALUES ('51111200', '五通桥区网点', '3', '511112', null, null);
INSERT INTO `transnode` VALUES ('51111300', '金口河区网点', '3', '511113', null, null);
INSERT INTO `transnode` VALUES ('51112300', '犍为县网点', '3', '511123', null, null);
INSERT INTO `transnode` VALUES ('51112400', '井研县网点', '3', '511124', null, null);
INSERT INTO `transnode` VALUES ('51112600', '夹江县网点', '3', '511126', null, null);
INSERT INTO `transnode` VALUES ('51112900', '沐川县网点', '3', '511129', null, null);
INSERT INTO `transnode` VALUES ('51113200', '峨边彝族自治县网点', '3', '511132', null, null);
INSERT INTO `transnode` VALUES ('51113300', '马边彝族自治县网点', '3', '511133', null, null);
INSERT INTO `transnode` VALUES ('51118100', '峨眉山市网点', '3', '511181', null, null);
INSERT INTO `transnode` VALUES ('51130000', '南充市分拣中心', '2', '511300', null, null);
INSERT INTO `transnode` VALUES ('51130100', '市辖区网点', '3', '511301', null, null);
INSERT INTO `transnode` VALUES ('51130200', '顺庆区网点', '3', '511302', null, null);
INSERT INTO `transnode` VALUES ('51130300', '高坪区网点', '3', '511303', null, null);
INSERT INTO `transnode` VALUES ('51130400', '嘉陵区网点', '3', '511304', null, null);
INSERT INTO `transnode` VALUES ('51132100', '南部县网点', '3', '511321', null, null);
INSERT INTO `transnode` VALUES ('51132200', '营山县网点', '3', '511322', null, null);
INSERT INTO `transnode` VALUES ('51132300', '蓬安县网点', '3', '511323', null, null);
INSERT INTO `transnode` VALUES ('51132400', '仪陇县网点', '3', '511324', null, null);
INSERT INTO `transnode` VALUES ('51132500', '西充县网点', '3', '511325', null, null);
INSERT INTO `transnode` VALUES ('51138100', '阆中市网点', '3', '511381', null, null);
INSERT INTO `transnode` VALUES ('51140000', '眉山市分拣中心', '2', '511400', null, null);
INSERT INTO `transnode` VALUES ('51140100', '市辖区网点', '3', '511401', null, null);
INSERT INTO `transnode` VALUES ('51140200', '东坡区网点', '3', '511402', null, null);
INSERT INTO `transnode` VALUES ('51142100', '仁寿县网点', '3', '511421', null, null);
INSERT INTO `transnode` VALUES ('51142200', '彭山县网点', '3', '511422', null, null);
INSERT INTO `transnode` VALUES ('51142300', '洪雅县网点', '3', '511423', null, null);
INSERT INTO `transnode` VALUES ('51142400', '丹棱县网点', '3', '511424', null, null);
INSERT INTO `transnode` VALUES ('51142500', '青神县网点', '3', '511425', null, null);
INSERT INTO `transnode` VALUES ('51150000', '宜宾市分拣中心', '2', '511500', null, null);
INSERT INTO `transnode` VALUES ('51150100', '市辖区网点', '3', '511501', null, null);
INSERT INTO `transnode` VALUES ('51150200', '翠屏区网点', '3', '511502', null, null);
INSERT INTO `transnode` VALUES ('51150300', '南溪区网点', '3', '511503', null, null);
INSERT INTO `transnode` VALUES ('51152100', '宜宾县网点', '3', '511521', null, null);
INSERT INTO `transnode` VALUES ('51152300', '江安县网点', '3', '511523', null, null);
INSERT INTO `transnode` VALUES ('51152400', '长宁县网点', '3', '511524', null, null);
INSERT INTO `transnode` VALUES ('51152500', '高县网点', '3', '511525', null, null);
INSERT INTO `transnode` VALUES ('51152600', '珙县网点', '3', '511526', null, null);
INSERT INTO `transnode` VALUES ('51152700', '筠连县网点', '3', '511527', null, null);
INSERT INTO `transnode` VALUES ('51152800', '兴文县网点', '3', '511528', null, null);
INSERT INTO `transnode` VALUES ('51152900', '屏山县网点', '3', '511529', null, null);
INSERT INTO `transnode` VALUES ('51160000', '广安市分拣中心', '2', '511600', null, null);
INSERT INTO `transnode` VALUES ('51160100', '市辖区网点', '3', '511601', null, null);
INSERT INTO `transnode` VALUES ('51160200', '广安区网点', '3', '511602', null, null);
INSERT INTO `transnode` VALUES ('51160300', '前锋区网点', '3', '511603', null, null);
INSERT INTO `transnode` VALUES ('51162100', '岳池县网点', '3', '511621', null, null);
INSERT INTO `transnode` VALUES ('51162200', '武胜县网点', '3', '511622', null, null);
INSERT INTO `transnode` VALUES ('51162300', '邻水县网点', '3', '511623', null, null);
INSERT INTO `transnode` VALUES ('51168100', '华蓥市网点', '3', '511681', null, null);
INSERT INTO `transnode` VALUES ('51170000', '达州市分拣中心', '2', '511700', null, null);
INSERT INTO `transnode` VALUES ('51170100', '市辖区网点', '3', '511701', null, null);
INSERT INTO `transnode` VALUES ('51170200', '通川区网点', '3', '511702', null, null);
INSERT INTO `transnode` VALUES ('51170300', '达川区网点', '3', '511703', null, null);
INSERT INTO `transnode` VALUES ('51172200', '宣汉县网点', '3', '511722', null, null);
INSERT INTO `transnode` VALUES ('51172300', '开江县网点', '3', '511723', null, null);
INSERT INTO `transnode` VALUES ('51172400', '大竹县网点', '3', '511724', null, null);
INSERT INTO `transnode` VALUES ('51172500', '渠县网点', '3', '511725', null, null);
INSERT INTO `transnode` VALUES ('51178100', '万源市网点', '3', '511781', null, null);
INSERT INTO `transnode` VALUES ('51180000', '雅安市分拣中心', '2', '511800', null, null);
INSERT INTO `transnode` VALUES ('51180100', '市辖区网点', '3', '511801', null, null);
INSERT INTO `transnode` VALUES ('51180200', '雨城区网点', '3', '511802', null, null);
INSERT INTO `transnode` VALUES ('51180300', '名山区网点', '3', '511803', null, null);
INSERT INTO `transnode` VALUES ('51182200', '荥经县网点', '3', '511822', null, null);
INSERT INTO `transnode` VALUES ('51182300', '汉源县网点', '3', '511823', null, null);
INSERT INTO `transnode` VALUES ('51182400', '石棉县网点', '3', '511824', null, null);
INSERT INTO `transnode` VALUES ('51182500', '天全县网点', '3', '511825', null, null);
INSERT INTO `transnode` VALUES ('51182600', '芦山县网点', '3', '511826', null, null);
INSERT INTO `transnode` VALUES ('51182700', '宝兴县网点', '3', '511827', null, null);
INSERT INTO `transnode` VALUES ('51190000', '巴中市分拣中心', '2', '511900', null, null);
INSERT INTO `transnode` VALUES ('51190100', '市辖区网点', '3', '511901', null, null);
INSERT INTO `transnode` VALUES ('51190200', '巴州区网点', '3', '511902', null, null);
INSERT INTO `transnode` VALUES ('51190300', '恩阳区网点', '3', '511903', null, null);
INSERT INTO `transnode` VALUES ('51192100', '通江县网点', '3', '511921', null, null);
INSERT INTO `transnode` VALUES ('51192200', '南江县网点', '3', '511922', null, null);
INSERT INTO `transnode` VALUES ('51192300', '平昌县网点', '3', '511923', null, null);
INSERT INTO `transnode` VALUES ('51200000', '资阳市分拣中心', '2', '512000', null, null);
INSERT INTO `transnode` VALUES ('51200100', '市辖区网点', '3', '512001', null, null);
INSERT INTO `transnode` VALUES ('51200200', '雁江区网点', '3', '512002', null, null);
INSERT INTO `transnode` VALUES ('51202100', '安岳县网点', '3', '512021', null, null);
INSERT INTO `transnode` VALUES ('51202200', '乐至县网点', '3', '512022', null, null);
INSERT INTO `transnode` VALUES ('51208100', '简阳市网点', '3', '512081', null, null);
INSERT INTO `transnode` VALUES ('51320000', '阿坝藏族羌族自治州分拣中心', '2', '513200', null, null);
INSERT INTO `transnode` VALUES ('51322100', '汶川县网点', '3', '513221', null, null);
INSERT INTO `transnode` VALUES ('51322200', '理县网点', '3', '513222', null, null);
INSERT INTO `transnode` VALUES ('51322300', '茂县网点', '3', '513223', null, null);
INSERT INTO `transnode` VALUES ('51322400', '松潘县网点', '3', '513224', null, null);
INSERT INTO `transnode` VALUES ('51322500', '九寨沟县网点', '3', '513225', null, null);
INSERT INTO `transnode` VALUES ('51322600', '金川县网点', '3', '513226', null, null);
INSERT INTO `transnode` VALUES ('51322700', '小金县网点', '3', '513227', null, null);
INSERT INTO `transnode` VALUES ('51322800', '黑水县网点', '3', '513228', null, null);
INSERT INTO `transnode` VALUES ('51322900', '马尔康县网点', '3', '513229', null, null);
INSERT INTO `transnode` VALUES ('51323000', '壤塘县网点', '3', '513230', null, null);
INSERT INTO `transnode` VALUES ('51323100', '阿坝县网点', '3', '513231', null, null);
INSERT INTO `transnode` VALUES ('51323200', '若尔盖县网点', '3', '513232', null, null);
INSERT INTO `transnode` VALUES ('51323300', '红原县网点', '3', '513233', null, null);
INSERT INTO `transnode` VALUES ('51330000', '甘孜藏族自治州分拣中心', '2', '513300', null, null);
INSERT INTO `transnode` VALUES ('51332100', '康定县网点', '3', '513321', null, null);
INSERT INTO `transnode` VALUES ('51332200', '泸定县网点', '3', '513322', null, null);
INSERT INTO `transnode` VALUES ('51332300', '丹巴县网点', '3', '513323', null, null);
INSERT INTO `transnode` VALUES ('51332400', '九龙县网点', '3', '513324', null, null);
INSERT INTO `transnode` VALUES ('51332500', '雅江县网点', '3', '513325', null, null);
INSERT INTO `transnode` VALUES ('51332600', '道孚县网点', '3', '513326', null, null);
INSERT INTO `transnode` VALUES ('51332700', '炉霍县网点', '3', '513327', null, null);
INSERT INTO `transnode` VALUES ('51332800', '甘孜县网点', '3', '513328', null, null);
INSERT INTO `transnode` VALUES ('51332900', '新龙县网点', '3', '513329', null, null);
INSERT INTO `transnode` VALUES ('51333000', '德格县网点', '3', '513330', null, null);
INSERT INTO `transnode` VALUES ('51333100', '白玉县网点', '3', '513331', null, null);
INSERT INTO `transnode` VALUES ('51333200', '石渠县网点', '3', '513332', null, null);
INSERT INTO `transnode` VALUES ('51333300', '色达县网点', '3', '513333', null, null);
INSERT INTO `transnode` VALUES ('51333400', '理塘县网点', '3', '513334', null, null);
INSERT INTO `transnode` VALUES ('51333500', '巴塘县网点', '3', '513335', null, null);
INSERT INTO `transnode` VALUES ('51333600', '乡城县网点', '3', '513336', null, null);
INSERT INTO `transnode` VALUES ('51333700', '稻城县网点', '3', '513337', null, null);
INSERT INTO `transnode` VALUES ('51333800', '得荣县网点', '3', '513338', null, null);
INSERT INTO `transnode` VALUES ('51340000', '凉山彝族自治州分拣中心', '2', '513400', null, null);
INSERT INTO `transnode` VALUES ('51340100', '西昌市网点', '3', '513401', null, null);
INSERT INTO `transnode` VALUES ('51342200', '木里藏族自治县网点', '3', '513422', null, null);
INSERT INTO `transnode` VALUES ('51342300', '盐源县网点', '3', '513423', null, null);
INSERT INTO `transnode` VALUES ('51342400', '德昌县网点', '3', '513424', null, null);
INSERT INTO `transnode` VALUES ('51342500', '会理县网点', '3', '513425', null, null);
INSERT INTO `transnode` VALUES ('51342600', '会东县网点', '3', '513426', null, null);
INSERT INTO `transnode` VALUES ('51342700', '宁南县网点', '3', '513427', null, null);
INSERT INTO `transnode` VALUES ('51342800', '普格县网点', '3', '513428', null, null);
INSERT INTO `transnode` VALUES ('51342900', '布拖县网点', '3', '513429', null, null);
INSERT INTO `transnode` VALUES ('51343000', '金阳县网点', '3', '513430', null, null);
INSERT INTO `transnode` VALUES ('51343100', '昭觉县网点', '3', '513431', null, null);
INSERT INTO `transnode` VALUES ('51343200', '喜德县网点', '3', '513432', null, null);
INSERT INTO `transnode` VALUES ('51343300', '冕宁县网点', '3', '513433', null, null);
INSERT INTO `transnode` VALUES ('51343400', '越西县网点', '3', '513434', null, null);
INSERT INTO `transnode` VALUES ('51343500', '甘洛县网点', '3', '513435', null, null);
INSERT INTO `transnode` VALUES ('51343600', '美姑县网点', '3', '513436', null, null);
INSERT INTO `transnode` VALUES ('51343700', '雷波县网点', '3', '513437', null, null);
INSERT INTO `transnode` VALUES ('52000000', '贵州省分拣中心', '1', '520000', null, null);
INSERT INTO `transnode` VALUES ('52010000', '贵阳市分拣中心', '2', '520100', null, null);
INSERT INTO `transnode` VALUES ('52010100', '市辖区网点', '3', '520101', null, null);
INSERT INTO `transnode` VALUES ('52010200', '南明区网点', '3', '520102', null, null);
INSERT INTO `transnode` VALUES ('52010300', '云岩区网点', '3', '520103', null, null);
INSERT INTO `transnode` VALUES ('52011100', '花溪区网点', '3', '520111', null, null);
INSERT INTO `transnode` VALUES ('52011200', '乌当区网点', '3', '520112', null, null);
INSERT INTO `transnode` VALUES ('52011300', '白云区网点', '3', '520113', null, null);
INSERT INTO `transnode` VALUES ('52011500', '观山湖区网点', '3', '520115', null, null);
INSERT INTO `transnode` VALUES ('52012100', '开阳县网点', '3', '520121', null, null);
INSERT INTO `transnode` VALUES ('52012200', '息烽县网点', '3', '520122', null, null);
INSERT INTO `transnode` VALUES ('52012300', '修文县网点', '3', '520123', null, null);
INSERT INTO `transnode` VALUES ('52018100', '清镇市网点', '3', '520181', null, null);
INSERT INTO `transnode` VALUES ('52020000', '六盘水市分拣中心', '2', '520200', null, null);
INSERT INTO `transnode` VALUES ('52020100', '钟山区网点', '3', '520201', null, null);
INSERT INTO `transnode` VALUES ('52020300', '六枝特区网点', '3', '520203', null, null);
INSERT INTO `transnode` VALUES ('52022100', '水城县网点', '3', '520221', null, null);
INSERT INTO `transnode` VALUES ('52022200', '盘县网点', '3', '520222', null, null);
INSERT INTO `transnode` VALUES ('52030000', '遵义市分拣中心', '2', '520300', null, null);
INSERT INTO `transnode` VALUES ('52030100', '市辖区网点', '3', '520301', null, null);
INSERT INTO `transnode` VALUES ('52030200', '红花岗区网点', '3', '520302', null, null);
INSERT INTO `transnode` VALUES ('52030300', '汇川区网点', '3', '520303', null, null);
INSERT INTO `transnode` VALUES ('52032100', '遵义县网点', '3', '520321', null, null);
INSERT INTO `transnode` VALUES ('52032200', '桐梓县网点', '3', '520322', null, null);
INSERT INTO `transnode` VALUES ('52032300', '绥阳县网点', '3', '520323', null, null);
INSERT INTO `transnode` VALUES ('52032400', '正安县网点', '3', '520324', null, null);
INSERT INTO `transnode` VALUES ('52032500', '道真仡佬族苗族自治县网点', '3', '520325', null, null);
INSERT INTO `transnode` VALUES ('52032600', '务川仡佬族苗族自治县网点', '3', '520326', null, null);
INSERT INTO `transnode` VALUES ('52032700', '凤冈县网点', '3', '520327', null, null);
INSERT INTO `transnode` VALUES ('52032800', '湄潭县网点', '3', '520328', null, null);
INSERT INTO `transnode` VALUES ('52032900', '余庆县网点', '3', '520329', null, null);
INSERT INTO `transnode` VALUES ('52033000', '习水县网点', '3', '520330', null, null);
INSERT INTO `transnode` VALUES ('52038100', '赤水市网点', '3', '520381', null, null);
INSERT INTO `transnode` VALUES ('52038200', '仁怀市网点', '3', '520382', null, null);
INSERT INTO `transnode` VALUES ('52040000', '安顺市分拣中心', '2', '520400', null, null);
INSERT INTO `transnode` VALUES ('52040100', '市辖区网点', '3', '520401', null, null);
INSERT INTO `transnode` VALUES ('52040200', '西秀区网点', '3', '520402', null, null);
INSERT INTO `transnode` VALUES ('52042100', '平坝县网点', '3', '520421', null, null);
INSERT INTO `transnode` VALUES ('52042200', '普定县网点', '3', '520422', null, null);
INSERT INTO `transnode` VALUES ('52042300', '镇宁布依族苗族自治县网点', '3', '520423', null, null);
INSERT INTO `transnode` VALUES ('52042400', '关岭布依族苗族自治县网点', '3', '520424', null, null);
INSERT INTO `transnode` VALUES ('52042500', '紫云苗族布依族自治县网点', '3', '520425', null, null);
INSERT INTO `transnode` VALUES ('52050000', '毕节市分拣中心', '2', '520500', null, null);
INSERT INTO `transnode` VALUES ('52050100', '市辖区网点', '3', '520501', null, null);
INSERT INTO `transnode` VALUES ('52050200', '七星关区网点', '3', '520502', null, null);
INSERT INTO `transnode` VALUES ('52052100', '大方县网点', '3', '520521', null, null);
INSERT INTO `transnode` VALUES ('52052200', '黔西县网点', '3', '520522', null, null);
INSERT INTO `transnode` VALUES ('52052300', '金沙县网点', '3', '520523', null, null);
INSERT INTO `transnode` VALUES ('52052400', '织金县网点', '3', '520524', null, null);
INSERT INTO `transnode` VALUES ('52052500', '纳雍县网点', '3', '520525', null, null);
INSERT INTO `transnode` VALUES ('52052600', '威宁彝族回族苗族自治县网点', '3', '520526', null, null);
INSERT INTO `transnode` VALUES ('52052700', '赫章县网点', '3', '520527', null, null);
INSERT INTO `transnode` VALUES ('52060000', '铜仁市分拣中心', '2', '520600', null, null);
INSERT INTO `transnode` VALUES ('52060100', '市辖区网点', '3', '520601', null, null);
INSERT INTO `transnode` VALUES ('52060200', '碧江区网点', '3', '520602', null, null);
INSERT INTO `transnode` VALUES ('52060300', '万山区网点', '3', '520603', null, null);
INSERT INTO `transnode` VALUES ('52062100', '江口县网点', '3', '520621', null, null);
INSERT INTO `transnode` VALUES ('52062200', '玉屏侗族自治县网点', '3', '520622', null, null);
INSERT INTO `transnode` VALUES ('52062300', '石阡县网点', '3', '520623', null, null);
INSERT INTO `transnode` VALUES ('52062400', '思南县网点', '3', '520624', null, null);
INSERT INTO `transnode` VALUES ('52062500', '印江土家族苗族自治县网点', '3', '520625', null, null);
INSERT INTO `transnode` VALUES ('52062600', '德江县网点', '3', '520626', null, null);
INSERT INTO `transnode` VALUES ('52062700', '沿河土家族自治县网点', '3', '520627', null, null);
INSERT INTO `transnode` VALUES ('52062800', '松桃苗族自治县网点', '3', '520628', null, null);
INSERT INTO `transnode` VALUES ('52230000', '黔西南布依族苗族自治州分拣中心', '2', '522300', null, null);
INSERT INTO `transnode` VALUES ('52230100', '兴义市网点', '3', '522301', null, null);
INSERT INTO `transnode` VALUES ('52232200', '兴仁县网点', '3', '522322', null, null);
INSERT INTO `transnode` VALUES ('52232300', '普安县网点', '3', '522323', null, null);
INSERT INTO `transnode` VALUES ('52232400', '晴隆县网点', '3', '522324', null, null);
INSERT INTO `transnode` VALUES ('52232500', '贞丰县网点', '3', '522325', null, null);
INSERT INTO `transnode` VALUES ('52232600', '望谟县网点', '3', '522326', null, null);
INSERT INTO `transnode` VALUES ('52232700', '册亨县网点', '3', '522327', null, null);
INSERT INTO `transnode` VALUES ('52232800', '安龙县网点', '3', '522328', null, null);
INSERT INTO `transnode` VALUES ('52260000', '黔东南苗族侗族自治州分拣中心', '2', '522600', null, null);
INSERT INTO `transnode` VALUES ('52260100', '凯里市网点', '3', '522601', null, null);
INSERT INTO `transnode` VALUES ('52262200', '黄平县网点', '3', '522622', null, null);
INSERT INTO `transnode` VALUES ('52262300', '施秉县网点', '3', '522623', null, null);
INSERT INTO `transnode` VALUES ('52262400', '三穗县网点', '3', '522624', null, null);
INSERT INTO `transnode` VALUES ('52262500', '镇远县网点', '3', '522625', null, null);
INSERT INTO `transnode` VALUES ('52262600', '岑巩县网点', '3', '522626', null, null);
INSERT INTO `transnode` VALUES ('52262700', '天柱县网点', '3', '522627', null, null);
INSERT INTO `transnode` VALUES ('52262800', '锦屏县网点', '3', '522628', null, null);
INSERT INTO `transnode` VALUES ('52262900', '剑河县网点', '3', '522629', null, null);
INSERT INTO `transnode` VALUES ('52263000', '台江县网点', '3', '522630', null, null);
INSERT INTO `transnode` VALUES ('52263100', '黎平县网点', '3', '522631', null, null);
INSERT INTO `transnode` VALUES ('52263200', '榕江县网点', '3', '522632', null, null);
INSERT INTO `transnode` VALUES ('52263300', '从江县网点', '3', '522633', null, null);
INSERT INTO `transnode` VALUES ('52263400', '雷山县网点', '3', '522634', null, null);
INSERT INTO `transnode` VALUES ('52263500', '麻江县网点', '3', '522635', null, null);
INSERT INTO `transnode` VALUES ('52263600', '丹寨县网点', '3', '522636', null, null);
INSERT INTO `transnode` VALUES ('52270000', '黔南布依族苗族自治州分拣中心', '2', '522700', null, null);
INSERT INTO `transnode` VALUES ('52270100', '都匀市网点', '3', '522701', null, null);
INSERT INTO `transnode` VALUES ('52270200', '福泉市网点', '3', '522702', null, null);
INSERT INTO `transnode` VALUES ('52272200', '荔波县网点', '3', '522722', null, null);
INSERT INTO `transnode` VALUES ('52272300', '贵定县网点', '3', '522723', null, null);
INSERT INTO `transnode` VALUES ('52272500', '瓮安县网点', '3', '522725', null, null);
INSERT INTO `transnode` VALUES ('52272600', '独山县网点', '3', '522726', null, null);
INSERT INTO `transnode` VALUES ('52272700', '平塘县网点', '3', '522727', null, null);
INSERT INTO `transnode` VALUES ('52272800', '罗甸县网点', '3', '522728', null, null);
INSERT INTO `transnode` VALUES ('52272900', '长顺县网点', '3', '522729', null, null);
INSERT INTO `transnode` VALUES ('52273000', '龙里县网点', '3', '522730', null, null);
INSERT INTO `transnode` VALUES ('52273100', '惠水县网点', '3', '522731', null, null);
INSERT INTO `transnode` VALUES ('52273200', '三都水族自治县网点', '3', '522732', null, null);
INSERT INTO `transnode` VALUES ('53000000', '云南省分拣中心', '1', '530000', null, null);
INSERT INTO `transnode` VALUES ('53010000', '昆明市分拣中心', '2', '530100', null, null);
INSERT INTO `transnode` VALUES ('53010100', '市辖区网点', '3', '530101', null, null);
INSERT INTO `transnode` VALUES ('53010200', '五华区网点', '3', '530102', null, null);
INSERT INTO `transnode` VALUES ('53010300', '盘龙区网点', '3', '530103', null, null);
INSERT INTO `transnode` VALUES ('53011100', '官渡区网点', '3', '530111', null, null);
INSERT INTO `transnode` VALUES ('53011200', '西山区网点', '3', '530112', null, null);
INSERT INTO `transnode` VALUES ('53011300', '东川区网点', '3', '530113', null, null);
INSERT INTO `transnode` VALUES ('53011400', '呈贡区网点', '3', '530114', null, null);
INSERT INTO `transnode` VALUES ('53012200', '晋宁县网点', '3', '530122', null, null);
INSERT INTO `transnode` VALUES ('53012400', '富民县网点', '3', '530124', null, null);
INSERT INTO `transnode` VALUES ('53012500', '宜良县网点', '3', '530125', null, null);
INSERT INTO `transnode` VALUES ('53012600', '石林彝族自治县网点', '3', '530126', null, null);
INSERT INTO `transnode` VALUES ('53012700', '嵩明县网点', '3', '530127', null, null);
INSERT INTO `transnode` VALUES ('53012800', '禄劝彝族苗族自治县网点', '3', '530128', null, null);
INSERT INTO `transnode` VALUES ('53012900', '寻甸回族彝族自治县网点', '3', '530129', null, null);
INSERT INTO `transnode` VALUES ('53018100', '安宁市网点', '3', '530181', null, null);
INSERT INTO `transnode` VALUES ('53030000', '曲靖市分拣中心', '2', '530300', null, null);
INSERT INTO `transnode` VALUES ('53030100', '市辖区网点', '3', '530301', null, null);
INSERT INTO `transnode` VALUES ('53030200', '麒麟区网点', '3', '530302', null, null);
INSERT INTO `transnode` VALUES ('53032100', '马龙县网点', '3', '530321', null, null);
INSERT INTO `transnode` VALUES ('53032200', '陆良县网点', '3', '530322', null, null);
INSERT INTO `transnode` VALUES ('53032300', '师宗县网点', '3', '530323', null, null);
INSERT INTO `transnode` VALUES ('53032400', '罗平县网点', '3', '530324', null, null);
INSERT INTO `transnode` VALUES ('53032500', '富源县网点', '3', '530325', null, null);
INSERT INTO `transnode` VALUES ('53032600', '会泽县网点', '3', '530326', null, null);
INSERT INTO `transnode` VALUES ('53032800', '沾益县网点', '3', '530328', null, null);
INSERT INTO `transnode` VALUES ('53038100', '宣威市网点', '3', '530381', null, null);
INSERT INTO `transnode` VALUES ('53040000', '玉溪市分拣中心', '2', '530400', null, null);
INSERT INTO `transnode` VALUES ('53040100', '市辖区网点', '3', '530401', null, null);
INSERT INTO `transnode` VALUES ('53040200', '红塔区网点', '3', '530402', null, null);
INSERT INTO `transnode` VALUES ('53042100', '江川县网点', '3', '530421', null, null);
INSERT INTO `transnode` VALUES ('53042200', '澄江县网点', '3', '530422', null, null);
INSERT INTO `transnode` VALUES ('53042300', '通海县网点', '3', '530423', null, null);
INSERT INTO `transnode` VALUES ('53042400', '华宁县网点', '3', '530424', null, null);
INSERT INTO `transnode` VALUES ('53042500', '易门县网点', '3', '530425', null, null);
INSERT INTO `transnode` VALUES ('53042600', '峨山彝族自治县网点', '3', '530426', null, null);
INSERT INTO `transnode` VALUES ('53042700', '新平彝族傣族自治县网点', '3', '530427', null, null);
INSERT INTO `transnode` VALUES ('53042800', '元江哈尼族彝族傣族自治县网点', '3', '530428', null, null);
INSERT INTO `transnode` VALUES ('53050000', '保山市分拣中心', '2', '530500', null, null);
INSERT INTO `transnode` VALUES ('53050100', '市辖区网点', '3', '530501', null, null);
INSERT INTO `transnode` VALUES ('53050200', '隆阳区网点', '3', '530502', null, null);
INSERT INTO `transnode` VALUES ('53052100', '施甸县网点', '3', '530521', null, null);
INSERT INTO `transnode` VALUES ('53052200', '腾冲县网点', '3', '530522', null, null);
INSERT INTO `transnode` VALUES ('53052300', '龙陵县网点', '3', '530523', null, null);
INSERT INTO `transnode` VALUES ('53052400', '昌宁县网点', '3', '530524', null, null);
INSERT INTO `transnode` VALUES ('53060000', '昭通市分拣中心', '2', '530600', null, null);
INSERT INTO `transnode` VALUES ('53060100', '市辖区网点', '3', '530601', null, null);
INSERT INTO `transnode` VALUES ('53060200', '昭阳区网点', '3', '530602', null, null);
INSERT INTO `transnode` VALUES ('53062100', '鲁甸县网点', '3', '530621', null, null);
INSERT INTO `transnode` VALUES ('53062200', '巧家县网点', '3', '530622', null, null);
INSERT INTO `transnode` VALUES ('53062300', '盐津县网点', '3', '530623', null, null);
INSERT INTO `transnode` VALUES ('53062400', '大关县网点', '3', '530624', null, null);
INSERT INTO `transnode` VALUES ('53062500', '永善县网点', '3', '530625', null, null);
INSERT INTO `transnode` VALUES ('53062600', '绥江县网点', '3', '530626', null, null);
INSERT INTO `transnode` VALUES ('53062700', '镇雄县网点', '3', '530627', null, null);
INSERT INTO `transnode` VALUES ('53062800', '彝良县网点', '3', '530628', null, null);
INSERT INTO `transnode` VALUES ('53062900', '威信县网点', '3', '530629', null, null);
INSERT INTO `transnode` VALUES ('53063000', '水富县网点', '3', '530630', null, null);
INSERT INTO `transnode` VALUES ('53070000', '丽江市分拣中心', '2', '530700', null, null);
INSERT INTO `transnode` VALUES ('53070100', '市辖区网点', '3', '530701', null, null);
INSERT INTO `transnode` VALUES ('53070200', '古城区网点', '3', '530702', null, null);
INSERT INTO `transnode` VALUES ('53072100', '玉龙纳西族自治县网点', '3', '530721', null, null);
INSERT INTO `transnode` VALUES ('53072200', '永胜县网点', '3', '530722', null, null);
INSERT INTO `transnode` VALUES ('53072300', '华坪县网点', '3', '530723', null, null);
INSERT INTO `transnode` VALUES ('53072400', '宁蒗彝族自治县网点', '3', '530724', null, null);
INSERT INTO `transnode` VALUES ('53080000', '普洱市分拣中心', '2', '530800', null, null);
INSERT INTO `transnode` VALUES ('53080100', '市辖区网点', '3', '530801', null, null);
INSERT INTO `transnode` VALUES ('53080200', '思茅区网点', '3', '530802', null, null);
INSERT INTO `transnode` VALUES ('53082100', '宁洱哈尼族彝族自治县网点', '3', '530821', null, null);
INSERT INTO `transnode` VALUES ('53082200', '墨江哈尼族自治县网点', '3', '530822', null, null);
INSERT INTO `transnode` VALUES ('53082300', '景东彝族自治县网点', '3', '530823', null, null);
INSERT INTO `transnode` VALUES ('53082400', '景谷傣族彝族自治县网点', '3', '530824', null, null);
INSERT INTO `transnode` VALUES ('53082500', '镇沅彝族哈尼族拉祜族自治县网点', '3', '530825', null, null);
INSERT INTO `transnode` VALUES ('53082600', '江城哈尼族彝族自治县网点', '3', '530826', null, null);
INSERT INTO `transnode` VALUES ('53082700', '孟连傣族拉祜族佤族自治县网点', '3', '530827', null, null);
INSERT INTO `transnode` VALUES ('53082800', '澜沧拉祜族自治县网点', '3', '530828', null, null);
INSERT INTO `transnode` VALUES ('53082900', '西盟佤族自治县网点', '3', '530829', null, null);
INSERT INTO `transnode` VALUES ('53090000', '临沧市分拣中心', '2', '530900', null, null);
INSERT INTO `transnode` VALUES ('53090100', '市辖区网点', '3', '530901', null, null);
INSERT INTO `transnode` VALUES ('53090200', '临翔区网点', '3', '530902', null, null);
INSERT INTO `transnode` VALUES ('53092100', '凤庆县网点', '3', '530921', null, null);
INSERT INTO `transnode` VALUES ('53092200', '云县网点', '3', '530922', null, null);
INSERT INTO `transnode` VALUES ('53092300', '永德县网点', '3', '530923', null, null);
INSERT INTO `transnode` VALUES ('53092400', '镇康县网点', '3', '530924', null, null);
INSERT INTO `transnode` VALUES ('53092500', '双江拉祜族佤族布朗族傣族自治县网点', '3', '530925', null, null);
INSERT INTO `transnode` VALUES ('53092600', '耿马傣族佤族自治县网点', '3', '530926', null, null);
INSERT INTO `transnode` VALUES ('53092700', '沧源佤族自治县网点', '3', '530927', null, null);
INSERT INTO `transnode` VALUES ('53230000', '楚雄彝族自治州分拣中心', '2', '532300', null, null);
INSERT INTO `transnode` VALUES ('53230100', '楚雄市网点', '3', '532301', null, null);
INSERT INTO `transnode` VALUES ('53232200', '双柏县网点', '3', '532322', null, null);
INSERT INTO `transnode` VALUES ('53232300', '牟定县网点', '3', '532323', null, null);
INSERT INTO `transnode` VALUES ('53232400', '南华县网点', '3', '532324', null, null);
INSERT INTO `transnode` VALUES ('53232500', '姚安县网点', '3', '532325', null, null);
INSERT INTO `transnode` VALUES ('53232600', '大姚县网点', '3', '532326', null, null);
INSERT INTO `transnode` VALUES ('53232700', '永仁县网点', '3', '532327', null, null);
INSERT INTO `transnode` VALUES ('53232800', '元谋县网点', '3', '532328', null, null);
INSERT INTO `transnode` VALUES ('53232900', '武定县网点', '3', '532329', null, null);
INSERT INTO `transnode` VALUES ('53233100', '禄丰县网点', '3', '532331', null, null);
INSERT INTO `transnode` VALUES ('53250000', '红河哈尼族彝族自治州分拣中心', '2', '532500', null, null);
INSERT INTO `transnode` VALUES ('53250100', '个旧市网点', '3', '532501', null, null);
INSERT INTO `transnode` VALUES ('53250200', '开远市网点', '3', '532502', null, null);
INSERT INTO `transnode` VALUES ('53250300', '蒙自市网点', '3', '532503', null, null);
INSERT INTO `transnode` VALUES ('53250400', '弥勒市网点', '3', '532504', null, null);
INSERT INTO `transnode` VALUES ('53252300', '屏边苗族自治县网点', '3', '532523', null, null);
INSERT INTO `transnode` VALUES ('53252400', '建水县网点', '3', '532524', null, null);
INSERT INTO `transnode` VALUES ('53252500', '石屏县网点', '3', '532525', null, null);
INSERT INTO `transnode` VALUES ('53252700', '泸西县网点', '3', '532527', null, null);
INSERT INTO `transnode` VALUES ('53252800', '元阳县网点', '3', '532528', null, null);
INSERT INTO `transnode` VALUES ('53252900', '红河县网点', '3', '532529', null, null);
INSERT INTO `transnode` VALUES ('53253000', '金平苗族瑶族傣族自治县网点', '3', '532530', null, null);
INSERT INTO `transnode` VALUES ('53253100', '绿春县网点', '3', '532531', null, null);
INSERT INTO `transnode` VALUES ('53253200', '河口瑶族自治县网点', '3', '532532', null, null);
INSERT INTO `transnode` VALUES ('53260000', '文山壮族苗族自治州分拣中心', '2', '532600', null, null);
INSERT INTO `transnode` VALUES ('53260100', '文山市网点', '3', '532601', null, null);
INSERT INTO `transnode` VALUES ('53262200', '砚山县网点', '3', '532622', null, null);
INSERT INTO `transnode` VALUES ('53262300', '西畴县网点', '3', '532623', null, null);
INSERT INTO `transnode` VALUES ('53262400', '麻栗坡县网点', '3', '532624', null, null);
INSERT INTO `transnode` VALUES ('53262500', '马关县网点', '3', '532625', null, null);
INSERT INTO `transnode` VALUES ('53262600', '丘北县网点', '3', '532626', null, null);
INSERT INTO `transnode` VALUES ('53262700', '广南县网点', '3', '532627', null, null);
INSERT INTO `transnode` VALUES ('53262800', '富宁县网点', '3', '532628', null, null);
INSERT INTO `transnode` VALUES ('53280000', '西双版纳傣族自治州分拣中心', '2', '532800', null, null);
INSERT INTO `transnode` VALUES ('53280100', '景洪市网点', '3', '532801', null, null);
INSERT INTO `transnode` VALUES ('53282200', '勐海县网点', '3', '532822', null, null);
INSERT INTO `transnode` VALUES ('53282300', '勐腊县网点', '3', '532823', null, null);
INSERT INTO `transnode` VALUES ('53290000', '大理白族自治州分拣中心', '2', '532900', null, null);
INSERT INTO `transnode` VALUES ('53290100', '大理市网点', '3', '532901', null, null);
INSERT INTO `transnode` VALUES ('53292200', '漾濞彝族自治县网点', '3', '532922', null, null);
INSERT INTO `transnode` VALUES ('53292300', '祥云县网点', '3', '532923', null, null);
INSERT INTO `transnode` VALUES ('53292400', '宾川县网点', '3', '532924', null, null);
INSERT INTO `transnode` VALUES ('53292500', '弥渡县网点', '3', '532925', null, null);
INSERT INTO `transnode` VALUES ('53292600', '南涧彝族自治县网点', '3', '532926', null, null);
INSERT INTO `transnode` VALUES ('53292700', '巍山彝族回族自治县网点', '3', '532927', null, null);
INSERT INTO `transnode` VALUES ('53292800', '永平县网点', '3', '532928', null, null);
INSERT INTO `transnode` VALUES ('53292900', '云龙县网点', '3', '532929', null, null);
INSERT INTO `transnode` VALUES ('53293000', '洱源县网点', '3', '532930', null, null);
INSERT INTO `transnode` VALUES ('53293100', '剑川县网点', '3', '532931', null, null);
INSERT INTO `transnode` VALUES ('53293200', '鹤庆县网点', '3', '532932', null, null);
INSERT INTO `transnode` VALUES ('53310000', '德宏傣族景颇族自治州分拣中心', '2', '533100', null, null);
INSERT INTO `transnode` VALUES ('53310200', '瑞丽市网点', '3', '533102', null, null);
INSERT INTO `transnode` VALUES ('53310300', '芒市网点', '3', '533103', null, null);
INSERT INTO `transnode` VALUES ('53312200', '梁河县网点', '3', '533122', null, null);
INSERT INTO `transnode` VALUES ('53312300', '盈江县网点', '3', '533123', null, null);
INSERT INTO `transnode` VALUES ('53312400', '陇川县网点', '3', '533124', null, null);
INSERT INTO `transnode` VALUES ('53330000', '怒江傈僳族自治州分拣中心', '2', '533300', null, null);
INSERT INTO `transnode` VALUES ('53332100', '泸水县网点', '3', '533321', null, null);
INSERT INTO `transnode` VALUES ('53332300', '福贡县网点', '3', '533323', null, null);
INSERT INTO `transnode` VALUES ('53332400', '贡山独龙族怒族自治县网点', '3', '533324', null, null);
INSERT INTO `transnode` VALUES ('53332500', '兰坪白族普米族自治县网点', '3', '533325', null, null);
INSERT INTO `transnode` VALUES ('53340000', '迪庆藏族自治州分拣中心', '2', '533400', null, null);
INSERT INTO `transnode` VALUES ('53342100', '香格里拉县网点', '3', '533421', null, null);
INSERT INTO `transnode` VALUES ('53342200', '德钦县网点', '3', '533422', null, null);
INSERT INTO `transnode` VALUES ('53342300', '维西傈僳族自治县网点', '3', '533423', null, null);
INSERT INTO `transnode` VALUES ('54000000', '西藏自治区分拣中心', '1', '540000', null, null);
INSERT INTO `transnode` VALUES ('54010000', '拉萨市分拣中心', '2', '540100', null, null);
INSERT INTO `transnode` VALUES ('54010100', '市辖区网点', '3', '540101', null, null);
INSERT INTO `transnode` VALUES ('54010200', '城关区网点', '3', '540102', null, null);
INSERT INTO `transnode` VALUES ('54012100', '林周县网点', '3', '540121', null, null);
INSERT INTO `transnode` VALUES ('54012200', '当雄县网点', '3', '540122', null, null);
INSERT INTO `transnode` VALUES ('54012300', '尼木县网点', '3', '540123', null, null);
INSERT INTO `transnode` VALUES ('54012400', '曲水县网点', '3', '540124', null, null);
INSERT INTO `transnode` VALUES ('54012500', '堆龙德庆县网点', '3', '540125', null, null);
INSERT INTO `transnode` VALUES ('54012600', '达孜县网点', '3', '540126', null, null);
INSERT INTO `transnode` VALUES ('54012700', '墨竹工卡县网点', '3', '540127', null, null);
INSERT INTO `transnode` VALUES ('54210000', '昌都地区分拣中心', '2', '542100', null, null);
INSERT INTO `transnode` VALUES ('54212100', '昌都县网点', '3', '542121', null, null);
INSERT INTO `transnode` VALUES ('54212200', '江达县网点', '3', '542122', null, null);
INSERT INTO `transnode` VALUES ('54212300', '贡觉县网点', '3', '542123', null, null);
INSERT INTO `transnode` VALUES ('54212400', '类乌齐县网点', '3', '542124', null, null);
INSERT INTO `transnode` VALUES ('54212500', '丁青县网点', '3', '542125', null, null);
INSERT INTO `transnode` VALUES ('54212600', '察雅县网点', '3', '542126', null, null);
INSERT INTO `transnode` VALUES ('54212700', '八宿县网点', '3', '542127', null, null);
INSERT INTO `transnode` VALUES ('54212800', '左贡县网点', '3', '542128', null, null);
INSERT INTO `transnode` VALUES ('54212900', '芒康县网点', '3', '542129', null, null);
INSERT INTO `transnode` VALUES ('54213200', '洛隆县网点', '3', '542132', null, null);
INSERT INTO `transnode` VALUES ('54213300', '边坝县网点', '3', '542133', null, null);
INSERT INTO `transnode` VALUES ('54220000', '山南地区分拣中心', '2', '542200', null, null);
INSERT INTO `transnode` VALUES ('54222100', '乃东县网点', '3', '542221', null, null);
INSERT INTO `transnode` VALUES ('54222200', '扎囊县网点', '3', '542222', null, null);
INSERT INTO `transnode` VALUES ('54222300', '贡嘎县网点', '3', '542223', null, null);
INSERT INTO `transnode` VALUES ('54222400', '桑日县网点', '3', '542224', null, null);
INSERT INTO `transnode` VALUES ('54222500', '琼结县网点', '3', '542225', null, null);
INSERT INTO `transnode` VALUES ('54222600', '曲松县网点', '3', '542226', null, null);
INSERT INTO `transnode` VALUES ('54222700', '措美县网点', '3', '542227', null, null);
INSERT INTO `transnode` VALUES ('54222800', '洛扎县网点', '3', '542228', null, null);
INSERT INTO `transnode` VALUES ('54222900', '加查县网点', '3', '542229', null, null);
INSERT INTO `transnode` VALUES ('54223100', '隆子县网点', '3', '542231', null, null);
INSERT INTO `transnode` VALUES ('54223200', '错那县网点', '3', '542232', null, null);
INSERT INTO `transnode` VALUES ('54223300', '浪卡子县网点', '3', '542233', null, null);
INSERT INTO `transnode` VALUES ('54230000', '日喀则地区分拣中心', '2', '542300', null, null);
INSERT INTO `transnode` VALUES ('54230100', '日喀则市网点', '3', '542301', null, null);
INSERT INTO `transnode` VALUES ('54232200', '南木林县网点', '3', '542322', null, null);
INSERT INTO `transnode` VALUES ('54232300', '江孜县网点', '3', '542323', null, null);
INSERT INTO `transnode` VALUES ('54232400', '定日县网点', '3', '542324', null, null);
INSERT INTO `transnode` VALUES ('54232500', '萨迦县网点', '3', '542325', null, null);
INSERT INTO `transnode` VALUES ('54232600', '拉孜县网点', '3', '542326', null, null);
INSERT INTO `transnode` VALUES ('54232700', '昂仁县网点', '3', '542327', null, null);
INSERT INTO `transnode` VALUES ('54232800', '谢通门县网点', '3', '542328', null, null);
INSERT INTO `transnode` VALUES ('54232900', '白朗县网点', '3', '542329', null, null);
INSERT INTO `transnode` VALUES ('54233000', '仁布县网点', '3', '542330', null, null);
INSERT INTO `transnode` VALUES ('54233100', '康马县网点', '3', '542331', null, null);
INSERT INTO `transnode` VALUES ('54233200', '定结县网点', '3', '542332', null, null);
INSERT INTO `transnode` VALUES ('54233300', '仲巴县网点', '3', '542333', null, null);
INSERT INTO `transnode` VALUES ('54233400', '亚东县网点', '3', '542334', null, null);
INSERT INTO `transnode` VALUES ('54233500', '吉隆县网点', '3', '542335', null, null);
INSERT INTO `transnode` VALUES ('54233600', '聂拉木县网点', '3', '542336', null, null);
INSERT INTO `transnode` VALUES ('54233700', '萨嘎县网点', '3', '542337', null, null);
INSERT INTO `transnode` VALUES ('54233800', '岗巴县网点', '3', '542338', null, null);
INSERT INTO `transnode` VALUES ('54240000', '那曲地区分拣中心', '2', '542400', null, null);
INSERT INTO `transnode` VALUES ('54242100', '那曲县网点', '3', '542421', null, null);
INSERT INTO `transnode` VALUES ('54242200', '嘉黎县网点', '3', '542422', null, null);
INSERT INTO `transnode` VALUES ('54242300', '比如县网点', '3', '542423', null, null);
INSERT INTO `transnode` VALUES ('54242400', '聂荣县网点', '3', '542424', null, null);
INSERT INTO `transnode` VALUES ('54242500', '安多县网点', '3', '542425', null, null);
INSERT INTO `transnode` VALUES ('54242600', '申扎县网点', '3', '542426', null, null);
INSERT INTO `transnode` VALUES ('54242700', '索县网点', '3', '542427', null, null);
INSERT INTO `transnode` VALUES ('54242800', '班戈县网点', '3', '542428', null, null);
INSERT INTO `transnode` VALUES ('54242900', '巴青县网点', '3', '542429', null, null);
INSERT INTO `transnode` VALUES ('54243000', '尼玛县网点', '3', '542430', null, null);
INSERT INTO `transnode` VALUES ('54243100', '双湖县网点', '3', '542431', null, null);
INSERT INTO `transnode` VALUES ('54250000', '阿里地区分拣中心', '2', '542500', null, null);
INSERT INTO `transnode` VALUES ('54252100', '普兰县网点', '3', '542521', null, null);
INSERT INTO `transnode` VALUES ('54252200', '札达县网点', '3', '542522', null, null);
INSERT INTO `transnode` VALUES ('54252300', '噶尔县网点', '3', '542523', null, null);
INSERT INTO `transnode` VALUES ('54252400', '日土县网点', '3', '542524', null, null);
INSERT INTO `transnode` VALUES ('54252500', '革吉县网点', '3', '542525', null, null);
INSERT INTO `transnode` VALUES ('54252600', '改则县网点', '3', '542526', null, null);
INSERT INTO `transnode` VALUES ('54252700', '措勤县网点', '3', '542527', null, null);
INSERT INTO `transnode` VALUES ('54260000', '林芝地区分拣中心', '2', '542600', null, null);
INSERT INTO `transnode` VALUES ('54262100', '林芝县网点', '3', '542621', null, null);
INSERT INTO `transnode` VALUES ('54262200', '工布江达县网点', '3', '542622', null, null);
INSERT INTO `transnode` VALUES ('54262300', '米林县网点', '3', '542623', null, null);
INSERT INTO `transnode` VALUES ('54262400', '墨脱县网点', '3', '542624', null, null);
INSERT INTO `transnode` VALUES ('54262500', '波密县网点', '3', '542625', null, null);
INSERT INTO `transnode` VALUES ('54262600', '察隅县网点', '3', '542626', null, null);
INSERT INTO `transnode` VALUES ('54262700', '朗县网点', '3', '542627', null, null);
INSERT INTO `transnode` VALUES ('61000000', '陕西省分拣中心', '1', '610000', null, null);
INSERT INTO `transnode` VALUES ('61010000', '西安市分拣中心', '2', '610100', null, null);
INSERT INTO `transnode` VALUES ('61010100', '市辖区网点', '3', '610101', null, null);
INSERT INTO `transnode` VALUES ('61010200', '新城区网点', '3', '610102', null, null);
INSERT INTO `transnode` VALUES ('61010300', '碑林区网点', '3', '610103', null, null);
INSERT INTO `transnode` VALUES ('61010400', '莲湖区网点', '3', '610104', null, null);
INSERT INTO `transnode` VALUES ('61011100', '灞桥区网点', '3', '610111', null, null);
INSERT INTO `transnode` VALUES ('61011200', '未央区网点', '3', '610112', null, null);
INSERT INTO `transnode` VALUES ('61011300', '雁塔区网点', '3', '610113', null, null);
INSERT INTO `transnode` VALUES ('61011400', '阎良区网点', '3', '610114', null, null);
INSERT INTO `transnode` VALUES ('61011500', '临潼区网点', '3', '610115', null, null);
INSERT INTO `transnode` VALUES ('61011600', '长安区网点', '3', '610116', null, null);
INSERT INTO `transnode` VALUES ('61012200', '蓝田县网点', '3', '610122', null, null);
INSERT INTO `transnode` VALUES ('61012400', '周至县网点', '3', '610124', null, null);
INSERT INTO `transnode` VALUES ('61012500', '户县网点', '3', '610125', null, null);
INSERT INTO `transnode` VALUES ('61012600', '高陵县网点', '3', '610126', null, null);
INSERT INTO `transnode` VALUES ('61020000', '铜川市分拣中心', '2', '610200', null, null);
INSERT INTO `transnode` VALUES ('61020100', '市辖区网点', '3', '610201', null, null);
INSERT INTO `transnode` VALUES ('61020200', '王益区网点', '3', '610202', null, null);
INSERT INTO `transnode` VALUES ('61020300', '印台区网点', '3', '610203', null, null);
INSERT INTO `transnode` VALUES ('61020400', '耀州区网点', '3', '610204', null, null);
INSERT INTO `transnode` VALUES ('61022200', '宜君县网点', '3', '610222', null, null);
INSERT INTO `transnode` VALUES ('61030000', '宝鸡市分拣中心', '2', '610300', null, null);
INSERT INTO `transnode` VALUES ('61030100', '市辖区网点', '3', '610301', null, null);
INSERT INTO `transnode` VALUES ('61030200', '渭滨区网点', '3', '610302', null, null);
INSERT INTO `transnode` VALUES ('61030300', '金台区网点', '3', '610303', null, null);
INSERT INTO `transnode` VALUES ('61030400', '陈仓区网点', '3', '610304', null, null);
INSERT INTO `transnode` VALUES ('61032200', '凤翔县网点', '3', '610322', null, null);
INSERT INTO `transnode` VALUES ('61032300', '岐山县网点', '3', '610323', null, null);
INSERT INTO `transnode` VALUES ('61032400', '扶风县网点', '3', '610324', null, null);
INSERT INTO `transnode` VALUES ('61032600', '眉县网点', '3', '610326', null, null);
INSERT INTO `transnode` VALUES ('61032700', '陇县网点', '3', '610327', null, null);
INSERT INTO `transnode` VALUES ('61032800', '千阳县网点', '3', '610328', null, null);
INSERT INTO `transnode` VALUES ('61032900', '麟游县网点', '3', '610329', null, null);
INSERT INTO `transnode` VALUES ('61033000', '凤县网点', '3', '610330', null, null);
INSERT INTO `transnode` VALUES ('61033100', '太白县网点', '3', '610331', null, null);
INSERT INTO `transnode` VALUES ('61040000', '咸阳市分拣中心', '2', '610400', null, null);
INSERT INTO `transnode` VALUES ('61040100', '市辖区网点', '3', '610401', null, null);
INSERT INTO `transnode` VALUES ('61040200', '秦都区网点', '3', '610402', null, null);
INSERT INTO `transnode` VALUES ('61040300', '杨陵区网点', '3', '610403', null, null);
INSERT INTO `transnode` VALUES ('61040400', '渭城区网点', '3', '610404', null, null);
INSERT INTO `transnode` VALUES ('61042200', '三原县网点', '3', '610422', null, null);
INSERT INTO `transnode` VALUES ('61042300', '泾阳县网点', '3', '610423', null, null);
INSERT INTO `transnode` VALUES ('61042400', '乾县网点', '3', '610424', null, null);
INSERT INTO `transnode` VALUES ('61042500', '礼泉县网点', '3', '610425', null, null);
INSERT INTO `transnode` VALUES ('61042600', '永寿县网点', '3', '610426', null, null);
INSERT INTO `transnode` VALUES ('61042700', '彬县网点', '3', '610427', null, null);
INSERT INTO `transnode` VALUES ('61042800', '长武县网点', '3', '610428', null, null);
INSERT INTO `transnode` VALUES ('61042900', '旬邑县网点', '3', '610429', null, null);
INSERT INTO `transnode` VALUES ('61043000', '淳化县网点', '3', '610430', null, null);
INSERT INTO `transnode` VALUES ('61043100', '武功县网点', '3', '610431', null, null);
INSERT INTO `transnode` VALUES ('61048100', '兴平市网点', '3', '610481', null, null);
INSERT INTO `transnode` VALUES ('61050000', '渭南市分拣中心', '2', '610500', null, null);
INSERT INTO `transnode` VALUES ('61050100', '市辖区网点', '3', '610501', null, null);
INSERT INTO `transnode` VALUES ('61050200', '临渭区网点', '3', '610502', null, null);
INSERT INTO `transnode` VALUES ('61052100', '华县网点', '3', '610521', null, null);
INSERT INTO `transnode` VALUES ('61052200', '潼关县网点', '3', '610522', null, null);
INSERT INTO `transnode` VALUES ('61052300', '大荔县网点', '3', '610523', null, null);
INSERT INTO `transnode` VALUES ('61052400', '合阳县网点', '3', '610524', null, null);
INSERT INTO `transnode` VALUES ('61052500', '澄城县网点', '3', '610525', null, null);
INSERT INTO `transnode` VALUES ('61052600', '蒲城县网点', '3', '610526', null, null);
INSERT INTO `transnode` VALUES ('61052700', '白水县网点', '3', '610527', null, null);
INSERT INTO `transnode` VALUES ('61052800', '富平县网点', '3', '610528', null, null);
INSERT INTO `transnode` VALUES ('61058100', '韩城市网点', '3', '610581', null, null);
INSERT INTO `transnode` VALUES ('61058200', '华阴市网点', '3', '610582', null, null);
INSERT INTO `transnode` VALUES ('61060000', '延安市分拣中心', '2', '610600', null, null);
INSERT INTO `transnode` VALUES ('61060100', '市辖区网点', '3', '610601', null, null);
INSERT INTO `transnode` VALUES ('61060200', '宝塔区网点', '3', '610602', null, null);
INSERT INTO `transnode` VALUES ('61062100', '延长县网点', '3', '610621', null, null);
INSERT INTO `transnode` VALUES ('61062200', '延川县网点', '3', '610622', null, null);
INSERT INTO `transnode` VALUES ('61062300', '子长县网点', '3', '610623', null, null);
INSERT INTO `transnode` VALUES ('61062400', '安塞县网点', '3', '610624', null, null);
INSERT INTO `transnode` VALUES ('61062500', '志丹县网点', '3', '610625', null, null);
INSERT INTO `transnode` VALUES ('61062600', '吴起县网点', '3', '610626', null, null);
INSERT INTO `transnode` VALUES ('61062700', '甘泉县网点', '3', '610627', null, null);
INSERT INTO `transnode` VALUES ('61062800', '富县网点', '3', '610628', null, null);
INSERT INTO `transnode` VALUES ('61062900', '洛川县网点', '3', '610629', null, null);
INSERT INTO `transnode` VALUES ('61063000', '宜川县网点', '3', '610630', null, null);
INSERT INTO `transnode` VALUES ('61063100', '黄龙县网点', '3', '610631', null, null);
INSERT INTO `transnode` VALUES ('61063200', '黄陵县网点', '3', '610632', null, null);
INSERT INTO `transnode` VALUES ('61070000', '汉中市分拣中心', '2', '610700', null, null);
INSERT INTO `transnode` VALUES ('61070100', '市辖区网点', '3', '610701', null, null);
INSERT INTO `transnode` VALUES ('61070200', '汉台区网点', '3', '610702', null, null);
INSERT INTO `transnode` VALUES ('61072100', '南郑县网点', '3', '610721', null, null);
INSERT INTO `transnode` VALUES ('61072200', '城固县网点', '3', '610722', null, null);
INSERT INTO `transnode` VALUES ('61072300', '洋县网点', '3', '610723', null, null);
INSERT INTO `transnode` VALUES ('61072400', '西乡县网点', '3', '610724', null, null);
INSERT INTO `transnode` VALUES ('61072500', '勉县网点', '3', '610725', null, null);
INSERT INTO `transnode` VALUES ('61072600', '宁强县网点', '3', '610726', null, null);
INSERT INTO `transnode` VALUES ('61072700', '略阳县网点', '3', '610727', null, null);
INSERT INTO `transnode` VALUES ('61072800', '镇巴县网点', '3', '610728', null, null);
INSERT INTO `transnode` VALUES ('61072900', '留坝县网点', '3', '610729', null, null);
INSERT INTO `transnode` VALUES ('61073000', '佛坪县网点', '3', '610730', null, null);
INSERT INTO `transnode` VALUES ('61080000', '榆林市分拣中心', '2', '610800', null, null);
INSERT INTO `transnode` VALUES ('61080100', '市辖区网点', '3', '610801', null, null);
INSERT INTO `transnode` VALUES ('61080200', '榆阳区网点', '3', '610802', null, null);
INSERT INTO `transnode` VALUES ('61082100', '神木县网点', '3', '610821', null, null);
INSERT INTO `transnode` VALUES ('61082200', '府谷县网点', '3', '610822', null, null);
INSERT INTO `transnode` VALUES ('61082300', '横山县网点', '3', '610823', null, null);
INSERT INTO `transnode` VALUES ('61082400', '靖边县网点', '3', '610824', null, null);
INSERT INTO `transnode` VALUES ('61082500', '定边县网点', '3', '610825', null, null);
INSERT INTO `transnode` VALUES ('61082600', '绥德县网点', '3', '610826', null, null);
INSERT INTO `transnode` VALUES ('61082700', '米脂县网点', '3', '610827', null, null);
INSERT INTO `transnode` VALUES ('61082800', '佳县网点', '3', '610828', null, null);
INSERT INTO `transnode` VALUES ('61082900', '吴堡县网点', '3', '610829', null, null);
INSERT INTO `transnode` VALUES ('61083000', '清涧县网点', '3', '610830', null, null);
INSERT INTO `transnode` VALUES ('61083100', '子洲县网点', '3', '610831', null, null);
INSERT INTO `transnode` VALUES ('61090000', '安康市分拣中心', '2', '610900', null, null);
INSERT INTO `transnode` VALUES ('61090100', '市辖区网点', '3', '610901', null, null);
INSERT INTO `transnode` VALUES ('61090200', '汉滨区网点', '3', '610902', null, null);
INSERT INTO `transnode` VALUES ('61092100', '汉阴县网点', '3', '610921', null, null);
INSERT INTO `transnode` VALUES ('61092200', '石泉县网点', '3', '610922', null, null);
INSERT INTO `transnode` VALUES ('61092300', '宁陕县网点', '3', '610923', null, null);
INSERT INTO `transnode` VALUES ('61092400', '紫阳县网点', '3', '610924', null, null);
INSERT INTO `transnode` VALUES ('61092500', '岚皋县网点', '3', '610925', null, null);
INSERT INTO `transnode` VALUES ('61092600', '平利县网点', '3', '610926', null, null);
INSERT INTO `transnode` VALUES ('61092700', '镇坪县网点', '3', '610927', null, null);
INSERT INTO `transnode` VALUES ('61092800', '旬阳县网点', '3', '610928', null, null);
INSERT INTO `transnode` VALUES ('61092900', '白河县网点', '3', '610929', null, null);
INSERT INTO `transnode` VALUES ('61100000', '商洛市分拣中心', '2', '611000', null, null);
INSERT INTO `transnode` VALUES ('61100100', '市辖区网点', '3', '611001', null, null);
INSERT INTO `transnode` VALUES ('61100200', '商州区网点', '3', '611002', null, null);
INSERT INTO `transnode` VALUES ('61102100', '洛南县网点', '3', '611021', null, null);
INSERT INTO `transnode` VALUES ('61102200', '丹凤县网点', '3', '611022', null, null);
INSERT INTO `transnode` VALUES ('61102300', '商南县网点', '3', '611023', null, null);
INSERT INTO `transnode` VALUES ('61102400', '山阳县网点', '3', '611024', null, null);
INSERT INTO `transnode` VALUES ('61102500', '镇安县网点', '3', '611025', null, null);
INSERT INTO `transnode` VALUES ('61102600', '柞水县网点', '3', '611026', null, null);
INSERT INTO `transnode` VALUES ('62000000', '甘肃省分拣中心', '1', '620000', null, null);
INSERT INTO `transnode` VALUES ('62010000', '兰州市分拣中心', '2', '620100', null, null);
INSERT INTO `transnode` VALUES ('62010100', '市辖区网点', '3', '620101', null, null);
INSERT INTO `transnode` VALUES ('62010200', '城关区网点', '3', '620102', null, null);
INSERT INTO `transnode` VALUES ('62010300', '七里河区网点', '3', '620103', null, null);
INSERT INTO `transnode` VALUES ('62010400', '西固区网点', '3', '620104', null, null);
INSERT INTO `transnode` VALUES ('62010500', '安宁区网点', '3', '620105', null, null);
INSERT INTO `transnode` VALUES ('62011100', '红古区网点', '3', '620111', null, null);
INSERT INTO `transnode` VALUES ('62012100', '永登县网点', '3', '620121', null, null);
INSERT INTO `transnode` VALUES ('62012200', '皋兰县网点', '3', '620122', null, null);
INSERT INTO `transnode` VALUES ('62012300', '榆中县网点', '3', '620123', null, null);
INSERT INTO `transnode` VALUES ('62020000', '嘉峪关市分拣中心', '2', '620200', null, null);
INSERT INTO `transnode` VALUES ('62020100', '市辖区网点', '3', '620201', null, null);
INSERT INTO `transnode` VALUES ('62030000', '金昌市分拣中心', '2', '620300', null, null);
INSERT INTO `transnode` VALUES ('62030100', '市辖区网点', '3', '620301', null, null);
INSERT INTO `transnode` VALUES ('62030200', '金川区网点', '3', '620302', null, null);
INSERT INTO `transnode` VALUES ('62032100', '永昌县网点', '3', '620321', null, null);
INSERT INTO `transnode` VALUES ('62040000', '白银市分拣中心', '2', '620400', null, null);
INSERT INTO `transnode` VALUES ('62040100', '市辖区网点', '3', '620401', null, null);
INSERT INTO `transnode` VALUES ('62040200', '白银区网点', '3', '620402', null, null);
INSERT INTO `transnode` VALUES ('62040300', '平川区网点', '3', '620403', null, null);
INSERT INTO `transnode` VALUES ('62042100', '靖远县网点', '3', '620421', null, null);
INSERT INTO `transnode` VALUES ('62042200', '会宁县网点', '3', '620422', null, null);
INSERT INTO `transnode` VALUES ('62042300', '景泰县网点', '3', '620423', null, null);
INSERT INTO `transnode` VALUES ('62050000', '天水市分拣中心', '2', '620500', null, null);
INSERT INTO `transnode` VALUES ('62050100', '市辖区网点', '3', '620501', null, null);
INSERT INTO `transnode` VALUES ('62050200', '秦州区网点', '3', '620502', null, null);
INSERT INTO `transnode` VALUES ('62050300', '麦积区网点', '3', '620503', null, null);
INSERT INTO `transnode` VALUES ('62052100', '清水县网点', '3', '620521', null, null);
INSERT INTO `transnode` VALUES ('62052200', '秦安县网点', '3', '620522', null, null);
INSERT INTO `transnode` VALUES ('62052300', '甘谷县网点', '3', '620523', null, null);
INSERT INTO `transnode` VALUES ('62052400', '武山县网点', '3', '620524', null, null);
INSERT INTO `transnode` VALUES ('62052500', '张家川回族自治县网点', '3', '620525', null, null);
INSERT INTO `transnode` VALUES ('62060000', '武威市分拣中心', '2', '620600', null, null);
INSERT INTO `transnode` VALUES ('62060100', '市辖区网点', '3', '620601', null, null);
INSERT INTO `transnode` VALUES ('62060200', '凉州区网点', '3', '620602', null, null);
INSERT INTO `transnode` VALUES ('62062100', '民勤县网点', '3', '620621', null, null);
INSERT INTO `transnode` VALUES ('62062200', '古浪县网点', '3', '620622', null, null);
INSERT INTO `transnode` VALUES ('62062300', '天祝藏族自治县网点', '3', '620623', null, null);
INSERT INTO `transnode` VALUES ('62070000', '张掖市分拣中心', '2', '620700', null, null);
INSERT INTO `transnode` VALUES ('62070100', '市辖区网点', '3', '620701', null, null);
INSERT INTO `transnode` VALUES ('62070200', '甘州区网点', '3', '620702', null, null);
INSERT INTO `transnode` VALUES ('62072100', '肃南裕固族自治县网点', '3', '620721', null, null);
INSERT INTO `transnode` VALUES ('62072200', '民乐县网点', '3', '620722', null, null);
INSERT INTO `transnode` VALUES ('62072300', '临泽县网点', '3', '620723', null, null);
INSERT INTO `transnode` VALUES ('62072400', '高台县网点', '3', '620724', null, null);
INSERT INTO `transnode` VALUES ('62072500', '山丹县网点', '3', '620725', null, null);
INSERT INTO `transnode` VALUES ('62080000', '平凉市分拣中心', '2', '620800', null, null);
INSERT INTO `transnode` VALUES ('62080100', '市辖区网点', '3', '620801', null, null);
INSERT INTO `transnode` VALUES ('62080200', '崆峒区网点', '3', '620802', null, null);
INSERT INTO `transnode` VALUES ('62082100', '泾川县网点', '3', '620821', null, null);
INSERT INTO `transnode` VALUES ('62082200', '灵台县网点', '3', '620822', null, null);
INSERT INTO `transnode` VALUES ('62082300', '崇信县网点', '3', '620823', null, null);
INSERT INTO `transnode` VALUES ('62082400', '华亭县网点', '3', '620824', null, null);
INSERT INTO `transnode` VALUES ('62082500', '庄浪县网点', '3', '620825', null, null);
INSERT INTO `transnode` VALUES ('62082600', '静宁县网点', '3', '620826', null, null);
INSERT INTO `transnode` VALUES ('62090000', '酒泉市分拣中心', '2', '620900', null, null);
INSERT INTO `transnode` VALUES ('62090100', '市辖区网点', '3', '620901', null, null);
INSERT INTO `transnode` VALUES ('62090200', '肃州区网点', '3', '620902', null, null);
INSERT INTO `transnode` VALUES ('62092100', '金塔县网点', '3', '620921', null, null);
INSERT INTO `transnode` VALUES ('62092200', '瓜州县网点', '3', '620922', null, null);
INSERT INTO `transnode` VALUES ('62092300', '肃北蒙古族自治县网点', '3', '620923', null, null);
INSERT INTO `transnode` VALUES ('62092400', '阿克塞哈萨克族自治县网点', '3', '620924', null, null);
INSERT INTO `transnode` VALUES ('62098100', '玉门市网点', '3', '620981', null, null);
INSERT INTO `transnode` VALUES ('62098200', '敦煌市网点', '3', '620982', null, null);
INSERT INTO `transnode` VALUES ('62100000', '庆阳市分拣中心', '2', '621000', null, null);
INSERT INTO `transnode` VALUES ('62100100', '市辖区网点', '3', '621001', null, null);
INSERT INTO `transnode` VALUES ('62100200', '西峰区网点', '3', '621002', null, null);
INSERT INTO `transnode` VALUES ('62102100', '庆城县网点', '3', '621021', null, null);
INSERT INTO `transnode` VALUES ('62102200', '环县网点', '3', '621022', null, null);
INSERT INTO `transnode` VALUES ('62102300', '华池县网点', '3', '621023', null, null);
INSERT INTO `transnode` VALUES ('62102400', '合水县网点', '3', '621024', null, null);
INSERT INTO `transnode` VALUES ('62102500', '正宁县网点', '3', '621025', null, null);
INSERT INTO `transnode` VALUES ('62102600', '宁县网点', '3', '621026', null, null);
INSERT INTO `transnode` VALUES ('62102700', '镇原县网点', '3', '621027', null, null);
INSERT INTO `transnode` VALUES ('62110000', '定西市分拣中心', '2', '621100', null, null);
INSERT INTO `transnode` VALUES ('62110100', '市辖区网点', '3', '621101', null, null);
INSERT INTO `transnode` VALUES ('62110200', '安定区网点', '3', '621102', null, null);
INSERT INTO `transnode` VALUES ('62112100', '通渭县网点', '3', '621121', null, null);
INSERT INTO `transnode` VALUES ('62112200', '陇西县网点', '3', '621122', null, null);
INSERT INTO `transnode` VALUES ('62112300', '渭源县网点', '3', '621123', null, null);
INSERT INTO `transnode` VALUES ('62112400', '临洮县网点', '3', '621124', null, null);
INSERT INTO `transnode` VALUES ('62112500', '漳县网点', '3', '621125', null, null);
INSERT INTO `transnode` VALUES ('62112600', '岷县网点', '3', '621126', null, null);
INSERT INTO `transnode` VALUES ('62120000', '陇南市分拣中心', '2', '621200', null, null);
INSERT INTO `transnode` VALUES ('62120100', '市辖区网点', '3', '621201', null, null);
INSERT INTO `transnode` VALUES ('62120200', '武都区网点', '3', '621202', null, null);
INSERT INTO `transnode` VALUES ('62122100', '成县网点', '3', '621221', null, null);
INSERT INTO `transnode` VALUES ('62122200', '文县网点', '3', '621222', null, null);
INSERT INTO `transnode` VALUES ('62122300', '宕昌县网点', '3', '621223', null, null);
INSERT INTO `transnode` VALUES ('62122400', '康县网点', '3', '621224', null, null);
INSERT INTO `transnode` VALUES ('62122500', '西和县网点', '3', '621225', null, null);
INSERT INTO `transnode` VALUES ('62122600', '礼县网点', '3', '621226', null, null);
INSERT INTO `transnode` VALUES ('62122700', '徽县网点', '3', '621227', null, null);
INSERT INTO `transnode` VALUES ('62122800', '两当县网点', '3', '621228', null, null);
INSERT INTO `transnode` VALUES ('62290000', '临夏回族自治州分拣中心', '2', '622900', null, null);
INSERT INTO `transnode` VALUES ('62290100', '临夏市网点', '3', '622901', null, null);
INSERT INTO `transnode` VALUES ('62292100', '临夏县网点', '3', '622921', null, null);
INSERT INTO `transnode` VALUES ('62292200', '康乐县网点', '3', '622922', null, null);
INSERT INTO `transnode` VALUES ('62292300', '永靖县网点', '3', '622923', null, null);
INSERT INTO `transnode` VALUES ('62292400', '广河县网点', '3', '622924', null, null);
INSERT INTO `transnode` VALUES ('62292500', '和政县网点', '3', '622925', null, null);
INSERT INTO `transnode` VALUES ('62292600', '东乡族自治县网点', '3', '622926', null, null);
INSERT INTO `transnode` VALUES ('62292700', '积石山保安族东乡族撒拉族自治县网点', '3', '622927', null, null);
INSERT INTO `transnode` VALUES ('62300000', '甘南藏族自治州分拣中心', '2', '623000', null, null);
INSERT INTO `transnode` VALUES ('62300100', '合作市网点', '3', '623001', null, null);
INSERT INTO `transnode` VALUES ('62302100', '临潭县网点', '3', '623021', null, null);
INSERT INTO `transnode` VALUES ('62302200', '卓尼县网点', '3', '623022', null, null);
INSERT INTO `transnode` VALUES ('62302300', '舟曲县网点', '3', '623023', null, null);
INSERT INTO `transnode` VALUES ('62302400', '迭部县网点', '3', '623024', null, null);
INSERT INTO `transnode` VALUES ('62302500', '玛曲县网点', '3', '623025', null, null);
INSERT INTO `transnode` VALUES ('62302600', '碌曲县网点', '3', '623026', null, null);
INSERT INTO `transnode` VALUES ('62302700', '夏河县网点', '3', '623027', null, null);
INSERT INTO `transnode` VALUES ('63000000', '青海省分拣中心', '1', '630000', null, null);
INSERT INTO `transnode` VALUES ('63010000', '西宁市分拣中心', '2', '630100', null, null);
INSERT INTO `transnode` VALUES ('63010100', '市辖区网点', '3', '630101', null, null);
INSERT INTO `transnode` VALUES ('63010200', '城东区网点', '3', '630102', null, null);
INSERT INTO `transnode` VALUES ('63010300', '城中区网点', '3', '630103', null, null);
INSERT INTO `transnode` VALUES ('63010400', '城西区网点', '3', '630104', null, null);
INSERT INTO `transnode` VALUES ('63010500', '城北区网点', '3', '630105', null, null);
INSERT INTO `transnode` VALUES ('63012100', '大通回族土族自治县网点', '3', '630121', null, null);
INSERT INTO `transnode` VALUES ('63012200', '湟中县网点', '3', '630122', null, null);
INSERT INTO `transnode` VALUES ('63012300', '湟源县网点', '3', '630123', null, null);
INSERT INTO `transnode` VALUES ('63020000', '海东市分拣中心', '2', '630200', null, null);
INSERT INTO `transnode` VALUES ('63020200', '乐都区网点', '3', '630202', null, null);
INSERT INTO `transnode` VALUES ('63022100', '平安县网点', '3', '630221', null, null);
INSERT INTO `transnode` VALUES ('63022200', '民和回族土族自治县网点', '3', '630222', null, null);
INSERT INTO `transnode` VALUES ('63022300', '互助土族自治县网点', '3', '630223', null, null);
INSERT INTO `transnode` VALUES ('63022400', '化隆回族自治县网点', '3', '630224', null, null);
INSERT INTO `transnode` VALUES ('63022500', '循化撒拉族自治县网点', '3', '630225', null, null);
INSERT INTO `transnode` VALUES ('63220000', '海北藏族自治州分拣中心', '2', '632200', null, null);
INSERT INTO `transnode` VALUES ('63222100', '门源回族自治县网点', '3', '632221', null, null);
INSERT INTO `transnode` VALUES ('63222200', '祁连县网点', '3', '632222', null, null);
INSERT INTO `transnode` VALUES ('63222300', '海晏县网点', '3', '632223', null, null);
INSERT INTO `transnode` VALUES ('63222400', '刚察县网点', '3', '632224', null, null);
INSERT INTO `transnode` VALUES ('63230000', '黄南藏族自治州分拣中心', '2', '632300', null, null);
INSERT INTO `transnode` VALUES ('63232100', '同仁县网点', '3', '632321', null, null);
INSERT INTO `transnode` VALUES ('63232200', '尖扎县网点', '3', '632322', null, null);
INSERT INTO `transnode` VALUES ('63232300', '泽库县网点', '3', '632323', null, null);
INSERT INTO `transnode` VALUES ('63232400', '河南蒙古族自治县网点', '3', '632324', null, null);
INSERT INTO `transnode` VALUES ('63250000', '海南藏族自治州分拣中心', '2', '632500', null, null);
INSERT INTO `transnode` VALUES ('63252100', '共和县网点', '3', '632521', null, null);
INSERT INTO `transnode` VALUES ('63252200', '同德县网点', '3', '632522', null, null);
INSERT INTO `transnode` VALUES ('63252300', '贵德县网点', '3', '632523', null, null);
INSERT INTO `transnode` VALUES ('63252400', '兴海县网点', '3', '632524', null, null);
INSERT INTO `transnode` VALUES ('63252500', '贵南县网点', '3', '632525', null, null);
INSERT INTO `transnode` VALUES ('63260000', '果洛藏族自治州分拣中心', '2', '632600', null, null);
INSERT INTO `transnode` VALUES ('63262100', '玛沁县网点', '3', '632621', null, null);
INSERT INTO `transnode` VALUES ('63262200', '班玛县网点', '3', '632622', null, null);
INSERT INTO `transnode` VALUES ('63262300', '甘德县网点', '3', '632623', null, null);
INSERT INTO `transnode` VALUES ('63262400', '达日县网点', '3', '632624', null, null);
INSERT INTO `transnode` VALUES ('63262500', '久治县网点', '3', '632625', null, null);
INSERT INTO `transnode` VALUES ('63262600', '玛多县网点', '3', '632626', null, null);
INSERT INTO `transnode` VALUES ('63270000', '玉树藏族自治州分拣中心', '2', '632700', null, null);
INSERT INTO `transnode` VALUES ('63270100', '玉树市网点', '3', '632701', null, null);
INSERT INTO `transnode` VALUES ('63272200', '杂多县网点', '3', '632722', null, null);
INSERT INTO `transnode` VALUES ('63272300', '称多县网点', '3', '632723', null, null);
INSERT INTO `transnode` VALUES ('63272400', '治多县网点', '3', '632724', null, null);
INSERT INTO `transnode` VALUES ('63272500', '囊谦县网点', '3', '632725', null, null);
INSERT INTO `transnode` VALUES ('63272600', '曲麻莱县网点', '3', '632726', null, null);
INSERT INTO `transnode` VALUES ('63280000', '海西蒙古族藏族自治州分拣中心', '2', '632800', null, null);
INSERT INTO `transnode` VALUES ('63280100', '格尔木市网点', '3', '632801', null, null);
INSERT INTO `transnode` VALUES ('63280200', '德令哈市网点', '3', '632802', null, null);
INSERT INTO `transnode` VALUES ('63282100', '乌兰县网点', '3', '632821', null, null);
INSERT INTO `transnode` VALUES ('63282200', '都兰县网点', '3', '632822', null, null);
INSERT INTO `transnode` VALUES ('63282300', '天峻县网点', '3', '632823', null, null);
INSERT INTO `transnode` VALUES ('64000000', '宁夏回族自治区分拣中心', '1', '640000', null, null);
INSERT INTO `transnode` VALUES ('64010000', '银川市分拣中心', '2', '640100', null, null);
INSERT INTO `transnode` VALUES ('64010100', '市辖区网点', '3', '640101', null, null);
INSERT INTO `transnode` VALUES ('64010400', '兴庆区网点', '3', '640104', null, null);
INSERT INTO `transnode` VALUES ('64010500', '西夏区网点', '3', '640105', null, null);
INSERT INTO `transnode` VALUES ('64010600', '金凤区网点', '3', '640106', null, null);
INSERT INTO `transnode` VALUES ('64012100', '永宁县网点', '3', '640121', null, null);
INSERT INTO `transnode` VALUES ('64012200', '贺兰县网点', '3', '640122', null, null);
INSERT INTO `transnode` VALUES ('64018100', '灵武市网点', '3', '640181', null, null);
INSERT INTO `transnode` VALUES ('64020000', '石嘴山市分拣中心', '2', '640200', null, null);
INSERT INTO `transnode` VALUES ('64020100', '市辖区网点', '3', '640201', null, null);
INSERT INTO `transnode` VALUES ('64020200', '大武口区网点', '3', '640202', null, null);
INSERT INTO `transnode` VALUES ('64020500', '惠农区网点', '3', '640205', null, null);
INSERT INTO `transnode` VALUES ('64022100', '平罗县网点', '3', '640221', null, null);
INSERT INTO `transnode` VALUES ('64030000', '吴忠市分拣中心', '2', '640300', null, null);
INSERT INTO `transnode` VALUES ('64030100', '市辖区网点', '3', '640301', null, null);
INSERT INTO `transnode` VALUES ('64030200', '利通区网点', '3', '640302', null, null);
INSERT INTO `transnode` VALUES ('64030300', '红寺堡区网点', '3', '640303', null, null);
INSERT INTO `transnode` VALUES ('64032300', '盐池县网点', '3', '640323', null, null);
INSERT INTO `transnode` VALUES ('64032400', '同心县网点', '3', '640324', null, null);
INSERT INTO `transnode` VALUES ('64038100', '青铜峡市网点', '3', '640381', null, null);
INSERT INTO `transnode` VALUES ('64040000', '固原市分拣中心', '2', '640400', null, null);
INSERT INTO `transnode` VALUES ('64040100', '市辖区网点', '3', '640401', null, null);
INSERT INTO `transnode` VALUES ('64040200', '原州区网点', '3', '640402', null, null);
INSERT INTO `transnode` VALUES ('64042200', '西吉县网点', '3', '640422', null, null);
INSERT INTO `transnode` VALUES ('64042300', '隆德县网点', '3', '640423', null, null);
INSERT INTO `transnode` VALUES ('64042400', '泾源县网点', '3', '640424', null, null);
INSERT INTO `transnode` VALUES ('64042500', '彭阳县网点', '3', '640425', null, null);
INSERT INTO `transnode` VALUES ('64050000', '中卫市分拣中心', '2', '640500', null, null);
INSERT INTO `transnode` VALUES ('64050100', '市辖区网点', '3', '640501', null, null);
INSERT INTO `transnode` VALUES ('64050200', '沙坡头区网点', '3', '640502', null, null);
INSERT INTO `transnode` VALUES ('64052100', '中宁县网点', '3', '640521', null, null);
INSERT INTO `transnode` VALUES ('64052200', '海原县网点', '3', '640522', null, null);
INSERT INTO `transnode` VALUES ('65000000', '新疆维吾尔自治区分拣中心', '1', '650000', null, null);
INSERT INTO `transnode` VALUES ('65010000', '乌鲁木齐市分拣中心', '2', '650100', null, null);
INSERT INTO `transnode` VALUES ('65010100', '市辖区网点', '3', '650101', null, null);
INSERT INTO `transnode` VALUES ('65010200', '天山区网点', '3', '650102', null, null);
INSERT INTO `transnode` VALUES ('65010300', '沙依巴克区网点', '3', '650103', null, null);
INSERT INTO `transnode` VALUES ('65010400', '新市区网点', '3', '650104', null, null);
INSERT INTO `transnode` VALUES ('65010500', '水磨沟区网点', '3', '650105', null, null);
INSERT INTO `transnode` VALUES ('65010600', '头屯河区网点', '3', '650106', null, null);
INSERT INTO `transnode` VALUES ('65010700', '达坂城区网点', '3', '650107', null, null);
INSERT INTO `transnode` VALUES ('65010900', '米东区网点', '3', '650109', null, null);
INSERT INTO `transnode` VALUES ('65012100', '乌鲁木齐县网点', '3', '650121', null, null);
INSERT INTO `transnode` VALUES ('65020000', '克拉玛依市分拣中心', '2', '650200', null, null);
INSERT INTO `transnode` VALUES ('65020100', '市辖区网点', '3', '650201', null, null);
INSERT INTO `transnode` VALUES ('65020200', '独山子区网点', '3', '650202', null, null);
INSERT INTO `transnode` VALUES ('65020300', '克拉玛依区网点', '3', '650203', null, null);
INSERT INTO `transnode` VALUES ('65020400', '白碱滩区网点', '3', '650204', null, null);
INSERT INTO `transnode` VALUES ('65020500', '乌尔禾区网点', '3', '650205', null, null);
INSERT INTO `transnode` VALUES ('65210000', '吐鲁番地区分拣中心', '2', '652100', null, null);
INSERT INTO `transnode` VALUES ('65210100', '吐鲁番市网点', '3', '652101', null, null);
INSERT INTO `transnode` VALUES ('65212200', '鄯善县网点', '3', '652122', null, null);
INSERT INTO `transnode` VALUES ('65212300', '托克逊县网点', '3', '652123', null, null);
INSERT INTO `transnode` VALUES ('65220000', '哈密地区分拣中心', '2', '652200', null, null);
INSERT INTO `transnode` VALUES ('65220100', '哈密市网点', '3', '652201', null, null);
INSERT INTO `transnode` VALUES ('65222200', '巴里坤哈萨克自治县网点', '3', '652222', null, null);
INSERT INTO `transnode` VALUES ('65222300', '伊吾县网点', '3', '652223', null, null);
INSERT INTO `transnode` VALUES ('65230000', '昌吉回族自治州分拣中心', '2', '652300', null, null);
INSERT INTO `transnode` VALUES ('65230100', '昌吉市网点', '3', '652301', null, null);
INSERT INTO `transnode` VALUES ('65230200', '阜康市网点', '3', '652302', null, null);
INSERT INTO `transnode` VALUES ('65232300', '呼图壁县网点', '3', '652323', null, null);
INSERT INTO `transnode` VALUES ('65232400', '玛纳斯县网点', '3', '652324', null, null);
INSERT INTO `transnode` VALUES ('65232500', '奇台县网点', '3', '652325', null, null);
INSERT INTO `transnode` VALUES ('65232700', '吉木萨尔县网点', '3', '652327', null, null);
INSERT INTO `transnode` VALUES ('65232800', '木垒哈萨克自治县网点', '3', '652328', null, null);
INSERT INTO `transnode` VALUES ('65270000', '博尔塔拉蒙古自治州分拣中心', '2', '652700', null, null);
INSERT INTO `transnode` VALUES ('65270100', '博乐市网点', '3', '652701', null, null);
INSERT INTO `transnode` VALUES ('65270200', '阿拉山口市网点', '3', '652702', null, null);
INSERT INTO `transnode` VALUES ('65272200', '精河县网点', '3', '652722', null, null);
INSERT INTO `transnode` VALUES ('65272300', '温泉县网点', '3', '652723', null, null);
INSERT INTO `transnode` VALUES ('65280000', '巴音郭楞蒙古自治州分拣中心', '2', '652800', null, null);
INSERT INTO `transnode` VALUES ('65280100', '库尔勒市网点', '3', '652801', null, null);
INSERT INTO `transnode` VALUES ('65282200', '轮台县网点', '3', '652822', null, null);
INSERT INTO `transnode` VALUES ('65282300', '尉犁县网点', '3', '652823', null, null);
INSERT INTO `transnode` VALUES ('65282400', '若羌县网点', '3', '652824', null, null);
INSERT INTO `transnode` VALUES ('65282500', '且末县网点', '3', '652825', null, null);
INSERT INTO `transnode` VALUES ('65282600', '焉耆回族自治县网点', '3', '652826', null, null);
INSERT INTO `transnode` VALUES ('65282700', '和静县网点', '3', '652827', null, null);
INSERT INTO `transnode` VALUES ('65282800', '和硕县网点', '3', '652828', null, null);
INSERT INTO `transnode` VALUES ('65282900', '博湖县网点', '3', '652829', null, null);
INSERT INTO `transnode` VALUES ('65290000', '阿克苏地区分拣中心', '2', '652900', null, null);
INSERT INTO `transnode` VALUES ('65290100', '阿克苏市网点', '3', '652901', null, null);
INSERT INTO `transnode` VALUES ('65292200', '温宿县网点', '3', '652922', null, null);
INSERT INTO `transnode` VALUES ('65292300', '库车县网点', '3', '652923', null, null);
INSERT INTO `transnode` VALUES ('65292400', '沙雅县网点', '3', '652924', null, null);
INSERT INTO `transnode` VALUES ('65292500', '新和县网点', '3', '652925', null, null);
INSERT INTO `transnode` VALUES ('65292600', '拜城县网点', '3', '652926', null, null);
INSERT INTO `transnode` VALUES ('65292700', '乌什县网点', '3', '652927', null, null);
INSERT INTO `transnode` VALUES ('65292800', '阿瓦提县网点', '3', '652928', null, null);
INSERT INTO `transnode` VALUES ('65292900', '柯坪县网点', '3', '652929', null, null);
INSERT INTO `transnode` VALUES ('65300000', '克孜勒苏柯尔克孜自治州分拣中心', '2', '653000', null, null);
INSERT INTO `transnode` VALUES ('65300100', '阿图什市网点', '3', '653001', null, null);
INSERT INTO `transnode` VALUES ('65302200', '阿克陶县网点', '3', '653022', null, null);
INSERT INTO `transnode` VALUES ('65302300', '阿合奇县网点', '3', '653023', null, null);
INSERT INTO `transnode` VALUES ('65302400', '乌恰县网点', '3', '653024', null, null);
INSERT INTO `transnode` VALUES ('65310000', '喀什地区分拣中心', '2', '653100', null, null);
INSERT INTO `transnode` VALUES ('65310100', '喀什市网点', '3', '653101', null, null);
INSERT INTO `transnode` VALUES ('65312100', '疏附县网点', '3', '653121', null, null);
INSERT INTO `transnode` VALUES ('65312200', '疏勒县网点', '3', '653122', null, null);
INSERT INTO `transnode` VALUES ('65312300', '英吉沙县网点', '3', '653123', null, null);
INSERT INTO `transnode` VALUES ('65312400', '泽普县网点', '3', '653124', null, null);
INSERT INTO `transnode` VALUES ('65312500', '莎车县网点', '3', '653125', null, null);
INSERT INTO `transnode` VALUES ('65312600', '叶城县网点', '3', '653126', null, null);
INSERT INTO `transnode` VALUES ('65312700', '麦盖提县网点', '3', '653127', null, null);
INSERT INTO `transnode` VALUES ('65312800', '岳普湖县网点', '3', '653128', null, null);
INSERT INTO `transnode` VALUES ('65312900', '伽师县网点', '3', '653129', null, null);
INSERT INTO `transnode` VALUES ('65313000', '巴楚县网点', '3', '653130', null, null);
INSERT INTO `transnode` VALUES ('65313100', '塔什库尔干塔吉克自治县网点', '3', '653131', null, null);
INSERT INTO `transnode` VALUES ('65320000', '和田地区分拣中心', '2', '653200', null, null);
INSERT INTO `transnode` VALUES ('65320100', '和田市网点', '3', '653201', null, null);
INSERT INTO `transnode` VALUES ('65322100', '和田县网点', '3', '653221', null, null);
INSERT INTO `transnode` VALUES ('65322200', '墨玉县网点', '3', '653222', null, null);
INSERT INTO `transnode` VALUES ('65322300', '皮山县网点', '3', '653223', null, null);
INSERT INTO `transnode` VALUES ('65322400', '洛浦县网点', '3', '653224', null, null);
INSERT INTO `transnode` VALUES ('65322500', '策勒县网点', '3', '653225', null, null);
INSERT INTO `transnode` VALUES ('65322600', '于田县网点', '3', '653226', null, null);
INSERT INTO `transnode` VALUES ('65322700', '民丰县网点', '3', '653227', null, null);
INSERT INTO `transnode` VALUES ('65400000', '伊犁哈萨克自治州分拣中心', '2', '654000', null, null);
INSERT INTO `transnode` VALUES ('65400200', '伊宁市网点', '3', '654002', null, null);
INSERT INTO `transnode` VALUES ('65400300', '奎屯市网点', '3', '654003', null, null);
INSERT INTO `transnode` VALUES ('65402100', '伊宁县网点', '3', '654021', null, null);
INSERT INTO `transnode` VALUES ('65402200', '察布查尔锡伯自治县网点', '3', '654022', null, null);
INSERT INTO `transnode` VALUES ('65402300', '霍城县网点', '3', '654023', null, null);
INSERT INTO `transnode` VALUES ('65402400', '巩留县网点', '3', '654024', null, null);
INSERT INTO `transnode` VALUES ('65402500', '新源县网点', '3', '654025', null, null);
INSERT INTO `transnode` VALUES ('65402600', '昭苏县网点', '3', '654026', null, null);
INSERT INTO `transnode` VALUES ('65402700', '特克斯县网点', '3', '654027', null, null);
INSERT INTO `transnode` VALUES ('65402800', '尼勒克县网点', '3', '654028', null, null);
INSERT INTO `transnode` VALUES ('65420000', '塔城地区分拣中心', '2', '654200', null, null);
INSERT INTO `transnode` VALUES ('65420100', '塔城市网点', '3', '654201', null, null);
INSERT INTO `transnode` VALUES ('65420200', '乌苏市网点', '3', '654202', null, null);
INSERT INTO `transnode` VALUES ('65422100', '额敏县网点', '3', '654221', null, null);
INSERT INTO `transnode` VALUES ('65422300', '沙湾县网点', '3', '654223', null, null);
INSERT INTO `transnode` VALUES ('65422400', '托里县网点', '3', '654224', null, null);
INSERT INTO `transnode` VALUES ('65422500', '裕民县网点', '3', '654225', null, null);
INSERT INTO `transnode` VALUES ('65422600', '和布克赛尔蒙古自治县网点', '3', '654226', null, null);
INSERT INTO `transnode` VALUES ('65430000', '阿勒泰地区分拣中心', '2', '654300', null, null);
INSERT INTO `transnode` VALUES ('65430100', '阿勒泰市网点', '3', '654301', null, null);
INSERT INTO `transnode` VALUES ('65432100', '布尔津县网点', '3', '654321', null, null);
INSERT INTO `transnode` VALUES ('65432200', '富蕴县网点', '3', '654322', null, null);
INSERT INTO `transnode` VALUES ('65432300', '福海县网点', '3', '654323', null, null);
INSERT INTO `transnode` VALUES ('65432400', '哈巴河县网点', '3', '654324', null, null);
INSERT INTO `transnode` VALUES ('65432500', '青河县网点', '3', '654325', null, null);
INSERT INTO `transnode` VALUES ('65432600', '吉木乃县网点', '3', '654326', null, null);
INSERT INTO `transnode` VALUES ('65900000', '自治区直辖县级行政区划分拣中心', '2', '659000', null, null);
INSERT INTO `transnode` VALUES ('65900100', '石河子市网点', '3', '659001', null, null);
INSERT INTO `transnode` VALUES ('65900200', '阿拉尔市网点', '3', '659002', null, null);
INSERT INTO `transnode` VALUES ('65900300', '图木舒克市网点', '3', '659003', null, null);
INSERT INTO `transnode` VALUES ('65900400', '五家渠市网点', '3', '659004', null, null);

-- ----------------------------
-- Table structure for transpackage
-- ----------------------------
DROP TABLE IF EXISTS `transpackage`;
CREATE TABLE `transpackage` (
  `id` char(15) NOT NULL COMMENT '包裹id，1+8+6',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `packer` int(11) DEFAULT NULL COMMENT '打包人',
  `pack_time` datetime DEFAULT NULL COMMENT '打包时间',
  `unpacker` int(11) DEFAULT NULL COMMENT '拆包人',
  `unpack_time` datetime DEFAULT NULL COMMENT '拆包时间',
  `status` int(11) DEFAULT NULL COMMENT '包裹状态',
  `transporter` int(11) DEFAULT NULL COMMENT '运输员',
  `start_node` char(8) DEFAULT NULL COMMENT '出发地',
  `start_time` datetime DEFAULT NULL COMMENT '出发时间',
  `end_node` char(8) DEFAULT NULL COMMENT '目的地',
  `ender` int(11) DEFAULT NULL COMMENT '接收包裹人',
  `end_time` datetime DEFAULT NULL COMMENT '到达时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transpackage
-- ----------------------------
INSERT INTO `transpackage` VALUES ('211010000000001', '35', '2024-03-21 08:39:23', null, null, null, null, '0', null, '11010000', null, '11010100', null, null);
INSERT INTO `transpackage` VALUES ('211010000000002', '35', '2024-03-21 08:39:44', null, null, null, null, '0', null, '11010000', null, '11000000', null, null);
INSERT INTO `transpackage` VALUES ('211010100000001', '33', '2024-03-21 08:13:33', null, null, null, null, '0', null, '11010100', null, '11010000', null, null);
INSERT INTO `transpackage` VALUES ('211010100000002', '33', '2024-03-21 08:15:00', null, null, null, null, '0', null, '11010100', null, '11010000', null, null);
INSERT INTO `transpackage` VALUES ('211010100000003', '33', '2024-03-21 08:48:51', null, null, null, null, '0', null, '11010100', null, '11010000', null, null);
INSERT INTO `transpackage` VALUES ('234000000000001', '31', '2023-05-23 11:56:05', '31', '2023-05-23 11:56:32', '28', '2023-05-23 11:58:08', '4', '31', '34000000', '2023-05-23 11:56:38', '41000000', '31', '2023-05-23 11:56:45');
INSERT INTO `transpackage` VALUES ('234000000000002', '39', '2024-03-21 09:43:37', '39', '2024-03-21 09:43:51', '40', '2024-03-21 09:46:26', '4', '39', '34000000', '2024-03-21 09:45:45', '34010000', '39', '2024-03-21 09:45:46');
INSERT INTO `transpackage` VALUES ('234010000000001', '30', '2023-05-23 11:55:03', '30', '2023-05-23 11:55:15', '31', '2023-05-23 11:55:54', '4', '30', '34010000', '2023-05-23 11:55:18', '34000000', '30', '2023-05-23 11:55:20');
INSERT INTO `transpackage` VALUES ('234010000000002', '40', '2024-03-21 09:46:48', null, null, null, null, '0', null, '34010000', null, '34010100', null, null);
INSERT INTO `transpackage` VALUES ('234010000000003', '40', '2024-03-21 09:47:07', '40', '2024-03-21 09:47:15', '41', '2024-03-21 09:48:50', '4', '40', '34010000', '2024-03-21 09:47:19', '34010200', '40', '2024-03-21 09:47:21');
INSERT INTO `transpackage` VALUES ('234010200000001', '29', '2023-05-23 11:54:04', '29', '2023-05-23 11:54:14', '30', '2023-05-23 11:54:59', '4', '29', '34010200', '2023-05-23 11:54:19', '34010000', '29', '2023-05-23 11:54:21');
INSERT INTO `transpackage` VALUES ('234010200000002', '29', '2023-05-29 13:50:57', '29', '2023-05-29 13:51:32', '30', '2023-05-29 14:07:00', '4', '29', '34010200', '2023-05-29 13:57:18', '34010000', '29', '2023-05-29 13:57:25');
INSERT INTO `transpackage` VALUES ('234010200000003', '41', '2024-03-21 09:48:55', null, null, null, null, '0', null, '34010200', null, '34010000', null, null);
INSERT INTO `transpackage` VALUES ('234010200000004', '44', '2024-04-23 13:18:01', '44', '2024-04-23 13:18:09', null, null, '3', '44', '34010200', '2024-04-23 13:18:15', '34010000', '44', '2024-04-23 13:20:40');
INSERT INTO `transpackage` VALUES ('241000000000001', '28', '2023-05-23 11:58:15', '28', '2023-05-23 11:58:32', '27', '2023-05-23 12:00:36', '4', '28', '41000000', '2023-05-23 11:58:43', '41010000', '28', '2023-05-23 11:58:45');
INSERT INTO `transpackage` VALUES ('241000000000002', '34', '2024-03-21 09:41:06', '34', '2024-03-21 09:41:16', '39', '2024-03-21 09:43:28', '4', '34', '41000000', '2024-03-21 09:41:20', '34000000', '34', '2024-03-21 09:41:21');
INSERT INTO `transpackage` VALUES ('241010000000001', '27', '2023-05-23 12:00:44', '27', '2023-05-23 12:00:59', '26', '2023-05-23 12:01:39', '4', '27', '41010000', '2023-05-23 12:01:03', '41010200', '27', '2023-05-23 12:01:05');
INSERT INTO `transpackage` VALUES ('241010000000002', '38', '2024-03-21 09:36:43', '38', '2024-03-21 09:37:11', '34', '2024-03-21 09:40:52', '4', '38', '41010000', '2024-03-21 09:38:23', '41000000', '38', '2024-03-21 09:38:25');
INSERT INTO `transpackage` VALUES ('241010000000003', '38', '2024-03-27 17:13:15', '38', '2024-03-27 17:13:21', '34', '2024-03-27 17:16:03', '4', '38', '41010000', '2024-03-27 17:13:25', '41000000', '38', '2024-03-27 17:13:27');
INSERT INTO `transpackage` VALUES ('241010000000004', '38', '2024-03-27 17:48:59', '38', '2024-03-27 17:49:07', '34', '2024-03-27 17:50:53', '4', '38', '41010000', '2024-03-27 17:49:12', '41000000', '38', '2024-03-27 17:49:13');
INSERT INTO `transpackage` VALUES ('241010200000001', '37', '2024-03-21 08:58:51', '37', '2024-03-21 09:27:05', null, null, '3', '37', '41010200', '2024-03-21 09:27:09', '41010000', '37', '2024-03-21 09:27:23');
INSERT INTO `transpackage` VALUES ('241010200000002', '37', '2024-03-21 09:05:48', '37', '2024-03-21 09:06:23', null, null, '3', '37', '41010200', '2024-03-21 09:25:01', '41010000', '37', '2024-03-21 09:25:17');
INSERT INTO `transpackage` VALUES ('241010200000003', '37', '2024-03-21 09:07:34', '37', '2024-03-21 09:07:51', '38', '2024-03-21 09:36:33', '4', '37', '41010200', '2024-03-21 09:25:03', '41010000', '37', '2024-03-21 09:25:19');
INSERT INTO `transpackage` VALUES ('241010200000004', '37', '2024-03-27 16:21:37', '37', '2024-03-27 16:21:47', null, null, '3', '37', '41010200', '2024-03-27 16:21:52', '41010000', '37', '2024-03-27 16:59:47');
INSERT INTO `transpackage` VALUES ('241010200000005', '37', '2024-03-27 16:59:21', '37', '2024-03-27 16:59:40', '38', '2024-03-27 17:13:05', '4', '37', '41010200', '2024-03-27 17:02:28', '41010000', '37', '2024-03-27 17:02:30');
INSERT INTO `transpackage` VALUES ('241010200000006', '37', '2024-03-27 17:45:55', '37', '2024-03-27 17:46:12', '38', '2024-03-27 17:47:36', '4', '37', '41010200', '2024-03-27 17:46:15', '41010000', '37', '2024-03-27 17:46:17');

-- ----------------------------
-- Table structure for transpackagecontent
-- ----------------------------
DROP TABLE IF EXISTS `transpackagecontent`;
CREATE TABLE `transpackagecontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` char(15) DEFAULT NULL COMMENT '包裹id',
  `eid` char(15) DEFAULT NULL COMMENT '快件id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of transpackagecontent
-- ----------------------------
INSERT INTO `transpackagecontent` VALUES ('59', '234010200000001', '134010200000001');
INSERT INTO `transpackagecontent` VALUES ('60', '234010200000001', '134010200000002');
INSERT INTO `transpackagecontent` VALUES ('61', '234010000000001', '134010200000001');
INSERT INTO `transpackagecontent` VALUES ('62', '234010000000001', '134010200000002');
INSERT INTO `transpackagecontent` VALUES ('63', '234000000000001', '134010200000001');
INSERT INTO `transpackagecontent` VALUES ('64', '234000000000001', '134010200000002');
INSERT INTO `transpackagecontent` VALUES ('65', '241000000000001', '134010200000001');
INSERT INTO `transpackagecontent` VALUES ('66', '241000000000001', '134010200000002');
INSERT INTO `transpackagecontent` VALUES ('67', '241010000000001', '134010200000001');
INSERT INTO `transpackagecontent` VALUES ('68', '241010000000001', '134010200000002');
INSERT INTO `transpackagecontent` VALUES ('69', '234010200000002', '134010200000004');
INSERT INTO `transpackagecontent` VALUES ('70', '234010200000002', '134010200000003');
INSERT INTO `transpackagecontent` VALUES ('71', '241010200000002', '141010200000004');
INSERT INTO `transpackagecontent` VALUES ('72', '241010200000003', '141010200000005');
INSERT INTO `transpackagecontent` VALUES ('73', '241010200000001', '141010200000006');
INSERT INTO `transpackagecontent` VALUES ('74', '241010000000002', '141010200000005');
INSERT INTO `transpackagecontent` VALUES ('75', '241000000000002', '141010200000005');
INSERT INTO `transpackagecontent` VALUES ('76', '234000000000002', '141010200000005');
INSERT INTO `transpackagecontent` VALUES ('77', '234010000000003', '141010200000005');
INSERT INTO `transpackagecontent` VALUES ('78', '241010200000004', '141010200000007');
INSERT INTO `transpackagecontent` VALUES ('79', '241010200000005', '141010200000008');
INSERT INTO `transpackagecontent` VALUES ('80', '241010000000003', '141010200000008');
INSERT INTO `transpackagecontent` VALUES ('81', '241010200000006', '141010200000009');
INSERT INTO `transpackagecontent` VALUES ('82', '241010000000004', '141010200000009');
INSERT INTO `transpackagecontent` VALUES ('83', '234010200000004', '134010200000007');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名字',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `telcode` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '当前账户是否可用',
  `nid` char(8) DEFAULT NULL COMMENT '网点id',
  `rid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('26', 'root1', 'root1', '13f897e82e6a2b3e7a272f12f1d005f2', 'mhaSMY5UmlCKjvSeHBVClg==', '1', '1', '41010200', '1');
INSERT INTO `user` VALUES ('27', 'root2', 'root2', '7f4209740ed4777f8c31dba0e10b54d6', 'WyYp+p0T38rkOVJuVR03Pw==', '12', '1', '41010000', '2');
INSERT INTO `user` VALUES ('28', 'root3', 'root3', 'b63d3e763e2771dd4b3507592c1e1dd5', '4nI9rDTlZqBwHPQR1adVZw==', '123', '1', '41000000', '3');
INSERT INTO `user` VALUES ('29', 'root4', 'root4', '5bc2d8997936c2a2f726eb7480a5aec6', '677LDzKa8gbwYb4dCngLxQ==', '11', '1', '34010200', '1');
INSERT INTO `user` VALUES ('30', 'root5', 'root5', '859dce83f76ebce921d672c5fc72d7e5', 'yktOx7NE208vDRFstawcDg==', '21', '1', '34010000', '2');
INSERT INTO `user` VALUES ('31', 'root6', 'root6', '45a051d9c6af733a3226499849854706', 'lJOlzF+7LyVH7yJEjAF84g==', '321', '1', '34000000', '3');
INSERT INTO `user` VALUES ('32', '周志阳', '周志阳', '72f99852511e53b2b03a5f8074438576', 'YvIg6yZNXVV/W6Vu/SxOXQ==', '19337183870', '1', '11010100', '1');
INSERT INTO `user` VALUES ('33', '张宇博', '张宇博', 'defb276a07cc390aac2855a876efe15c', '4wzTez0NohcBWFWHD3vhPA==', '15286823330', '1', '11010100', '1');
INSERT INTO `user` VALUES ('34', '张宇博', '张宇博', '94b4d575612aa40e4f50d2bed5585214', 'BW+HSQzO9C5a4lqLBTXOVQ==', '419868285', '1', '41000000', '3');
INSERT INTO `user` VALUES ('35', '张宇博', '张宇博', 'a60da0165f12cfa7ee9f98ab6d832596', 'EhIW2FTAuVdP3h9EAv0fdQ==', '123456', '1', '11010000', '2');
INSERT INTO `user` VALUES ('36', '张宇博', '张宇博', '5078b3cb10afc1684c525db0c1169633', '05jj70LMhIpBkKhR7HwQmA==', '030525', '1', '41010200', '4');
INSERT INTO `user` VALUES ('37', '张宇博', '张宇博', '30a2a2c8909459b8585730c9f52f31df', 'z9/xh5e0RZTZBOMgMPMsag==', '111111', '1', '41010200', '1');
INSERT INTO `user` VALUES ('38', '张宇博', '张宇博', 'cd72c2f386508f851549af78e112aebf', 'xn6gMmh/XHg61IkIat9Krg==', '222222', '1', '41010000', '2');
INSERT INTO `user` VALUES ('39', '张宇博', '张宇博', 'a74b274af1430d5b865bd4c07b7114ee', 'gbzjX/ltAGnSUiC2wTMFQg==', '333333', '1', '34000000', '3');
INSERT INTO `user` VALUES ('40', '张宇博', '张宇博', 'de0a53d8e395116a633cae2f4053c348', 'GKu5GK0KN8XYzsQpp4uxnA==', '444444', '1', '34010000', '2');
INSERT INTO `user` VALUES ('41', '张宇博', '张宇博', '06f1b84d9c6ae8e0df5d3a72bf4d8b62', 'oIs5SELEZVjK2NEGQDjINA==', '555555', '1', '34010200', '1');
INSERT INTO `user` VALUES ('42', '张宇博', '张宇博', '1112de748b9d6c283d140834c46abdaf', 't/bkxwnBNBCEJ95Bi5OkGw==', '777777', '1', '41000000', '3');
INSERT INTO `user` VALUES ('43', '0000', '0000', '6aaacee45289bab9cc4caf0ad40a5b10', 'oQLk/+sTpJ4xx8vH18OjOg==', '0000', '1', '11000000', '3');
INSERT INTO `user` VALUES ('44', '1111', '1111', 'a599d339a99f25891e1afc588d3009bd', 'r5lnCn5IPaxxf7KUfeT7pA==', '1111', '1', '34010200', '1');
INSERT INTO `user` VALUES ('45', '2222', '2222', '2e2714f6c573b8bed0646af65a7c74b9', 'wIUoNpRPXp+87vkD2gmtKg==', '2222', '1', '34010000', '2');
INSERT INTO `user` VALUES ('46', '3333', '3333', 'da08b48bd1e8335b32174d671bc98c79', 'DDs/5Sg/ma2WZlELjDKK3g==', '3333', '1', '11010100', '1');
INSERT INTO `user` VALUES ('47', '4444', '4444', 'db5728c9203a2a297b3fb236e929044c', 'zs6PdKv6LnldgZeVRuxTqg==', '4444', '1', '11010200', '1');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `UID` int(10) NOT NULL AUTO_INCREMENT,
  `PWD` varchar(8) DEFAULT NULL,
  `Name` varchar(16) DEFAULT NULL,
  `URole` int(4) NOT NULL,
  `TelCode` varchar(24) NOT NULL,
  `Status` int(4) NOT NULL,
  `DptID` char(16) DEFAULT NULL,
  `ReceivePackageID` varchar(24) NOT NULL,
  `DeliverPackageID` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`UID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('11', 'aaaa', 'User11', '0', '13833554433', '0', '41010501', '1111112221', '1111113331');

-- ----------------------------
-- Table structure for userinfo_transpackage
-- ----------------------------
DROP TABLE IF EXISTS `userinfo_transpackage`;
CREATE TABLE `userinfo_transpackage` (
  `UserInfoUID` int(10) NOT NULL,
  `TransPackageID` char(24) NOT NULL,
  PRIMARY KEY (`UserInfoUID`,`TransPackageID`) USING BTREE,
  KEY `FKUserInfo_T811225` (`TransPackageID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of userinfo_transpackage
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-11 08:56:29', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-11 08:56:29', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-11 09:01:37');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-11 09:01:43');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 09:01:46');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-11 09:53:43');
INSERT INTO `sys_logininfor` VALUES (104, 'admin1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 09:53:49');
INSERT INTO `sys_logininfor` VALUES (105, 'admin1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-11 10:01:05');
INSERT INTO `sys_logininfor` VALUES (106, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-04-11 10:01:19');
INSERT INTO `sys_logininfor` VALUES (107, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-11 10:01:22');
INSERT INTO `sys_logininfor` VALUES (108, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 10:01:24');
INSERT INTO `sys_logininfor` VALUES (109, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-11 10:02:25');
INSERT INTO `sys_logininfor` VALUES (110, 'admin1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 10:02:34');
INSERT INTO `sys_logininfor` VALUES (111, 'admin1', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-04-11 10:04:21');
INSERT INTO `sys_logininfor` VALUES (112, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 10:04:37');
INSERT INTO `sys_logininfor` VALUES (113, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 14:07:48');
INSERT INTO `sys_logininfor` VALUES (114, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 15:09:56');
INSERT INTO `sys_logininfor` VALUES (115, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 17:49:06');
INSERT INTO `sys_logininfor` VALUES (116, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 20:25:05');
INSERT INTO `sys_logininfor` VALUES (117, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-11 23:19:52');
INSERT INTO `sys_logininfor` VALUES (118, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 01:14:29');
INSERT INTO `sys_logininfor` VALUES (119, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 16:49:50');
INSERT INTO `sys_logininfor` VALUES (120, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:41:00');
INSERT INTO `sys_logininfor` VALUES (121, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 18:43:40');
INSERT INTO `sys_logininfor` VALUES (122, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 20:08:42');
INSERT INTO `sys_logininfor` VALUES (123, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 20:41:31');
INSERT INTO `sys_logininfor` VALUES (124, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 21:56:07');
INSERT INTO `sys_logininfor` VALUES (125, 'system', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-13 19:07:07');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2005 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-04-11 08:56:29', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-04-11 08:56:29', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-11 08:56:29', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-11 08:56:29', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-11 08:56:29', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '1', 'system:dept:list', 'tree', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:35:03', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '1', 'system:post:list', 'post', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:34:59', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '1', 'system:dict:list', 'dict', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:34:44', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '1', 'system:config:list', 'edit', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:34:48', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-11 08:56:29', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '1', '', 'log', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:34:55', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-04-11 08:56:29', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-04-11 08:56:29', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-11 08:56:29', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '下单', 0, 5, 'placeorder', 'placeorder/placeorder/index', NULL, 1, 0, 'C', '0', '0', '', 'job', 'admin', '2024-04-11 09:11:06', 'system', '2024-04-11 22:09:55', '');
INSERT INTO `sys_menu` VALUES (2002, '快递管理', 0, 2, 'expresssys', NULL, NULL, 1, 0, 'M', '0', '0', '', 'cascader', 'system', '2024-04-11 21:18:15', 'system', '2024-04-12 20:51:44', '');
INSERT INTO `sys_menu` VALUES (2003, '快件管理', 2002, 1, 'express', 'expresssys/express/index', NULL, 1, 0, 'C', '0', '0', '', 'clipboard', 'system', '2024-04-11 21:29:44', 'system', '2024-04-14 14:18:52', '');
INSERT INTO `sys_menu` VALUES (2004, '历史订单', 2002, 3, 'viewhistoryorder', 'expresssys/viewhistoryorder/index', NULL, 1, 0, 'C', '0', '0', '', 'documentation', 'system', '2024-04-11 21:42:59', 'system', '2024-04-14 14:20:42', '');
INSERT INTO `sys_menu` VALUES (2005, '快递统计', 2002, 4, 'statistics', 'expresssys/statistics/index', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'system', '2024-04-12 20:48:38', 'system', '2024-04-14 14:20:48', '');
INSERT INTO `sys_menu` VALUES (2006, '快件查询', 0, 6, 'expressquery', 'expresssys/expressquery/index', NULL, 1, 0, 'C', '0', '0', '', 'search', 'system', '2024-04-13 21:34:20', 'system', '2024-04-14 21:51:46', '');
INSERT INTO `sys_menu` VALUES (2007, '网点查询', 0, 7, 'transnode', 'expresssys/transnode/index', NULL, 1, 0, 'C', '0', '0', NULL, 'international', 'system', '2024-04-13 21:36:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '包裹管理', 2002, 2, 'transpackage', 'expresssys/transpackage/index', NULL, 1, 0, 'C', '0', '0', NULL, 'zip', 'system', '2024-04-14 14:20:29', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2024-04-13 卓越快递系统正式开发啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-04-13 08:56:29', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2024-04-15 卓越快递系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-04-15 08:56:29', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(0) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/express/index\",\"createBy\":\"admin\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"快递管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"express\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:11:06', 38);
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:11:15', 9);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"express\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:13:18', 99);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"express\"}', NULL, 0, NULL, '2024-04-11 09:15:39', 224);
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '研发部门', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:51:47', 88);
INSERT INTO `sys_oper_log` VALUES (105, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"修改密码失败，旧密码错误\",\"code\":500}', 0, NULL, '2024-04-11 09:52:47', 79);
INSERT INTO `sys_oper_log` VALUES (106, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', '研发部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:52:52', 228);
INSERT INTO `sys_oper_log` VALUES (107, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin1', '测试部门', '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 09:54:04', 219);
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 08:56:29\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"admin\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 10:02:21', 50);
INSERT INTO `sys_oper_log` VALUES (109, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"system\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000],\"params\":{},\"roleId\":100,\"roleKey\":\"worker\",\"roleName\":\"员工\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 10:17:56', 63);
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"system\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"roleId\":101,\"roleKey\":\"customer\",\"roleName\":\"客户\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 10:18:40', 11);
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 08:56:29\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 10:19:08', 17);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 11:13:42', 26);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/111', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:13:48', 27);
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/112', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:13:51', 18);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/113', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:13:53', 14);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/114', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:13:55', 11);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:04', 9);
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:06', 9);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:10', 8);
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:13', 10);
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:16', 10);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:18', 8);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:20', 9);
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1046', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:25', 9);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:28', 10);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:30', 10);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:32', 8);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:14:35', 10);
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:24:22', 32);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:24:25', 11);
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1044', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:24:28', 10);
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/1045', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:24:30', 10);
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/501', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 11:24:35', 9);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/117', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 14:42:43', 26);
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 20:27:59', 18);
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 20:28:07', 3);
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 10:17:56\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":3,\"roleKey\":\"worker\",\"roleName\":\"员工\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:32:06', 93);
INSERT INTO `sys_oper_log` VALUES (138, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 08:56:29\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:32:13', 13);
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 20:32:54', 3);
INSERT INTO `sys_oper_log` VALUES (140, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 08:56:29\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"admin\",\"roleName\":\"管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:33:16', 24);
INSERT INTO `sys_oper_log` VALUES (141, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 10:17:56\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"roleId\":3,\"roleKey\":\"worker\",\"roleName\":\"员工\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:33:21', 12);
INSERT INTO `sys_oper_log` VALUES (142, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'system', '研发部门', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-11 10:18:40\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4],\"params\":{},\"roleId\":4,\"roleKey\":\"customer\",\"roleName\":\"客户\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"system\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:33:25', 11);
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 20:33:33', 4);
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 20:34:02', 4);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/express/index\",\"createTime\":\"2024-04-11 09:11:06\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"快递管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"express\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:34:06', 26);
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dict/index\",\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":105,\"menuName\":\"字典管理\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":1,\"path\":\"dict\",\"perms\":\"system:dict:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:34:44', 7);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/config/index\",\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":106,\"menuName\":\"参数设置\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":1,\"path\":\"config\",\"perms\":\"system:config:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:34:48', 9);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":108,\"menuName\":\"日志管理\",\"menuType\":\"M\",\"orderNum\":9,\"params\":{},\"parentId\":1,\"path\":\"log\",\"perms\":\"\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:34:55', 6);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/post/index\",\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"post\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":104,\"menuName\":\"岗位管理\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":1,\"path\":\"post\",\"perms\":\"system:post:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:34:59', 6);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/dept/index\",\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":103,\"menuName\":\"部门管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dept\",\"perms\":\"system:dept:list\",\"query\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 20:35:03', 5);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"快递管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"express\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"新增菜单\'快递管理\'失败，菜单名称已存在\",\"code\":500}', 0, NULL, '2024-04-11 21:09:20', 7);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'system', '研发部门', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2024-04-11 21:09:25', 8);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/express/index\",\"createTime\":\"2024-04-11 09:11:06\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"快递不管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"express\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:09:34', 8);
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"system\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"快递管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"expresssys\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:18:15', 11);
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/express/index\",\"createBy\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"快递管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"express\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:29:44', 10);
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/express/index\",\"createTime\":\"2024-04-11 21:29:44\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"快递管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"express\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:32:18', 16);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/viewhistoryorder/index\",\"createBy\":\"system\",\"icon\":\"documentation\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"历史订单\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"path\":\"viewhistoryorder\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 21:42:59', 22);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"placeorder/placeorder/index\",\"createTime\":\"2024-04-11 09:11:06\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"下单\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"placeorder\",\"perms\":\"\",\"status\":\"1\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 22:09:15', 34);
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"placeorder/placeorder/index\",\"createTime\":\"2024-04-11 09:11:06\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"下单\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"placeorder\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 22:09:26', 8);
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"placeorder/placeorder/index\",\"createTime\":\"2024-04-11 09:11:06\",\"icon\":\"job\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"下单\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"placeorder\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 22:09:55', 9);
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-11 08:56:29\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-11 22:10:18', 50);
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/statistics/index\",\"createBy\":\"system\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"快递统计\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2002,\"path\":\"express\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 20:48:38', 73);
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"expresssys/statistics/index\",\"createTime\":\"2024-04-12 20:48:38\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2005,\"menuName\":\"快递统计\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2002,\"path\":\"statistics\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 20:51:13', 11);
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'system', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-04-11 21:18:15\",\"icon\":\"cascader\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"快递管理\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"expresssys\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"system\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 20:51:44', 7);
INSERT INTO `sys_oper_log` VALUES (165, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'system', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"system\",\"email\":\"666@qq.com\",\"nickName\":\"客户\",\"params\":{},\"postIds\":[],\"roleIds\":[4],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"customer\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 19:08:15', 94);
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'system', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"system\",\"createTime\":\"2024-04-13 19:08:15\",\"delFlag\":\"0\",\"email\":\"666@qq.com\",\"loginIp\":\"\",\"nickName\":\"客户\",\"params\":{},\"phonenumber\":\"13333333333\",\"postIds\":[],\"roleIds\":[4],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":4,\"roleKey\":\"customer\",\"roleName\":\"客户\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"system\",\"userId\":100,\"userName\":\"customer\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 19:08:28', 20);
INSERT INTO `sys_oper_log` VALUES (167, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'system', '研发部门', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"system\",\"email\":\"12312@qq.com\",\"nickName\":\"员工\",\"params\":{},\"phonenumber\":\"13333333332\",\"postIds\":[],\"roleIds\":[3],\"status\":\"0\",\"userId\":101,\"userName\":\"worker\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-13 19:08:55', 80);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-04-11 08:56:29', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-04-11 08:56:29', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'system', 1, '1', 1, 1, '0', '0', 'admin', '2024-04-11 08:56:29', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '管理员', 'admin', 2, '2', 1, 1, '0', '0', 'admin', '2024-04-11 08:56:29', 'system', '2024-04-11 20:33:16', '普通角色');
INSERT INTO `sys_role` VALUES (3, '员工', 'worker', 3, '1', 1, 1, '0', '0', 'system', '2024-04-11 10:17:56', 'system', '2024-04-11 20:33:21', NULL);
INSERT INTO `sys_role` VALUES (4, '客户', 'customer', 4, '1', 1, 1, '0', '0', 'system', '2024-04-11 10:18:40', 'system', '2024-04-11 20:33:25', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2008);
INSERT INTO `sys_role_menu` VALUES (4, 2000);
INSERT INTO `sys_role_menu` VALUES (4, 2002);
INSERT INTO `sys_role_menu` VALUES (4, 2004);
INSERT INTO `sys_role_menu` VALUES (4, 2005);
INSERT INTO `sys_role_menu` VALUES (4, 2006);
INSERT INTO `sys_role_menu` VALUES (4, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 4);


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'system', '卓越快递', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$T2SHAEkAswQq4Pgxw.o/LOchPVWiRSHbGt.k3fIMvhCSSl01xsMLu', '0', '0', '127.0.0.1', '2024-04-13 19:07:08', 'admin', '2024-04-11 08:56:29', '', '2024-04-13 19:07:07', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'admin', '卓越快递', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$UsMGHx/L8VyfrXuWjNbGiOy3QTFir7nmnGcn/Utonwo4AZPmjxExG', '0', '0', '127.0.0.1', '2024-04-11 10:02:35', 'admin', '2024-04-11 08:56:29', '', '2024-04-11 10:02:34', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'customer', '客户', '00', '666@qq.com', '13333333333', '0', '', '$2a$10$P3c9HUxs2nrK0RSu1KV99e/I772fKfsKfPkiPNPjPcl88xBrtzQFC', '0', '0', '', NULL, 'system', '2024-04-13 19:08:15', 'system', '2024-04-13 19:08:28', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'worker', '员工', '00', '12312@qq.com', '13333333332', '0', '', '$2a$10$2F5FLdsi0GQeHVH4wvz4J.7skrbOgFSNCdnj9SwKIxUqieUnKyCMm', '0', '0', '', NULL, 'system', '2024-04-13 19:08:55', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 4);
INSERT INTO `sys_user_role` VALUES (101, 3);
