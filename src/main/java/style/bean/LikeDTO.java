package style.bean;

import lombok.Data;
import java.util.Date;

@Data
public class LikeDTO {
	private int like_code;
	private int id;
	private int seq;
	private int is_like;
	private Date created_at;
}
