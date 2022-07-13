package style.dao;

import java.util.List;
import java.util.Map;

import style.bean.StyleDTO;

public interface StyleDAO {

	public void styleWriteForm(StyleDTO styleDTO);

	public List<StyleDTO> getStyleList(Map<String, Integer> map);

	public StyleDTO getStyleDetails(String seq);

	public void styleDelete(String seq);

}
