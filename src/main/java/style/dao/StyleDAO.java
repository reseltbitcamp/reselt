package style.dao;

import java.util.List;

import style.bean.StyleDTO;

public interface StyleDAO {

	public void styleWriteForm(StyleDTO styleDTO);

	public List<StyleDTO> getStyleList();

}
