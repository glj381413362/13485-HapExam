package db

import com.hand.hap.db.excel.ExcelDataLoader
import com.hand.hap.liquibase.MigrationHelper

def mhi = MigrationHelper.getInstance()
dbType = MigrationHelper.getInstance().dbType()

databaseChangeLog(logicalFilePath:"hbi/core/db/2017-03-28-init-data-migration.groovy"){

    changeSet(author: "wuyunqiang", id: "20160601-wuyunqiang-1") {
            sqlFile(path: MigrationHelper.getInstance().dataPath("hbi/core/db/data/" +  dbType + "/HAP_AR_CUSTOMERS.sql"), encoding: "UTF-8")
            sqlFile(path: MigrationHelper.getInstance().dataPath("hbi/core/db/data/" +  dbType + "/HAP_INV_INVENTORY_ITEMS.sql"), encoding: "UTF-8")
            sqlFile(path: MigrationHelper.getInstance().dataPath("hbi/core/db/data/" +  dbType + "/HAP_OM_ORDER_HEADERS.sql"), encoding: "UTF-8")
            sqlFile(path: MigrationHelper.getInstance().dataPath("hbi/core/db/data/" +  dbType + "/HAP_OM_ORDER_LINES.sql"), encoding: "UTF-8")
            sqlFile(path: MigrationHelper.getInstance().dataPath("hbi/core/db/data/" +  dbType + "/HAP_ORG_COMPANYS.sql"), encoding: "UTF-8")
    }

    changeSet(author: "wuyunqiang", id: "2017-04-10-init-data-xlsx", runAlways:"true"){
        customChange(class:ExcelDataLoader.class.name){
            param(name:"filePath",value:MigrationHelper.getInstance().dataPath("hbi/core/db/data/2017-04-10-init-data.xlsx"))
        }
    }
}
