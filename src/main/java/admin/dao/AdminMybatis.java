package admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.AdminProductListDTO;
import admin.bean.AdminUserDTO;

@Repository
@Transactional
public class AdminMybatis implements AdminDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AdminUserDTO> show_user() {
		return sqlSession.selectList("adminSQL.show_user");
	}

	@Override
	public void delete_user(List<Integer> id) {
	//public void delete_user(List<String> id) {
		sqlSession.update("adminSQL.delete_user", id);
		
	}

	@Override
	public List<AdminUserDTO> show_member() {
		return sqlSession.selectList("adminSQL.show_member");
	}

	@Override
	public void delete_member(List<Integer> id) {
	//public void delete_member(List<String> id) {
		sqlSession.update("adminSQL.delete_member", id);
		
	}

	@Override
	public List<AdminUserDTO> adminUserSearch(String search) {
		return sqlSession.selectList("adminSQL.adminUserSearch", search);
	}

	@Override
	public List<AdminUserDTO> adminMemberSearch(String search) {
		return sqlSession.selectList("adminSQL.adminMemberSearch", search);
	}

	@Override
	public List<AdminProductListDTO> product_list() {
		return sqlSession.selectList("adminSQL.product_list");
	}

	@Override
	public List<AdminProductListDTO> adminProductSearch(String search) {
		return sqlSession.selectList("adminSQL.adminProductSearch", search);
	}

	@Override
	public void delete_product(List<Integer> pid) {
		sqlSession.update("adminSQL.delete_product", pid);
		
	}

}
