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


@Service
public class MyPageBuyingServiceImpl implements MyPageBuyingService {

	@Autowired
	private MyPageBuyingDAO myPageBuyingDAO;
	
	@Autowired
	private HttpSession session;
	
	@Override
	public List<MyPageBuyingDTO> buyingList(Map<String, String> map) {
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		List<MyPageBuyingDTO> list = myPageBuyingDAO.buyingList(map); //footsize~status, count~
		
		return list;
		
	}



}
