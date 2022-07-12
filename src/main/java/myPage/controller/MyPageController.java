package myPage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import myPage.bean.MyPageBuyingDTO;
import myPage.bean.MyPageProfileDTO;
import myPage.service.MyPageBuyingService;
import myPage.service.MyPageProfileService;

@Controller
@RequestMapping("myPage")
public class MyPageController {

	@Autowired
	MyPageProfileService myPageProfileService;
	
	@GetMapping(value="myMain")
	public ModelAndView my() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/myMain.jsp");
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
	@GetMapping(value="payment")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("display", "/WEB-INF/views/myPage/payment.jsp");
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
	
	@PostMapping(value="emailUpdate")
	@ResponseBody
	public void emailUpdate(@RequestParam String email) {
		myPageProfileService.emailUpdate(email);
	}
	
	@PostMapping(value="pwdUpdate")
	@ResponseBody
	public void pwdUpdate(@RequestParam String pwd) {
		myPageProfileService.pwdUpdate(pwd);
	}
	
	@PostMapping(value="nameUpdate")
	@ResponseBody
	public void nameUpdate(@RequestParam String name) {
		myPageProfileService.nameUpdate(name);
	}
	
	@PostMapping(value="sizeUpdate")
	@ResponseBody
	public void sizeUpdate(@RequestParam String footsize) {
		myPageProfileService.sizeUpdate(footsize);
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
		System.out.println(filePath); // \.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReseltProject\assets\img\myPage �����
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
		String fileName = myPageProfileDTO.getProfile_img();
		myPageProfileDTO.setProfile_img(filePath + "/" + fileName);
		return myPageProfileDTO;
	}

	@Autowired
	MyPageBuyingService myPageBuyingService;
	
	@PostMapping(value="getBuying")
	@ResponseBody
	public List<MyPageBuyingDTO> getBuying() {
		
		List<MyPageBuyingDTO> list = myPageBuyingService.getBuying();
		System.out.println(list);
		return list;
		
		
	}
	
}
	
	

