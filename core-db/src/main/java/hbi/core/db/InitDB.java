// package hbi.core.db;

// import com.hand.hap.db.excel.ExcelDataLoader;

// import java.io.File;
// import java.io.FileNotFoundException;
// import java.net.URL;

// /**
//  * Created by wayne on 2017/3/29.
//  */
// public class InitDB {

//     public static void main(String[] args) throws Exception {
//         System.setProperty("db.url", "jdbc:mysql://127.0.0.1:3306/hap_dev");
//         System.setProperty("db.user", "hap_dev");
//         System.setProperty("db.password", "hap_dev");
//         System.setProperty("db.override", "true");

//         ExcelDataLoader processor = new ExcelDataLoader();
//         URL url = ExcelDataLoader.class.getResource("/hbi/core/db/data/2017-04-10-init-data.xlsx");
//         if (url == null) {
//             throw new FileNotFoundException("excel not found.");
//         }
//         processor.setFilePath(new File(url.toURI()).getAbsolutePath());
//         processor.execute(null);
//     }
// }
