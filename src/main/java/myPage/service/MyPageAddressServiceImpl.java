package myPage.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myPage.bean.MyPageAddressDTO;
import myPage.bean.MyPageProfileDTO;
import myPage.dao.MyPageAddressDAO;
import myPage.dao.MyPageProfileDAO;

@Service
public class MyPageAddressServiceImpl implements MyPageAddressService {

	@Autowired
	private MyPageAddressDAO myPageAddressDAO;
	@Autowired
	private HttpSession session;
	
	@Override
	public void add_address(Map<String, String> map) {
	
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		myPageAddressDAO.add_address(map);
		
	}

	@Override
	public MyPageAddressDTO show_address() {
		String email = (String) session.getAttribute("email");
		return myPageAddressDAO.show_address(email);
	}

	@Override
	public void delete_address() {
		String email = (String) session.getAttribute("email");
		myPageAddressDAO.delete_address(email);
	}


}
