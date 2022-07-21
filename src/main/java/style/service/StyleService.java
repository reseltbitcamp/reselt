package style.service;

import java.util.Map;

import style.bean.StyleDTO;

public interface StyleService {

	public void styleWriteForm(StyleDTO styleDTO);

	public Map<String, Object> getStyleList(String pg);

	public StyleDTO getStyleDetails(String seq);

	public void styleDelete(String seq);

	public void styleUpdate(StyleDTO styleDTO);

}
