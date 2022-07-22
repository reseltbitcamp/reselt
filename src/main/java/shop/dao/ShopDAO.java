package shop.dao;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import style.bean.StyleDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public ProductDTO getProductDTO(int pid);

	public List<StyleDTO> getProductList(Map<String, Integer> map);

}
