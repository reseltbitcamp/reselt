package shop.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductInfoDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public List<ProductInfoDTO> getProductInfo(Map<String, String> map);
}
