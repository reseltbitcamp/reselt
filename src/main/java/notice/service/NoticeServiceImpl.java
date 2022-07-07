package notice.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import notice.bean.NoticeDTO;
import notice.dao.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private HttpSession session;
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public void noticeWrite(NoticeDTO noticeDTO) {
		noticeDAO.noticeWrite(noticeDTO);
		
	}

}
