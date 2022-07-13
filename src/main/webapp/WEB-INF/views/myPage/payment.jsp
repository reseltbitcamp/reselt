<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/myPage.css"/>
<title>Insert title here</title>
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
              <span>새 카드 추가하기</span>
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
</body>

</html>