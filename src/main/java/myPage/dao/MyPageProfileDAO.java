package myPage.dao;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageProfileDTO;

public interface MyPageProfileDAO {

	public void emailUpdate(String email);

	public void pwdUpdate(Map<String, String> map);

	public void nickUpdate(Map<String, String> map);

	public void sizeUpdate(Map<String, String> map);

	public void updateImg(Map<String, String> map);

	public void deleteImg(String email);

	public MyPageProfileDTO getProfile(String email);

	public void check_email(Map<String, String> map);

	public void check_message(Map<String, String> map);

	public void telUpdate(Map<String, String> map);

	public void withdrawal_user(String email);





	
}
