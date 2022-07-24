package search.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.bean.ProductDTO;

@Repository
@Transactional
public class SearchDAOMyBatis implements SearchDAO {
	@Autowired
	private SqlSession sqlsession;

	@Override
	public List<ProductDTO> searchProductList() {
		return sqlsession.selectList("searchSQL.searchProductList");
	}

}
