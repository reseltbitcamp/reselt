package member.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

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
	private Date created_at;
	private Date update_at;
	private int snsLogin;
}
