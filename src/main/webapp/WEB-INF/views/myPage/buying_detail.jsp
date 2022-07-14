<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
   <div class="container mt-0 mb-0 p-10 pb-40 px-[100px]">
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
                <li class="mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/payment">결제 정보</a></li>
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
    <div class="content_title flex pt-[5px] pb-[25px]">
      <div class="title text-[24px] tracking-[-.36px]">
        <h3 class="font-semibold leading-[29px] text-inherit">구매 내역 > 진행중</h3>
      </div>
    </div>
    <div class="content_title flex border-b-[3px] border-b-[#222] pt-[5px] pb-[6px]">
      <div class="title tracking-[-.36px]">
        <h3 class="font-bold leading-[29px]">주문번호 B-SN27434190</h3>
      </div>
    </div>

    <li class="list-none">
      <div class="flex pb-[15px] pt-[10px]">
        <div class="wish_product mr-[30px] flex">
          <div class="product_box mt-[10px] h-[80px] w-[80px] flex-none">
            <img src="/MyPage/image/bearbrick.JPG" class="h-20 w-20" />
          </div>

          <div class="product_detail ml-[13px] flex flex-col pt-[10px] text-left">
            <div class="brand">
              <a class="brand-text border-b-solid inline-block h-[17px] overflow-hidden text-ellipsis whitespace-nowrap border-b-[1px] border-b-[#222] pb-[2px] align-top text-[14px] font-bold leading-[17px] text-[#333]">Helinox</a>
            </div>
            <p class="name mt-[2px] max-h-[36px] overflow-hidden text-ellipsis text-[13px] leading-[18px] tracking-[-.03px]">Helinox Tactical Cot Convertible Coyote Tan</p>
            <span class="size mt-[3px] inline-flex text-left text-[11px] font-bold leading-[16px]">ONE SIZE</span>
          </div>
        </div>
        <!-- wish_product -->

        <div class="wish_buy mt-[10px] ml-auto inline-flex flex-shrink-0 flex-col text-right">
          <div class="mt-[20px]">
            <a class="btn outlinegrey small mt-[12px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#22222280]">상품 상세보기</a>
          </div>
        </div>
        <!-- wish_buy -->
      </div>
    </li>

    <!--tab_on은 클릭 시 이벤트-->
    <div class="purchase_list_tab mt-[10px] flex w-full table-fixed rounded-[0px] bg-[#ffeeee]">
      <div class="w-[25%] p-[20px] pr-[0px]">
        <div class="border-b-[5px] border-b-black pb-[20px] text-[14px] font-semibold">진행 상황</div>
        <div class="mt-[4px] text-[11px] font-semibold">발송완료</div>
        <div class="mt-[2px] text-[11px] text-[#868585]">KREAM으로 배송 중</div>
      </div>

      <div class="w-[25%] py-[20px]">
        <div class="border-b-[5px] border-b-[#d4d3d3] pb-[20px] text-[14px] font-semibold text-[#ffeeee]">진행 상황</div>
        <div class="mt-[4px] text-[13px]">입고</div>
      </div>

      <div class="w-[25%] py-[20px]">
        <div class="border-b-[5px] border-b-[#d4d3d3] pb-[20px] text-[14px] font-semibold text-[#ffeeee]">진행 상황</div>
        <div class="mt-[4px] text-[13px]">검수</div>
      </div>

      <div class="w-[25%] p-[20px] pl-[0px]">
        <div class="border-b-[5px] border-b-[#d4d3d3] pb-[20px] text-[14px] font-semibold text-[#ffeeee]">진행 상황</div>
        <div class="mt-[4px] text-[13px]">배송</div>
      </div>
    </div>

    <div class="mt-[20px] border-b-[3px] border-b-[#222] pb-[10px]">
      <div class="font-bold">결제 내역</div>
    </div>

    <div class="flex bg-[#ececec]">
      <div class="mt-[2px] p-[20px] font-semibold">총 결제금액</div>
      <div class="p-[20px] pl-[60px] text-[18px] font-bold text-[#ff3030]">141,700원</div>
    </div>

    <div class="border-b-[1px] border-b-[#c5c4c4] pb-[20px]">
      <div class="mt-[10px] flex p-[10px] pb-[0px]">
        <div class="mr-[35px] pr-[100px] text-[13px]">구매가</div>
        <div class="text-[14px] font-semibold">136,000원</div>
      </div>

      <div class="flex p-[10px] pb-[0px]">
        <div class="mr-[35px] pr-[100px] text-[13px]">검수비</div>
        <div class="text-[14px]">무료</div>
      </div>

      <div class="flex p-[10px] pb-[0px]">
        <div class="mr-[35px] pr-[100px] text-[13px]">수수료</div>
        <div class="text-[14px]">2,700원</div>
      </div>

      <div class="flex p-[10px] pb-[0px]">
        <div class="mr-[35px] pr-[100px] text-[13px]">배송비</div>
        <div class="text-[14px]">3,000원</div>
      </div>
    </div>

    <div class="flex p-[10px] pb-[0px]">
      <div class="mr-[20px] pr-[100px] text-[13px]">거래일시</div>
      <div class="text-[14px]">22/07/07 20:29</div>
    </div>
    <!--my purchase-->
  </div>
  <!--content-area-->
</div>
</div> <!--container-->
</body>
</html>