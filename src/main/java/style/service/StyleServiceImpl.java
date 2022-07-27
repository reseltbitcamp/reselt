package style.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import style.bean.LikeDTO;
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
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<StyleDTO> list = styleDAO.getStyleList(map);
		
		String email = (String) session.getAttribute("email");
		
		List<LikeDTO> like = styleDAO.getLikeList(email);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("email", email);
		
		sendMap.put("like", like);
		sendMap.put("list", list);
		return sendMap;
	}

	@Override
	public Map<String, Object> getStyleDetails(int seq) {
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> likeMap = new HashMap<String, Object>();
		StyleDTO styleDTO = styleDAO.getStyleDetails(seq);
		map.put("styleDTO", styleDTO);
		
		String email = (String) session.getAttribute("email");
		
		map.put("email", email);
		if(email!=null) {
			memberDTO.setEmail(email);
			
			memberDTO = memberDAO.checkEmail(memberDTO);
			map.put("memberDTO", memberDTO);
		}
		
		int pseq = seq;
		
		List<ReplyDTO> list = styleDAO.getStyleReply(pseq);
		map.put("list", list);
		
		int count = styleDAO.getReplyTotal(pseq); 
		map.put("count", count);
		
		likeMap.put("seq", seq);
		likeMap.put ("email", email);
		int num = styleDAO.findLikes(likeMap);
		
		int likecount = styleDAO.findAllLikes(seq);
		map.put("likecount", likecount);
		
		map.put("num", num);
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

	@Override
	public Map<String, Object> plusLikes(int seq, String email) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("seq", seq);
		map.put("email", email);
		int num = styleDAO.findLikes(map);

		/* num이 1이면 삭제, 아니면 생성 */
		if(num == 1) {
			styleDAO.deleteLikes(map);
			num = 0;
		}
		else {
			styleDAO.makeLikes(map);
			num = 1;
		}
		int count = styleDAO.findAllLikes(seq);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("num", num);
		sendMap.put("count", count);
		return sendMap;
	}
}
