package proj21_shop.controller.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import proj21_shop.dto.qna.PageDTO;
import proj21_shop.dto.qna.QnaDTO;
import proj21_shop.dto.qna.SearchCriteria;
import proj21_shop.service.qna.QnaInsertService;
import proj21_shop.service.qna.QnaService;

@Controller
public class QnaController {
		
	@Autowired
	private QnaService service;
	
	@Autowired
	private QnaInsertService qInsertService;
	 	
	@GetMapping("/qna_main")
	public String listCriteria(SearchCriteria sCri, Model model) {		
		model.addAttribute("articles", service.listSearch(sCri));
		System.out.println("QnaController Cirteria =>" + service.listCriteria(sCri));
		
		return"/qna/qna_main";
	}	
	
	// @RequestParam HttpReqeust 파라메터를 받을 수 있는 어노테이션
	// 파라메터와 변수명일 일치 시킨다면 자동으로 값이 1:1 매핑된다.	
	@GetMapping("/listPaging")
	public String listPaging(Integer page,Integer perPageNum,SearchCriteria searchCriteria,String searchType
			,String keyword, Model model) {
		
		
	    PageDTO pageMaker = new PageDTO();
	    pageMaker.setCri(searchCriteria);
	    pageMaker.setTotalCount(service.countSearchedArticles(searchCriteria));
	    
	    // model로 jsp 페이지에서 쓸것들을 지정해준거다.
		model.addAttribute("page",page);
		// 검색문 MyBatis 에서 받아오기.
		model.addAttribute("perPageNum", searchCriteria.getPerPageNum());
		model.addAttribute("searchType", searchCriteria.getSearchType());
		model.addAttribute("keyword", searchCriteria.getKeyword());
				
		model.addAttribute("articles", service.listCriteria(searchCriteria));
	    model.addAttribute("pageMaker", pageMaker);
	    
	    return "/qna/qna_main";
	}
	
	
}
