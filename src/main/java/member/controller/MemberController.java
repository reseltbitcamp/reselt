package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
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
	
	@PostMapping(value = "joinTry")
	@ResponseBody
	public void joinForm(@ModelAttribute MemberDTO memberDTO) {
		memberService.joinTry(memberDTO);
	}
	
	@PostMapping(value = "checkEmail")
	@ResponseBody
	public String checkEmail(@ModelAttribute MemberDTO memberDTO) {
		String check = memberService.checkEmail(memberDTO);
		
		return check; 
	}
	
	
	@PostMapping(value = "loginTry")
	@ResponseBody
	public String loginForm(@ModelAttribute MemberDTO memberDTO) {
		String check = memberService.loginTry(memberDTO);
		
		return check; 
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
