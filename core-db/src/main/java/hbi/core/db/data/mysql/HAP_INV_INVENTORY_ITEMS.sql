SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for `hap_inv_inventory_items`
-- ----------------------------
DROP TABLE IF EXISTS `hap_inv_inventory_items`;
CREATE TABLE `hap_inv_inventory_items` (
  `INVENTORY_ITEM_ID`     BIGINT(20)       NOT NULL AUTO_INCREMENT
  COMMENT '物料ID',
  `ITEM_CODE`             VARCHAR(60)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '物料编码',
  `ITEM_UOM`              VARCHAR(60)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '物料单位',
  `ITEM_DESCRIPTION`      VARCHAR(240)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL
  COMMENT '物料描述',
  `ORDER_FLAG`            VARCHAR(1)
                          CHARACTER SET utf8
                          COLLATE utf8_bin NOT NULL DEFAULT 'Y'
  COMMENT '是否能用于销售',
  `START_ACTIVE_DATE`     DATETIME         NULL
  COMMENT '生效起始时间',
  `END_ACTIVE_DATE`       DATETIME         NULL
  COMMENT '生效结束时间',
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

  PRIMARY KEY (`INVENTORY_ITEM_ID`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 102
  DEFAULT CHARSET = utf8
  COMMENT = '物料主数据';

-- ----------------------------
-- Records of hap_inv_inventory_items
-- ----------------------------
INSERT INTO hap_inv_inventory_items VALUES
  ('1001', 'ITEM001', 'EA', 'HFM财务管理软件', 'Y', NULL, NULL, 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17',
                                                                                                  '-1', '1', '-1', '-1',
                                                                                                  NULL, NULL, NULL,
                                                                                                  NULL, NULL, NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
   NULL);
INSERT INTO hap_inv_inventory_items VALUES
  ('1002', 'ITEM002', 'EA', 'HWMS仓储管理系统', 'Y', NULL, NULL, 'Y', '2016-08-24 16:48:17', '-1', '-1',
    '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                NULL, NULL, NULL, NULL, NULL);
INSERT INTO hap_inv_inventory_items VALUES
  ('1003', 'ITEM003', 'EA', 'HAP应用开发平台', 'N', NULL, NULL, 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17',
                                                                                                  '-1', '1', '-1', '-1',
                                                                                                  NULL, NULL, NULL,
                                                                                                  NULL, NULL, NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
   NULL);
INSERT INTO hap_inv_inventory_items VALUES
  ('1004', 'ITEM004', 'EA', 'HEC费用控制系统', 'Y', NULL, NULL, 'Y', '2016-08-24 16:48:17', '-1', '-1', '2016-08-24 16:48:17',
                                                                                                  '-1', '1', '-1', '-1',
                                                                                                  NULL, NULL, NULL,
                                                                                                  NULL, NULL, NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
                                                                                                              NULL,
   NULL);
INSERT INTO hap_inv_inventory_items VALUES
  ('1005', 'ITEM005', 'EA', 'HFS财务共享系统', 'Y', '2016-10-01 00:00:00', NULL, 'Y', '2016-08-24 16:48:17', '-1', '-1',
    '2016-08-24 16:48:17', '-1', '1', '-1', '-1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                                                                NULL, NULL, NULL, NULL, NULL);
