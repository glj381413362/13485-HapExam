SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for `hap_org_companys`
-- ----------------------------
DROP TABLE IF EXISTS `hap_org_companys`;
CREATE TABLE `hap_org_companys` (
  `COMPANY_ID`            BIGINT(20)       NOT NULL AUTO_INCREMENT
  COMMENT '公司ID',
  `COMPANY_NUMBER`        VARCHAR(60)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '公司编号',
  `COMPANY_NAME`          VARCHAR(240)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '公司名称',
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

  PRIMARY KEY (`COMPANY_ID`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 102
  DEFAULT CHARSET = utf8
  COMMENT = '公司主数据';

-- ----------------------------
-- Records of hap_org_companys
-- ----------------------------
INSERT INTO HAP_ORG_COMPANYS VALUES
  ('101', 'HAND001', '汉得信息', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO HAP_ORG_COMPANYS VALUES
  ('102', 'HAND002', '汉得教育', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO HAP_ORG_COMPANYS VALUES
  ('103', 'HAND003', '汉得保理', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO HAP_ORG_COMPANYS VALUES
  ('104', 'HAND004', '随身科技', 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO HAP_ORG_COMPANYS VALUES
  ('105', 'HAND005', '夏尔科技', 'N', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
                                                                                                             NULL, NULL,
   NULL, NULL, NULL, NULL, NULL, NULL, NULL);
