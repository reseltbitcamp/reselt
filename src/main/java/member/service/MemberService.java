package member.service;

import javax.servlet.http.HttpServletRequest;

import member.bean.MemberDTO;

public interface MemberService {

	public void joinTry(MemberDTO memberDTO);

	public MemberDTO checkEmail(MemberDTO memberDTO);

	public String loginTry(MemberDTO memberDTO);

}
