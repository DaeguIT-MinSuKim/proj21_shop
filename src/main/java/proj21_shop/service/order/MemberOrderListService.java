package proj21_shop.service.order;

import java.util.List;

import proj21_shop.dto.order.OrderDTO;
import proj21_shop.dto.order.Standard;

public interface MemberOrderListService {
	int selectTotalCount();
	
	//qna 페이지 번호
	public List<OrderDTO> listPaging(int page);
	
	//페이징에 필요한 것
	List<OrderDTO> listStandard(Standard stadard);
	int countOrderLists(Standard standard);
}
