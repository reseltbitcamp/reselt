package myPage.service;

import java.util.List;

import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPageProfileDTO;

public interface MyPageProfileService {

	void emailUpdate(String email);

	void pwdUpdate(String pwd);

	void nameUpdate(String name);

	void sizeUpdate(String footsize);

	void updateImg(String fileName);

	void deleteImg();

	MyPageProfileDTO getProfile();

}
