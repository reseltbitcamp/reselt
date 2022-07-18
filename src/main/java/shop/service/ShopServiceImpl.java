package shop.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.bean.PriceIndexDTO;
import shop.bean.ProductInfoDTO;
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
	public List<ProductInfoDTO> getProductInfo(Map<String, String> map) {
		List<ProductInfoDTO> listProductInfo = shopDAO.getProductInfo(map);
		
		return listProductInfo;
	}

}
