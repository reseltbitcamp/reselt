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
		mav.addObject("num", 1);
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleList.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@RequestMapping(value="styleListNew")
	public ModelAndView styleListNew(@RequestParam(required = false, defaultValue = "1") String pg) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("num", 2);
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
	public ModelAndView styleDetails(@RequestParam String seq) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("styleDetails", "/WEB-INF/views/style/styleDetails.jsp");
		mav.setViewName("/style/styleDetails");
		
		return mav;
	}

	@PostMapping(value="styleWriteForm")
	@ResponseBody
	public void styleWriteForm(@ModelAttribute StyleDTO styleDTO,
								@RequestParam MultipartFile img,
								HttpSession session) {
		System.out.println(session.getServletContext());
		//실제폴더
		String filePath = session.getServletContext().getRealPath("/assets/img/style/styleImage/");
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
	public Map<String, Object> getStyleList(@RequestParam String pg, int num){
		System.out.println("getStyleList pg="+pg+", num="+num);
		return styleService.getStyleList(pg, num);
	}
	
	@PostMapping(value="getStyleDetails")
	@ResponseBody
	public Map<String, Object> getStyleDetails(@RequestParam int seq) {
		return styleService.getStyleDetails(seq);
	}
	
	@PostMapping(value="styleDelete")
	public ModelAndView styleDelete(@RequestParam String seq) {
		styleService.styleDelete(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", 1);
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleList.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value="styleUpdateForm")
	public ModelAndView styleUpdateForm(@RequestParam String seq) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("menu", "/WEB-INF/views/style/styleMenu.jsp");
		mav.addObject("display", "/WEB-INF/views/style/styleUpdateForm.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value="styleUpdate")
	@ResponseBody
	public void styleUpdate(@ModelAttribute StyleDTO styleDTO,
								@RequestParam int seq,
								@RequestParam MultipartFile img,
								HttpSession session) {
		//실제폴더
		String url = this.getClass().getResource("").getPath();
		String path = url.substring(1, url.indexOf(".metadata"));

		String filePath = path+"reselt/src/main/webapp/assets/img/style/styleImage/";
		String filePath2 = session.getServletContext().getRealPath("/assets/img/style/styleImage/");
		String fileName = img.getOriginalFilename();
		
		System.out.println("filePath = "+filePath);
		System.out.println("filePath2 = "+filePath2);
		File file = new File(filePath, fileName);
		File file2 = new File(filePath2, fileName);
		try {
			img.transferTo(file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		styleDTO.setStyle_image(fileName);
		
	    styleService.styleUpdate(styleDTO);
	}
	
	@PostMapping(value="styleReplyWrite")
	@ResponseBody
	public Map<String, Object> styleReplyWrite(@RequestParam Map<String, String> map) {
		System.out.println(map);
		return styleService.styleReplyWrite(map); //원글
	}
	
	@PostMapping(value="styleReplyDelete")
	@ResponseBody
	public int styleReplyDelete(@RequestParam int style_seq, int pseq){
		System.out.println("styleReplyDelete seq = "+style_seq);
		System.out.println("styleReplyDelete pseq = "+pseq);
		return styleService.styleReplyDelete(style_seq, pseq);
	}
	
	
	@PostMapping(value="plusLikes")
	@ResponseBody
	public Map<String, Object> plusLikes(@RequestParam int seq, String email) {
		return styleService.plusLikes(seq, email); //원글
	}
}
