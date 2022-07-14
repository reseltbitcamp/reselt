package member.bean;

import java.io.File;
import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MemberDTO {
	
	private int id;
	private String email;
	private String pwd;
	private String name;
	private String tel;
	private String address;
	private Date created_at;
	private Date update_at;
	private String footsize;
	private String profile_img;
	private int snsLogin;
	private int level;
	private String nick;
}
