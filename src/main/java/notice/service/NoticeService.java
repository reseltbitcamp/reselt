package notice.service;

import java.util.Map;

import notice.bean.NoticeDTO;
import notice.bean.NoticePaging;

public interface NoticeService {

	public void noticeWrite(NoticeDTO noticeDTO);

	public Map<String, Object> getNoticeList(String pg);
	
	public NoticePaging getNoticePaging(String pg);

}
