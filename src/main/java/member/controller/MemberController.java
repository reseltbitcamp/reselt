package member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@GetMapping(value = "login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/login.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@GetMapping(value = "join")
	public ModelAndView join() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/join.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	@GetMapping(value = "findEmail")
	public ModelAndView findEmail() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/findEmail.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	@GetMapping(value = "findPwd")
	public ModelAndView findPwd() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/findPwd.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@GetMapping(value = "naverlogin")
	public String naverlogin() {
		
		return "/member/naver_login";
	}
	@GetMapping(value = "kakaologin")
	public String kakaologin() {
		
		return "/member/kakao_login";
	}
	
	@GetMapping(value = "naverlogout")
	public String naverlogout() {
		
		return "/member/naver_logout";
	}
}
