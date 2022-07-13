package member.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;

@Repository
@Transactional
public class MemberDAOMybatis implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	@Override
	public void joinTry(MemberDTO memberDTO) {
		System.out.println("memberDTO = " + memberDTO);
		sqlSession.insert("memberSQL.joinTry", memberDTO);
	}
	
	@Override
	public MemberDTO checkEmail(MemberDTO memberDTO) {
		System.out.println("sql 확인 =" + sqlSession.selectOne("memberSQL.checkEmail",memberDTO));
		return sqlSession.selectOne("memberSQL.checkEmail",memberDTO);
	}
	
	@Override
	public MemberDTO loginTry(Map<String, String> map) {
	
		return sqlSession.selectOne("memberSQL.loginTry",map);

	}

	@Override
	public MemberDTO findEmailSMS(MemberDTO memberDTO) {
		return sqlSession.selectOne("memberSQL.findEmailSMS",memberDTO);
	}

	@Override
	public void tmpPwd(Map<String, String> map) {
		sqlSession.update("memberSQL.tmpPwd", map);
	}
	
	
	
}
