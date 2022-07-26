package shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import style.bean.StyleDTO;

@Repository
@Transactional
public class ShopDAOMybatis implements ShopDAO {
	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map) {
		return sqlsession.selectList("shopSQL.getPriceIndex", map);
	}

	@Override
	public ProductDTO getProductDTO(int pid) {
		return sqlsession.selectOne("shopSQL.getProductDTO", pid);
	}

	@Override
	public List<ProductDTO> getProductList(Map<String, Integer> map) {
		return sqlsession.selectList("shopSQL.getProductList", map);
	}

	@Override
	public List<BiddingDTO> getBidiingPrice(Map<Object, Object> map) {
		System.out.println(map);
		return sqlsession.selectList("shopSQL.getBiddingPriceList", map);
	}

	@Override
	public List<BiddingDTO> getProductInformation(Map<String, Object> map) {
		return sqlsession.selectOne("shopSQL.getProductInformation", map);		
	}

}
