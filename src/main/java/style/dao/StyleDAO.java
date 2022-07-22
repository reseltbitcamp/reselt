package style.dao;

import java.util.List;
import java.util.Map;

import style.bean.ReplyDTO;
import style.bean.StyleDTO;

public interface StyleDAO {

	public void styleWriteForm(StyleDTO styleDTO);

	public List<StyleDTO> getStyleList(Map<String, Integer> map);

	public StyleDTO getStyleDetails(String seq);

	public void styleDelete(String seq);

	public void styleUpdate(StyleDTO styleDTO);

	public void styleReplyWrite(Map<String, String> map);

	public List<ReplyDTO> getStyleReply(int pseq);

	public int getReplyTotal(int pseq);

	public ReplyDTO getNowReply();

	public void styleReplyDelete(int style_seq);

}
