package member.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDTO {
	
	private String name;
	private String id;
	private String pwd;
}
