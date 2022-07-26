package style.bean;

import java.util.Date;

import lombok.Data;
import member.bean.MemberDTO;

@Data
public class ReplyDTO {
	private int pseq;
	private int style_seq;
	private String cmt_id;
	private String comment_reply;
	private Date created_at;
	
	private MemberDTO memberDTO;
}
