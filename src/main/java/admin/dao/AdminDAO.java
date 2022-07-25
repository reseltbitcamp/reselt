package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminProductListDTO;
import admin.bean.AdminUserDTO;

public interface AdminDAO {

	public List<AdminUserDTO> show_user();

	public void delete_user(List<Integer> id);
	//public void delete_user(List<String> id);

	public List<AdminUserDTO> show_member();

	public void delete_member(List<Integer> id);
	//public void delete_member(List<String> id);

	public List<AdminUserDTO> adminUserSearch(String search);

	public List<AdminUserDTO> adminMemberSearch(String search);

	public List<AdminProductListDTO> product_list();

	public List<AdminProductListDTO> adminProductSearch(String search);

	public void delete_product(List<Integer> pid);

}
