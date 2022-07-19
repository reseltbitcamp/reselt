package myPage.service;

import java.util.Map;

import myPage.bean.MyPageAddressDTO;

public interface MyPageAddressService {

	public void add_address(Map<String, String> map);

	public MyPageAddressDTO show_address();

	public void delete_address();

}
