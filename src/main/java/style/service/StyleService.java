package style.service;

import java.util.List;
import java.util.Map;

import style.bean.StyleDTO;

public interface StyleService {

	public void styleWriteForm(StyleDTO styleDTO);

	public Map<String, Object> getStyleList(String pg);

}
