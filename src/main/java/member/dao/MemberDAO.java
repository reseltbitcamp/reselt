package member.dao;

import java.util.Map;

import member.bean.MemberDTO;

public interface MemberDAO {

	public void joinTry(MemberDTO memberDTO);

	public MemberDTO checkEmail(MemberDTO memberDTO);

	public MemberDTO loginTry(Map<String, String> map);

	public MemberDTO findEmailSMS(MemberDTO memberDTO);

	public void tmpPwd(Map<String, String> map);

	public void updateNick(MemberDTO nickDTO);
	
}