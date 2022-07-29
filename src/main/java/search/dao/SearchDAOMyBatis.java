package search.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.bean.ProductDTO;

@Repository
@Transactional
public class SearchDAOMyBatis implements SearchDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductDTO> searchProductList() {
		return sqlSession.selectList("searchSQL.searchProductList");
	}


}
