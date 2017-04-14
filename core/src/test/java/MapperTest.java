import com.hand.hap.account.dto.Role;
import com.hand.hap.account.mapper.RoleMapper;
import com.hand.hap.core.IRequest;
import com.hand.hap.core.impl.RequestHelper;
import com.hand.hap.core.impl.ServiceRequest;
import com.hand.hap.core.web.HapContextLoadListener;
import org.junit.*;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

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
public class MapperTest {
    @Autowired
    RoleMapper roleMapper;
    IRequest request;
    Role role;
    static private  HapContextLoadListener hapContextLoadListener = new HapContextLoadListener();
    @BeforeClass
    public static void beforeClass(){
        hapContextLoadListener.contextInitialized(null);
    }

    @AfterClass
    public static void afterClass(){
        hapContextLoadListener.contextDestroyed(null);
    }

    @Before
    public void setUp(){
        request= new ServiceRequest();
        request.setLocale("zh_CN");
        RequestHelper.setCurrentRequest(request);
        role = new Role();
        role.setRoleName("test");
        role.setRoleCode("test");
    }

    @Test
    public void testprofile() throws Exception {
        roleMapper.insert(role);
        role.setRoleId(null);

        List<Role> roles= roleMapper.select(role);
        assertNotNull(roles);
        assertEquals(1,roles.size());
        assertEquals("test",roles.get(0).getRoleCode());

    }

    @After
    public  void tearDown(){

    }
}
