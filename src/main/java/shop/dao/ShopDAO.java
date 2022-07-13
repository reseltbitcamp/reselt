package shop.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import shop.bean.PriceIndexDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
}
