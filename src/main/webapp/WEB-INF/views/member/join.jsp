<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

 
 <div class="m-auto w-96 pt-16 pb-40" >
   <div id="joinForm" class="relative m-auto bg-white sm:py-12">
     <h2 class="text-3xl font-bold text-center">회원가입</h2>
   </div>
     
    <div class="">

      <form id="joinForm">
        <div class="pt-5 pb-6">
          <div>
	      	<div id="emailDiv" class="pt-10 text-xs font-bold"><h3>이메일 주소*</h3></div>
    	  	<input id="email" type="email" name="email" autocomplete='off' class="border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
          	<!-- <input type="button" id="emailSend" value="이메일 인증"> -->
          	<input id="emailOk" type="hidden">
          	<div id="emailDivcmt" class="mb-10"></div>
          </div>
          <div>
          	<div id="pwdDiv" class="text-xs font-bold"><h3>비밀번호*</h3></div>
          	<input id="pwd" name="pwd" type="password" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="영문 10자 이상">
      	    <input id="pwdOk" type="hidden">
      	    <div id="pwdDivcmt" class="mb-10"></div>
          </div>
          <div>
          	<div id="repwdDiv" class="text-xs font-bold"><h3>비밀번호 확인*</h3></div>
         	<input id="repwd" type="password" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2">
         	<input id="repwdOk" type="hidden">
         	<div id="repwdDivcmt" class="mb-10"></div>
          </div>
          <div class="cursor-pointer"><h3 class="text-xs font-bold ">신발사이즈</h3>
            <input id="footsize" type="text" autocomplete="off" class="mb-10 cursor-pointer focus:outline-none disabled:disable w-20" placeholder="선택하세요" readonly="readonly">
            <a href="#size" class="btn">
              <button id="footsizeBtn" type="button" class="float-right ml-5">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
                </svg>
              </button>
            </a>
          </div>
		</div>
      </form>
      
      <div class="mb-10 ml-6">
        <div>
          <label>
            <input id="check1" type="checkbox"></input>
            <input id="checkOk" type="hidden"></input>
            [필수] 만 14세 이상이며 모두 동의합니다.
          </label>
