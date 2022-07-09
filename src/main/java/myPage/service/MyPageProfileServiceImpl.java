package myPage.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.dao.MemberDAO;
import myPage.bean.MyPageProfileDTO;
import myPage.dao.MyPageProfileDAO;

@Service
public class MyPageProfileServiceImpl implements MyPageProfileService {
	
	@Autowired
	private MyPageProfileDAO myPageProfileDAO;
	@Autowired
	private HttpSession session;
	
	@Override
	public void emailUpdate(String email) {		
		
		Map<String, String> map = new HashMap<String, String>();
		
		//String id = (String) session.getAttribute("id");
		//map.put("id", id);
		
		//확인 차 세션 대신 임의로 id값 1 넣음
		map.put("id", "1");
		map.put("email", email);
		myPageProfileDAO.emailUpdate(map);

	}

	@Override
	public void pwdUpdate(String pwd) {
		Map<String, String> map = new HashMap<String, String>();
				
		//String id = (String) session.getAttribute("id");
		//map.put("id", id);
		
		//확인 차 세션 대신 임의로 id값 1 넣음
		map.put("id", "1");
		map.put("pwd", pwd);
		myPageProfileDAO.pwdUpdate(map);
	}

	@Override
	public void nameUpdate(String name) {
		Map<String, String> map = new HashMap<String, String>();
		
		//String id = (String) session.getAttribute("id");
		//map.put("id", id);
		
		//확인 차 세션 대신 임의로 id값 1 넣음
		map.put("id", "1");
		map.put("name", name);
		myPageProfileDAO.nameUpdate(map);
	}

	@Override
	public void sizeUpdate(String footsize) {
		Map<String, String> map = new HashMap<String, String>();
		
		//String id = (String) session.getAttribute("id");
		//map.put("id", id);
		
		//확인 차 세션 대신 임의로 id값 1 넣음
		map.put("id", "1");
		map.put("footsize", footsize);
		myPageProfileDAO.sizeUpdate(map);
		
	}
	
	@Override
	public void updateImg(String fileName) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		//String id = (String) session.getAttribute("id");
		//map.put("id", id);
		
		//확인 차 세션 대신 임의로 id값 1 넣음
		map.put("id", "1");
		map.put("profile_img", fileName);
		myPageProfileDAO.updateImg(map);
	}

	@Override
	public void deleteImg() {
		
		//String id = (String) session.getAttribute("id");

		//확인 차 세션 대신 임의로 id값 1 넣음
		String id = "1";
		myPageProfileDAO.deleteImg(id);
		
	}

	@Override
	public MyPageProfileDTO getProfile() {
		//String id = (String) session.getAttribute("id");

		//확인 차 세션 대신 임의로 id값 1 넣음
		String id = "1";
		return myPageProfileDAO.getProfile(id);
	}
		
}

