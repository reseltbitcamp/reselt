package shop.service;

import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;

public interface ShopService {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
}