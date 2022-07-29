package style.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;
import member.bean.MemberDTO;

@Data
public class ReplyDTO {
	private int pseq;
	private int style_seq;
	private String cmt_id;
	private String comment_reply;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "MM.dd HH:mm")
	private Date created_at;
	
	private MemberDTO memberDTO;
}
