<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/myPage.css"/>
<style>
input:focus {
	outline: none;
}
</style>
</head>
<body>
  <div class="container mt-0 mb-0 p-10 px-[100px] pb-40">
    <div>
      <div class="float-left mr-5 w-[180px]">
        <a href="/ReseltProject/myPage/myMain" class="nuxt-link-active text no-underline">
          <h2 class="pb-[30px] text-2xl font-bold leading-7 tracking-[-.15px]">마이 페이지</h2>
        </a>

        <nav>
          <div>
            <strong class="mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">쇼핑 정보</strong>
            <ul class="list-none">
              <li class="list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">구매 내역</a></li>
              <li class="mt-3 list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/selling">판매 내역</a></li>
              <li class="mt-3 list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/wish">관심 상품</a></li>
            </ul>
          </div>

          <div class="mt-10">
            <strong class="mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">내 정보</strong>
            <ul class="list-none">
              <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/profile">프로필 정보</a></li>
              <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/account">판매 정산 계좌</a></li>
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
      <div class="my_purchase">
      <div class="content_title flex pb-[5px] pt-[5px]">
        <div class="title text-2xl tracking-[-.36px]">
          <h3 class="font-bold leading-7">주소록</h3>
        </div>
        <div class="btn_box ml-auto flex flex-shrink-0 pt-[4px] pl-[30px]">
          <a class="addressDiv_btn mr-0 flex h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#222] bg-[#fff] py-0 px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222]">
            <span>+ 새 배송지 추가</span>
          </a>
        </div>
      </div> <!-- content-title -->

      <div>
      <!-- empty -->
        <div class="empty_area_2 bg-[#fafafa] py-[80px] text-center">
          <p class="text-center text-[13px] tracking-[-.07px] text-[#9b9b9b]">
           	 배송지 정보가 없습니다.
            <br />
            	새 배송지를 등록해주세요
          </p>
          <input type="button" value="새 배송지 추가" id="" class="addressDiv_btn mt-[12px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.16px] text-[#222222cc]"/>
        </div>
        
        <!-- not empty -->
        <div class="my_list not_empty_area_2 removeEvent">
		  <div class="basic border-b-solid border-b-[2px] border-b-[#222] pt-[30px] pb-[29px]">
		    <div class="my_item relative flex items-center">
		
		      <div class="info_bind mr-[24px]">
		        <div class="address_info leading-[17px]">
		         
		         <!-- 동적처리 -->
		        
		        </div>
		      </div>
		      
		      <div class="btn_bind mt-[12px] ml-auto">
		        <a class="modify_address inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] pl-[11px] pr-[12px] align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222222cc]">수정</a>
		        <a class="delete_address inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] pl-[11px] pr-[12px] align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222222cc]">삭제</a>
		      </div> <!--btn bind-->
		
		    </div> <!--my_item-->
		  </div> <!--basic -->
		</div> <!--my list-->
        
      </div>
      
	</div>
      <!--my purchase-->
   </div>
    <!--content-area-->
 </div>
  <!--container-->
  
  
<!-- 모달창 -->
<div class="removeEvent addressDiv_modal layer fixed top-0 left-0 right-0 bottom-0 z-[1000] bg-[#22222280]">
  <div class="layer_container absolute top-[10%] bottom-[20%] left-[40%] right-[40%] w-[500px] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    <div class="layer_header">
      <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">새 주소 추가</h2>
    </div>
    <div class="layer_content">
      <div class="delivery_bind py-[0px] px-[32px]">
        <div class="delivety_input">
        	<div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">이름</h4>
            <div class="input_item relative"><input type="text" placeholder="프로필 정보의 이름과 동일하게 입력하세요" autocomplete="off" class="nameDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
            <p class="nameDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 이름을 입력해주세요.</p>
          </div>
        
          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">휴대폰 번호</h4>
            <div class="input_item relative"><input type="text" placeholder="프로필 정보의 휴대폰 번호와 동일하게 입력하세요" autocomplete="off" class="phoneDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
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

      <div class="flex justify-center p-[10px] pt-[10px]">
        <a class="addressDiv_reset inline-block cursor-pointer align-middle text-center bg-[#fff] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid border-[#d3d3d3] text-[#222222cc]">취소</a>
        <a class="addressDiv_save inline-block cursor-pointer align-middle text-center bg-[#222222cc] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid text-[#d3d3d3] border-[#d3d3d3]">저장하기</a>
      </div>

    </div> <!--content-->
  </div> <!--container-->
</div> <!--addressDiv_modal-->

  
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/address.js"></script>  
</body>
</html>