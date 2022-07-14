<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <div><c:if test="${memberDTO.snsLogin == 0 }">회원 유형: 일반 로그인 회원</c:if></div>
        <div><c:if test="${memberDTO.snsLogin == 1 }">회원 유형: 네이버 로그인 회원</c:if></div>
        <div><c:if test="${memberDTO.snsLogin == 2 }">회원 유형: 카카오 로그인 회원</c:if></div>
        <div>회원 이메일: ${memberDTO.email }</div>
    </div>
    
    
    <div class="mb-10">
        <input id="findEmailBtn" type="button" value="로그인 하기" class="text-white block m-auto bg-black rounded-xl h-14 w-full" onclick="location.href='/ReseltProject/member/login'"  >
    </div>
</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
</html>