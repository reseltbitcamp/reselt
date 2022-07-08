package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private HttpSession session;
	
	@GetMapping(value = "login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/login.jsp");
		mav.setViewName("/index");
		System.out.println(session.getAttribute("email"));
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
		memberDTO.setSnsLogin(0); // 일반로그인 시 0
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
	public String loginTry(MemberDTO memberDTO) {
		System.out.println(memberDTO);
		String check = memberService.loginTry(memberDTO);
		
		return check; 
	}

	@GetMapping(value = "logout")
	public ModelAndView logout() {
		session.invalidate();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mv.addObject("main", "/WEB-INF/views/main/main.jsp");
		mv.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mv.addObject("flowbite", true);
		mv.setViewName("index");
		
		return mv;
	}

	@GetMapping(value = "naverlogin")
	public String naverlogin(MemberDTO memberDTO) {
		

			return "/member/naver_login";
		}
	
	@PostMapping(value = "snsJoin" )
	@ResponseBody
	public void snsJoin(MemberDTO memberDTO) {
		//네이버: 이름 메일주소 휴대전화 프사(선택) 
		System.out.println("snsJoin 의 memberDTO " + memberDTO);
		memberDTO.setSnsLogin(1); // 소셜로그인 구분
		
		try {
			memberService.joinTry(memberDTO);
			System.out.println("회원가입");
			
		}catch (Exception e) {
			System.out.println("이미가입");
		}
		session.setAttribute("email", memberDTO.getEmail());
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
