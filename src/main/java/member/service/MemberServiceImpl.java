package member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private HttpSession session;

	@Override
	public void joinTry(MemberDTO memberDTO) {
		memberDAO.joinTry(memberDTO);
	}

	@Override
	public MemberDTO checkEmail(MemberDTO memberDTO) {
		memberDTO = memberDAO.checkEmail(memberDTO);

		return memberDTO;
	}

	@Override
	public String loginTry(MemberDTO memberDTO) {
		String check;

		
		Map<String,String> map = new HashedMap<String, String>();
		map.put("email", memberDTO.getEmail());
		map.put("pwd", memberDTO.getPwd());
		
		
		memberDTO = memberDAO.loginTry(map);
		
		
		
		if(memberDTO == null) {
			check = "0";
		}else {

			session.setAttribute("email", memberDTO.getEmail());
			check = "1";
		}
		return check;
	}
}
