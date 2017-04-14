SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for `hap_ar_customers`
-- ----------------------------
DROP TABLE IF EXISTS `hap_ar_customers`;
CREATE TABLE `hap_ar_customers` (
  `CUSTOMER_ID`           BIGINT(20)       NOT NULL AUTO_INCREMENT
  COMMENT '客户ID',
  `CUSTOMER_NUMBER`       VARCHAR(60)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '客户编号',
  `CUSTOMER_NAME`         VARCHAR(240)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '客户名称',
  `COMPANY_ID`            BIGINT(20)       NOT NULL
  COMMENT '公司ID',
  `ENABLED_FLAG`          VARCHAR(1)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL DEFAULT 'Y'
  COMMENT '启用标识',
  `CREATION_DATE`         DATETIME         NULL     DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`            BIGINT(20)                DEFAULT '-1',
  `LAST_UPDATED_BY`       BIGINT(20)                DEFAULT '-1',
  `LAST_UPDATE_DATE`      DATETIME         NULL     DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_LOGIN`     BIGINT(20)                DEFAULT '-1',
  `OBJECT_VERSION_NUMBER` DECIMAL(20, 0)            DEFAULT '1',
  `REQUEST_ID`            BIGINT(20)                DEFAULT '-1',
  `PROGRAM_ID`            BIGINT(20)                DEFAULT '-1',
  `ATTRIBUTE_CATEGORY`    VARCHAR(30)               DEFAULT NULL,
  `ATTRIBUTE1`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE2`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE3`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE4`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE5`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE6`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE7`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE8`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE9`            VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE10`           VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE11`           VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE12`           VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE13`           VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE14`           VARCHAR(240)              DEFAULT NULL,
  `ATTRIBUTE15`           VARCHAR(240)              DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 102
  DEFAULT CHARSET = utf8
  COMMENT = '客户主数据';

-- ----------------------------
-- Records of hap_ar_customers
-- ----------------------------
INSERT INTO hap_ar_customers VALUES
  ('201', 'C001', '上海达芙妮', '101', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1',
                                                                                                            NULL, NULL,
                                                                                                            NULL, NULL,
                                                                                                            NULL, NULL,
                                                                                                            NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO hap_ar_customers VALUES
  ('202', 'C002', '光明乳业', '101', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1',
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO hap_ar_customers VALUES
  ('203', 'C003', '东阿阿胶', '101', 'N', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1',
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO hap_ar_customers VALUES
  ('204', 'C004', '大华科技', '101', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1',
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO hap_ar_customers VALUES
  ('205', 'C005', '腾讯科技', '104', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1',
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
                                                                                                           NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
