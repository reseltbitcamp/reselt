package style.bean;

import java.util.Date;

import lombok.Data;
import member.bean.MemberDTO;


@Data
public class StyleDTO {
	private int seq;
	private String member_id;
	private String style_image;
	private String content;
	private int product_id;
	private int like_code;
	private int countcmt;
	private Date created_at;
	
	private MemberDTO memberDTO;
}
