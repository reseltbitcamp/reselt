package myPage.service;

import myPage.bean.MyPageAddressDTO;

public interface MyPageAddressService {

	public void add_address(String address);

	public MyPageAddressDTO show_address();

	public void delete_address();

}
