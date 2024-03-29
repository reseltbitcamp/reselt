package myPage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import myPage.bean.MyPageAccountDTO;
import myPage.bean.MyPageAddressDTO;
import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPageProfileDTO;
import myPage.service.MyPageAddressService;
import myPage.service.MyPageBuyingService;
import myPage.service.MyPageProfileService;
import myPage.service.MyPageAccountService;

@Controller
@RequestMapping("myPage")
public class MyPageController {

	@Autowired
	MyPageProfileService myPageProfileService;
	
	@Autowired
	MyPageAddressService myPageAddressService;
	
	@Autowired
	MyPageAccountService myPageAccountService;
	
	@Autowired
	MyPageBuyingService myPageBuyingService;
	
	@Autowired
	HttpSession session;
	
	@GetMapping(value="myMain")
	public ModelAndView my(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		
		if( session.getAttribute("email") != null) {
			
		//프로필 이미지 DATA가져오기
		MyPageProfileDTO myPageProfileDTO = myPageProfileService.getProfile();
		String filePath = "http://3.39.241.175:6753/upload/resources/img/myPage";
		
		
		if(myPageProfileDTO.getProfile_img() != null && myPageProfileDTO.getProfile_img() != "" ) {
			String fileName = myPageProfileDTO.getProfile_img();
			myPageProfileDTO.setProfile_img(filePath + "/" + fileName);
		}else {
			myPageProfileDTO.setProfile_img(filePath + "/" + "profileImgDefault.png");
		}
		mav.addObject("profile", myPageProfileDTO.getProfile_img());
		}
		
		
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/myMain.jsp");
		mav.setViewName("/index");
		return mav;
	}

	@PostMapping(value="getSession")
	@ResponseBody
	public String getSession(HttpSession session) {
		
		//세션 이메일 가져오기
		String email = (String) session.getAttribute("email");
		System.out.println("세션 이메일 확인 = " + email);
		return email;
	}
	
	
	@GetMapping(value="address")
	public ModelAndView address() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/address.jsp");
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
	@GetMapping(value="account")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/account.jsp");
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
	
