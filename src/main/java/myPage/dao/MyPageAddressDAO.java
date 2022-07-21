package myPage.dao;

import java.util.Map;

import myPage.bean.MyPageAddressDTO;
import myPage.bean.MyPageProfileDTO;

public interface MyPageAddressDAO {

	public void add_address(Map<String, String> map);

	public MyPageAddressDTO show_address(String email);

	public void delete_address(String email);

}
