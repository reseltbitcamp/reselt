package notice.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import notice.bean.NoticeDTO;

@Repository
@Transactional
public class NoticeDAOMyBatis implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;
	
	public void noticeWrite(NoticeDTO noticeDTO) {
		sqlSession.insert("noticeSQL.noticeWrite", noticeDTO);

	}

}
