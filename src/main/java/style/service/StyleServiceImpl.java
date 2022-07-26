package style.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import style.bean.ReplyDTO;
import style.bean.StyleDTO;
import style.dao.StyleDAO;

@Service
public class StyleServiceImpl implements StyleService {
	@Autowired
	private StyleDAO styleDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private MemberDTO memberDTO;
	
	@Override
	public void styleWriteForm(StyleDTO styleDTO) {
		String email = (String) session.getAttribute("email");
		styleDTO.setMember_id(email);
		styleDAO.styleWriteForm(styleDTO);
	}

	@Override
	public Map<String, Object> getStyleList(String pg) {
		//1페이지당 3개씩
		int endNum = Integer.parseInt(pg) * 8;
		int startNum = endNum - 8;
		
		System.out.println("pg = "+pg+", startNum = "+startNum+", endNum = ");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<StyleDTO> list = styleDAO.getStyleList(map);

		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("list", list);
		return sendMap;
	}

	@Override
	public Map<String, Object> getStyleDetails(String seq) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		StyleDTO styleDTO = styleDAO.getStyleDetails(seq);
		map.put("styleDTO", styleDTO);
		
		String email = (String) session.getAttribute("email");
		
		map.put("email", email);
		if(email!=null) {
			memberDTO.setEmail(email);
			
			memberDTO = memberDAO.checkEmail(memberDTO);
			map.put("memberDTO", memberDTO);
		}
		
		int pseq = Integer.parseInt(seq);
		
		List<ReplyDTO> list = styleDAO.getStyleReply(pseq);
		map.put("list", list);
		
		int count = styleDAO.getReplyTotal(pseq); 
		map.put("count", count);
		return map;
	}

	@Override
	public void styleDelete(String seq) {
		styleDAO.styleDelete(seq);
	}

	@Override
	public void styleUpdate(StyleDTO styleDTO) {
		styleDAO.styleUpdate(styleDTO);
	}

	@Override
	public Map<String, Object> styleReplyWrite(Map<String, String> map) {
		Map<String, Object> sendMap = new HashMap<String, Object>();

		String email = (String) session.getAttribute("email");
		map.put("email", email);
		
		styleDAO.styleReplyWrite(map);
		
		/* 댓글 총 개수 */
		ReplyDTO replyDTO = styleDAO.getNowReply(map);
		sendMap.put("replyDTO", replyDTO);
		
		int count = styleDAO.getReplyTotal(Integer.parseInt(map.get("pseq"))); 
		sendMap.put("count", count);
		return sendMap;
	}

	@Override
	public int styleReplyDelete(int style_seq, int pseq) {
		styleDAO.styleReplyDelete(style_seq);
		int count = styleDAO.getReplyTotal(pseq); 
		return count;
	}
}
