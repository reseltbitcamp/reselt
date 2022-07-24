package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	private ShopDAO shopDAO;

	@Override
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map) {
		List<PriceIndexDTO> listPriceIndex = shopDAO.getPriceIndex(map);
		
		return listPriceIndex;
	}

	@Override
	public ProductDTO getProductDTO(String pid) {
		ProductDTO ProductDTO = shopDAO.getProductDTO(Integer.parseInt(pid));
		return ProductDTO;
	}

	@Override
	public Map<String, Object> getProductList(String pg) {
		//1페이지당 3씩
		int endNum = Integer.parseInt(pg) * 32;
		int startNum = endNum - 32;
		
		System.out.println("pg = "+pg+", startNum = "+startNum+", endNum = ");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<ProductDTO> list = shopDAO.getProductList(map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		return sendMap;
	}

//	@Override
//	public List<BiddingDTO> getBiddingDTO(Map<Integer, Integer> map) {
//		List<BiddingDTO> getBiddingPrice= shopDAO.getBiddingPrice(map);
//		
//		return getBiddingPrice;
//	}

	@Override
	public Map<Object, Object> getBiddingDTO(int pid) {
		Map<Object, Object>map = new HashMap<Object, Object>();
		map.put("pid", pid);
		List<BiddingDTO> list = shopDAO.getBidiingPrice(map);
		System.out.println(list);
		map.put("list", list);
		return map;
	}

}
