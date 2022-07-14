package member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections4.map.HashedMap;
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
import member.service.MailSendService;
import member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private HttpSession session;
	@Autowired
	private MailSendService mailService;
	
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
		memberDTO = memberService.checkEmail(memberDTO);
		String check;
		if(memberDTO == null) {
			check = "0";
		}
		else{
			check= "1";
		}
		return check; 
	}

//	@PostMapping(value = "joinCheckEmail")
//	@ResponseBody
//	public String joinCheckEmail(@ModelAttribute MemberDTO memberDTO) {
//		memberDTO = memberService.joinCheckEmail(memberDTO);
//		String check;
//		if(memberDTO == null) {
//			check = "0";
//		}
//		else{
//			check= "1";
//		}
//		return check; 
//	}

	@PostMapping(value = "findEmailResult")
	public ModelAndView findEmailResult(@ModelAttribute MemberDTO memberDTO) {
		Map<String, Object> map = memberService.findEmailSMS(memberDTO);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/member/findEmailResult.jsp");
		mav.addObject("memberDTO", map.get("memberDTO"));
		mav.setViewName("/index");
		System.out.println(mav);
		return mav; 
	}
	
	
	@PostMapping(value = "loginTry")
	@ResponseBody
	public String loginTry(MemberDTO memberDTO) {
		System.out.println(memberDTO);
		String check = memberService.loginTry(memberDTO);
		System.out.println("로그인 = " + check);
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
	
	@PostMapping(value = "snsJoinNaver" )
	@ResponseBody
	public Map<String, String> snsJoinNaver(@ModelAttribute MemberDTO memberDTO) {
		//네이버: 이름 메일주소 휴대전화 프사(선택) 
		System.out.println("네이버 로그인 = " + memberDTO);
		memberDTO.setSnsLogin(1); // 소셜로그인 구분
		System.out.println("네이버 로그인 숫자 추가 = " + memberDTO);
		Map<String, String> map = new HashedMap<String, String>();
		try {
			memberService.joinTry(memberDTO);
			System.out.println("회원가입");
			//네이버 1, 카카오 2
		}catch (Exception e) {
			System.out.println("이미가입");
			
		}
		memberDTO = memberService.checkEmail(memberDTO);
		System.out.println("IF문(네이버) =" + memberDTO);
		if(memberDTO.getSnsLogin() == 1) {
			session.setAttribute("email", memberDTO.getEmail());
			map.put("login", "1");
		}else if(memberDTO.getSnsLogin() == 2) {
			map.put("login", "2");
		}else {
			map.put("login", "0");
		}
		
		System.out.println("naver =" + map);
		return map;
	}
	@PostMapping(value = "snsJoinKakao" )
	@ResponseBody
	public Map<String, String> snsJoinKakao(MemberDTO memberDTO) {
		//네이버: 이름 메일주소 휴대전화 프사(선택) 
		System.out.println("카카오 로그인 = " + memberDTO);
		memberDTO.setSnsLogin(2); // 소셜로그인 구분
		Map<String, String> map = new HashedMap<String, String>();
		try {
			memberService.joinTry(memberDTO);
			System.out.println("회원가입");
			//네이버 1, 카카오 2
		}catch (Exception e) {
			System.out.println("이미가입");
			
		}
		memberDTO = memberService.checkEmail(memberDTO);
		if(memberDTO.getSnsLogin() == 1) {
			map.put("login", "1");
		}else if(memberDTO.getSnsLogin() == 2) {
			session.setAttribute("email", memberDTO.getEmail());
			map.put("login", "2");
		}else {
			map.put("login", "0");
		}
		return map;
	}
	//임시비밀번호 발급 -이메일 인증
	@PostMapping(value = "mailCheck")
	@ResponseBody
	public String mailCheck(MemberDTO memberDTO) {
		String inputTel = memberDTO.getTel();
		memberDTO = memberService.checkEmail(memberDTO);
		//System.out.println(inputTel + "....." + memberDTO.getTel());
		//System.out.println("전화번호 = " + memberDTO.getTel()); 
		if(memberDTO.getTel() != null) {
			
			if(!memberDTO.getTel().equals(inputTel)) {
				System.out.println("정보 불일치");
				return "0";
			}else {
				if(memberDTO.getSnsLogin() == 0) {
					
				System.out.println("이메일 인증 요청이 들어옴!");
				System.out.println("이메일 인증 이메일 : " + memberDTO.getEmail());
				String tmpPwd = mailService.tmpPwdEmail(memberDTO.getEmail());
				Map<String, String> map = new HashedMap<String, String>();
				map.put("tmpPwd", tmpPwd);
				map.put("email", memberDTO.getEmail());
				
				memberService.tmpPwd(map);
				return tmpPwd;
				}else {
					return "3";
				}
			}
		}else {
			return "1";
		}
		
			
	}
	
	@PostMapping(value = "findEmailSMS")
	@ResponseBody
	public Map<String, Object> findEmailSMS(MemberDTO memberDTO) {
		Map<String, Object> map = memberService.findEmailSMS(memberDTO);
		
		System.out.println(map);
		return map; 
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
