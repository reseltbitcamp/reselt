package member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import member.bean.MemberDTO;

public interface MemberService {

	public void joinTry(MemberDTO memberDTO);

	public MemberDTO checkEmail(MemberDTO memberDTO);

	public String loginTry(MemberDTO memberDTO);

	public Map<String, Object> findEmailSMS(MemberDTO memberDTO);

}
