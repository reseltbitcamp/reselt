package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminProductListDTO;
import admin.bean.AdminUserDTO;
import admin.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminUserDAO;
	
	@Override
	public Map<String, Object> show_user() {
		
		List<AdminUserDTO> list = adminUserDAO.show_user();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public void delete_user(List<Integer> id) {
	//public void delete_user(List<String> id) {
		adminUserDAO.delete_user(id);
		
	}

	@Override
	public Map<String, Object> show_member() {
		List<AdminUserDTO> list = adminUserDAO.show_member();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public void delete_member(List<Integer> id) {
	//public void delete_member(List<String> id) {
		adminUserDAO.delete_member(id);
		
	}


	@Override
	public Map<String, Object> adminUserSearch(String search) {
		List<AdminUserDTO> list = adminUserDAO.adminUserSearch(search);
		System.out.println(list);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> adminMemberSearch(String search) {
		List<AdminUserDTO> list = adminUserDAO.adminMemberSearch(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> product_list() {
		List<AdminProductListDTO> list = adminUserDAO.product_list();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> adminProductSearch(String search) {
		List<AdminProductListDTO> list = adminUserDAO.adminProductSearch(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		return map;
	}

	@Override
	public void delete_product(List<Integer> pid) {
		adminUserDAO.delete_product(pid);
		
	}

	



}
