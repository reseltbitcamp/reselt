package style.bean;

import java.util.Date;

import lombok.Data;


@Data
public class StyleDTO {
	private int seq;
	private int member_id;
	private String style_image;
	private String content;
	private int product_id;
	private int like_code;
	private int countcmt;
	private Date created_at;
}
