<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://kit.fontawesome.com/d84eab0825.js" crossorigin="anonymous"></script>
<style>
input:focus {
	outline: none;
}
</style>
<title>Insert title here</title>
</head>
<body>
<div class="con-ta-iner">
      <div class="nav">
        <div class="fixed float-left h-screen w-[180px] bg-[#171414] p-[10px] pt-[30px]">
          <a href="#" class="nuxt-link-active text no-underline">
            <h2 class="pb-[60px] text-2xl font-bold leading-7 tracking-[-.15px] text-[#DFD9D7]">RESELT</h2>
          </a>

          <nav class="snb">
            <div class="snb_list">
              <strong class="snb_title mb-3 inline-block align-top text-[16px] leading-[22px] tracking-[-.27px] text-[#738F66]">회원 관리</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="/ReseltProject/admin/user">사용자</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="/ReseltProject/admin/member">관리자</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="#">문의 내역</a></li>
              </ul>
            </div>

            <div class="snb_list mt-10">
              <strong class="snb_title inline-block align-top text-[16px] leading-[22px] tracking-[-.27px] text-[#738F66]">쇼핑몰</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="#">상품 관리</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="#">주문 관리</a></li>
              </ul>
            </div>

            <div class="snb_list mt-10">
              <strong class="snb_title inline-block align-top text-[16px] leading-[22px] tracking-[-.27px] text-[#738F66]">컨텐츠 관리</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="#">게시글 관리</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="#">댓글 관리</a></li>
              </ul>
            </div>
          </nav>
          <!--snb-->
        </div>
        <!--snb_area-->
      </div>
      <!--nav-->

      <div class="content content_area ml-[180px] overflow-hidden">
        <div class="my_admin_header flex h-[60px] w-full items-center bg-[#ECECEC] p-[10px] px-[40px]">
          <div class="font-semibold text-[#6A6A6A]">Administration</div>
          <div class="search h-[35px] rounded-[8px] bg-[#f4f4f4] pl-[10px] ml-auto flex">
            <i class="fa-solid fa-magnifying-glass mt-[10px] pr-[10px] text-[#CFCFCF]"></i>
            <input class="h-full w-full pt-[1px] pr-[50px] text-[14px] tracking-[-.21px]" type="text" placeholder="이름, 아이디 검색" />
          </div>
          <div class="btn2 m-[5px] h-[35px] rounded-[2px] bg-[#EC5939] py-[5px] px-[40px] pt-[7px] text-[13px] text-[#DFD9D7] ml-[10px]">나가기</div>
        </div>

        <div class="bg-[#FBFBFB] px-[40px]">
          <div class="my_admin_main pt-[20px]">
            <div class="my_admin_main-header border-b-solid border-b-[3px] border-b-[#171414] pb-[12px]">
              <div class="text-[16px] font-semibold text-[#171414]">관리자 (3)</div>
            </div>
            <!--header-->

            <div class="my_admin_main-content">
              <div class="my_admin_main-content-title border-b-[2px] border-b-[#C8C8C8] px-[80px] py-[7px] pr-[100px]">
                <div class="my_admin_main-content-title-detail flex justify-between">
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">IDX</span>
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">이름/아이디</span>
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">가입일</span>
                  <span class="mr-[100px] text-[13px] font-semibold text-[#6A6A6A]">이메일 주소</span>
                </div>
              </div>
              <!--title-->

              <div class="my_admin_main-content-list">
              
               <!-- 반복문 -->
                <div class="my_list not_empty_area_2 removeEvent">
                  <div class="basic border-b-solid border-b-[1px] border-b-[#171414] pt-[10px] pb-[9px]">
                    <div class="my_item relative flex items-center">
                      <div class="info_bind mr-[24px]">
                        <div class="address_info leading-[17px]">
                          <!-- 동적처리 -->
                        </div>
                      </div>

                      <div class="btn_bind ml-auto">
                        <a class="modify_address inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] pl-[11px] pr-[12px] align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222222cc]">수정</a>
                        <a class="delete_address inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] pl-[11px] pr-[12px] align-middle text-[12px] leading-[32px] tracking-[-.06px] text-[#222222cc]">삭제</a>
                      </div>
                      <!--btn bind-->
                    </div>
                    <!--my_item-->
                  </div>
                  <!--basic -->
                </div>
                <!--my list-->
              </div>
              <!--content list-->

              <!--list 넣어야됨!!!!!!!-->
            </div>
            <!--content-->
          </div>
          <!--main-->
        </div>
        <!--main 전체-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->
  </body>
</html>
