package myPage.dao;

import java.util.List;

import myPage.bean.MyPageBuyingDTO;

public interface MyPageBuyingDAO {

	List<MyPageBuyingDTO> getBuying(String member_id);

}
