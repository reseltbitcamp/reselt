package myPage.dao;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageBuyingDTO;

public interface MyPageBuyingDAO {


	public List<MyPageBuyingDTO> myMainList(String email);

	public List<MyPageBuyingDTO> buyingList(Map<String, Object> map);

	public int getTotalA(Map<String, Object> map);

}
