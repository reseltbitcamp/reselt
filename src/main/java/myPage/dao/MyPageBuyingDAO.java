package myPage.dao;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageBuyingDTO;

public interface MyPageBuyingDAO {

	public List<MyPageBuyingDTO> buyingList(Map<String, String> map);

	public List<MyPageBuyingDTO> myMainList(String email);

}
