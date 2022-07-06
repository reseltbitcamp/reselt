package buy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("buyPage")
public class BuyController {

	@RequestMapping(value = "/buySize", method = RequestMethod.GET)
	public ModelAndView buySize() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/buyMenu/buySizeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/buyPage/buySize.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/buyBid", method = RequestMethod.GET)
	public ModelAndView buyBid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/buyMenu/buyBidMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/buyPage/buyBid.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyAgree", method = RequestMethod.GET)
	public ModelAndView buyAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/buyMenu/buyAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/buyPage/buyAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyStraight", method = RequestMethod.GET)
	public ModelAndView buyStraight() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/buyMenu/buyStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/buyPage/buyStraight.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/buyLastPage", method = RequestMethod.GET)
	public ModelAndView buyLastPage() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/buyMenu/buyStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/buyPage/buyLastPage.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
}
