package style.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd'T'HH:mm:ss")
	private Date created_at;
	
	private MemberDTO memberDTO;
}
