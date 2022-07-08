package member.service;

import javax.servlet.http.HttpServletRequest;

import member.bean.MemberDTO;

public interface MemberService {

	public void joinTry(MemberDTO memberDTO);

	public String checkEmail(MemberDTO memberDTO);

	public String loginTry(MemberDTO memberDTO);

}
