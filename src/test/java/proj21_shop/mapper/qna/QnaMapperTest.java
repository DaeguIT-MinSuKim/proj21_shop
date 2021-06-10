package proj21_shop.mapper.qna;

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
import proj21_shop.dto.qna.Criteria;
import proj21_shop.dto.qna.QnaDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {ContextRoot.class})
@WebAppConfiguration
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class QnaMapperTest {
	protected static final Log log = LogFactory.getLog(QnaMapperTest.class);
	
	@Autowired
	private QnaMapper mapper;
	
	@After
	public void tearDown() throws Exception {
		System.out.println();
	}

	@Test
	public void test01SelectByAllQnaPage() {
		log.debug(Thread.currentThread().getStackTrace()[1].getClassName()+"()");
		
		List<QnaDTO> qList = mapper.selectByAllQnaPage();
		Assert.assertNotNull(qList);
		qList.stream().forEach(System.out::println);
	}
	 
	@Test
	public void test02TurnPageInfo() {
		log.debug(Thread.currentThread().getStackTrace()[1].getClassName()+"()");
		
		Criteria cri = new Criteria();
		cri.setPage(2);
		cri.setPerPageNum(10);
		
		List<QnaDTO> list = mapper.listCriteria(cri);
		Assert.assertNotNull(cri);
		list.stream().forEach(System.out::println);
		
 
		//List<QnaDTO> articles = mapper.listCriteria(cri);
		//Assert.assertNotNull(articles);
		//articles.stream().forEach(System.out::println);
	}

	//@Test
	public void test03TotalCount() {
		log.debug(Thread.currentThread().getStackTrace()[1].getClassName()+"()");
		
		//int res = mapper.selectTotalCount();
		//Assert.assertNotNull(res);
		//System.out.println(res);
		
	}
}
