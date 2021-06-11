package proj21_shop.mapper.order;

import static org.junit.Assert.fail;

import java.util.List;

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
import proj21_shop.dto.member.MemberDTO;
import proj21_shop.dto.order.OrderDTO;
import proj21_shop.dto.order.Standard;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {ContextRoot.class})
@WebAppConfiguration
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class MemberOrderListMapperTest {
	protected static final Log log = LogFactory.getLog(MemberOrderListMapperTest.class);
	
	@Autowired
	private MemberOrderListMapper mapper;
	
	@After
	public void tearDown() throws Exception {
		System.out.println();
	}

	@Test
	public void testListPaging() {
		log.debug(Thread.currentThread().getStackTrace()[1].getClassName()+"()");
		List<OrderDTO> list = mapper.listPaging("test01", 0);	
		Assert.assertNotNull(list);
	}

	@Test
	public void testListStandard() {
		fail("Not yet implemented");
	}

	@Test
	public void testCountOrders() {
		log.debug(Thread.currentThread().getStackTrace()[1].getClassName()+"()");
		Standard standard = new Standard();
//		int count = mapper.countOrders(standard);
//		Assert.assertNotNull(count);
	}
	
	
}
