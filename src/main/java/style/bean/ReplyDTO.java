package style.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {
	private int pseq;
	private int style_seq;
	private int cmt_id;
	private String comment_reply;
}
