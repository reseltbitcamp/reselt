package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductInfoDTO;
import shop.dao.ShopDAO;
import style.bean.StyleDTO;

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
	public ProductInfoDTO getProductInfo(Map<String, String> map) {
		ProductInfoDTO ProductInfo = shopDAO.getProductInfo(map);
		
		return ProductInfo;
	}

	@Override
	public Map<String, Object> getProductList(String pg) {
		//1페이지당 3씩
		int endNum = Integer.parseInt(pg) * 8;
		int startNum = endNum - 8;
		
		System.out.println("pg = "+pg+", startNum = "+startNum+", endNum = ");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<StyleDTO> list = shopDAO.getProductList(map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		return sendMap;
	}

}
