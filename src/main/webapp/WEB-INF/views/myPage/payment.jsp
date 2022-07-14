<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/myPage.css"/>
<title>Insert title here</title>
<style>
input:focus {
	outline: none;
}
</style>
</head>
<body>
  <div class="container mt-0 mb-0 p-10 px-[100px] pb-40">
    <div class="nav">
      <div class="float-left mr-5 w-[180px]">
        <a href="/ReseltProject/myPage/myMain" class="nuxt-link-active text no-underline">
          <h2 class="pb-[30px] text-2xl font-bold leading-7 tracking-[-.15px]">마이 페이지</h2>
        </a>

        <nav class="snb">
          <div class="snb_list">
            <strong class="snb_title mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">쇼핑 정보</strong>
            <ul class="snb_menu list-none">
              <li class="menu_item list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">구매 내역</a></li>
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/selling">판매 내역</a></li>
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/wish">관심 상품</a></li>
            </ul>
          </div>

          <div class="snb_list mt-10">
            <strong class="snb_title mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">내 정보</strong>
            <ul class="snb_menu list-none">
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/profile">프로필 정보</a></li>
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/payment">결제 정보</a></li>
            	 <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/address">주소록</a></li>
            </ul>
          </div>
        </nav>
        <!--snb-->
      </div>
      <!--snb_area-->
    </div>
    <!--nav-->

    <div class="content content_area min-h-[380px] overflow-hidden">
      <div class="my_payment">
        <div class="content_title border-b-solid flex border-b-[3px] border-b-[#222] pb-[22px] pt-[5px]">
          <div class="title text-2xl tracking-[-.36px]">
            <h3 class="font-bold leading-7">결제 정보</h3>
            <p class="mt-[1px] text-[12px] leading-4 tracking-[-.005em] text-[#222]">수수료(페널티, 착불배송비 등)가 정산되지 않을 경우, 별도 고지 없이 해당 금액을 결제 시도할 수 있습니다.</p>
          </div>
          <div class="btn_box ml-auto flex flex-shrink-0 pt-[4px] pl-[30px]">
            <a class="mr-0 flex h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#222] bg-[#fff] py-0 px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222]">
              <span class="paymentDiv_btn">새 카드 추가하기</span>
            </a>
          </div>
        </div>

        <div>
          <div class="empty_area bg-[#fafafa] py-[80px]">
            <p class="text-center text-[13px] tracking-[-.07px] text-[#9b9b9b]">추가하신 결제 정보가 없습니다</p>
          </div>
        </div>
      </div>
      <!--my profile-->
    </div>
    <!--content-area-->
  </div>
  <!--container-->


<!-- 모달창 -->
<div class="removeEvent paymentDiv_modal layer fixed top-0 left-0 right-0 bottom-0 z-[1000] bg-[#22222280]">
  <div class="layer_container absolute top-[20%] left-[40%] w-[500px] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    
    <div class="layer_header">
      <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">카드 추가</h2>
    </div>
    
    <div class="layer_content">
      <div class="delivery_bind py-[0px] px-[32px]">
        <div class="delivety_input">
        	
        	
        </div> <!--input-->
      </div>
      <!--delivery bind-->

      <div class="flex justify-center p-[32px] pt-[24px]">
        <a class="paymentDiv_reset inline-block cursor-pointer ml-[5px] align-middle text-center bg-[#fff] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid border-[#d3d3d3] text-[#222222cc]">취소</a>
        <a class="paymentDiv_save inline-block cursor-pointer align-middle text-center bg-[#222222cc] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid text-[#d3d3d3] border-[#d3d3d3]">저장하기</a>
      </div>

    </div> <!--content-->
  </div> <!--container-->
</div> <!--addressDiv_modal-->

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/payment.js"></script>  
</body>
</html>