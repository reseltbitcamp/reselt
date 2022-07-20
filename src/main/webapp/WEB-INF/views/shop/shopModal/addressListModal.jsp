<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="addressDiv_modal" class="layer fixed top-0 left-0 right-0 bottom-0 z-[1000] bg-[#22222280]">
  <div class="layer_container absolute top-[20%] left-[40%] min-h-[500px] w-[500px] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    <div class="layer_header">
    	<a id="exitBtn" class="cursor-pointer float-right my-4 mx-7">X</a>
      <p class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">주소록</p>
    </div>
    <div class="layer_content">
      <div class="delivery_bind py-[14px] px-[32px]">
        <div id="addressDiv" class="relative flex cursor-pointer items-center border-b-2">
          <div class="my-4">
            <span class="font-semibold">양웅비</span>
            <span class=""> 기본배송지 </span>
            <p class="text-sm font-semibold">010-2083-3955</p>
            <p class="w-[90%] text-xs">(10077)경기 김포시 김포한강11로 37(운양동, 김포한강신도시 2차 KCC 스위첸) 111동 2002호</p>
          </div>
          <div class="ml-auto">
            <p>v</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div> 
