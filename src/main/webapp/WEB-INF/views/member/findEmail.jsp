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
        이메일 주소의 일부를 알려드립니다.
        </p>
    </div>
    
    <div class="">
        <div>
        <form>
<<<<<<< HEAD
            <p class="text-xs font-bold">휴대폰 번호</p>
            <input type="text" name="tel" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text-sm mb-10 border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="가입하신 휴대폰 번호">
=======
        	<div class="mb-10">
	            <p id="telDiv" class="text-xs font-bold">휴대폰 번호</p>
    	        <input id="tel" type="text" name="tel" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text-sm border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="가입하신 휴대폰 번호">
       			<div id="telDivcmt" ></div>
        	</div>
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
        </form>
        </div>
    </div>
    
    <div class="mb-10">
<<<<<<< HEAD
        <input type="button" value="이메일 아이디 찾기" class="text-white block m-auto bg-gray-300 rounded-xl h-14 w-full"  >
    </div>
</div>
=======
        <input id="findEmailBtn" type="button" value="이메일 아이디 찾기" class="text-white block m-auto bg-gray-300 rounded-xl h-14 w-full"  >
    </div>
</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	//휴대폰 유효성 검사 성공시 버튼 활성화
	$('#tel').keydown(function(){
		var checknum = $('#tel').val().substr(0,3);
		var telLength = $('#tel').val().length;
			console.log(telLength);	
			console.log(checknum);	
			
		if (checknum == "010" || checknum == "011" || checknum == "017"){
			if(telLength == 10 || telLength == 11) {
				$('#telDivcmt').html('');
				$('#telDiv').css({'color':'black'}); 
				$('#findEmailBtn').css({"background-color":"black", "color":"white"});
				//링크 추가 필요
		
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
});
</script>
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
