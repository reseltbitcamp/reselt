package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@GetMapping(value = "loginForm")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/loginForm.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@GetMapping(value = "writeForm")
	public ModelAndView writeForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/writeForm.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@GetMapping(value = "naverlogin")
	public String naverlogin() {
		
		return "/member/naver_id";
	}
}
