<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script>
    var naverLogin = new naver.LoginWithNaverId(
        {
            clientId: "DphfmDygX4WFkf8nghMJ", // 내꺼
            callbackUrl: "http://localhost:8080/ReseltProject/member/naverlogin",
            isPopup: true,
            callbackHandle: true
            /* callback 페이지가 분리되었을 경우에 callback 페이지에서는 callback처리를 해줄수 있도록 설정합니다. */
        }
    );

		    /* (3) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		    naverLogin.init();
		
		    /* (4) Callback의 처리. 정상적으로 Callback 처리가 완료될 경우 main page로 redirect(또는 Popup close) */
    		window.addEventListener('load', function () {
       		naverLogin.getLoginStatus(function (status) {
            if (status) {
                //alert(JSON.stringify(naverLogin.user));
                //alert(JSON.stringify(naverLogin.user.email));
                //alert(JSON.stringify(naverLogin.user.name));
                //alert(JSON.stringify(naverLogin.user.mobile));
                //alert(JSON.stringify(naverLogin.user.profile_image));
            	/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
            	
            	$.ajax({
					type: 'post',
					data : {email : naverLogin.user.email,
						   name : naverLogin.user.name,
						   tel : naverLogin.user.mobile
						   //'profile_img' : naverLogin.user.profile_img
					},
					url: "/ReseltProject/member/snsJoinNaver",
					success: function(data){
						alert(JSON.stringify(data));
						console.log("hi");
						if (data.login == '0'){
							window.close();
							alert('이미 가입된 이메일입니다. 일반회원가입 회원 로그인 해주세요');
						}else if (data.login == '1'){
							window.close();
							opener.location.href='/ReseltProject/'; 
						}else {
							window.close();
							alert('이미 가입된 이메일입니다. 다른 소셜 로그인 해주세요');
						}
						//window.location.reload();
						
					},
					error: function(e){
						alert("소셜 로그인 실패");
						console.log("bye");
						
					}
						
				}); 
                // 유저 아이디, 이메일 주소, 이름을 Session에 저장하였습니다.
                //sessionStorage.setItem("userinfo",JSON.stringify(naverLogin.user));
                //sessionStorage.setItem("user_code",naverLogin.user.code);
                //sessionStorage.setItem("user_info",naverLogin.user.id);
                //sessionStorage.setItem("naver_email", naverLogin.user.getEmail());
                //sessionStorage.setItem("naver_name", naverLogin.user.getName());

                // 네이버 로그인과 카카오 로그인을 구분하기 위해 별도의 세션을 저장합니다.
                //sessionStorage.setItem("kinds","naver");

                // 회원가입 혹은 로그인 시 처리하기 위한 페이지 입니다. 예를 들어 DB
                /* 인증이 완료된후 /sample/main.html 페이지로 이동하라는것이다. 본인 페이로 수정해야한다. */
                //alert('잠깐');
                //location.href = "http://localhost:8080/ReseltProject/";
                } else {
                console.log("callback 처리에 실패하였습니다.");
            }
        });
    });
</script>

</body>
</html>