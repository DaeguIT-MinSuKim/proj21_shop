package proj21_shop.service.member;

import org.apache.ibatis.logging.Log;
import org.apache.ibatis.logging.LogFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import proj21_shop.config.ContextRoot;
import proj21_shop.dto.member.AuthInfo;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {ContextRoot.class})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@WebAppConfiguration
public class AuthServiceTest {

	private static final Log log = LogFactory.getLog(AuthServiceTest.class);
	
	@Autowired
	private AuthService service;
	
	@After
	public void tearDown() throws Exception {
		System.out.println();
	}

	@Test
	public void testAuthenicate() {
		log.debug(Thread.currentThread().getStackTrace()[1].getMethodName() + "()");
		AuthInfo member = service.authenicate("test01", "password(123)");
		Assert.assertNotNull(member);
		log.debug(member.toString());
	}

}
