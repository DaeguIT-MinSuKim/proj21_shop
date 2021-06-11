package proj21_shop.mapper.order;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import proj21_shop.dto.order.OrderDTO;
import proj21_shop.dto.order.Standard;

public interface MemberOrderListMapper {
	
	//페이지 번호
	public List<OrderDTO> listPaging(@Param("memberId") String memberId,@Param("page") int page);
	//페이징에 필요한 것
	List<OrderDTO> listStandard(Standard standard);
	int countOrders(@Param("pageStart") int pageStart, @Param("perPageNum")int perPageNum, @Param("memberId")String memberId);
}
