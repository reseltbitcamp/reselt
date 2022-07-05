<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

 
 <div class="m-auto w-96 pt-16 pb-40" >
   <div id="joinForm" class="relative m-auto bg-gray-50 sm:py-12">
     <h2 class="text-3xl font-bold text-center">회원가입</h2>
   </div>
     
    <div class="">

      <form>
        <div class="pt-5 pb-6">
          <div>
	      	<div id="emailDiv" class="pt-10 text-xs font-bold"><h3>이메일 주소*</h3></div>
    	  	<input id="email" type="email" name="email" class="border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
          	<div id="emailDivcmt" class="mb-10"></div>
          </div>
          <div>
          	<div id="pwdDiv" class="text-xs font-bold"><h3>비밀번호*</h3></div>
          	<input id="pwd" name="pwd" type="password" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="영문 10자 이상">
      	    <div id="pwdDivcmt" class="mb-10"></div>
          </div>
          <div>
          	<div id="repwdDiv" class="text-xs font-bold"><h3>비밀번호 확인*</h3></div>
         	<input id="repwd" type="password" class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2">
         	<div id="repwdDivcmt" class="mb-10"></div>
          </div>
          <div class="cursor-pointer"><h3 class="text-xs font-bold ">신발사이즈</h3>
            <input id="footsize" type="text" autocomplete="off" class="mb-10 cursor-pointer focus:outline-none disabled:disable" placeholder="선택하세요" readonly="readonly">
            <a href="#size" class="btn">
              <button type="button" value="" class="float-right ml-5">
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
            <input type="checkbox"></input>
            [필수] 만 14세 이상이며 모두 동의합니다.
          </label>
          <button id="plusBtn1" type="button" class="float-right">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
            </svg>
          </button>
        </div>
        <div>
          <label>
            <input type="checkbox"></input>
            [선택] 광고성 정보 수신에 모두 동의합니다.
          </label>
          <button id="plusBtn2" type="button" class="float-right">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
            </svg>
            </button>
        </div>
      </div>
     
      <div class="mb-10">
        <input type="button" value="회원 가입" class="text-white block m-auto bg-gray-300 m- rounded-xl h-12 w-full"  >
      </div>
      
      
    </div>
      
  </div>
	<!-- 모달 내용 -->
  <div id="size" class="flex m-auto scroll-m-48 w-96" style="max-width: 350px;">
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
	
	//비밀번호 재확인 및 10자이상
	$('#pwd').keydown(function(){
		if($('#pwd').val().length >= 10 ) {
			$('#pwdDivcmt').html(""); 
			$('#pwdDiv').css({'color':'black'}); 
		}else {
			$('#pwdDivcmt').html("비밀번호 10자 이상 입력해 주세요."); 
			$('#pwdDivcmt').css({'font-size':'5pt'}); 
			$('#pwdDivcmt').css({'color':'red'}); 
		}
	});
 	
 	$('#pwd').on('focusout', function(){
	 	$('#pwd').trigger('keydown')
 	});	
	 	
	$('#repwd').keydown(function(){
		if($('#pwd').val() != $('#repwd').val()){
			$('#repwdDivcmt').html("비밀번호가 일치하지 않습니다."); 
			$('#repwdDivcmt').css({'font-size':'5pt'}); 
			$('#repwdDivcmt').css({'color':'red'}); 
			$('#repwdDiv').css({'color':'red'}); 
		}else {
			$('#repwdDivcmt').html(""); 
			$('#repwdDiv').css({'color':'black'}); 
		}
	});
	
 	$('#repwd').on('focusout', function(){
	 	$('#repwd').trigger('keydown')
	 
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

