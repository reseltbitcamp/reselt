package member.bean;

import java.io.File;
import java.sql.Timestamp;
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
	//private String address; DB테이블 추가되면서 이동
	private Timestamp created_at;
	private Timestamp update_at;
	private String footsize;
	private String profile_img;
	private int snsLogin;
	private int level;
	private String nick;
	private String check_email;
	private String check_message;
}
