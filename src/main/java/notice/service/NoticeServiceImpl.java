package notice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import notice.bean.NoticeDTO;
import notice.bean.NoticePaging;
import notice.dao.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private HttpSession session;
	@Autowired
	private NoticeDAO noticeDAO;
	@Autowired
	private NoticePaging noticePaging;

	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {
		noticeDAO.noticeWrite(noticeDTO);
		
	}

	@Override
	public Map<String, Object> getNoticeList(String pg) {
		// DB - 1페이지당 10개씩
		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum - 9;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<NoticeDTO> list = noticeDAO.getNoticeList(map);
		
		//페이징 처리
		NoticePaging noticePaging = this.getNoticePaging(pg);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		sendMap.put("noticePaging", noticePaging);
		
		return sendMap;
	}

	@Override
	public NoticePaging getNoticePaging(String pg) {
		int totalA = noticeDAO.getTotalA();
		
		noticePaging.setCurrentPage(Integer.parseInt(pg));
		noticePaging.setPageBlock(8);
		noticePaging.setPageSize(10);
		noticePaging.setTotalA(totalA);
		noticePaging.makePagingHTML();
		
		return noticePaging;
	}

	@Override
	public Map<String, Object> getNoticeView(String seq) {
		NoticeDTO noticeDTO = noticeDAO.getNoticeView(seq);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("noticeDTO", noticeDTO);
		
		
		return map;
	}

}






