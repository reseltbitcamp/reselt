package myPage.dao;

import java.util.List;
import java.util.Map;

import myPage.bean.MyPageProfileDTO;

public interface MyPageProfileDAO {

	public void emailUpdate(Map<String, String> map);

	public void pwdUpdate(Map<String, String> map);

	public void nameUpdate(Map<String, String> map);

	public void sizeUpdate(Map<String, String> map);

	public void updateImg(Map<String, String> map);

	public void deleteImg(String id);

	public MyPageProfileDTO getProfile(String id);


	
}