<!--           <button id="plusBtn1" type="button" class="float-right">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
            </svg>
          </button> -->
        </div>
        <div>
          <label>
            <input type="checkbox"></input>
            [선택] 광고성 정보 수신에 모두 동의합니다.
          </label>
          <!-- <button id="plusBtn2" type="button" class="float-right">
            <svg id="sizeSvg" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
            </svg>
            </button> -->
        </div>
      </div>
     
      <div class="mb-10">
        <input id="joinBtn" type="button" value="회원 가입" class="text-white block m-auto bg-gray-300 m- rounded-xl h-12 w-full"  >
      </div>
      
      
    </div>
      
  </div>
	<!-- 모달 내용 -->
  <div id="size" class="flex m-auto scroll-m-48 w-96 hidden" style="max-width: 350px;">
    <div>
      <h1 class="font-bold text-center">사이즈 선택</h1>
    </div>
    <div class="overflow-y-auto">
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">220</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">225</a></div>
	    <div class=""><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">230</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">235</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">240</a></div>
	    <div class=""><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">245</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">250</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">255</a></div>
	    <div class=""><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">260</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">265</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">270</a></div>
	    <div class=""><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">275</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">280</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">285</a></div>
	    <div class=""><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">290</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">295</a></div>
	    <div class="float-left"><a href="#selectsize" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">300</a></div>
    </div>
    <div class="float-none text-center">
    	<div><a href="#ok" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg bg-black text-white ">확인</a></div>
    </div>
  	</div>
    
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>
$(function(){
    $('#footsize').click(function(){
		$('#footsizeBtn').trigger('click');
	});

	//유효성 검사
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	
	$('#email').keyup(function(){
		

		if(!reg_email.test($('#email').val())) {                            
			$('#emailDivcmt').html("이메일주소를 정확히 입력해 주세요."); 
			$('#emailDivcmt').css({'font-size':'5pt'}); 
			$('#emailDivcmt').css({'color':'red'});  
			$('#emailDiv').css({'color':'red'});  
			$('#emailOk').val('0');					 
		}
		 else {                     
	 	 	 $('#emailDivcmt').html(""); 
          	 $('#emailDiv').css('color' , 'black');           
			 $('#emailOk').val('1');
				
		}
	
	});
	
	//비밀번호 확인 및 10자이상
	$('#pwd').on('keyup , focusout',function(){
		if($('#pwd').val().length >= 10 ) {
			$('#pwdDivcmt').html(""); 
			$('#pwdDiv').css({'color':'black'}); 
			$('#pwdOk').val('1');
		}else {
			$('#pwdDivcmt').html("비밀번호 10자 이상 입력해 주세요."); 
			$('#pwdDivcmt').css({'font-size':'5pt'}); 
			$('#pwdDivcmt').css({'color':'red'}); 
			$('#pwdDiv').css({'color':'red'}); 
			$('#pwdOk').val('0');
		}
	});
	
	
	//비밀번호 재확인
	$('#repwd').on('keyup , focusin',function(){
		if($('#pwd').val() != $('#repwd').val()){
			$('#repwdDivcmt').html("비밀번호가 일치하지 않습니다."); 
			$('#repwdDivcmt').css({'font-size':'5pt'}); 
			$('#repwdDivcmt').css({'color':'red'}); 
			$('#repwdDiv').css({'color':'red'}); 
			$('#repwdOk').val('0');

		}else {
			$('#repwdDivcmt').html(""); 
			$('#repwdDiv').css({'color':'black'}); 
			$('#repwdOk').val('1');
			
		}
	});
	
	
		//값 변경시 유효성 재검사 
		$('#pwd, #repwd').on('keyup , focusout', function(){
		    if($('#pwd').val() != $('#repwd').val()){
		 		if($('#repwd').val() != ""){
		    	$('#repwdDivcmt').html("비밀번호가 일치하지 않습니다."); 
				$('#repwdDivcmt').css({'font-size':'5pt'}); 
				$('#repwdDivcmt').css({'color':'red'}); 
				$('#repwdDiv').css({'color':'red'}); 
				$('#repwdOk').val('0');
		 		}
		    }
		});
	//필수 체크 조건
	$('#check1').click(function(){
	 if($('#check1').is(':checked')){
		 $('#checkOk').val('1')
	 }else{
		 $('#checkOk').val('0')
	 }
	});	
	 	
	$('#email , #pwd , #repwd').on('focusout',function(){
		console.log('변화');
		if($('#emailOk').val() == '1' && $('#pwdOk').val() == '1' && $('#repwdOk').val() == '1' && $('#checkOk').val() == '1' ){
			$('#joinBtn').css({'background-color' : 'rgb(0, 0, 0)'});
			$('#joinBtn').css({'cursor':'pointer'}); 

			console.log('0');
		}else{
			$('#joinBtn').css({"background-color":"rgb(209, 213, 219)"});
			$('#joinBtn').css({'cursor':'default'}); 

			console.log('1');
		}
	}); 
	$('#check1').click(function(){
		console.log('변화');
		if($('#emailOk').val() == '1' && $('#pwdOk').val() == '1' && $('#repwdOk').val() == '1' && $('#checkOk').val() == '1' ){
			$('#joinBtn').css({'background-color' : 'rgb(0, 0, 0)'});
			$('#joinBtn').css({'cursor':'pointer'}); 
		}else{
			$('#joinBtn').css({"background-color":"rgb(209, 213, 219)"});
			$('#joinBtn').css({'cursor':'default'}); 
			console.log('1');
		}
	}); 
	
/* 	//이메일 인증
	$('#emailSend').click(function(){
		if($('#emailOk').val() == '0') {
			alert('이메일을 다시 확인 해주세요.');
		}else{
			$.ajax({
				type : 'post',
				url : '/ReseltProject/member/joinCheckEmail',
				data : { email : $('#email').val() },
				success : function(data){
					
				}
			});
		}		
	
	}); */
	
	//버튼이 검정색일때 submit
 	$('#joinBtn').click(function(){
		if($('#joinBtn').css('background-color') == 'rgb(0, 0, 0)' || $('#joinBtn').css('background-color') == 'black' ){
			

		//console.log('if 성공');
			//alert('클릭');
			//alert($('#email').val());
			//alert(JSON.stringify($('#joinForm').serialize()));
			$.ajax({
				type: 'post',
				url: "/ReseltProject/member/joinTry",
				data: {
					email : $('#email').val(),
					pwd : $('#pwd').val(),
					footsize : $('#footsize').val()
					},
				success: function(){
					alert('회원가입이 완료되었습니다.');
					location.href="/ReseltProject/member/login"
				},
				error: function(e){
					console.log(e);
				}
			});
		}else {
			console.log("회색");
		}
	});


	
	//아이디 중복검사
	$('#email').on('focusout , keyup', function(){
		console.log('중복검사');
		$.ajax({
			type: 'post',
			url: "/ReseltProject/member/checkEmail",
			data: {
				email : $('#email').val()
				},
			success: function(data){
				//alert(data);
				if(data == '0'){
  					if(!reg_email.test($('#email').val())){
  						$('#emailDivcmt').css({'font-size':'5pt'}); 
  						$('#emailDivcmt').css({'color':'red'}); 
						$('#emailDivcmt').html("이메일주소를 정확히 입력해 주세요.");
 						$('#emailOk').val('0');
				    }else {
  						$('#emailOk').val('1');
  	          	  	  	$('#emailDiv').css('color' , 'black');
						$('#emailDivcmt').html("");
				    }
				}else if(data == '1') {
					$('#emailDivcmt').css({'font-size':'5pt'}); 
					$('#emailOk').val('0');
					$('#emailDivcmt').html("이미 사용중인 아이디 입니다."); 
  	          	    $('#emailDivcmt').css('color' , 'red');   
					$('#joinBtn').css({"background-color":"rgb(209, 213, 219)"});
       

				}
					
			},
			error: function(e){
				console.log(e);
			}
		 });
	});

	
		
	


	//모달창 선택시 값 넣고 종료
    $('a[href="#size"]').click(function(event) {
      event.preventDefault();
 
      $(this).modal({
        fadeDuration: 250
        
      });
    
    });
	
    $('a[href="#selectsize"]').on('click', function(){
    	event.preventDefault();
	    $('#footsize').val($(this).html());
    	$('a[href="#selectsize"]').css({"background-color":"white", "color":"black"});
	    $(this).css({"background-color":"black", "color":"white"});
    });
    $('a[href="#ok"]').on('click', function(){
	    $('.close-modal').trigger('click');
    });
    
    
});
	
</script>  

