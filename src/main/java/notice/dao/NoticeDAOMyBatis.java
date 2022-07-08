package notice.dao;

<<<<<<< HEAD
=======
import java.util.List;
import java.util.Map;

>>>>>>> 67-notice-list
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

	@Override
	public List<NoticeDTO> getNoticeList(Map<String, Integer> map) {
		return sqlSession.selectList("noticeSQL.getNoticeList", map);
	}

	@Override
	public int getTotalA() {
		return sqlSession.selectOne("noticeSQL.getTotalA");
	}

}
