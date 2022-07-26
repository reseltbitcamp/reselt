package shop.service;

import java.util.List;
import java.util.Map;

import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;

public interface ShopService {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);

	public ProductDTO getProductDTO(String pid);

	public Map<String, Object> getProductList(String pg);

	public Map<Object, Object> getBiddingDTO(int pid);

	public Map<Object, Object> getProductInformation(String size, int pid);

<<<<<<< HEAD
	public Map<String, Object> buyLastPageInformation(String member_id, int pid, String size);
=======
	public Map<Object, Object> getPriceMax(int pid);
>>>>>>> e40f229cb73d58733bb2e4ed57ad5f0db709270c
}
