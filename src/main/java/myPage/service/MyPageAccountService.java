package myPage.service;

import java.util.Map;

import myPage.bean.MyPageAccountDTO;

public interface MyPageAccountService {

	public void add_account(Map<String, String> map);

	public MyPageAccountDTO show_account();
}
