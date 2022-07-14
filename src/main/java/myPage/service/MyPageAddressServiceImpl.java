package myPage.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myPage.dao.MyPageAddressDAO;
import myPage.dao.MyPageProfileDAO;

@Service
public class MyPageAddressServiceImpl implements MyPageAddressService {

	@Autowired
	private MyPageAddressDAO myPageAddressDAO;
	@Autowired
	private HttpSession session;
	
	@Override
	public void add_address(String address) {
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("address", address);
		myPageAddressDAO.add_address(map);
		
	}

}
