package myPage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MyPageAccountMybatis implements MyPageAccountDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void add_account(Map<String, String> map) {
		sqlSession.update("myPageSQL.add_account", map);
		
	}


}
