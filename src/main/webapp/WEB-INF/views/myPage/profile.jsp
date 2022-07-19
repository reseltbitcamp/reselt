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
        <div class="my_profile">
          <div class="content_title border-b-4 border-[#222] pb-4">
            <div class="text-2xl tracking-[-.36px]">
              <h3 class="font-bold leading-7">프로필 정보</h3>
            </div>
          </div>


          <!-- 이미지 변경/삭제 -->
          <div class="user_profile flex items-center border-b-[1px] border-[#ebebeb] pt-[50px] pb-[38px]">
          	<form id="updateImgForm">
	            <div class="profile_thumb mr-[18px] h-[100px] w-[100px] flex-none overflow-hidden rounded-full"/>
	              <img class="showImg h-full w-full" /> 
	              <input type="file" name="img" id="img" class="imgFile removeEvent" />
	            </div>
						</form>
			
            <div class="profile_detail">
              <strong class="text-2xl leading-8 tracking-[-.12px] text-[#000]">이름</strong>
              <div class="profile_btn_box mt-[8px]">
                <input type="button" value="이미지 변경" class="imgBtn btn inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" />
                <input type="button" value="삭제" class="resetBtn btn ml-[8px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>
            </div>
          </div>
          <!--user_profile-->

          <div class="profile_info max-w-[480px] pt-[38px]">
            <div class="profile_group pt-0">
              <h4 class="group_title text-lg font-bold tracking-[-.27px]">로그인 정보</h4>

              <!-- 이메일  -->
              <!-- 원래 애 -->
              <div class="emailDiv border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="text-sm tracking-[-.07px] text-[#6b6a6a]">이메일 주소</h5>
                <p class="emailDiv_p pt-[6px] text-[16px] tracking-[-.16px] text-[#6b6a6a]"></p>
              </div>


              <!-- 비밀번호  -->
              <!-- 원래 애 -->
              <div class="pwdDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">비밀번호</h5>
                <p class="desc password pt-[6px] text-[11px] tracking-[-.16px] text-[#6b6a6a]">●●●●●●●●</p>
                <input type="button" value="변경" class="pwdDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- 나타난 애 -->
              <div class="pwdDiv_New removeEvent modify name pt-[25px]">
                <form class="updatePwdForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">비밀번호</h5>

                  <div class="input_box pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">새로운 비밀번호</h6>
                    <div class="input_item relative">
                       <input type="text" class="input_txt text_fill pwdDiv_text w-full py-[7px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[#ebebeb] border-solid border-b-[1px] outline-0 border-0 resize-none px-0" placeholder="고객님의 비밀번호" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 비밀번호를 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="pwdDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="저장" class="pwdDiv_save btn medium solid ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>
            </div>

            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-[18px] font-bold tracking-[-.27px]">개인 정보</h4>


							<!-- 이름 -->
              <!-- 원래 애 -->
              <div class="nameDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">이름</h5>
                <p class="nameDiv_p desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]"></p>
              </div>



			 				<!-- 닉네임 -->
              <!-- 원래 애 -->
              <div class="nickDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">닉네임</h5>
                <p class="nickDiv_p desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]"></p>
                <input type="button" value="변경" class="nickDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- 나타난 애 -->
              <div class="nickDiv_New removeEvent modify name pt-[25px]">
                <form class="updateNameForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">닉네임</h5>

                  <div class="input_box relative pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">새로운 닉네임</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill nickDiv_text w-full py-[7px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[#ebebeb] border-solid border-b-[1px] outline-0 border-0 resize-none px-0" placeholder="고객님의 이름" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 닉네임을 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="btn medium nickDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="저장" class="btn medium solid nickDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>

              <!-- 휴대폰 번호 -->
              <div class="phoneDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">휴대폰 번호</h5>
                <p class="desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222] phoneDiv_p" ></p>
                <input type="button" value="변경" class="phoneDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

							<!-- 나타난 애 -->
              <div class="phoneDiv_New removeEvent modify name pt-[25px]">
                <form class="updatePhoneForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">휴대폰 번호</h5>

                  <div class="input_box relative pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">새로운 번호</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill phoneDiv_text w-full py-[7px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[#ebebeb] border-solid border-b-[1px] outline-0 border-0 resize-none px-0" placeholder="변경할 번호" autocomplete="off" />
                    </div>
                    <div id="insertNum" class="input_item relative hidden">
                      <input id="input" type="text" class="input_txt text_fill randomNum_textOk w-32 float-left py-[7px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[#ebebeb] border-solid border-b-[1px] outline-0 border-0 resize-none px-0" placeholder="인증 번호 입력" autocomplete="off" />
	                    <button id="telOkBtn" type="button" value="" class="float-left ml-5">
		                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
						  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
						</svg>
		              </button>
		              
                      <input type="text" class="input_txt text_fill randomNum_text w-full py-[7px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[#ebebeb] border-solid border-b-[1px] outline-0 border-0 resize-none px-0" placeholder="" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 번호를 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="btn medium phoneDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="인증번호 받기" class="btn medium solid phoneDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>



              <!-- 신발  -->
              <div class="sizeDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">신발 사이즈</h5>
                <div class="sizeDiv_text pt-[6px] text-[16px] tracking-[-.16px] text-[#222]"></div>
                <input type="button" value="변경" class="sizeDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>
              <!--
              <!-- 신발 모달창 -->
             <div class="modalDiv removeEvent layer lg z-[1000] top-0 left-0 right-0 bottom-0 bg-[#22222280] fixed">
              
                <div class="modalDiv_content layer_container absolute top-1/4 left-1/3 w-[448px] overflow-hidden rounded-[16px] bg-[#fff] shadow-[#6b6a6a]">
                  <div class="modalDiv_content-header layer_header">
                    <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-lg font-bold leading-[22px] tracking-[-.15px] text-[#000]">사이즈 선택</h2>
                  </div>

                  <div class="modalDiv_content-main layer_content">
                    <div class="size_list_area h-[270px] overflow-y-auto overflow-x-hidden px-[28px] pt-[6px] pb-0">
                      <!-- 수정 -->
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="220" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="225" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">225</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="230" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">230</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="235" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">235</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="240" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">240</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="245" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">245</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="250" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">250</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="255" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">255</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="260" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">260</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="265" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">265</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="270" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">270</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="275" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]" id="275">275</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="280" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">280</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="285" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">285</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="290" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">290</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="295" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">295</span>
                        </a>
                      </div>
                      
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a id="300" class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">300</span>
                        </a>
                      </div>
                    
                    </div>

                    <div class="modalDiv_content-footer layer_btn flex justify-center px-[32px] pt-[24px] pb-[32px]">
                      <input type="button" value="확인" class="modalDiv_check btn solid medium inline-block h-[42px] w-[120px] cursor-pointer rounded-[12px] bg-[#222] py-0 px-[18px] text-center align-middle text-sm font-semibold leading-10 tracking-[-.14px] text-[#fff]" />
                    </div>
                  </div>
                </div>
              </div>
            </div>


			<!-- 광고성 정보 수신 -->
            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-lg font-bold tracking-[-.27px]">광고성 정보 수신</h4>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">문자 메시지</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="float-left mr-[4px]">수신 동의</span>
                    <input type="radio" value="1" name="messageBtn" class="radio_check_1" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="float-left mr-[4px]">수신 거부</span>
                    <input type="radio" value="2" name="messageBtn" class="radio_check_2"/>
                  </div>
                </div>
              </div>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">이메일</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="float-left mr-[4px]">수신 동의</span>
                    <input type="radio" value="1" name="messageBtn2" class="radio_check_3" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="float-left mr-[4px]">수신 거부</span>
                    <input type="radio" value="2" name="messageBtn2" class="radio_check_4"/>
                  </div>
                </div>
              </div>
            </div>
            <a class="btn_withdraxal py-5px mt-[55px] inline-block px-0 text-[13px] tracking-[-.07px] text-[#6b6a6a]" href="/ReseltProject/myPage/withdrawal">회원탈퇴</a>
          </div>
          <!--profile_info-->
        </div>
        <!--my profile-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="../js/myPage/profile.js"></script>

</body>
</html>