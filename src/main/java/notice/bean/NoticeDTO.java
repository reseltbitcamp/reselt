package notice.bean;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class NoticeDTO {
	private int seq;
	private String title;
	private String content;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date logtime;
	
	
}