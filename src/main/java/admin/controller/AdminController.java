package admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@GetMapping(value="user")
	public ModelAndView user() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/user");
		return mav;
	}

	@GetMapping(value="member")
	public ModelAndView member() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/member");
		return mav;
	}
}
