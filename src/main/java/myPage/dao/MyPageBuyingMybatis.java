package myPage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import myPage.bean.MyPageBuyingDTO;

@Repository
@Transactional
public class MyPageBuyingMybatis implements MyPageBuyingDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<MyPageBuyingDTO> buyingList(Map<String, String> map) {
		return sqlSession.selectList("myPageSQL.buyingList", map);
	}


}
