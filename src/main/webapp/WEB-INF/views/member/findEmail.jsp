<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="m-auto w-96 pt-16 pb-40">
    <div>
        <div><h1 class="text-2xl font-bold text-center pb-10 border-b-black border-b-2">이메일 찾기</h1></div>
    </div>
    
    <div class="pt-10 pb-7">
        <p class="text-xs">
        가입 시 등록한 휴대폰 번호를 입력하면
        <br>
        이메일 주소를 알려드립니다.
        </p>
    </div>
    
    <div class="">
        <div>
        <form id="findEmailForm" method="post" action="/ReseltProject/member/findEmailResult">
        	<div class="mb-10">
	            <p id="telDiv" class="text-xs font-bold">휴대폰 번호</p>
    	        <input id="tel" type="text" name="tel" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text-sm border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="가입하신 휴대폰 번호">
       			<div id="telDivcmt" ></div>
        	</div>
        	<div id="textInput" class="mb-10 hidden">
	            <p id="textDiv" class="text-xs font-bold">인증 번호</p>
    	        <input id="textInputArea" type="text" name="text" class="float-left text-sm border-b-2 w-32 focus:outline-none focus:border-black focus:border-b-2">
	    	       <button id="telOkBtn" type="button" value="" class="float-left ml-5">
	                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
					  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
					  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
					</svg>
	              </button>
    	        <input id="text" type="text" name="text" class="text-sm border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2">
       			<div id="textDivcmt" ></div>
        	</div>
        </form>
        </div>
    </div>
    
    <div class="mb-10">
        <input id="findEmailBtn" type="button" value="SMS 인증번호  발송 " class="text-white block m-auto bg-gray-300 rounded-xl h-14 w-full"  >
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	//휴대폰 유효성 검사 성공시 버튼 활성화
	$('#tel').on('change fadeout fadein', function(){
		$('#tel').trigger('keydown');
	});
	
	$('#tel').keydown(function(){
		var checknum = $('#tel').val().substr(0,3);
		var telLength = $('#tel').val().length;
			//console.log(telLength);	
			//console.log(checknum);	
			
		if (checknum == "010" || checknum == "011" || checknum == "017"){
			if(telLength == 10 || telLength == 11) {
				$('#telDivcmt').html('');
				$('#telDiv').css({'color':'black'}); 
				$('#findEmailBtn').css({"background-color":"black", "color":"white"});

			}else{
				$('#telDivcmt').html('올바른 휴대폰 번호를 입력하세요.');
				$('#telDivcmt').css({'font-size':'5pt'}); 
				$('#telDivcmt').css({'color':'red'}); 
				$('#telDiv').css({'color':'red'}); 
				$('#findEmailBtn').css({"background-color":"rgb(209 213 219)", "color":"white"});
			}
		}else {
			$('#telDivcmt').html('올바른 휴대폰 번호를 입력하세요.');
			$('#telDivcmt').css({'font-size':'5pt'}); 
			$('#telDivcmt').css({'color':'red'}); 
			$('#telDiv').css({'color':'red'}); 
			$('#findEmailBtn').css({"background-color":"rgb(209 213 219)", "color":"white"});
		}
	});
	//버튼 색이 검정일떄
	$('#findEmailBtn').click(function(){
		if($('#findEmailBtn').css('background-color') == 'rgb(0, 0, 0)' || $('#findEmailBtn').css('background-color') == 'black' ){
		console.log('if 성공');
			//alert('클릭');
			//alert($('#email').val());
			//alert(JSON.stringify($('#joinForm').serialize()));
			$.ajax({
				type: 'post',
				url: "/ReseltProject/member/findEmailSMS",
				data: {
					tel : $('#tel').val()
					},
				success: function(data){
					//alert(data);
					if(data.check == "0"){
						alert("등록되지 않은 휴대폰 입니다.");
					}else {
						
						//alert(data.memberDTO.tel);
						$('#findEmailBtn').css({"background-color":"rgb(209 213 219)", "color":"white"});
						$('#textInput').css({"display" : "block" });
						$('#tel').css({"color" : "gray" }); 
						$('#tel').attr("readonly",true); 
						var time = 300;
						var min = "";
						var sec = "";
						//제한시간 time 초
						var x = setInterval(function(){
							min = parseInt(time/60);
							sec = time%60;
							
							$('#textDivcmt').html("제한 시간: " + min + " 분 " + sec + " 초");
							time--;
							
							if (time < 0){
								clearInterval(x);
								$('#tel').css({"color" : "black" }); 
								$('#tel').attr("readonly",false);
								$('#textInput').css({"display" : "none" });
							}
						}, 1000);
						var number = Math.floor(Math.random() * 100000) + 100000;
				          if(number>100000){
				             number = number - 10000;
				          }

				          $("#text").val(number);      /* 난수로 생성된 인증번호를 hidden name : text 에 숨긴다 */


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
	
	$('#telOkBtn').click(function(){
		var text = $("#text").val();
		var input = $('#textInputArea').val();
		console.log(text);
		console.log(input);
		if (text == input) {
			$('#findEmailForm').submit();
		}else{
			alert('인증번호를 확인해 주세요');
		}
	});
});
</script>