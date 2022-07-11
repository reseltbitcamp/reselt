<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="m-auto w-96 pt-16 pb-40">
    <div>
        <div><h1 class="text-2xl font-bold text-center pb-10 border-b-black border-b-2">이메일 찾기</h1></div>
    </div>
    
    <div class="pt-10 pb-7">
        <p class="text-xs">
        고객님의 이메일을 안내드립니다.
        </p>
        <div id="findEmailResult">회원님은 이메일은 '${memberDTO.email }' 입니다.</div>
    </div>
    
    
    <div class="mb-10">
        <input id="findEmailBtn" type="button" value="로그인 하기" class="text-white block m-auto bg-black rounded-xl h-14 w-full" onclick="location.href='/ReseltProject/member/login'"  >
    </div>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
});
</script>
</html>