package search.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import search.dao.SearchDAO;
import shop.bean.ProductDTO;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private SearchDAO searchDAO;

	@Override
	public Map<String, Object> searchProductList() {
		
		List<ProductDTO> list = searchDAO.searchProductList();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		return map;
	}

}
