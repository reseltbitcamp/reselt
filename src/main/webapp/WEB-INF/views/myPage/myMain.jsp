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
        <div class="my home">
          <div class="user_membership flex border-[1px] border-solid border-[#fff] py-[23px] pl-[23px]">
            <div class="user_detail flex">
              <div class="user_thumb relative mr-[12px] h-[100px] w-[100px] flex-shrink-0 rounded-full">
                <img src="../img/myPage/profile.png" alt="사용자 이미지" class="thumb_img h-full w-full rounded-full align-top" />
              </div>

              <div class="user_info flex items-center">
                <div class="info_box">
                  <strong class="name text-[18px] font-semibold leading-[21px] tracking-[-.27px] text-[#000]">이름</strong>
                  <p class="email text-[14px] leading-[18px] tracking-[-.05px] text-[#22222280]">naver.com</p>
                  <input class="mt-[12px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" type="button" value="프로필 수정" onClick="location.href='/MyPage/my/profile'" />
                  <input class="btn_my_style mt-[12px] ml-[8px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" type="button" value="내 스타일" onClick="location.href='/MyPage/social/users'" />
                </div>
                <!--info_box-->
              </div>
              <!--user_info -->
            </div>
            <!--user_detail-->
          </div>
          <!--user_membership-->

          <!-- 구매 내역 -->
          <div class="my_home_title max-full mt-[42px] flex pb-[16px]">
            <h3 class="title text-[18px] font-semibold tracking-[-.27px]">구매 내역</h3>
            <a class="btn_more mt-[3px] ml-auto inline-flex flex-shrink pt-[3px] pl-[5px]" href="/ReseltProject/myPage/buying">
              <span class="btn_txt text-[13px] tracking-[-.07px] text-[#22222280]">더보기 ></span>
            </a>
          </div>

          <div class="recent_purchase">
            <div class="purchase_list_tab table w-full table-fixed rounded-[12px] bg-[#fafafa]">
              <div class="tab_item total table-cell text-center">
                <a href="/ReseltProject/myPage/buying" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">전체</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#f15746]">0</dd>
                  </dl>
                </a>
              </div>
              <!--total-->

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/buying" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">입찰 중</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/buying" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">진행 중</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/buying" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">종료</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>
            </div>
            <!--purchase_list_tab-->

            <!--거래 내역 없을 경우-->
            <div>
              <div class="purchase_list all bid">
                <div class="empty_area py-[80px]">
                  <p class="desc text-center text-[13px] tracking-[-.07px] text-[#22222280]">거래 내역이 없습니다</p>
                </div>
              </div>
            </div>
          </div>

          <!--판매 내역-->
          <div class="my_home_title max-full mt-[42px] flex pb-[16px]">
            <h3 class="title text-[18px] font-semibold tracking-[-.27px]">판매 내역</h3>
            <a class="btn_more mt-[3px] ml-auto inline-flex flex-shrink pt-[3px] pl-[5px]" href="/ReseltProject/myPage/selling">
              <span class="btn_txt text-[13px] tracking-[-.07px] text-[#22222280]">더보기 ></span>
            </a>
          </div>

          <div class="recent_purchase">
            <div class="purchase_list_tab table w-full table-fixed rounded-[12px] bg-[#fafafa]">
              <div class="tab_item total table-cell text-center">
                <a href="/ReseltProject/myPage/selling" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">전체</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#f15746]">0</dd>
                  </dl>
                </a>
              </div>
              <!--total-->

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/selling" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">입찰 중</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/selling" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">진행 중</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>

              <div class="tab_item table-cell text-center">
                <a href="/ReseltProject/myPage/selling" class="tab_link relative block h-[96px] pt-[18px]">
                  <dl class="tab_box">
                    <dt class="title text-[13px] tracking-[-.07px] text-[#222]">종료</dt>
                    <dd class="count mt-[2px] text-[18px] font-bold leading-[20px] tracking-[-.09px] text-[#222]">0</dd>
                  </dl>
                </a>
              </div>
            </div>
            <!--purchase_list_tab-->

            <!--거래 내역 없을 경우-->
            <div>
              <div class="purchase_list all bid">
                <div class="empty_area py-[80px]">
                  <p class="desc text-center text-[13px] tracking-[-.07px] text-[#22222280]">거래 내역이 없습니다</p>
                </div>
              </div>
            </div>
          </div>
          <!--recent purchase-->

          <!--관심 상품-->
          <div class="my_home_title max-full mt-[42px] flex pb-[16px]">
            <h3 class="title text-[18px] font-semibold tracking-[-.27px]">관심 상품</h3>
            <a class="btn_more mt-[3px] ml-auto inline-flex flex-shrink pt-[3px] pl-[5px]" href="/MyPage/my/buying">
              <span class="btn_txt text-[13px] tracking-[-.07px] text-[#22222280]">더보기 ></span>
            </a>
          </div>

          <div class="insert_product mx-[-10px]">
            <div class="empty_area has_bg mx-[10px] rounded-[12px] bg-[#fafafa] py-[80px] text-center">
              <p class="desc text-[14px] tracking-[-.21px]">추가하신 관심 상품이 없습니다</p>
              <a class="mt-[12px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fafafa] px-[14px] text-center align-middle text-xs leading-8 text-[#000]">SHOP 바로가기</a>
            </div>

            <!--추가한 상품이 있을 경우-->
            <div class="product_list">
              <div class="product_item relative my-[20px] inline-block w-1/4 px-[12px] align-top">
                <a href="사진 주소로 이동" class="item_inner block rounded-[12px] bg-[#fff]">
                  <div class="thumb_box">
                    <div class="product relative overflow-hidden rounded-[8px] pt-[100%]" style="background-color: rgb(244, 244, 244);">
                      <picture class="picture product_img absolute top-1/2 left-1/2 flex h-auto w-[81.5%]">
                        <img class="image" src="/MyPage/image/bearbrick.JPG" />
                      </picture>
                    </div>
                  </div>

                  <div class="info_box pt-[9px]">
                    <div class="brand">
                      <p class="brand-text border-b-solid inline-block h-[17px] overflow-hidden text-ellipsis whitespace-nowrap border-b-[1px] border-b-[#222] pb-[2px] align-top text-[14px] font-bold leading-[17px] text-[#333]">Bearbrick</p>
                    </div>

                    <p class="name mt-[8.5px] overflow-hidden text-ellipsis whitespace-normal text-[14px] leading-[17px] text-[#222]">Bearbrick Sesame Street Cookie Monster Costume Ver. 400%</p>

                    <div class="price pt-[7px]">
                      <div class="amount">
                        <em class="num inline-block align-top font-bold not-italic leading-[15px] tracking-[-.04px]">520,000</em>
                        <span class="won inline-block align-top text-[15px] font-bold leading-[17px] tracking-[-.04px]">원</span>
                      </div>

                      <div class="desc text-[11px] leading-[13px] text-[#22222280]">
                        <p>즉시 구매가</p>
                      </div>
                    </div>
                    <!--price-->
                  </div>
                  <!--info_box-->
                </a>
              </div>
              <!--item-->
            </div>
            <!--list-->
          </div>
          <!--insert product-->
        </div>
        <!--my home-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->
    
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/address.js"></script>  
<script src="../js/myPage/myMain.js"></script>  
  </body>
</html>
