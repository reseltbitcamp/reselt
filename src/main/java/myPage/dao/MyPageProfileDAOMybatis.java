package myPage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import myPage.bean.MyPageProfileDTO;

@Repository
@Transactional
public class MyPageProfileDAOMybatis implements MyPageProfileDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void emailUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.emailUpdate", map);
	}

	@Override
	public void pwdUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.pwdUpdate", map);
	}

	@Override
	public void nameUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.nameUpdate", map);
	}

	@Override
	public void sizeUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.sizeUpdate", map);
		
	}

	@Override
	public void updateImg(Map<String, String> map) {
		sqlSession.update("myPageSQL.updateImg", map);
		
	}

	@Override
	public void deleteImg(String id) {
		sqlSession.update("myPageSQL.deleteImg", id);
		
	}

	@Override
	public MyPageProfileDTO getProfile(String id) {
		return sqlSession.selectOne("myPageSQL.getProfile", id);
	}

	

}
