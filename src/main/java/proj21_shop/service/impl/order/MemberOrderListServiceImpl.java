package proj21_shop.service.impl.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import proj21_shop.dto.member.MemberDTO;
import proj21_shop.dto.order.OrderDTO;
import proj21_shop.dto.order.Standard;
import proj21_shop.mapper.order.MemberOrderListMapper;
import proj21_shop.service.order.MemberOrderListService;

public class MemberOrderListServiceImpl implements MemberOrderListService {

	@Override
	public int selectTotalCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<OrderDTO> listPaging(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDTO> listStandard(Standard stadard) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countOrderLists(Standard standard) {
		// TODO Auto-generated method stub
		return 0;
	}


}
