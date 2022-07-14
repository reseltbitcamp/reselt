package member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.http.client.protocol.RequestAcceptEncoding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
		System.out.println("joinTry = " + memberDTO);
		//010-1111-1111 형식을 01011111111 으로 변경
		String snsTel;
		String ReseltTel = null; 
		String nick = null;
		if(memberDTO.getSnsLogin() == 1 || memberDTO.getSnsLogin() == 2) {
			if(memberDTO.getTel() != null) {
				
			snsTel = memberDTO.getTel();
			String tel[] = snsTel.split("-");
			
			for(int i=0; i<tel.length; i++) {
				ReseltTel += tel[i];
			}
			System.out.println(ReseltTel);
			//null 제거하여 삽입
			memberDTO.setTel(ReseltTel.substring(4));
			
			}
		}
		//아이디 앞 자리 닉네임
		if(memberDTO.getNick() == null) {
			String nickSplit[] = memberDTO.getEmail().split("@");
			nick = nickSplit[0]; 
			
			memberDTO.setNick(nick);
		}
		
		
		//비밀번호 암호화
		if(memberDTO.getPwd() != null) {
		System.out.println(memberDTO.getPwd());	
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePassword = encoder.encode(memberDTO.getPwd());
		memberDTO.setPwd(securePassword);
		}
		
		System.out.println("형식 변환" + memberDTO);
		memberDAO.joinTry(memberDTO);
	}

	@Override
	public MemberDTO checkEmail(MemberDTO memberDTO) {
		memberDTO = memberDAO.checkEmail(memberDTO);
		System.out.println("체크메일 " + memberDTO);
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

	@Override
	public Map<String,Object> findEmailSMS(MemberDTO memberDTO) {
		String check;
		Map<String,Object> map = new HashedMap<String, Object>();

		
		
		
		memberDTO = memberDAO.findEmailSMS(memberDTO);
		
		
		
		if(memberDTO == null) {
			check = "0";
		}else {
			check = "1";
			map.put("memberDTO", memberDTO);
		}
		map.put("check", check);
		return map;
	}

	@Override
	public void tmpPwd(Map<String, String> map) {
		memberDAO.tmpPwd(map);
		
	}
}
