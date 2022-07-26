package shop.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	@GetMapping(value = "/buyAgree")
	public ModelAndView buyAgree(@RequestParam int pid, String size) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("pid", pid);
		mav.addObject("size", size);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value="/getProductInfomation")
	@ResponseBody
	public Map<Object, Object> getProductInformation(@RequestParam String size, int pid) {
		return shopService.getProductInformation(size, pid);
	}
	
	@GetMapping(value = "/buyBid")
	public ModelAndView buyBid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyBidMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyBid.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
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
	public ModelAndView buyLastPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		System.out.println("check");
		
		return mav;
	}

	@RequestMapping(value = "/buySuccess", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView buySuccess() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buySuccess.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
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

	@RequestMapping(value = "/sellLastPage", method = RequestMethod.GET)
	public ModelAndView sellLastPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/sellLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/sellSuccess", method={RequestMethod.GET, RequestMethod.POST})
	public ModelAndView sellSuccess() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/sellSuccess.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
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

