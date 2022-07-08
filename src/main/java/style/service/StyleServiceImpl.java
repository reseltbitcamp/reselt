package style.service;

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

}
