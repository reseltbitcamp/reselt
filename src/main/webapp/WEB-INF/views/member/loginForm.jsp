<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
 
 <div class="m-auto w-96 " >
   <div id="logo" class="relative flex flex-col justify-center py-6 mx-20 overflow-hidden bg-gray-50 sm:py-12">
     <img src="/reselt/img/member/logo.png" alt="로고이미지" class="self-center">
   </div>
     
    <div class="">
      <form>
        <div class="pt-5 pb-6">
        	<div id="emailDiv">
	          <div class="pt-10 text-xs font-bold"><h3>이메일 주소</h3></div>
	          <input type="email" id="email" name="email" class="border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
	          <div id="emailDivcmt" class="mb-10"></div>
        	</div>
          <div class="pt-5 text-xs font-bold"><h3>비밀번호</h3></div>
          <input type="password" id="pwd" name="pwd" class="border-b-2 mb-14 w-96 focus:outline-none focus:border-black focus:border-b-2">
          
        </div> 
      </form>
      
      <div>
        <input type="button" value="로그인" class="text-white block m-auto bg-gray-300 m- rounded-xl h-14 w-96">
      </div>
      
      <div class="pt-4">
        <ul class="block ml-8 text-xs">
          <li class="float-left border-r-[2px] mr-5 pr-5"  ><a href="/reselt/member/writeForm">이메일 가입</a></li>
          <li class="float-left border-r-[2px] mr-5 pr-5"><a>이메일 찾기</a></li>
          <li class="float-none"><a>비밀번호 찾기</a></li>
        </ul>
      </div>
      
      <div class="pt-10 text-center">
       		<!-- 네이버 로그인 버튼 노출 영역 -->
			<div id="naver_id_login"></div>
			<!-- //네이버 로그인 버튼 노출 영역 -->
      </div>
    </div>
      
  </div>

</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(function(){
     var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	    
	$('#emailDiv').css('color' , 'black');
	
	
	$('#email').keydown(function(){
		if(!reg_email.test($('#email').val())) {                            
			$('#emailDivcmt').html("이메일주소를 정확히 입력해 주세요."); 
			$('#emailDivcmt').css({'font-size':'5pt'}); 
			$('#emailDiv').css({'color':'red'});  
			
			
		 }                            
		     else {                     
			 	  $('#emailDivcmt').html(""); 
		          $('#emailDiv').css('color' , 'black');           
		     }               
	});
	 
             
	});
</script>
<script type="text/javascript">
	//네이버아디디로로그인 초기화 Script
	var naver_id_login = new naver_id_login("LgPc6iOg7dmRiTAsIpnG", "http://localhost:8080/reselt/member/naverlogin");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain("http://localhost:8080/reselt/member/loginForm");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();

</script>
</html>




