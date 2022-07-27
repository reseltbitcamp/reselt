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
             <li class="list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">거래 내역</a></li>
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/wish">관심 상품</a></li>
            </ul>
          </div>

          <div class="snb_list mt-10">
            <strong class="snb_title mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">내 정보</strong>
            <ul class="snb_menu list-none">
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/profile">프로필 정보</a></li>
              <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/account">판매 정산 계좌</a></li>
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
  <div class="my_account w-[480px]">
    <div class="content_title flex pt-[5px] pb-[6px]">
      <div class="title text-[24px] tracking-[-.36px]">
        <h3 class="text-[24px] font-semibold leading-[29px]">정산 계좌 변경</h3>
      </div>
    </div>

    <div class="mt-[21px] overflow-hidden rounded-[10px] border-[1px] border-solid border-[#ebebeb] bg-[#fafafa] p-[15px] pb-[16px]">
      <h4 class="mb-[5px] text-[12px] font-bold leading-[14px] tracking-[-.5px]">등록된 계좌 정보</h4>
      <p class="box_account_info text-[15px] leading-[22px] tracking-[1px]">
        <span class="account"></span>
        <span class="account_devider px-[4px]">/</span>
        <span class="account_name"></span>
      </p>
    </div>

<form id="account_form">
    <div class="content_registration w-full">
    
      <div class="account_registration pt-[20px]">
        
        <div class="input_logistics_companies relative pt-[10px] pb-[14px]">
          <h4 class="input_title tracking-[-.07px] leading-[14px] text-[13px]">은행명</h4>
          <div class="relative">
            <input type="text" name="account_name" class="accountnameDiv_text text-[#222] border-b-[#ebebeb] border-b- solid border-b-[1px] leading-[22px] tracking-[-.15px] w-full text-[15px] cursor-pointer pt-[6px] pb-[7px]" autocomplete="off" readonly="readonly" placeholder="선택하세요"/>
            
            <div class="account_list removeEvent absolute left-0 right-0 z-[1010] top-[35px] bottom-auto border-[#ebebeb] border-solid border-[1px]  ">
              <div class="relative top-auto left-auto transform-none w-full shadow-none overflow-hidden bg-[#fff]">
                <div class="layer_content">
                  <ul class="drop_list max-h-[240px] overflow-y-auto">
                    <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="국민은행">국민은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="신한은행">신한은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="하나은행">하나은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="우리은행">우리은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="기업은행">기업은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="농협은행">농협은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="SC은행">SC은행</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="우체국">우체국</a>
                    </li>
                     <li class="drop_item">
                      <a class="cursor-pointer drop_link text-[#222222cc] tracking-[-.07px] text-[13px] pl-[16px] pb-[10px] pr-[50px] pt-[11px] relative block" id="카카오뱅크">카카오뱅크</a>
                    </li>
                  </ul>    
                </div>
              </div>
            </div>
            <p class="removeEvent accountnameDiv_text_error block absolute leading-[16px] text-[11px] text-[#f15746]">올바른 은행명을 입력해주세요</p>
          </div> <!-- relative -->
        </div> <!--input_title -->

        <div class="pb-[14px] pt-[10px] mt-[8px] relative">
          <h4 class="tracking-[-.07px] text-[13px] leading-[14px]">계좌정보</h4>
          <div>
            <input type="text" name="account_num" class="accountDiv_text border-b-[#ebebeb] border-b- solid border-b-[1px] leading-[22px] tracking-[-.15px] w-full text-[15px] cursor-pointer pt-[6px] pb-[7px]" placeholder="-없이 입력하세요" autocomplete="off" />
          </div>
          <p class="removeEvent accountDiv_error block absolute leading-[16px] text-[11px] text-[#f15746]">올바른 계좌번호를 입력해주세요</p>
        </div>

        <div class="pb-[14px] pt-[10px] mt-[8px] relative">
          <h4 class="tracking-[-.07px] text-[13px] leading-[14px]">예금주</h4>
          <div>
            <input type="text" name="account_holder" class="nameDiv_text border-b-[#ebebeb] border-b- solid border-b-[1px] leading-[22px] tracking-[-.15px] w-full text-[15px] cursor-pointer pt-[6px] pb-[7px]" placeholder="예금주명을 정확히 입력하세요" autocomplete="off" />
          </div>
          <p class="removeEvent nameDiv_error block absolute leading-[16px] text-[11px] text-[#f15746]">올바른 예금주명을 입력해주세요</p>
        </div>

      </div> <!-- input logistic -->
      
      <div class="pt-[20px] flex justify-center">
      	<a class="accountDiv_save align-middle text-center inline-block tracking-[-.14px] text-[14px] leading-[48px] px-[18px] font-[600px] rounded-[10px] w-[102px] cursor-default text-[#fff] bg-[#222]">변경하기</a>
      </div>
      
      
      
    </div> <!-- content_registration -->
 </form>
        
        
      </div>
      <!--my account-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->





<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/account.js"></script>  
</body>
</html>