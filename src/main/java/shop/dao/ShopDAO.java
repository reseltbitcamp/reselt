package shop.dao;

import java.util.List;
import java.util.Map;

import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;

public interface ShopDAO {
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map);
	
	public ProductDTO getProductDTO(int pid);

	public List<ProductDTO> getProductList(Map<String, Integer> map);

	public List<BiddingDTO> getBidiingPrice(Map<Object, Object> map);

	public List<BiddingDTO> getProductInformation(Map<String, Object> map);


		
	

}