package style.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="style")
public class StyleController {

	@GetMapping(value="styleList")
	public ModelAndView styleList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleList.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value="styleWrite")
	public ModelAndView styleWrite() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/style/styleMenu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleWrite.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
}
