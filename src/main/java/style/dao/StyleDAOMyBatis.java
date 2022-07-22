package style.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import style.bean.ReplyDTO;
import style.bean.StyleDTO;

@Repository
@Transactional
public class StyleDAOMyBatis implements StyleDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void styleWriteForm(StyleDTO styleDTO) {
		sqlSession.insert("styleSQL.styleWriteForm", styleDTO);
	}

	@Override
	public List<StyleDTO> getStyleList(Map<String, Integer> map) {
		return sqlSession.selectList("styleSQL.getStyleList", map);
	}

	@Override
	public StyleDTO getStyleDetails(String seq) {
		return sqlSession.selectOne("styleSQL.getStyleDetails", Integer.parseInt(seq));
	}

	@Override
	public void styleDelete(String seq) {
		sqlSession.delete("styleSQL.styleDelete", Integer.parseInt(seq));
	}

	@Override
	public void styleUpdate(StyleDTO styleDTO) {
		sqlSession.update("styleSQL.styleUpdate", styleDTO);
	}

	@Override
	public void styleReplyWrite(Map<String, String> map) {
		sqlSession.insert("styleSQL.styleReplyWrite", map);
		
	}

	@Override
	public List<ReplyDTO> getStyleReply(int pseq) {
		return sqlSession.selectList("styleSQL.getStyleReply", pseq);
	}

	@Override
	public int getReplyTotal(int pseq) {
		return sqlSession.selectOne("styleSQL.getReplyTotal", pseq);
	}

	@Override
	public ReplyDTO getNowReply() {
		return sqlSession.selectOne("styleSQL.getNowReply");
	}

	@Override
	public void styleReplyDelete(int style_seq) {
		sqlSession.delete("styleSQL.styleReplyDelete", style_seq);
		
	}
}
