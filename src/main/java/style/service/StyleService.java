package style.service;

import java.util.Map;

import style.bean.ReplyDTO;
import style.bean.StyleDTO;

public interface StyleService {

	public void styleWriteForm(StyleDTO styleDTO);

	public Map<String, Object> getStyleList(String pg, int num);

	public Map<String, Object> getStyleDetails(int seq);

	public void styleDelete(String seq);

	public void styleUpdate(StyleDTO styleDTO);

	public Map<String, Object> styleReplyWrite(Map<String, String> map);

	public int styleReplyDelete(int style_seq, int pseq);

	public Map<String, Object> plusLikes(int seq, String email);
}
