package myPage.bean;

import java.util.Date;

public class MyPageProfileDTO {
	int snsLogin;
	String email, pwd, nick, tel, footsize, profile_img, name, check_email, check_message;
	
	public String getCheck_email() {
		return check_email;
	}
	public void setCheck_email(String check_email) {
		this.check_email = check_email;
	}
	public String getCheck_message() {
		return check_message;
	}
	public void setCheck_message(String check_message) {
		this.check_message = check_message;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSnsLogin() {
		return snsLogin;
	}
	public void setSnsLogin(int snsLogin) {
		this.snsLogin = snsLogin;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getFootsize() {
		return footsize;
	}
	public void setFootsize(String footsize) {
		this.footsize = footsize;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	
}
