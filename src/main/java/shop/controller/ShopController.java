package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ShopController {
	
	@RequestMapping(value = "/shop/shopindex", method = RequestMethod.GET)
	public ModelAndView shop() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("shopmain", "/WEB-INF/views/shop/shopmain.jsp");
		mav.addObject("shopmenu", "/WEB-INF/views/shop/shopmenu.jsp");
		mav.setViewName("/shop/shopindex");
		
		return mav;
	}
	
	@RequestMapping(value = "/shop/shopDetail", method = RequestMethod.GET)
	public ModelAndView shopDetail() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/shop/shopDetail.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
}

