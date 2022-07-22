package shop.dao;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductInfoDTO;
import style.bean.StyleDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public ProductInfoDTO getProductInfo(Map<String, String> map);

	public List<StyleDTO> getProductList(Map<String, Integer> map);

}
