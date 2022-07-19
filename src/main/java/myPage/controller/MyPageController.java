package myPage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
	MyPageBuyingService myPageBuyingService;
	
	@Autowired
	MyPageAddressService myPageAddressService;
	
	@Autowired
	MyPageAccountService myPageAccountService;
	
	@GetMapping(value="myMain")
	public ModelAndView my() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/myMain.jsp");
		mav.setViewName("/index");
		return mav;
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
	public void updateImg(@RequestParam MultipartFile img,
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
	     
		
		
		String filePath = session.getServletContext().getRealPath("/assets/img/myPage");
		String fileName = img.getOriginalFilename();
		System.out.println(filePath); // \.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReseltProject\assets\img\myPage 占쏙옙占쏙옙占�
		File file = new File(filePath, fileName);
		
		
		try {
			img.transferTo(file);
		} catch (IOException e) {
			e.printStackTrace();
		}

		
		
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
		
		String filePath = session.getServletContext().getRealPath("/assets/img/myPage");
		
		if(myPageProfileDTO.getProfile_img() != null) {
			String fileName = myPageProfileDTO.getProfile_img();
			myPageProfileDTO.setProfile_img(filePath + "/" + fileName);
		}
		
		return myPageProfileDTO;
	}
	

	//buying
	@PostMapping(value="getBuying")
	@ResponseBody
	public List<MyPageBuyingDTO> getBuying() {
		
		List<MyPageBuyingDTO> list = myPageBuyingService.getBuying();
		System.out.println(list);
		return list;
		
	}
	
	//address
	@PostMapping(value="add_address")
	@ResponseBody
	public void add_address(@RequestParam String address) {
		myPageAddressService.add_address(address);
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
	
}
	
	

