<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
 
 <div class="m-auto w-96 " >
   <div id="joinForm" class="relative m-auto bg-gray-50 sm:py-12">
     <h2 class="text-3xl font-bold text-center">회원가입</h2>
   </div>
     
    <div class="">

      <form>
        <div class="pt-5 pb-6">
          <div class="pt-10 text-xs font-bold"><h3>이메일 주소*</h3></div>
          <input type="email" name="" class="mb-10 border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" placeholder="예) reselt@reselt.com">
          
          <div class="text-xs font-bold"><h3>비밀번호*</h3></div>
          <input type="password" class="mb-10 border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" placeholder="영문 10자 이상">
          
          <div class="text-xs font-bold"><h3>비밀번호 확인*</h3></div>
          <input type="password" class="mb-10 border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2">
          
          <div class="cursor-pointer"><h3 class="text-xs font-bold ">신발사이즈</h3>
            <input type="text" autocomplete="off" class="mb-10 cursor-pointer focus:outline-none disabled:disable" placeholder="선택하세요" readonly="readonly">
            <a href="#size" class="btn">
              <button type="button" value="" class="float-right ml-5">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                  <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
                </svg>
              </button>
            </a>
          </div>

          <div>
            <div class="text-xs font-bold f"><h3>주소록 등록*</h3></div>

            <input class="w-64 mb-10 border-b-2 focus:outline-none focus:border-black focus:border-b-2" type="text" name="zipcode" id="zipcode" readonly>
            <input class="bg-gray-300 border-2 rounded-md w-28 text-white" type="button" value="우편번호검색" onclick="checkPost()"><br>
            <input class="mb-10 border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" type="text" name="addr1" id="addr1" placeholder="주소" size="50" readonly><br>
            <input class="mb-5 border-b-2 w-96 focus:outline-none focus:border-black focus:border-b-2" type="text" name="addr2" id="addr2" placeholder="상세주소" size="50">

          </div>
        </div> 
      </form>
      
      <div class="mb-10 ml-6">
        <div>
          <label>
            <input type="checkbox"></input>
            [필수] 만 14세 이상이며 모두 동의합니다.
          </label>
          <button type="button" class="float-right">
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
          <button type="button" class="float-right">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
            </svg>
            </button>
        </div>
      </div>
     
      <div>
        <input type="button" value="회원 가입" class="text-white block m-auto bg-gray-300 m- rounded-xl h-14 w-96"  >
      </div>
      
      
    </div>
      
  </div>

  <div id="size" class="modal" class="flex m-auto scroll-m-48">
    <div>
      <h1 class="font-bold text-center">사이즈 선택</h1>
    </div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">220</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">225</a></div>
	    <div class=""><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">230</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">235</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">240</a></div>
	    <div class=""><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">245</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">250</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">255</a></div>
	    <div class=""><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">260</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">265</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">270</a></div>
	    <div class=""><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">275</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">280</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">285</a></div>
	    <div class=""><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">290</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">295</a></div>
	    <div class="float-left"><a href="#" class="inline-block w-20 h-8 m-2 text-center border-2 rounded-lg">300</a></div>
  	</div>
    
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<script>
    $('a[href="#size"]').click(function(event) {
      event.preventDefault();
 
      $(this).modal({
        fadeDuration: 250
      });
    });
    
    
</script>   
</body>



