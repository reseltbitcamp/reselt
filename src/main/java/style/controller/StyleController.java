package style.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import style.bean.StyleDTO;
import style.service.StyleService;

@Controller
@RequestMapping(value="style")
public class StyleController {
	@Autowired
	private StyleService styleService;
	
	@RequestMapping(value="styleList")
	public ModelAndView styleList(@RequestParam(required = false, defaultValue = "1") String pg) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleList.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value="styleWrite")
	public ModelAndView styleWrite() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/style/styleMenu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleWrite.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value="styleDetails")
	public ModelAndView styleDetails() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu", "/WEB-INF/views/style/styleMenu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleDetails.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}

	@PostMapping(value="styleWriteForm")
	@ResponseBody
	public void styleWriteForm(@ModelAttribute StyleDTO styleDTO,
								@RequestParam MultipartFile img,
								HttpSession session) {
		System.out.println(session.getServletContext());
		//실제폴더
		String filePath = session.getServletContext().getRealPath("/assets/img/style/styleImage");
		String fileName = img.getOriginalFilename();
		
		System.out.println(filePath);
		File file = new File(filePath, fileName);
		
		try {
			img.transferTo(file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		styleDTO.setStyle_image(fileName);
		
		styleService.styleWriteForm(styleDTO);
	}
	
	@PostMapping(value="getStyleList")
	@ResponseBody
	public Map<String, Object> getImageboardList(@RequestParam String pg){
		return styleService.getStyleList(pg);
	}
}
