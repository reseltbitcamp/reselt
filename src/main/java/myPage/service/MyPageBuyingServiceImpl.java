package myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminUserDTO;
import myPage.bean.MyPageBuyingDTO;
import myPage.dao.MyPageBuyingDAO;
import notice.bean.NoticePaging;


@Service
public class MyPageBuyingServiceImpl implements MyPageBuyingService {

	@Autowired
	private MyPageBuyingDAO myPageBuyingDAO;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private NoticePaging noticePaging;
	
	@Override
	public Map<String, Object> buyingList(Map<String, Object> map) {
		
		//이메일 받음 map 안에 email, pg, json
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		
		//페이징 처리
		NoticePaging noticePaging = this.getNoticePaging(map, (String) map.get("pg"));
		
		//row수에 맞게 페이징
		int endNum = Integer.parseInt((String) map.get("pg")) * 5;
		int startNum = endNum - 5;
		
		map.put("endNum", endNum);
		map.put("startNum", startNum);
		
		//row수만큼 데이터 가져오기 
		List<MyPageBuyingDTO> list = myPageBuyingDAO.buyingList(map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		sendMap.put("noticePaging", noticePaging);
		
		return sendMap;
		
	}
	
	@Override
	public NoticePaging getNoticePaging(Map<String, Object> map, String pg) {
		
		int totalA = myPageBuyingDAO.getTotalA(map);
		
		noticePaging.setCurrentPage(Integer.parseInt(pg));
		noticePaging.setPageBlock(3);
		noticePaging.setPageSize(5);
		noticePaging.setTotalA(totalA);
		noticePaging.makePagingHTML();
		
		return noticePaging;
	}

	@Override
	public List<MyPageBuyingDTO> myMainList() {
		String email = (String) session.getAttribute("email");
		return myPageBuyingDAO.myMainList(email);
	}



}
