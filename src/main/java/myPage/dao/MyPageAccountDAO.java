package myPage.dao;

import java.util.Map;

import myPage.bean.MyPageAccountDTO;

public interface MyPageAccountDAO {

	public void add_account(Map<String, String> map);

	public MyPageAccountDTO show_account(String email);

}
