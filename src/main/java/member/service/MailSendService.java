package member.service;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailSendService {
	@Autowired
	private JavaMailSenderImpl mailSender;
	private long authNumber; 
	private int authNumberInt;
	
		public void makeRandomNumber() {
			// 난수의 범위 111111 ~ 999999 (6자리 난수)
			Random r = new Random();
			long checkNum = (r.nextLong() + 1111111111)/1000000000;
			int checkNumInt = r.nextInt(888888) + 111111;
			System.out.println("임시비밀번호 : " + Math.abs(checkNum));
			System.out.println("인증번호 : " + checkNum);
			authNumber = Math.abs(checkNum);
			authNumberInt = checkNumInt;
		}
		
		
		//이메일 보낼 양식! 임시비밀번호 
		public String tmpPwdEmail(String email) {
			makeRandomNumber();
			String setFrom = ".com"; // email-config에 설정한 자신의 이메일 주소를 입력 
			String toMail = email;
			String title = "임시 비밀번호 발급 이메일 입니다."; // 이메일 제목 
			String content = 
					"Reselt를 방문해주셔서 감사합니다." + 	//html 형식으로 작성 ! 
	                "<br><br>" + 
				    "임시 비밀번호는 " + authNumber + "입니다." + 
				    "<br>" + 
				    "로그인 후 비밀번호 수정 요청드립니다."; //이메일 내용 삽입
			mailSend(setFrom, toMail, title, content);
			return Long.toString(authNumber);
		}
		//이메일 보낼 양식! 회원가입 인증
		public String joinEmail(String email) {
			makeRandomNumber();
			String setFrom = ".com"; // email-config에 설정한 자신의 이메일 주소를 입력 
			String toMail = email;
			String title = "회원가입 인증 이메일 입니다."; // 이메일 제목 
			String content = 
					"Reselt를 방문해주셔서 감사합니다." + 	//html 형식으로 작성 ! 
							"<br><br>" + 
							"인증번호는 " + authNumberInt + "입니다." + 
							"<br>" + 
							"회원가입을 축하드립니다."; //이메일 내용 삽입
			mailSend(setFrom, toMail, title, content);
			return Integer.toString(authNumberInt);
		}
		
		//이메일 전송 메소드
		public void mailSend(String setFrom, String toMail, String title, String content) { 
			MimeMessage message = mailSender.createMimeMessage();
			// true 매개값을 전달하면 multipart 형식의 메세지 전달이 가능.문자 인코딩 설정도 가능하다.
			try {
				MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
				helper.setFrom(setFrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				// true 전달 > html 형식으로 전송 , 작성하지 않으면 단순 텍스트로 전달.
				helper.setText(content,true);
				mailSender.send(message);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
		}
		
	
}

