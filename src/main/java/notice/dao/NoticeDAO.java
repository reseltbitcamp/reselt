package notice.dao;

import java.util.List;
import java.util.Map;

import notice.bean.NoticeDTO;

public interface NoticeDAO {

	public void noticeWrite(NoticeDTO noticeDTO);

	public List<NoticeDTO> getNoticeList(Map<String, Integer> map);
	
	public int getTotalA();

	public NoticeDTO getNoticeView(String seq);
	
}
