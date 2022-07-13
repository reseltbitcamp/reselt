package style.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import style.bean.StyleDTO;
import style.dao.StyleDAO;

@Service
public class StyleServiceImpl implements StyleService {
	@Autowired
	private StyleDAO styleDAO;
	
	@Override
	public void styleWriteForm(StyleDTO styleDTO) {
		styleDAO.styleWriteForm(styleDTO);
	}

	@Override
	public Map<String, Object> getStyleList(String pg) {
		//1페이지당 3개씩
		int endNum = Integer.parseInt(pg) * 8;
		int startNum = endNum - 8;
		
		System.out.println("pg = "+pg+", startNum = "+startNum+", endNum = ");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<StyleDTO> list = styleDAO.getStyleList(map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		return sendMap;
	}

	@Override
	public StyleDTO getStyleDetails(String seq) {
		StyleDTO styleDTO = styleDAO.getStyleDetails(seq);
		return styleDTO;
	}

	@Override
	public void styleDelete(String seq) {
		styleDAO.styleDelete(seq);
	}
}
