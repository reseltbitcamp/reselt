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

			<div id="naverIdLogin">
				<a id="naverIdLogin_loginButton" href="#">
					<img src="https://static.nid.naver.com/oauth/big_g.PNG?version=js-2.0.1" height="50">
				</a>
			</div>
    		
    		<div id="kakaoLogin">
    			<input type="button" id="kakaologinBtn" value="로그인버튼"></input>
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
	$('#email').keydown(function(){
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
	$('#pwd').keydown(function(){
		if($('#pwd').val().length >= 10 ) {
			$('#loginBtn').css({'background-color':'black'});
			$('#pwdDivcmt').html(""); 
			$('#pwdDiv').css({'color':'black'}); 
			
			//링크추가 필요
		}else {
			$('#pwdDivcmt').html("비밀번호 10자 이상 입력해 주세요."); 
			$('#pwdDivcmt').css({'font-size':'5pt'}); 
			$('#pwdDivcmt').css({'color':'red'}); 
			$('#pwdDiv').css({'color':'red'}); 
			$('#loginBtn').css({'background-color':'rgb(209 213 219)'}); 
		}
	});
	 
	});
</script>

<script type="text/javascript">
    /* 네이버 로그인 */

    var naverLogin = new naver.LoginWithNaverId( {
        clientId: "LgPc6iOg7dmRiTAsIpnG",
        callbackUrl: "http://localhost:8080/ReseltProject/member/naverlogin",
        isPopup: false, /* 팝업을 통한 연동처리 여부 */
        loginButton: {color: "white", type: 3, height: 40} /* 로그인 버튼의 타입을 지정 */
    } ); 
    /* 설정정보를 초기화하고 연동을 준비 */
    naverLogin.init();
    
    /* 카카오 로그인 */
    
    // SDK를 초기화 합니다. 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('a4dde13eaf237704c8119f1c077373c5');
    	
    // SDK 초기화 여부를 판단합니다.
    console.log(Kakao.isInitialized());

    $('#kakaologinBtn').click(function(){

    Kakao.Auth.authorize({
		redirectUri: 'http://localhost:8080/ReseltProject/member/kakaologin',  /* redirect되는 URL */
		scope: 'account_email'  /* 전달 받을 정보 */
    });
    
    });
</script>




