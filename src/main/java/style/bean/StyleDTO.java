package style.bean;

import java.util.Date;

import lombok.Data;


@Data
public class StyleDTO {
	private int seq;
	private String user_id;
	private String style_image;
	private String content;
	private String product_tag;
	private int style_like;
	private int countcmt;
	private Date style_date;

}
