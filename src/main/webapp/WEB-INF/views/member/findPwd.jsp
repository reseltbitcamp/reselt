<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="m-auto w-96 pt-16 pb-40">
    <div>
        <div><h1 class="text-2xl font-bold text-center pb-10 border-b-black border-b-2">비밀번호 찾기</h1></div>
    </div>
    
    <div class="pt-10 pb-7">
        <p class="text-xs">
        가입 시 등록하신 휴대폰 번호와 이메일을 입력하시면,
        <br>
        휴대폰으로 임시 비밀번호를 전송해 드립니다.
        </p>
    </div>
    
    <div class="">
        <div>
        <form id="findPwdForm">
        	<div class="mb-10">
	            <p id="telDiv" class="text-xs font-bold">휴대폰 번호</p>
    	        <input id="tel" type="text" name="tel" autocomplete='off' oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text-sm border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="가입하신 휴대폰 번호">
       			<input id="telOk" type="hidden">
       			<div id="telDivcmt" ></div>
        	</div>
        	
        	<div class="mb-10">
            	<p id="emailDiv" class="text-xs font-bold">이메일 주소</p>
            	<input type="email" id="email" name="email" autocomplete='off' class="border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
       			<input id="emailOk" type="hidden">
        		<div id="emailDivcmt" ></div>
        	</div>
        </form>
        </div>
    </div>
    
    <div id="BtnDiv" class="mb-10">
        <input id="findPwdBtn" type="button" value="이메일 발송하기" class="text-white block m-auto bg-gray-300 rounded-xl h-14 w-full"  >
    </div>
    
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	//휴대폰 유효성 검사 성공시 버튼 활성화
	$('#tel').keydown(function(){
		var checknum = $('#tel').val().substr(0,3);
		var telLength = $('#tel').val().length;
			//console.log(telLength);	
			//console.log(checknum);	
			
		if (checknum == "010" || checknum == "011" || checknum == "017"){
			if(telLength == 10 || telLength == 11) {
				$('#telDivcmt').html('');
				$('#telDiv').css({'color':'black'}); 
				$('#telOk').val('1');

		
			}else{
				$('#telDivcmt').html('올바른 휴대폰 번호를 입력하세요.');
				$('#telDivcmt').css({'font-size':'5pt'}); 
				$('#telDivcmt').css({'color':'red'}); 
				$('#telDiv').css({'color':'red'}); 
				$('#telOk').val('0');
			}
		}else {
			$('#telDivcmt').html('올바른 휴대폰 번호를 입력하세요.');
			$('#telDivcmt').css({'font-size':'5pt'}); 
			$('#telDivcmt').css({'color':'red'}); 
			$('#telDiv').css({'color':'red'}); 
			$('#telOk').val('0');
		}
	});
	
	//유효성 검사 
	var reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	//아이디 이메일 형식
	$('#email').keydown(function(){
		if(!reg_email.test($('#email').val())) {                            
			$('#emailDivcmt').html("이메일주소를 정확히 입력해 주세요."); 
			$('#emailDivcmt').css({'font-size':'5pt'}); 
			$('#emailDivcmt').css({'color':'red'});  
			$('#emailDiv').css({'color':'red'});  
			$('#emailOk').val('0');
		 }                            
		 else {                     
	 	 	 $('#emailDivcmt').html(""); 
			$('#emailDiv').css({'color':'black'});  
			 $('#emailOk').val('1');
		 }
		               
	});
    $('#email').on('focusout', function(){
	 	$('#email').trigger('keydown')
 	});      
	
 	
 	//버튼 활성화
 	$('#tel , #email').on('input', function(){
	if ($('#emailOk').val() == "1" && $('#telOk').val() == "1"){
		$('#findPwdBtn').css({"background-color":"black", "color":"white"});
		$('#findPwdBtn').css({'cursor':'pointer'}); 

	 	//링크추가
		
	
	}else {
		$('#findPwdBtn').css({"background-color":"rgb(209 213 219)", "color":"white"});
		$('#findPwdBtn').css({'cursor':'default'}); 

	}
 	});
 	
 	
 $('#findPwdBtn').click(function() {
	 	//alert('hi');
		if($('#findPwdBtn').css('background-color') == "black" || $('#findPwdBtn').css('background-color') == "rgb(0, 0, 0)"){
			
			//alert('if통과');
			$.ajax({
				type : 'post',
				url : '/ReseltProject/member/mailCheck',
				data : $('#findPwdForm').serialize(),
				success : function (data) {
					console.log("data : " +  data);
					if(data == "0"){
						alert('회원 정보를 정확하게 입력해주세요');
					}else if(data =="1"){
						alert('등록 되지 않은 휴대폰 번호입니다. 정보를 확인해 주세요')
					}else if(data =="3"){
						alert('소셜로그인 회원입니다. 정보를 확인해 주세요')
					}
					
					else{
						alert('임시 비밀번호가 전송되었습니다.');
						location.href='/ReseltProject/member/login'
					}
				},
				error: function(e){
					console.log(e);
				}
	}); // end ajax
		}else {
			console.log('회색');
		}
}); // end send eamil
});



</script>