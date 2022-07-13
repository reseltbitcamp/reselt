<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


 
 <div class="m-auto w-96 pt-16 pb-40 " >
   <div id="logo" class="relative flex flex-col justify-center py-6 mx-20 overflow-hidden bg-gray-50 sm:py-12">
     <img src="/ReseltProject/img/member/logo.png" alt="로고이미지" class="self-center">
   </div>
     
    <div class="">
      <form>
        <div class="pt-5 pb-6">
        	<div>
	        	<div id="emailDiv" class="pt-10 text-xs font-bold"><h3>이메일 주소</h3></div>
	        	<input type="email" id="email" name="email" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
	        	<div id="emailDivcmt" class="mb-10"></div>
        	</div>
         	
         	<div>
         		<div id="pwdDiv" class="pt-5 text-xs font-bold"><h3>비밀번호</h3></div>
         	 	<input type="password" id="pwd" name="pwd" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2">
	        	<div id="pwdDivcmt" class="mb-10"></div>
         	</div>
          
        </div>
      </form>
      
			
      <div>
        <input type="button" value="로그인" id="loginBtn" class="block m-auto text-white bg-gray-300 m- rounded-xl h-14 w-full">
      </div>
      
      <div class="pt-4">
        <ul class="block ml-8 text-xs">
          <li class="float-left border-r-[2px] mr-5 pr-5"  ><a href="/ReseltProject/member/join">이메일 가입</a></li>
          <li class="float-left border-r-[2px] mr-5 pr-5"><a href="/ReseltProject/member/findEmail">이메일 찾기</a></li>
          <li class="float-none"><a href="/ReseltProject/member/findPwd">비밀번호 찾기</a></li>
        </ul>
      </div>
    
    <!-- 네이버아이디 로그인 버튼  -->  
		<div class="mt-10">
			<div>
				<div>
					<a id="naverloginBtn" href="#">
						<img src="/ReseltProject/img/member/naverlogin.png" width="384">
					</a>
				</div>
    			<div>
	    			<a id="kakaologinBtn" href="#">
    					<img src="/ReseltProject/img/member/kakaologin.png" width="384">
    				</a>
    			</div>
				
			</div>
			<div id="naverIdLogin" class="hidden">

			</div>
    		<div id="kakaoLogin" class="hidden">

    		</div>
		</div>
	</div>
      
</div>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(function(){
    //유효성 검사 
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	    
	$('#emailDiv').css('color' , 'black');
	
	//아이디 이메일 형식
	$('#email').keyup(function(){
		if(!reg_email.test($('#email').val())) {                            
			$('#emailDivcmt').html("이메일주소를 정확히 입력해 주세요."); 
			$('#emailDivcmt').css({'font-size':'5pt'}); 
			$('#emailDivcmt').css({'color':'red'});  
			$('#emailDiv').css({'color':'red'});  
		 }                            
		 else {                     
			 	  $('#emailDivcmt').html(""); 
		          $('#emailDiv').css('color' , 'black');           
		 }
		               
	});
    $('#email').on('focusout', function(){
	 	$('#email').trigger('keydown')
 	});         
	
	//비밀번호 10자 이상시 로그인 버튼 활성화
	$('#pwd').keyup(function(){
		if($('#pwd').val().length >= 10 ) {
			$('#loginBtn').css({'background-color':'black'});
			$('#pwdDivcmt').html(""); 
			$('#pwdDiv').css({'color':'black'}); 
			
		}else {
			$('#pwdDivcmt').html("비밀번호 10자 이상 입력해 주세요."); 
			$('#pwdDivcmt').css({'font-size':'5pt'}); 
			$('#pwdDivcmt').css({'color':'red'}); 
			$('#pwdDiv').css({'color':'red'}); 
			$('#loginBtn').css({'background-color':'rgb(209 213 219)'}); 
		}
	});
 	
    //버튼이 검정색일때 submit
 	$('#loginBtn').click(function(){
		if($('#loginBtn').css('background-color') == 'rgb(0, 0, 0)' || $('#loginBtn').css('background-color') == 'black' ){
		console.log('if 성공');
			//alert('클릭');
			//alert($('#email').val());
			//alert(JSON.stringify($('#joinForm').serialize()));
			$.ajax({
				type: 'post',
				url: "/ReseltProject/member/loginTry",
				data: {
					email : $('#email').val(),
					pwd : $('#pwd').val(),
					},
				success: function(data){
					//alert(data);
					if(data == "0"){
						alert("이메일 또는 비밀번호를 확인해주세요.");
					}else {
						//alert(JSON.stringify(data));
						location.href="/ReseltProject/"
					}
				},
				error: function(e){
					console.log(e);
				}
			});
		}else {
			console.log("회색");
		}
	});
	 
	});
</script>

<script type="text/javascript">
    /* 네이버 로그인 */

    var naverLogin = new naver.LoginWithNaverId( {
        clientId: "LgPc6iOg7dmRiTAsIpnG",
        callbackUrl: "http://localhost:8080/ReseltProject/member/naverlogin",
        isPopup: true, /* 팝업을 통한 연동처리 여부 */
        loginButton: {color: "green", type: 3, height: 10} /* 로그인 버튼의 타입을 지정 */
    } ); 
    /* 설정정보를 초기화하고 연동을 준비 */
    naverLogin.init();
    /* 카카오 로그인 */
    
    // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('a4dde13eaf237704c8119f1c077373c5');
    	
    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());

    Kakao.Auth.createLoginButton({
    	container : '#kakaoLogin',
    	size : 'large',
    	success : function(data){
			//alert(JSON.stringify(data));
			Kakao.Auth.setAccessToken(data.access_token);
			
			// 사용자 정보 가져오기
			Kakao.API.request({
			  url: '/v2/user/me',
			  success: function(res) {
			    console.log(res)
			    
			    console.log(res.kakao_account.email);
            	$.ajax({
					type: 'post',
					data : {email : res.kakao_account.email,
					},
					url: "/ReseltProject/member/snsJoinKakao",
					success: function(data){
						//alert("소셜 로그인 회원기입 완료");
						alert(JSON.stringify(data));
						console.log("hi");
						if (data.login == '0'){
							window.close();
							alert('이미 가입된 이메일입니다. 일반회원가입 회원 로그인 해주세요');
						}else if (data.login == '1'){
							window.close();
							alert('이미 가입된 이메일입니다. 다른 소셜 로그인 해주세요');
							
						}else {
							alert('카카오로그인 성공');
							window.close();
							location.href='/ReseltProject/'; 
						}
					},
					error: function(e){
						alert("소셜 로그인 실패");
						
					}
						
				}); 
			  },
			  fail: function(error) {
			    console.error(error)
			  }
			})
		},
		fail : function(e) {
			alert(e);
		}
		
    
    });

    //////////////////////////////////////////////////////////////////////////////////////////
    //로그인 버튼 변경
    
	$(document).on("click", "#naverloginBtn", function(){ 
		var btnNaverLogin = document.getElementById("naverIdLogin").firstChild;
		btnNaverLogin.click();
	});
	$(document).on("click", "#kakaologinBtn", function(){ 
		var btnNaverLogin = document.getElementById("kakaoLogin").firstChild;
		btnNaverLogin.click();
	});
   /*  redirectUri: 'http://localhost:8080/ReseltProject/member/kakaologin',  redirect되는 URL */ 
    
    
    
</script>




