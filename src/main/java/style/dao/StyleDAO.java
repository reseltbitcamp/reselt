package style.dao;

import java.util.List;
import java.util.Map;

import style.bean.LikeDTO;
import style.bean.ReplyDTO;
import style.bean.StyleDTO;

public interface StyleDAO {

	public void styleWriteForm(StyleDTO styleDTO);

	public List<StyleDTO> getStyleList(Map<String, Object> map);

	public StyleDTO getStyleDetails(int seq);

	public void styleDelete(String seq);

	public void styleUpdate(StyleDTO styleDTO);

	public void styleReplyWrite(Map<String, String> map);

	public List<ReplyDTO> getStyleReply(int pseq);

	public int getReplyTotal(int pseq);

	public ReplyDTO getNowReply(Map<String, String> map);

	public void styleReplyDelete(int style_seq);

	public void deleteLikes(Map<String, Object> map);

	public int findLikes(Map<String, Object> map);

	public void makeLikes(Map<String, Object> map);

	public List<LikeDTO> getLikeList(String email);

	public int findAllLikes(int seq);

}
