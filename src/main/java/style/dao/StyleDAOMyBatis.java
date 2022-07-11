package style.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
}
