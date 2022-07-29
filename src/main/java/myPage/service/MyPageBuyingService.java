package myPage.service;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageBuyingDTO;
import notice.bean.NoticePaging;

public interface MyPageBuyingService {


	public List<MyPageBuyingDTO> myMainList();

	public Map<String, Object> buyingList(Map<String, Object> map);

	NoticePaging getNoticePaging(Map<String, Object> map, String pg);

}
