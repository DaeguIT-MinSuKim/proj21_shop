package proj21_shop.controller.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import proj21_shop.dto.qna.PageDTO;
import proj21_shop.dto.qna.QnaDTO;
import proj21_shop.dto.qna.SearchCriteria;
import proj21_shop.service.qna.QnaInsertService;
import proj21_shop.service.qna.QnaService;

@RestController
@RequestMapping("/api")
public class QnaRestController {
	
	@Autowired
	private QnaService service;
	 

	// @PathVariable => 경로를 변수화 해주는 어노테이션.
	// @PathVariable 을 사용하지 않았을 경우 도메인 /no = 1, @pathVariable을 사용할 경우 도메인 /1
	@GetMapping("/qna/{page}")
	public ResponseEntity<Object> qna(@PathVariable int page){	
		SearchCriteria sCriteria = new SearchCriteria();
		System.out.println(sCriteria);
		sCriteria.setPage(page);	
		
		
		return ResponseEntity.ok(service.listSearch(sCriteria));
	}
	
	@GetMapping("/qna/{page}/{perPageNum}/{searchType}/{keyword}")
	public ResponseEntity<Object> qna(
			@PathVariable int page
			,@PathVariable int perPageNum
			,@PathVariable String searchType
			,@PathVariable String keyword){
		
		PageDTO dto = new PageDTO();
		SearchCriteria sCri = new SearchCriteria();
		
		sCri.setPage(page);
		sCri.setPerPageNum(perPageNum);	
		sCri.setSearchType(searchType);
		
		if(keyword == null) {
			return ResponseEntity.ok(service.listSearch(sCri));
		}else {
			sCri.setKeyword(keyword);	
		}
		System.out.println(keyword);
		dto.setCri(sCri);
		return ResponseEntity.ok(service.listSearch(sCri));
	}
	
	@GetMapping("/qna/{page}/{perPageNum}/{searchType}")
	public ResponseEntity<Object> qna(
			@PathVariable int page
			,@PathVariable int perPageNum
			,@PathVariable String searchType)
			{
		
		PageDTO dto = new PageDTO();
		SearchCriteria sCri = new SearchCriteria();
		
		sCri.setPage(page);
		sCri.setPerPageNum(perPageNum);	
		sCri.setSearchType(searchType);
		
		dto.setCri(sCri);
		return ResponseEntity.ok(service.listSearch(sCri));
	}
	
	// 상세 보기와 관리자용 답글용 서비스
	@Autowired
	private QnaInsertService qInsertService;
	
	@GetMapping("/qna_detail/{qIndex}")
	public ResponseEntity<Object> qDetail(@PathVariable int qIndex){
		QnaDTO dto = new QnaDTO();
		
		dto.setqIndex(qIndex);
		System.out.println(qIndex);
		
		return ResponseEntity.ok(qInsertService.selectQnaContent(qIndex));
	}
		
	
	
	
}
