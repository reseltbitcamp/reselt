package shop.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import shop.bean.BiddingDTO;
import shop.bean.PriceIndexDTO;
import shop.bean.ProductDTO;
import shop.service.ShopService;

@Controller
@RequestMapping("shop")
public class ShopController {
	@Autowired
	private ShopService shopService;
	@Autowired
	private HttpSession session;
	@Autowired
	private ProductDTO productDTO;
	

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView shop(@RequestParam(required = false, defaultValue = "1") String pg) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("pg", pg);
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/shop/shopindex.jsp");
		mav.addObject("shopmain", "/WEB-INF/views/shop/main/shopmain.jsp");
		mav.addObject("shopmenu", "/WEB-INF/views/shop/main/shopmenu.jsp");
		mav.addObject("flowbite", true);
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value = "/shopDetail")
	public ModelAndView shopDetail(@RequestParam String pid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/shopDetail.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value = "getProductDTO")
	@ResponseBody
	public ProductDTO getProductDTO(@RequestParam String pid){
		return shopService.getProductDTO(pid);
	}
	
	@GetMapping(value = "/buySize")
	public ModelAndView buySize(@RequestParam String pid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buySizeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buySize.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value= "/getProductPrice")
	@ResponseBody
	public Map<Object, Object> getPrice(@RequestParam int pid) {
		return shopService.getBiddingDTO(pid);
	}

	@PostMapping(value= "/getProductPriceMax")
	@ResponseBody
	public Map<Object, Object> getPriceMax(@RequestParam int pid) {
		System.out.println("pid = "+ pid);
		return shopService.getPriceMax(pid);
	}
	
	@GetMapping(value = "/buyAgree")
	public ModelAndView buyAgree(@RequestParam int pid, String size, int id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.addObject("size", size);
		mav.addObject("id", id);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value="/getProductInfomation")
	@ResponseBody
	public Map<String, Object> getProductInformation(@RequestParam String size, int pid) {
		return shopService.getProductInformation(size, pid);
	}

	@GetMapping(value = "/buyStraight")
	public ModelAndView buyStraight() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyStraight.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyLastPage", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView buyLastPage(@RequestParam int pid, String size, int id, int price) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.addObject("size", size);
		mav.addObject("id", id);
		mav.addObject("price", price);		
		mav.setViewName("/index");
		
		System.out.println("check");
		
		return mav;
	}
	
	@PostMapping(value="insertBuyInfomation")
	@ResponseBody
	public Map<String, Object> insertBuyInfomation(HttpSession session, @RequestParam String size, int pid, int bidding_id){
		String email = (String)session.getAttribute("email");
		System.out.println("세션id"+email);
		return shopService.insertBuyInfomation(email,pid,size,bidding_id);
	}

	@RequestMapping(value = "/buySuccess", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView buySuccess(@RequestParam String size, int pid, int id) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buySuccess.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.addObject("size", size);
		mav.addObject("id", id);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value = "/sellSize")
	public ModelAndView sellSize() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellSizeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellSize.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/sellBid", method = RequestMethod.GET)
	public ModelAndView sellBid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellBidMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellBid.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/sellAgree", method = RequestMethod.GET)
	public ModelAndView sellAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/sellStraight", method = RequestMethod.GET)
	public ModelAndView sellStraight() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellStraight.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/sellLastPage", method = RequestMethod.POST)
	public ModelAndView sellLastPage(@RequestParam Map<String, Object> map) {
		//System.out.println(map);
		
		productDTO = shopService.getProductDTO(map.get("pid") + "");
		//이미지 주소 수정
		String fileName = productDTO.getImg_file();
		String img[] = fileName.split(",");
		String server = "http://3.39.241.175:6753/upload/resources/img/product/"; 
		
		String imgSrc = server + productDTO.getPid() + "/" + img[0];
		map.put("imgSrc",imgSrc);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("productDTO", productDTO);
		mav.addObject("sellBidPrice", map.get("sellBidPrice"));
		mav.addObject("size", map.get("size"));
		mav.addObject("src", map.get("imgSrc"));
		mav.setViewName("/index");
		//System.out.println(mav);
		
		return mav;
	}
	
	@RequestMapping(value = "/sellSuccess", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView sellSuccess(@RequestParam Map<String, Object> map) {
		System.out.println("sellSuccess map = " +map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellSuccess.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("bidding_price", map.get("bidding_price"));
		mav.addObject("product_size", map.get("product_size"));
		mav.addObject("src", map.get("src"));
		mav.setViewName("/index");
		
		//BIDDING TABLE 등록
		shopService.sellSuccess(map);
		
		return mav;
	}
	
	@PostMapping(value = "getPriceIndex")
	@ResponseBody
	public List<PriceIndexDTO> getPriceIndex(@RequestParam Map<String, String> map) {
		return shopService.getPriceIndex(map);
	}
	
	@RequestMapping(value = "/close", method = RequestMethod.GET)
	public ModelAndView close_INI_api() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/INIpayStdSample/close.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@PostMapping(value = "getSession")
	@ResponseBody
	public String getSession(HttpSession session) {
	String email = (String) session.getAttribute("email");
	System.out.println(email);
	return email;
	}
	
	@PostMapping(value="getProductList")
	@ResponseBody
	public Map<String, Object> getImageboardList(@RequestParam String pg){
		return shopService.getProductList(pg);
	}
	
}

