<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/myPage.css"/>
<title>Insert title here</title>
<style>
.terms_item:before {
    content: "";
    position: absolute;
    top: 8px;
    left: 0;
    width: 4px;
    height: 4px;
    border-radius: 100%;
    background-color: #222;
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
               <li class="list-none"><a class="text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">거래 내역</a></li>
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
      <div class="my_withdraw">
        <div class="content_title">
          <div class="title text-2xl tracking-[-.36px]">
            <h3 class="font-bold leading-7">회원탈퇴</h3>
          </div>
        </div>

        <div class="content">
          <div class="withdraw_wrap pt-[40px]">
            <div>
              <h4 class="withdraw_title text-[18px] font-semibold tracking-[-.27px]">회원탈퇴에 앞서 아래 내용을 반드시 확인해 주세요.</h4>

              <div class="withdraw_terms mt-[20px] border-[1px] border-solid border-[#d3d3d3] p-[24px]">
                <div class="terms_box">
                  <h5 class="terms_title text-[16px] tracking-[-.16px]">
                    <div class="checkbox_item relative flex">
                    <input class="chk" id="title0" type="checkbox" />
                      <label for="title0" class="relative inline-block cursor-pointer">
                        <span class="ml-[5px] text-[16px] tracking-[-.16px] font-bold">KREAM을 탈퇴하면 회원 정보 및 서비스 이용 기록이 삭제됩니다.</span>
                      </label>
                    </div>
                  </h5>

                  <div class="terms_detail pt-[16px]">
                    <ul class="terms_list">
                      <!--::before-->
                      <li class="terms_item relative pl-[12px] tracking-[-.15px] text-[#333]" style="word-break:keep-all; text-[15px]">내 프로필, 거래내역(구매/판매), 관심상품, 보유상품, STYLE 게시물(게시물/댓글), 미사용 보유 포인트 등 사용자의 모든 정보가 사라지며 재가입 하더라도 복구가 불가능합니다.</li>
                      <li class="terms_item relative pl-[12px] tracking-[-.15px] text-[#333]" style="word-break:keep-all; text-[15px]">탈퇴 14일 이내 재가입할 수 없으며, 탈퇴 후 동일 이메일로 재가입할 수 없습니다</li>
                    </ul>
                  </div>
                </div>
                <div class="terms_box mt-[40px]">
                  <h5 class="text-[16px] tracking-[-.16px]">
                    <div class="checkbox_item relative">
                      <input class="chk" id="title1" type="checkbox" />
                      <label for="title1" class="relative inline-block cursor-pointer">
                        <span class="text-[16px] tracking-[-.16px] font-bold">관련 법령 및 내부 기준에 따라 별도 보관하는 경우에는 일부 정보가 보관될 수 있습니다.</span>
                      </label>
                    </div>
                  </h5>
                  <div class="terms_detail pt-[16px]">
                    <h6 class="pb-[8px] text-[15px] font-semibold tracking-[-.15px]">1.전자상거래 등 소비자 보호에 관한 법률</h6>
                    <ul>
                      <li class="text-[15px] terms_item relative pl-[12px] " style="word-break:keep-all; text-[15px] tracking-[-.15px]">계약 또는 청약철회 등에 관한 기록: 5년 보관</li>
                      <li class="text-[15px] terms_item relative mt-[8px] pl-[12px] " style="word-break:keep-all; text-[15px] tracking-[-.15px]">대금 결제 및 재화 등의 공급에 관한 기록</li>
                      <li class="text-[15px] terms_item relative mt-[8px] pl-[12px]" style="word-break:keep-all; text-[15px] tracking-[-.15px]">소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관</li>
                    </ul>
                  </div>
                  <div class="terms_detail pt-[16px]">
                    <h6 class="pb-[8px] text-[15px] font-semibold tracking-[-.15px]">2.통신비밀보호법</h6>
                    <ul>
                      <li class="terms_item relative pl-[12px] text-[15px]" style="word-break:keep-all; text-[15px] tracking-[-.15px]">접속 로그 기록: 3개월 보관</li>
                    </ul>
                  </div>
                  <div class="terms_detail pt-[16px]">
                    <h6 class="pb-[8px] text-[15px] font-semibold tracking-[-.15px]">3.내부 기준에 따라 별도 보관</h6>
                    <ul>
                      <li class="terms_item relative pl-[12px] text-[15px]" style="word-break:keep-all; text-[15px] tracking-[-.15px]">부정이용 방지를 위해 이름, 이메일(로그인ID), 휴대전화번호, CI/DI: 3년 보관</li>
                    </ul>
                  </div>
                </div>

                <div class="terms_box mt-[40px]">
                  <h5 class="terms_title text-[16px] tracking-[-.16px]">
                    <div class="checkbox_item relative text-[0px]">
                    <input class="chk" id="title2" type="checkbox" />
                      <label for="title2" class="relative inline-block cursor-pointer">
                        <span class="ml-[5px] text-[16px] tracking-[-.16px] font-bold">KREAM 탈퇴가 제한된 경우에는 아래 내용을 참고하시기 바랍니다.</span>
                      </label>
                    </div>
                  </h5>

                  <div class="terms_detail pt-[16px]">
                    <ul class="terms_list">
                      <li class="terms_item relative pl-[12px] text-[15px] tracking-[-.15px] text-[#333]" style="word-break:keep-all">진행 중인 거래(판매/구매)가 있을 경우: 해당 거래 종료 후 탈퇴 가능</li>
                      <li class="terms_item relative pl-[12px] text-[15px] tracking-[-.15px] text-[#333]" style="word-break:keep-all">진행 중인 입찰(판매/구매)가 있을 경우: 해당 입찰 삭제 후 탈퇴 가능</li>
                      <li class="terms_item relative pl-[12px] text-[15px] tracking-[-.15px] text-[#333]" style="word-break:keep-all">진미납 수수료(착불 발송비/페널티)가 있을 경우: 해당 결제 완료 후 탈퇴 가능</li>
                      <li class="terms_item relative pl-[12px] text-[15px] tracking-[-.15px] text-[#333]" style="word-break:keep-all">이용 정지 상태인 경우: 이용 정지 해제 후 탈퇴 가능</li>
                    </ul>
                  </div>
                </div>
              </div>
              

              <div class="withdrawal_check mt-[20px]">
                <div class="checkbox_item relative">
                  <input onclick="checkbox" id="check1" type="checkbox" />
                  <label for="check1" class="relative cursor-pointer inline-block">
                    <span class="text-[16px] tracking-[-.16px]">회원탈퇴 안내를 모두 확인하였으며 탈퇴에 동의합니다</span>
                  </label>
                </div>
              </div>

              <div class="withdrawal_btn_box pt-[40px] text-center">
                <a class="withdrawal_ok inline-block h-[42px] w-[120px] cursor-pointer rounded-[12px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[18px] text-center align-middle text-[14px] leading-[40px] tracking-[-.14px] text-[#222]">탈퇴하기</a>
                <a href="/ReseltProject/myPage/profile" class="inline-block h-[42px] w-[120px] cursor-pointer rounded-[12px] border-[1px] border-solid border-[#d3d3d3] bg-[#222] py-[0px] px-[18px] text-center align-middle text-[14px] leading-[40px] tracking-[-.14px] text-[#fff]">취소하기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--my profile-->
    </div>
    <!--content-area-->
  </div>
  <!--container-->
  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>  
<script src="../js/myPage/withdrawal.js"></script>  
</body>

</html>