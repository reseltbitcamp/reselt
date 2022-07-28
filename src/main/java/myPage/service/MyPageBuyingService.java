package myPage.service;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageBuyingDTO;

public interface MyPageBuyingService {

	public List<MyPageBuyingDTO> buyingList(Map<String, String> map);

	public List<MyPageBuyingDTO> myMainList();

}
