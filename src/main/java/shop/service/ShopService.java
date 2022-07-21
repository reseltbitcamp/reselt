package shop.service;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;

public interface ShopService {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);

	public ProductDTO getProductDTO(Map<String, String> map);
}
