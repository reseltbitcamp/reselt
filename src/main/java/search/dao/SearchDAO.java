package search.dao;

import java.util.List;
import java.util.Map;

import shop.bean.ProductDTO;

public interface SearchDAO {

	public List<ProductDTO> searchProductList();

//	public List<ProductDTO> keywordSearch(Map<String, String> map);

}
