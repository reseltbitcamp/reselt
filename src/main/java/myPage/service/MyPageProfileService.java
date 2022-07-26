package myPage.service;

import java.util.List;

import myPage.bean.MyPageProfileDTO;

public interface MyPageProfileService {

	public void emailUpdate();

	public void pwdUpdate(String pwd);

	public void sizeUpdate(String footsize);

	public void updateImg(String fileName);

	public void deleteImg();

	public MyPageProfileDTO getProfile();

	public void nickUpdate(String nick);

	public void check_email(String check_email);

	public void check_message(String check_message);

	public void telUpdate(String tel);

	public void withdrawal_user(String email);

	public void nameUpdate(String name);


}
