package myPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myPage.bean.MyPageBuyingDTO;

@Repository
@Transactional
public class MyPageBuyingDAOMybatis implements MyPageBuyingDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MyPageBuyingDTO> getBuying(String member_id) {
		return sqlSession.selectList("myPageSQL.getBuying", member_id);
	}

}
