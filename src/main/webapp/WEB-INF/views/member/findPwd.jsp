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
        <form>
            <p class="text-xs font-bold">휴대폰 번호</p>
            <input type="text" name="tel" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="text-sm mb-10 border-b-2 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="가입하신 휴대폰 번호">
        
            <p class="text-xs font-bold">이메일 주소</p>
            <input type="email" id="email" name="email" class="border-b-2 mb-10 w-full focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
        </form>
        </div>
    </div>
    
    <div class="mb-10">
        <input type="button" value="문자 발송하기" class="text-white block m-auto bg-gray-300 rounded-xl h-14 w-full"  >
    </div>
    
</div>