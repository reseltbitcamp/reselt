package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.AdminUserDTO;

public interface AdminService {

	public Map<String, Object> show_user();

	public void delete_user(List<Integer> id);
	//public void delete_user(List<String> id);

	public Map<String, Object> show_member();

	public void delete_member(List<Integer> id);
	//public void delete_member(List<String> id);

	public Map<String, Object> adminUserSearch(String search);

	public Map<String, Object> adminMemberSearch(String search);

	public Map<String, Object> product_list();

	public Map<String, Object> adminProductSearch(String search);


}
