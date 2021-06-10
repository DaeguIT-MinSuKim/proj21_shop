package proj21_shop.service.order;

import java.util.List;

import org.springframework.stereotype.Service;

import proj21_shop.dto.cart.CartDTO;
import proj21_shop.dto.member.MemberDTO;


@Service
public interface MemberOrderService {
	List<CartDTO> showCartsByMemberId(MemberDTO memId);
	CartDTO selectCartByPronum(CartDTO cart);
	
	int insertCart(CartDTO cart);
	int deleteCart(int cartNum);
	int updateCart(CartDTO cart);
}