package myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("myPage")
public class MyPageController {
	@GetMapping(value="myMain")
	public ModelAndView my() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/myMain.jsp");
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value="buying")
	public ModelAndView buying() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/buying.jsp");
		mav.setViewName("/index");
		return mav;
	}
	@GetMapping(value="payment")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/payment.jsp");
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value="profile")
	public ModelAndView profile() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/profile.jsp");
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value="selling")
	public ModelAndView selling() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/selling.jsp");
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value="wish")
	public ModelAndView wish() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/wish.jsp");
		mav.setViewName("/index");
		return mav;
	}

}
