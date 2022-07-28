package search.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import search.service.SearchService;

@Controller
@RequestMapping (value="search")
public class SearchController {
	@Autowired
	private SearchService searchService;
	
	@GetMapping(value="searchMain")
	public ModelAndView searchMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("menu", "/WEB-INF/views/main/menu.jsp");
		mav.addObject("display", "/WEB-INF/views/search/searchMain.jsp");
		mav.addObject("footer", "/WEB-INF/views/main/footer.jsp");
		mav.addObject("shopmain", "/WEB-INF/views/shop/main/shopmain.jsp");
		mav.addObject("flowbite", true);
		mav.setViewName("/index");
		
		return mav;
	}
	
	@PostMapping(value="searchProductList")
	@ResponseBody
	public Map<String, Object> searchProductList(){
		return searchService.searchProductList();
	}
	
//	@PostMapping(value="keywordSearch")
//	@ResponseBody
//	public Map<String, Object> keywordSearch(@RequestParam Map<String, String> map){ //keyword
//		return searchService.keywordSearch(map);
//	}
	
}
