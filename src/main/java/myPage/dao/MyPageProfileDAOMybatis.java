package myPage.dao;

import java.util.List;
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
	public void emailUpdate(String email) {
		sqlSession.update("myPageSQL.emailUpdate", email);
	}

	@Override
	public void pwdUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.pwdUpdate", map);
	}

	@Override
	public void nickUpdate(Map<String, String> map) {
		sqlSession.update("myPageSQL.nickUpdate", map);
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
	public void deleteImg(String email) {
		sqlSession.update("myPageSQL.deleteImg", email);
		
	}

	@Override
	public MyPageProfileDTO getProfile(String id) {
		return sqlSession.selectOne("myPageSQL.getProfile", id);
	}

	@Override
	public void check_email(Map<String, String> map) {
		sqlSession.selectOne("myPageSQL.check_email", map);
		
	}

	@Override
	public void check_message(Map<String, String> map) {
		sqlSession.selectOne("myPageSQL.check_message", map);
		
	}


	@Override
	public void telUpdate(Map<String, String> map) {
		sqlSession.selectOne("myPageSQL.telUpdate", map);
	}

	


	

}
