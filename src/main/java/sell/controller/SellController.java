package sell.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("sellPage")
public class SellController {

	@RequestMapping(value = "/sellSize", method = RequestMethod.GET)
	public ModelAndView sellSize() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/sellMenu/sellSizeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/sellPage/sellSize.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/sellBid", method = RequestMethod.GET)
	public ModelAndView sellBid() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/sellMenu/sellBidMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/sellPage/sellBid.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/sellAgree", method = RequestMethod.GET)
	public ModelAndView sellAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/sellMenu/sellAgreeMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/sellPage/sellAgree.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@RequestMapping(value = "/sellStraight", method = RequestMethod.GET)
	public ModelAndView sellStraight() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/sellMenu/sellStraightMenu.jsp");
		mav.addObject("main", "/WEB-INF/views/main/main.jsp");
		mav.addObject("display","/WEB-INF/views/sellPage/sellStraight.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
}
