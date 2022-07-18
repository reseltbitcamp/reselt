package myPage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myPage.bean.MyPageAddressDTO;
import myPage.bean.MyPageProfileDTO;

@Repository
@Transactional
public class MyPageAddressMybatis implements MyPageAddressDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void add_address(Map<String, String> map) {
		sqlSession.update("myPageSQL.add_address", map);
		
	}

	@Override
	public MyPageAddressDTO show_address(String email) {
		return sqlSession.selectOne("myPageSQL.show_address", email);
		
	}

}
