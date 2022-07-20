package myPage.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import member.dao.MemberDAO;
import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPageProfileDTO;
import myPage.dao.MyPageProfileDAO;

@Service
public class MyPageProfileServiceImpl implements MyPageProfileService {
	
	@Autowired
	private MyPageProfileDAO myPageProfileDAO;
	@Autowired
	private HttpSession session;
	
	@Override
	public void emailUpdate() {		

		String email = (String) session.getAttribute("email");
		myPageProfileDAO.emailUpdate(email);

	}

	@Override
	public void pwdUpdate(String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(pwd);
		
		map.put("pwd", securePassword);
		
		myPageProfileDAO.pwdUpdate(map);
	}

	@Override
	public void nickUpdate(String nick) {
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("nick", nick);
		myPageProfileDAO.nickUpdate(map);
	}

	@Override
	public void sizeUpdate(String footsize) {
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("footsize", footsize);
		myPageProfileDAO.sizeUpdate(map);
		
	}
	
	@Override
	public void updateImg(String fileName) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("profile_img", fileName);
		myPageProfileDAO.updateImg(map);
	}

	@Override
	public void deleteImg() {
		
		String email = (String) session.getAttribute("email");
		myPageProfileDAO.deleteImg(email);
		
	}

	@Override
	public MyPageProfileDTO getProfile() {
		
		String email = (String) session.getAttribute("email");
		return myPageProfileDAO.getProfile(email);
	}

	@Override
	public void check_email(String check_email) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("check_email", check_email);
		myPageProfileDAO.check_email(map);
		
	}

	@Override
	public void check_message(String check_message) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("check_message", check_message);
		myPageProfileDAO.check_message(map);
		
	}

	@Override
	public void telUpdate(String tel) {
		
		Map<String, String> map = new HashMap<String, String>();

		String email = (String) session.getAttribute("email");
		map.put("email", email);
		map.put("tel", tel);
		myPageProfileDAO.telUpdate(map);
	}

	


	
	
	
}

