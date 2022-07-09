package member.bean;

import org.springframework.stereotype.Component;

import lombok.Data;
import oracle.sql.DATE;

@Component
@Data
public class MemberDTO {
	
	private int id;
	private String email;
	private String pwd;
	private String footsize;
	private String name;
	private String tel;
	private String address;
	private DATE created_at;
	private DATE update_at;
	private int snsLogin;
	
	
}
