<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.removeEvent {
   display: none;
}
</style>

<!-- 모달창 -->
<div class="addAddressModal removeEvent addressDiv_modal layer fixed top-0 left-0 right-0 bottom-0 z-[1000] bg-[#22222280]">
  <div class="layer_container absolute top-[20%] left-[40%] w-[500px] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    <div class="layer_header">
      <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">새 주소 추가</h2>
    </div>
    <div class="layer_content">
      <div class="delivery_bind py-[0px] px-[32px]">
        <div class="delivety_input">
           <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">이름</h4>
            <div class="input_item relative"><input type="text" placeholder="-없이 입력" autocomplete="off" class="nameDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
            <p class="nameDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 이름을 입력해주세요.</p>
          </div>
        
          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">휴대폰 번호</h4>
            <div class="input_item relative"><input type="text" placeholder="-없이 입력" autocomplete="off" class="phoneDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
            <p class="phoneDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 휴대폰 번호를 입력해주세요.</p>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">우편번호</h4>
            <div class="input_item relative flex flex-nowrap">
               <input type="text" placeholder="우편 번호를 검색하세요" name="zipcode" id="zipcode" readonly autocomplete="off" class="zipcodeDiv_text input_txt py-[8px] w-[340px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
               <input type="button" value="우편번호" onclick="checkPost()" class="inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.16px] text-[#222222cc]"/>
            </div>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">주소</h4>
            <div class="input_item relative"><input type="text" name="addr1" id="addr1" placeholder="우편 번호 검색 후, 자동입력 됩니다" autocomplete="off" class="input_txt py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
             <p class="zipcodeDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 우편번호를 입력해주세요</p>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">상세 주소</h4>
            <div class="input_item relative"><input type="text" name="addr2" id="addr2" placeholder="건물, 아파드, 등/호수 입력" autocomplete="off" class="addressDiv_text input_txt py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
             <p class="addressDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 상세주소를 입력해주세요</p>
          </div>
        </div> <!--input-->

      </div>
      <!--delivery bind-->

      <div class="flex justify-center p-[32px] pt-[24px]">
        <a class="addressDiv_reset inline-block cursor-pointer ml-[5px] align-middle text-center bg-[#fff] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid border-[#d3d3d3] text-[#222222cc]">취소</a>
        <a class="addressDiv_save inline-block cursor-pointer align-middle text-center bg-[#222222cc] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid text-[#d3d3d3] border-[#d3d3d3]">저장하기</a>
      </div>

    </div> <!--content-->
  </div> <!--container-->
</div> <!--addressDiv_modal-->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/address.js"></script> 