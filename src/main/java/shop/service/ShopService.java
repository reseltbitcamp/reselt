package shop.service;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductInfoDTO;

public interface ShopService {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);

	public ProductInfoDTO getProductInfo(Map<String, String> map);

	public Map<String, Object> getProductList(String pg);
}
