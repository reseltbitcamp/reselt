package admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AdminUserDTO;
import admin.service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
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
	
	@GetMapping(value="notice")
	public ModelAndView notice(@RequestParam(required = false, defaultValue = "1") String pg) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.setViewName("/admin/notice");
		return mav;
	}
	
	@GetMapping(value="noticeRegister")
	public ModelAndView noticeRegister() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/noticeRegister");
		return mav;
	}
	
	@GetMapping(value="productList")
	public ModelAndView productList() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/productList");
		return mav;
	}
	
	//유저
	@PostMapping(value="show_user")
	@ResponseBody
	public Map<String, Object> show_user() {
		return adminService.show_user();
	}
	
	@PostMapping(value="delete_user")
	@ResponseBody
	public void delete_user(HttpSession session, HttpServletRequest req) {
		
		List<Integer> id = new ArrayList();
		//List<String> id = new ArrayList();
		
		String[] checkBoxArr = req.getParameterValues("checkBoxArr"); //ajax 통해 넘어온 배열 데이터 선언
		
		if(checkBoxArr != null) {
			for(int i=0; i<checkBoxArr.length; i++) {
				id.add(Integer.parseInt(checkBoxArr[i]));
				//id.add(checkBoxArr[i]);
				System.out.println(id);
			}
		}
		
		adminService.delete_user(id);
		
	}
	
	 @PostMapping(value="adminUserSearch")
	 @ResponseBody public Map<String, Object> adminUserSearch(@RequestParam String search) {
		 System.out.println(search);
		 return adminService.adminUserSearch(search);
	
	 }
	
	//관리자
	@PostMapping(value="show_member")
	@ResponseBody
	public Map<String, Object> show_member() {
		return adminService.show_member();
	}
	
	@PostMapping(value="delete_member")
	@ResponseBody
	public void delete_member(HttpSession session, HttpServletRequest req) {
		
		List<Integer> id = new ArrayList();
		//List<String> id = new ArrayList();
		
		String[] checkBoxArr = req.getParameterValues("checkBoxArr"); //ajax 통해 넘어온 배열 데이터 선언
		
		if(checkBoxArr != null) {
			for(int i=0; i<checkBoxArr.length; i++) {
				id.add(Integer.parseInt(checkBoxArr[i]));
				//id.add(checkBoxArr[i]);
				System.out.println(id);
			}
		}
		
		adminService.delete_member(id);
		
	}
	
	 @PostMapping(value="adminMemberSearch")
	 @ResponseBody public Map<String, Object> adminMemberSearch(@RequestParam String search) {
		 System.out.println(search);
		 return adminService.adminMemberSearch(search);
	
	 }
	 
	 //상품
	 @PostMapping(value="product_list")
	 @ResponseBody public Map<String, Object> product_list() {
		 return adminService.product_list();
	
	 }

	 @PostMapping(value="adminProductSearch")
	 @ResponseBody public Map<String, Object> adminProductSearch(@RequestParam String search) {
		 System.out.println(search);
		 return adminService.adminProductSearch(search);
	
	 }
	 
	 @PostMapping(value="delete_product")
		@ResponseBody
		public void delete_product(HttpSession session, HttpServletRequest req) {
			
			List<Integer> pid = new ArrayList();
			
			String[] checkBoxArr = req.getParameterValues("checkBoxArr"); //ajax 통해 넘어온 배열 데이터 선언
			
			if(checkBoxArr != null) {
				for(int i=0; i<checkBoxArr.length; i++) {
					pid.add(Integer.parseInt(checkBoxArr[i]));
					
					System.out.println(pid);
				}
			}
			
			adminService.delete_product(pid);
			
		}
}













