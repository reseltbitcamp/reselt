package myPage.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myPage.bean.MyPageAccountDTO;
import myPage.dao.MyPageAccountDAO;

@Service
public class MyPageAccountServiceImpl implements MyPageAccountService {

	@Autowired
	private MyPageAccountDAO myPageAccountDAO;
	@Autowired
	private HttpSession session;
	
	@Override
	public void add_account(Map<String, String> map) {
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		myPageAccountDAO.add_account(map);
		
	}

	@Override
	public MyPageAccountDTO show_account() {
		String email = (String)session.getAttribute("email");
		return myPageAccountDAO.show_account(email);
	}

}