	@GetMapping(value="buying_detail")
	public ModelAndView buying_detail() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/buying_detail.jsp");
		mav.setViewName("/index");
		return mav;
	}
	
	@GetMapping(value="withdrawal")
	public ModelAndView withdrawal() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/withdrawal.jsp");
		mav.setViewName("/index");
		return mav;
	}

	//탈퇴 DB처리
	@PostMapping(value="withdrawal_user")
	@ResponseBody
	public void withdrawal_user() {
		String email = (String) session.getAttribute("email");
		
		myPageProfileService.withdrawal_user(email);
		session.invalidate();
	}

	//profile
	@PostMapping(value="pwdUpdate")
	@ResponseBody
	public void pwdUpdate(@RequestParam String pwd) {
		myPageProfileService.pwdUpdate(pwd);
	}
	
	@PostMapping(value="nickUpdate")
	@ResponseBody
	public void nickUpdate(@RequestParam String nick) {
		myPageProfileService.nickUpdate(nick);
	}
	
	@PostMapping(value="nameUpdate")
	@ResponseBody
	public void nameUpdate(@RequestParam String name) {
		myPageProfileService.nameUpdate(name);
	}
	
	@PostMapping(value = "telOk")
	@ResponseBody
	public void telOk(String tel) {
	}
	
	@PostMapping(value="telUpdate")
	@ResponseBody
	public void telUpdate(@RequestParam String tel) {
		myPageProfileService.telUpdate(tel);
	}
	
	@PostMapping(value="sizeUpdate")
	@ResponseBody
	public void sizeUpdate(@RequestParam String footsize) {
		myPageProfileService.sizeUpdate(footsize);
	}
	
	@PostMapping(value="check_email")
	@ResponseBody
	public void check_email(@RequestParam String check_email) {
		myPageProfileService.check_email(check_email);
	}
	
	@PostMapping(value="check_message")
	@ResponseBody
	public void check_message(@RequestParam String check_message) {
		myPageProfileService.check_message(check_message);
	}
	
	@PostMapping(value="updateImg")
	@ResponseBody
	public void updateImg(@RequestParam String img,
						 	HttpSession session) {

		/*
		String resourcePath = "D:\\git\\project\\check2\\ReseltProject\\src\\main\\webapp\\assets\\img\\myPage";
		String fileName = img.getOriginalFilename();
		File resource = new File(resourcePath, fileName);
		
		try {
			img.transferTo(resource);
		} catch (IOException e) {
         e.printStackTrace();
		}
		*/
	     
		
		
		//String filePath = session.getServletContext().getRealPath("/assets/img/myPage");
		String fileName = img;
		//System.out.println(filePath); // \.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReseltProject\assets\img\myPage 占쏙옙占쏙옙占�
		//File file = new File(filePath, fileName);
		
		// 로컬에 저장안해도 되서 삭제 , 서버로 바로 저장됨
//		try {
//			img.transferTo(file);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}

		
		
		myPageProfileService.updateImg(fileName);
		
	}
	
	@PostMapping(value="deleteImg")
	@ResponseBody
	public void deleteImg(@RequestParam MultipartFile img,
							HttpSession session) {
		
		/*
		String resourcePath = "D:\\git\\project\\check2\\ReseltProject\\src\\main\\webapp\\assets\\img\\myPage";
		String fileName = img.getOriginalFilename();
		File resource = new File(resourcePath, fileName);
		
		File file = new File(resourcePath, fileName);
		
		if(file.exists()) { 
			file.delete(); 
		}
		*/
		

		String filePath = session.getServletContext().getRealPath("/assets/img/myPage");
		String fileName = img.getOriginalFilename();
		
		File file = new File(filePath, fileName);
		
		if(file.exists()) { 
			file.delete(); 
		}

		myPageProfileService.deleteImg();
	}
	
	
	@PostMapping(value="getProfile")
	@ResponseBody
	public MyPageProfileDTO getProfile(HttpSession session) {
		MyPageProfileDTO myPageProfileDTO = myPageProfileService.getProfile();
//		String filePath = session.getServletContext().getRealPath("/assets/img/myPage");
		String filePath = "http://3.39.241.175:6753/upload/resources/img/myPage";
		
		if(myPageProfileDTO.getProfile_img() != null && myPageProfileDTO.getProfile_img() != "") {
			String fileName = myPageProfileDTO.getProfile_img();
			myPageProfileDTO.setProfile_img(filePath + "/" + fileName);
		}else {
			myPageProfileDTO.setProfile_img(filePath + "/" + "profileImgDefault.png");
			
		}
		
		return myPageProfileDTO;
	}
	
	
	//address
	@PostMapping(value="add_address")
	@ResponseBody
	public void add_address(@RequestParam Map <String,String> map) {
		myPageAddressService.add_address(map);
	}
	
	@PostMapping(value="show_address")
	@ResponseBody
	public MyPageAddressDTO show_address() {
		return myPageAddressService.show_address();
	}
	
	@PostMapping(value="delete_address")
	@ResponseBody
	public void delete_address() {
		myPageAddressService.delete_address();
	}
	
	@PostMapping(value="add_account")
	@ResponseBody
	public void add_account(@RequestParam Map <String,String> map) {

		myPageAccountService.add_account(map);
		
	}
	
	@PostMapping(value="show_account")
	@ResponseBody
	public MyPageAccountDTO show_account() {
		
		return myPageAccountService.show_account();
	}
	
	//거래
	@PostMapping(value="buyingList")
	@ResponseBody
	public Map<String, Object> buyingList(@RequestParam Map <String, Object> map, @RequestParam(required = false, defaultValue = "1") String pg) {
		
		map.put("pg", pg);
		System.out.println(map);
		return myPageBuyingService.buyingList(map);
		
		
	}
	
	//마이 페이지
	@PostMapping(value="myMainList")
	@ResponseBody
	public List<MyPageBuyingDTO> myMainList() {
		
		List<MyPageBuyingDTO> list = myPageBuyingService.myMainList();
		System.out.println(list);
		return list;
		
	}

}
	
	

