package shop.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {
	@Autowired
	private ShopDAO shopDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	@Override
	public List<PriceIndexDTO> getPriceIndex(Map<String, String> map) {
		List<PriceIndexDTO> listPriceIndex = shopDAO.getPriceIndex(map);
		
		return listPriceIndex;
	}

	@Override
	public ProductDTO getProductDTO(String pid) {
		ProductDTO productDTO = shopDAO.getProductDTO(Integer.parseInt(pid));
		
		return productDTO;
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

	@Override
	public Map<Object, Object> getBiddingDTO(int pid) {
		Map<Object, Object>map = new HashMap<Object, Object>();
		map.put("pid", pid);
		List<BiddingDTO> list = shopDAO.getBidiingPrice(map);
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> getProductInformation(String size, int pid) {
		Map<String, Object> map = new HashMap<String, Object>(); 
		ProductDTO productDTO = shopDAO.getProductDTO(pid);
		map.put("size", size);
		map.put("pid", pid);
		BiddingDTO biddingDTO = shopDAO.getProductInformation(map);
		map.put("productDTO", productDTO);
		map.put("biddingDTO", biddingDTO);
		return map;
	}

	@Override
	public Map<Object, Object> getPriceMax(int pid) {
		Map<Object, Object>map = new HashMap<Object, Object>();
		map.put("pid", pid);
		List<BiddingDTO> list = shopDAO.getBidiingPriceMax(map);
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> insertBuyInfomation(String email, int pid, String size, int bidding_id) {
		Map<String, Object>map = new HashMap<String, Object>();
		MemberDTO memberDTO = memberDAO.checkEmail_useShop(email);
		int id = memberDTO.getId();
		map.put("member_id",id);
		map.put("pid", pid);
		map.put("size", size);
		map.put("matched_bidding_id", bidding_id);
		ProductDTO productDTO = shopDAO.getProductDTO(pid);
		BiddingDTO biddingDTO = shopDAO.getProductInformation(map);
		int bidding_price = biddingDTO.getBidding_price();
		map.put("product_size", size);
		map.put("bidding_price",bidding_price);
		shopDAO.writeBuyBidding(map); 
		map.put("productDTO", productDTO);
		map.put("biddingDTO", biddingDTO);
		return map;
	}

	@Override
	public void sellSuccess(Map<String, Object> map) {
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setEmail(map.get("email") + "");
		MemberDTO dto = memberDAO.checkEmail(memberDTO);
		map.put("member_id",dto.getId());
		shopDAO.sellSuccess(map);
	}

}
