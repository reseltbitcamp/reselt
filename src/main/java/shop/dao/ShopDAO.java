package shop.dao;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public ProductDTO getProductInfo(Map<String, String> map);
}
