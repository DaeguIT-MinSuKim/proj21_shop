package proj21_shop.mapper;

import java.util.List;

import proj21_shop.dto.member.MemberDTO;


public interface MemberMapper {
	
	List<MemberDTO> selectAll();
	
	MemberDTO selectById(String id);
	
	
}
