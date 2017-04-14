SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for `hap_om_order_headers`
-- ----------------------------
DROP TABLE IF EXISTS `hap_om_order_headers`;
CREATE TABLE `hap_om_order_headers` (
  `HEADER_ID`             BIGINT(20)  NOT NULL  NOT NULL AUTO_INCREMENT
  COMMENT '订单头ID',
  `ORDER_NUMBER`          VARCHAR(60) NOT NULL
  COMMENT '订单编号',
  `COMPANY_ID`            BIGINT(20)  NOT NULL
  COMMENT '公司ID',
  `ORDER_DATE`            DATETIME    NOT NULL
  COMMENT '订单日期',
  `ORDER_STATUS`          VARCHAR(30) NOT NULL
  COMMENT '订单状态',
  `CUSTOMER_ID`           BIGINT(20)  NOT NULL
  COMMENT '客户ID',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0)                 DEFAULT '1',
  `REQUEST_ID`            BIGINT(20)                     DEFAULT '-1'
  COMMENT '请求号',
  `PROGRAM_ID`            BIGINT(20)                     DEFAULT '-1',
  `CREATION_DATE`         DATETIME                       DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`            DECIMAL(20, 0)                 DEFAULT '-1',
  `LAST_UPDATED_BY`       DECIMAL(20, 0)                 DEFAULT '-1',
  `LAST_UPDATE_DATE`      DATETIME                       DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN`     DECIMAL(20, 0)                 DEFAULT NULL,
  `ATTRIBUTE_CATEGORY`    VARCHAR(30)                    DEFAULT NULL,
  `ATTRIBUTE1`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE2`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE3`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE4`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE5`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE6`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE7`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE8`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE9`            VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE10`           VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE11`           VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE12`           VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE13`           VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE14`           VARCHAR(240)                   DEFAULT NULL,
  `ATTRIBUTE15`           VARCHAR(240)                   DEFAULT NULL,
  PRIMARY KEY (`HEADER_ID`)
)
  ENGINE = MyISAM
  DEFAULT CHARSET = utf8
  COMMENT = '销售订单头表';

-- ----------------------------
-- Records of hap_om_order_headers
-- ----------------------------


INSERT INTO `hap_om_order_headers` VALUES ('5', 'dsds', '101', '2017-04-05 00:00:00', 'APPROVED', '203', '5', '-1', '-1', '2017-04-05 12:20:15', '10001', '10007', '2017-04-05 06:33:10', '10007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('2', '324', '104', '2017-03-18 11:30:00', 'REJECTED', '205', '70', '-1', '-1', '2017-03-30 20:17:34', '10001', '10001', '2017-04-11 15:50:31', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('4', 'dsffff', '101', '2017-03-18 00:00:00', 'APPROVED', '202', '13', '-1', '-1', '2017-03-31 00:54:28', '10001', '10007', '2017-04-05 05:33:42', '10007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('10', 'asdf', '104', '2017-04-06 02:30:00', 'NEW', '205', '8', '-1', '-1', '2017-04-06 18:35:44', '10001', '10001', '2017-04-10 03:37:22', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('12', 'dsfdfs', '101', '2017-04-11 23:27:21', 'NEW', '204', '1', '-1', '-1', '2017-04-11 23:27:42', '10001', '10001', '2017-04-11 23:27:42', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('13', 'fsdfsdfsdf', '101', '2017-04-11 23:53:02', 'NEW', '203', '1', '-1', '-1', '2017-04-11 23:53:16', '10001', '10001', '2017-04-11 23:53:16', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('14', '20170411001', '101', '2017-04-12 14:05:01', 'APPROVED', '201', '3', '-1', '-1', '2017-04-12 14:07:54', '10001', '10001', '2017-04-12 06:19:10', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `hap_om_order_headers` VALUES ('15', 'fdgsdfg', '101', '2017-04-12 14:27:48', 'NEW', '201', '2', '-1', '-1', '2017-04-12 14:28:14', '10001', '10001', '2017-04-12 06:28:24', '10001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
