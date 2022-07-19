package myPage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myPage.bean.MyPageAccountDTO;

@Repository
@Transactional
public class MyPageAccountMybatis implements MyPageAccountDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void add_account(Map<String, String> map) {
		sqlSession.insert("myPageSQL.add_account", map);
		
	}

	@Override
	public MyPageAccountDTO show_account(String email) {
		return sqlSession.selectOne("myPageSQL.show_account", email);
	}


}
