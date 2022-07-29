package myPage.service;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPagePaging;

public interface MyPageBuyingService {

	public Map<String, Object> buyingList(Map<String, String> map);

	public List<MyPageBuyingDTO> myMainList();

	MyPagePaging getNoticePaging(String pg);

}
