package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import notice.bean.NoticeDTO;
import notice.service.NoticeService;

@Controller
@RequestMapping (value="notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping(value="noticeMain")
	public ModelAndView noticeMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/notice/noticeMain.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@GetMapping(value="noticeWriteForm")
	public ModelAndView noticeWriteForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/notice/noticeWriteForm.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value="noticeWrite")
	@ResponseBody
	public void noticeWrite(@ModelAttribute NoticeDTO noticeDTO) {
		noticeService.noticeWrite(noticeDTO);
	}
}
