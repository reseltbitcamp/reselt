package myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminUserDTO;
import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPagePaging;
import myPage.dao.MyPageBuyingDAO;
import notice.bean.NoticePaging;


@Service
public class MyPageBuyingServiceImpl implements MyPageBuyingService {

	@Autowired
	private MyPageBuyingDAO myPageBuyingDAO;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private MyPagePaging myPagePaging;
	
	@Override
	public Map<String, Object> buyingList(Map<String, String> map) {
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		
		//페이징
		int endNum = Integer.parseInt(map.get("pg")) * 10;
		int startNum = endNum - 10;
		
		String endNum2 = endNum + "";
		String startNum2 = startNum + "";
		
		map.put("endNum2", endNum2);
		map.put("startNum2", startNum2);
		
		List<MyPageBuyingDTO> list = myPageBuyingDAO.buyingList(map);
		
		//페이징 처리
		MyPagePaging noticePaging = this.getNoticePaging(map.get("pg"));
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		sendMap.put("noticePaging", noticePaging);
		
		return sendMap;
		
	}
	
	@Override
	public MyPagePaging getNoticePaging(String pg) {
		int totalA = myPageBuyingDAO.getTotalA();
		
		myPagePaging.setCurrentPage(Integer.parseInt(pg));
		myPagePaging.setPageBlock(8);
		myPagePaging.setPageSize(10);
		myPagePaging.setTotalA(totalA);
		myPagePaging.makePagingHTML();
		
		return myPagePaging;
	}

	@Override
	public List<MyPageBuyingDTO> myMainList() {
		String email = (String) session.getAttribute("email");
		return myPageBuyingDAO.myMainList(email);
	}



}
