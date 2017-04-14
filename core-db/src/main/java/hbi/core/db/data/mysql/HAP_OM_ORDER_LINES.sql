SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for `hap_om_order_lines`
-- ----------------------------
DROP TABLE IF EXISTS `hap_om_order_lines`;
CREATE TABLE `hap_om_order_lines` (
  `LINE_ID`               BIGINT(20)   NOT NULL AUTO_INCREMENT
  COMMENT '订单行ID',
  `HEADER_ID`             BIGINT(20)   NOT NULL
  COMMENT '订单头ID',
  `LINE_NUMBER`           BIGINT(20)   NOT NULL
  COMMENT '行号',
  `INVENTORY_ITEM_ID`     BIGINT(20)   NOT NULL
  COMMENT '产品ID',
  `ORDERD_QUANTITY`       BIGINT(20)   NOT NULL
  COMMENT '数量',
  `ORDER_QUANTITY_UOM`    VARCHAR(30)  NOT NULL
  COMMENT '产品单位',
  `UNIT_SELLING_PRICE`    BIGINT(20)   NOT NULL
  COMMENT '销售单价',
  `DESCRIPTION`           VARCHAR(240)
  COMMENT '备注',
  `COMPANY_ID`            BIGINT(20)   NOT NULL
  COMMENT '公司ID',
  `ADDITION1`             VARCHAR(150)   DEFAULT NULL
  COMMENT '附加信息1',
  `ADDITION2`             VARCHAR(150)   DEFAULT NULL
  COMMENT '附加信息2',
  `ADDITION3`             VARCHAR(150)   DEFAULT NULL
  COMMENT '附加信息3',
  `ADDITION4`             VARCHAR(150)   DEFAULT NULL
  COMMENT '附加信息4',
  `ADDITION5`             VARCHAR(150)   DEFAULT NULL
  COMMENT '附加信息5',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0) DEFAULT '1'
  COMMENT '行版本号，用来处理锁',
  `REQUEST_ID`            BIGINT(20)     DEFAULT '-1'
  COMMENT '请求号',
  `PROGRAM_ID`            BIGINT(20)     DEFAULT '-1',
  `CREATION_DATE`         DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`            DECIMAL(20, 0) DEFAULT '-1',
  `LAST_UPDATED_BY`       DECIMAL(20, 0) DEFAULT '-1',
  `LAST_UPDATE_DATE`      DATETIME       DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN`     DECIMAL(20, 0) DEFAULT NULL,
  `ATTRIBUTE_CATEGORY`    VARCHAR(30)    DEFAULT NULL,
  `ATTRIBUTE1`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE2`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE3`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE4`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE5`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE6`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE7`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE8`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE9`            VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE10`           VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE11`           VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE12`           VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE13`           VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE14`           VARCHAR(240)   DEFAULT NULL,
  `ATTRIBUTE15`           VARCHAR(240)   DEFAULT NULL,
  PRIMARY KEY (`LINE_ID`),
  KEY `HAP_OM_ORDER_LINES _N1` (`HEADER_ID`),
  KEY `HAP_OM_ORDER_LINES _N2` (`INVENTORY_ITEM_ID`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8
  COMMENT = '销售订单行表';

-- ----------------------------
-- Records of hap_om_order_lines
-- ----------------------------


INSERT INTO `hap_om_order_lines` VALUES ('25', '2', '13', '1005', '2', 'EA', '700.00', null, '104', null, null, null, null, null, '4', '-1', '-1', '2017-04-06 14:10:43', '10008', '10001', '2017-04-08 01:34:02', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('5', '2', '1', '1002', '12', 'EA', '2200.00', 'ewrw', '104', 'sdfsdfsdf', 'aaaaaaaaaasdfsdfsdfsdf', 'sadfasdf', 'asdfasdf', null, '33', '-1', '-1', '2017-03-31 23:43:07', '10001', '10008', '2017-04-06 03:18:25', '10008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('24', '2', '12', '1003', '6', 'EA', '600.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-06 13:48:23', '10008', '10008', '2017-04-06 06:10:43', '10008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('14', '2', '5', '1003', '8', 'EA', '200.00', null, '104', 'sdfsdf', 'sdf', 'sdfsd', 'sdf', null, '30', '-1', '-1', '2017-04-01 11:00:52', '10001', '10001', '2017-04-08 01:21:29', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('21', '4', '1', '1005', '3', 'EA', '452.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-05 09:25:43', '10001', '10001', '2017-04-05 09:25:43', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('15', '2', '6', '1005', '3', 'EA', '300.00', null, '104', 'addition2', 'dfdf', null, null, null, '11', '-1', '-1', '2017-04-01 16:42:01', '10001', '10001', '2017-04-08 01:21:04', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('16', '2', '7', '1001', '3', 'EA', '400.00', null, '104', null, 'asdasd', null, null, null, '7', '-1', '-1', '2017-04-01 16:59:17', '10001', '10001', '2017-04-05 02:04:03', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('17', '2', '9', '1001', '3', 'EA', '300.00', null, '104', 'asdas', 'dfsdsdfd', null, null, null, '14', '-1', '-1', '2017-04-01 17:03:25', '10001', '10008', '2017-04-06 05:48:23', '10008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('18', '2', '8', '1004', '3', 'EA', '300.00', null, '104', 'erter', 'tewrwrw', 'rwerew', 'uytrew', null, '3', '-1', '-1', '2017-04-01 17:03:25', '10001', '10001', '2017-04-05 01:51:08', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('22', '2', '11', '1005', '6', 'EA', '200.00', null, '104', null, null, null, null, null, '3', '-1', '-1', '2017-04-06 13:42:30', '10008', '10008', '2017-04-06 05:49:02', '10008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('23', '2', '10', '1004', '2', 'EA', '300.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-06 13:42:30', '10008', '10008', '2017-04-06 13:42:30', '10008', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('26', '2', '14', '1004', '11', 'EA', '558.00', null, '104', null, null, null, null, null, '5', '-1', '-1', '2017-04-08 09:20:19', '10001', '10001', '2017-04-08 01:33:41', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('27', '2', '15', '1003', '4', 'EA', '700.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-08 09:34:03', '10001', '10001', '2017-04-08 02:04:01', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('28', '2', '18', '1004', '2', 'EA', '504.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-08 10:04:01', '10001', '10001', '2017-04-08 02:04:32', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('29', '2', '17', '1003', '2', 'EA', '730.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-08 10:04:02', '10001', '10001', '2017-04-08 02:04:32', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('30', '2', '16', '1003', '2', 'EA', '500.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-08 10:04:02', '10001', '10001', '2017-04-08 02:04:32', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('31', '2', '20', '1005', '1', 'EA', '1000.00', null, '104', null, null, null, null, null, '3', '-1', '-1', '2017-04-08 10:04:32', '10001', '10001', '2017-04-08 02:08:15', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('32', '2', '19', '1004', '2', 'EA', '400.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:04:32', '10001', '10001', '2017-04-08 10:04:32', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('33', '2', '21', '1003', '2', 'EA', '200.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:09:00', '10001', '10001', '2017-04-08 10:09:00', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('34', '2', '22', '1004', '2', 'EA', '444.00', null, '104', null, null, null, null, null, '3', '-1', '-1', '2017-04-08 10:09:59', '10001', '10001', '2017-04-10 02:44:22', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('35', '2', '23', '1003', '2', 'EA', '300.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:12:13', '10001', '10001', '2017-04-08 10:12:13', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('36', '2', '24', '1004', '3', 'EA', '400.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:12:21', '10001', '10001', '2017-04-08 10:12:21', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('37', '2', '25', '1005', '4', 'EA', '300.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:12:29', '10001', '10001', '2017-04-08 10:12:29', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('38', '2', '26', '1002', '3', 'EA', '300.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-08 10:12:35', '10001', '10001', '2017-04-08 10:12:35', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('39', '2', '28', '1003', '5', 'EA', '777.00', null, '104', null, 'asdf', null, null, null, '5', '-1', '-1', '2017-04-08 10:13:01', '10001', '10001', '2017-04-11 10:35:06', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('40', '2', '27', '1004', '3', 'EA', '543.00', null, '104', null, null, null, null, null, '2', '-1', '-1', '2017-04-08 10:13:01', '10001', '10001', '2017-04-11 10:35:06', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('42', '2', '31', '1003', '9', 'EA', '744.00', null, '104', null, 'dscdfasdf', 'sadfasdf', null, null, '8', '-1', '-1', '2017-04-08 10:14:02', '10001', '10001', '2017-04-11 10:34:27', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('43', '2', '30', '1003', '7', 'EA', '550.00', null, '104', null, 'asdfasdf', null, null, null, '5', '-1', '-1', '2017-04-08 10:14:02', '10001', '10001', '2017-04-11 10:34:27', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('45', '10', '2', '1004', '9', 'EA', '229.00', null, '104', null, null, null, null, null, '6', '-1', '-1', '2017-04-10 10:58:23', '10001', '10001', '2017-04-10 03:37:22', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('49', '2', '32', '1002', '2', 'EA', '400.00', null, '104', null, null, null, null, null, '1', '-1', '-1', '2017-04-11 23:27:00', '10001', '10001', '2017-04-11 23:27:00', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('51', '12', '1', '1002', '0', 'EA', '200.00', null, '101', null, null, null, null, null, '3', '-1', '-1', '2017-04-11 23:28:42', '10001', '10001', '2017-04-11 15:29:51', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('54', '2', '35', '1004', '11', 'EA', '200.00', null, '104', null, null, null, null, null, '3', '-1', '-1', '2017-04-12 09:44:59', '10001', '10001', '2017-04-12 05:04:21', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('55', '13', '2', '1005', '1', 'EA', '200.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 10:00:58', '10001', '10001', '2017-04-12 10:00:58', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('56', '13', '1', '1004', '3', 'EA', '400.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 10:00:58', '10001', '10001', '2017-04-12 10:00:58', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('57', '14', '1', '1001', '1', 'EA', '422.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:08:34', '10001', '10001', '2017-04-12 14:08:34', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('58', '14', '2', '1002', '2', 'EA', '200.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:08:46', '10001', '10001', '2017-04-12 14:08:46', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('59', '14', '11', '1004', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('60', '14', '10', '1005', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('61', '14', '9', '1004', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('62', '14', '8', '1004', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('63', '14', '7', '1004', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('64', '14', '6', '1004', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('65', '14', '5', '1002', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('66', '14', '4', '1001', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('67', '14', '3', '1001', '1', 'EA', '100.00', null, '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:13:09', '10001', '10001', '2017-04-12 14:13:09', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('68', '10', '3', '1001', '1', 'EA', '100.00', null, '104', '1', '2', '3', '4', null, '1', '-1', '-1', '2017-04-12 14:22:47', '10001', '10001', '2017-04-12 14:22:47', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_lines` VALUES ('69', '15', '1', '1002', '2', 'EA', '200.00', 'dsfsdf', '101', null, null, null, null, null, '1', '-1', '-1', '2017-04-12 14:28:24', '10001', '10001', '2017-04-12 14:28:24', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
