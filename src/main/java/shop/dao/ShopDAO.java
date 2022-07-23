package shop.dao;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import style.bean.StyleDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public ProductDTO getProductInfo(Map<String, String> map);

	public List<ProductDTO> getProductList(Map<String, Integer> map);

}
