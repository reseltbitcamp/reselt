package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("shop")
public class ShopController {
	
	@RequestMapping(value = "/shopindex", method = RequestMethod.GET)
	public ModelAndView shop() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("shopmain", "/WEB-INF/views/shop/shopmain.jsp");
		mav.addObject("shopmenu", "/WEB-INF/views/shop/shopmenu.jsp");
		mav.setViewName("/shop/shopindex");
		
		return mav;
	}
	
	@RequestMapping(value = "/shopDetailRevising", method = RequestMethod.GET)
	public ModelAndView shopDetailRevising() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/shopDetailRevising.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	@RequestMapping(value = "/shopDetail", method = RequestMethod.GET)
	public ModelAndView shopDetail() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/shopDetail.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	@RequestMapping(value = "/buySize", method = RequestMethod.GET)
	public ModelAndView buySize() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buySizeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buySize.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/buyBid", method = RequestMethod.GET)
	public ModelAndView buyBid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyBidMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyBid.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyAgree", method = RequestMethod.GET)
	public ModelAndView buyAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyStraight", method = RequestMethod.GET)
	public ModelAndView buyStraight() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyStraight.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyLastPage", method = RequestMethod.GET)
	public ModelAndView buyLastPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buyLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buySuccess", method = RequestMethod.GET)
	public ModelAndView buySuccess() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/shopMenu/buyLastPageMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/buySuccess.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/sellSize", method = RequestMethod.GET)
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
}

