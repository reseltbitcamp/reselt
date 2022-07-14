package myPage.service;

import java.util.List;

import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPageProfileDTO;

public interface MyPageProfileService {

	void emailUpdate();

	void pwdUpdate(String pwd);

	void sizeUpdate(String footsize);

	void updateImg(String fileName);

	void deleteImg();

	MyPageProfileDTO getProfile();

	void nickUpdate(String nick);

	void check_email(String check_email);

	void check_message(String check_message);


}
