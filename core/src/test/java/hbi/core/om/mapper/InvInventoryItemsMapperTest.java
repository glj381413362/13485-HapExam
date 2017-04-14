package hbi.core.om.mapper;

import com.hand.hap.account.dto.Role;
import com.hand.hap.account.mapper.RoleMapper;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.impl.RequestHelper;
import com.hand.hap.core.impl.ServiceRequest;
import com.hand.hap.core.web.HapContextLoadListener;
import hbi.core.om.dto.InvInventoryItems;
import org.junit.*;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import sun.rmi.runtime.Log;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

/**
 * Created by hailor on 16/9/21.
 */
@ContextConfiguration(locations = {"classpath:/spring/applicationContext_test.xml","classpath*:/spring/applicationContext-*.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
@Rollback
@Transactional
public class InvInventoryItemsMapperTest {
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    InvInventoryItemsMapper invInventoryItemsMapper;
    static private  HapContextLoadListener hapContextLoadListener = new HapContextLoadListener();
    @BeforeClass
    public static void beforeClass(){
        hapContextLoadListener.contextInitialized(null);
    }

    @AfterClass
    public static void afterClass(){
        hapContextLoadListener.contextDestroyed(null);
    }



    @Test
    public void testQueryAllByIds() throws Exception {
        ArrayList<Long> ids = new ArrayList<>();
        ids.add(1001l);
        List<InvInventoryItems> invInventoryItems = invInventoryItemsMapper.queryAllByIds(ids);
        logger.debug("###Size:   "+invInventoryItems.size());
        for (int i = 0; i < invInventoryItems.size()   ; i++) {
            logger.debug("###Value:   "+invInventoryItems.get(i).toString());
        }
    }


    @Test
    public void testQueryAllByIdsWithNull() throws Exception {
        List<InvInventoryItems> invInventoryItems = invInventoryItemsMapper.queryAllByIds(null);
        logger.debug("###Size:   "+invInventoryItems.size());
        for (int i = 0; i < invInventoryItems.size()   ; i++) {
            logger.debug("###Value:   "+invInventoryItems.get(i).toString());
        }
    }

    @After
    public  void tearDown(){

    }
}
