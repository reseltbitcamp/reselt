<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/myPage.css"/>
<title>Insert title here</title>
</head>
<body>

    <div class="container mx-auto mt-0 mb-0 p-10 pb-40">
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
              </ul>
            </div>
          </nav>
          <!--snb-->
        </div>
        <!--snb_area-->
      </div>
      <!--nav-->

      <div class="content content_area min-h-[380px] overflow-hidden">
        <div class="my_interest">
          <div class="content_title border-b-solid flex border-b-[3px] border-b-[#222] pb-[16px] pt-[5px]">
            <div class="title text-[24px] tracking-[-.36px]">
              <h3 class="font-semibold leading-[29px]">관심 상품</h3>
            </div>
          </div>

          <ul class="wish_list">
            <!-- 관심 상품 있을 경우 (li_a)리스트로 뿌리기 -->
            <li>
              <div class="flex pt-[20px] pb-[19px]">
                <div class="wish_product mr-[30px] flex">
                  <div class="product_box mt-[10px] h-[80px] w-[80px] flex-none">
                    <img src="/MyPage/image/bearbrick.JPG" class="h-20 w-20" />
                  </div>

                  <div class="product_detail ml-[13px] flex flex-col pt-[10px] text-left">
                    <div class="brand">
                      <a class="brand-text border-b-solid inline-block h-[17px] overflow-hidden text-ellipsis whitespace-nowrap border-b-[1px] border-b-[#222] pb-[2px] align-top text-[14px] font-bold leading-[17px] text-[#333]">Helinox</a>
                    </div>
                    <p class="name mt-[2px] max-h-[36px] overflow-hidden text-ellipsis text-[13px] leading-[18px] tracking-[-.03px]">Helinox Tactical Cot Convertible Coyote Tan</p>
                    <span class="size mt-auto inline-flex text-left text-[13px] font-bold leading-[16px]">ONE SIZE</span>
                  </div>
                </div>

                <div class="wish_buy mt-[10px] ml-auto inline-flex flex-shrink-0 flex-col text-right">
                  <div>
                    <div class="division_btn_box lg mt-0 flex h-[60px] w-[164px] text-left">
                      <a class="btn_division buy relative inline-flex flex-1 items-center rounded-[10px] bg-[#ef6253] text-[#fff]">
                        <strong class="title w-[55px] text-center text-[18px] tracking-[-.27px]">구매</strong>
                        <div class="price ml-[10px] leading-[15px]">
                          <span class="amount block">
                            <em class="num inline-block align-top text-[15px] font-bold not-italic">423,000</em>
                            <span class="won inline-block align-top text-[14px] font-bold tracking-[-.21px]">원</span>
                          </span>
                          <span class="desc block text-[11px] font-normal text-[#ffffffcc]">즉시 구매가</span>
                        </div>
                      </a>
                    </div>

                    <a class="status_link mt-[6px] inline-flex px-[3px] text-[12px] tracking-[-.06px] text-[#222222cc]">삭제</a>
                  </div>
                </div>
                <!-- wish_product -->
              </div>
            </li>
          </ul>

          <!-- paging -->
          <div class="pagination"></div>
        </div>
        <!--my interest-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->
  </body>
</html>
