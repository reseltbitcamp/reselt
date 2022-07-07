<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../css/style.css"/>
<title>Insert title here</title>
</head>
<body>
    <div class="my md container mx-auto mt-0 mb-0 p-10 pb-40">
      <div class="nav">
        <div class="snb_area float-left mr-5 w-[180px]">
          <a href="/ReseltProject/myPage/myMain" class="nuxt-link-active text no-underline">
            <h2 class="snb_main_title pb-[30px] text-2xl font-bold leading-7 tracking-[-.15px]">마이 페이지</h2>
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
        <div class="my_profile">
          <div class="content_title border-b-4 border-[#222] pb-4">
            <div class="title text-2xl tracking-[-.36px]">
              <h3 class="font-bold leading-7">프로필 정보</h3>
            </div>
          </div>

          <!-- removement 대신 넣기-->
          <input type="file" class="imgFile hidden" />

          <!-- 이미지 변경/삭제 -->
          <div class="user_profile flex items-center border-b-[1px] border-[#ebebeb] pt-[50px] pb-[38px]">
            <div class="profile_thumb mr-[18px] h-[100px] w-[100px] flex-none overflow-hidden rounded-full">
              <img src="/MyPage/image/profile.png" class="showImg h-full w-full" />
            </div>

            <div class="profile_detail">
              <strong class="name text-2xl leading-8 tracking-[-.12px] text-[#000]">이름</strong>
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
              <div class="emailDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">이메일 주소</h5>
                <p class="desc email pt-[6px] text-[16px] tracking-[-.16px] text-[#6b6a6a]">naver.com</p>
                <input type="button" value="변경" class="emailDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- 나타난 애 -->
              <div class="emailDiv_New removeEvent modify name pt-[25px]">
                <form class="updateEmailForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">이메일</h5>

                  <div class="input_box pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">새로운 이메일</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill emailDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="고객님의 이메일" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 이메일을 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="btn medium emailDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="저장" class="btn medium solid emailDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
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
                      <input type="text" class="input_txt text_fill pwdDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="고객님의 이메일" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 비밀번호를 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="btn medium pwdDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="저장" class="btn medium solid pwdDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>
            </div>

            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-[18px] font-bold tracking-[-.27px]">개인 정보</h4>

              <!-- 원래 애 -->
              <div class="nameDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">이름</h5>
                <p class="desc pt-[6px] text-[16px] tracking-[-.16px]">name</p>
                <input type="button" value="변경" class="nameDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- 나타난 애 -->
              <div class="nameDiv_New removeEvent modify name pt-[25px]">
                <form class="updateNameForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">이름</h5>

                  <div class="input_box relative pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">새로운 이름</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill nameDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="고객님의 이름" autocomplete="off" />
                    </div>
                    <!-- 글자 수 유효성 검사 -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">올바른 이름을 입력해주세요</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="취소" class="btn medium nameDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="저장" class="btn medium solid nameDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>

              <!-- 휴대폰 번호 -->
              <div class="phoneDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">휴대폰 번호</h5>
                <p class="desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]">010-0000-0000</p>
                <input type="button" value="변경" class="emailDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- 신발  -->
              <div class="sizeDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">신발 사이즈</h5>
                <div class="desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]">235</div>
                <input type="button" value="변경" class="sizeDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>
              <!--
              <!-- 신발 모달창 -->
              <div class="modalDiv removeEvent layer lg fixed z-[1000] bg-[#6b6a6a]">
              
                <div class="modalDiv_content layer_container top-0 left-0 right-0 bottom-0 absolute top-2/4 left-2/4 w-[448px] overflow-hidden rounded-[16px] bg-[#fff] shadow-[#6b6a6a]">
                  <div class="modalDiv_content-header layer_header">
                    <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-lg font-bold leading-[22px] tracking-[-.15px] text-[#000]">사이즈 선택</h2>
                  </div>

                  <div class="modalDiv_content-main layer_content">
                    <div class="size_list_area h-[270px] overflow-y-auto overflow-x-hidden px-[28px] pt-[6px] pb-0">
                      <!-- 수정 -->
                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
                        </a>
                      </div>

                      <div class="size_item float-left m-1 table h-[52px]" style="width: calc(33.33333% - 8px);">
                        <a class="btn outlinegrey medium modalDiv_content-button table-cell h-full w-full rounded-[15px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] pt-[10px] text-center" id="220">
                          <span class="info_txt inline-block text-center text-[14px] text-[#000]">220</span>
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

            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-lg font-bold tracking-[-.27px]">광고성 정보 수신</h4>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">문자 메시지</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="label_txt float-left mr-[4px]">수신 동의</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="label_txt label_txt float-left mr-[4px]">수신 거부</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                </div>
              </div>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">이메일</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="label_txt float-left mr-[4px]">수신 동의</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="label_txt label_txt float-left mr-[4px]">수신 거부</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                </div>
              </div>
            </div>
            <a class="btn_withdraxal py-5px mt-[55px] inline-block px-0 text-[13px] tracking-[-.07px] text-[#6b6a6a]">회원탈퇴</a>
          </div>
          <!--profile_info-->
        </div>
        <!--my profile-->
      </div>
      <!--content-area-->
    </div>
    <!--container-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
//이미지 업로드
$('.imgBtn').click(function(){
	$('.imgFile').click();
});

$('.imgFile').on('change', function(){
	readURL(this);
});

function readURL(input){
	if(input.files[0]){
		var reader = new FileReader();
		reader.onload = function(e){
			$('.showImg').attr('src', e.target.result); 
		}
		reader.readAsDataURL(input.files[0]);
	}
}

//이미지 제거
$('.resetBtn').click(function(){
	//$('.showImg').remove("");
	$('.showImg').attr('src', '/MyPage/image/profile.png');
	
});

//변경 누르면 emailDiv 수정
$('.emailDiv_alter').click(function(){
	$('.emailDiv').addClass('removeEvent');
	$('.emailDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 emailDiv 취소
$('.emailDiv_cancel').click(function(){
	$('.emailDiv').removeClass('removeEvent');
	$('.emailDiv_New').addClass('removeEvent');
});

//텍스트 쓰면 활성화 emailDiv 활성화
$('.emailDiv_text').on('input', function(){
	if ($('.emailDiv_text').val().length == '0') {
		$('.emailDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.emailDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});


//변경 누르면 PwdDiv 수정
$('.pwdDiv_alter').click(function(){
	$('.pwdDiv').addClass('removeEvent');
	$('.pwdDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 PwdDiv 취소
$('.pwdDiv_cancel').click(function(){
	$('.pwdDiv').removeClass('removeEvent');
	$('.pwdDiv_New').addClass('removeEvent');
});


//텍스트 쓰면 활성화 PwdDiv 활성화
$('.pwdDiv_text').on('input', function(){
	if($('.pwdDiv_text').val() == '') {
		$('.pwdDiv_save').attr('disabled', true);
	} else {
		$('.pwdDiv_save').attr('disabled', false);
	}
});


//변경 누르면 nameDiv 수정
$('.nameDiv_alter').click(function(){
	$('.nameDiv').addClass('removeEvent');
	$('.nameDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 nameDiv 취소
$('.nameDiv_cancel').click(function(){
	$('.nameDiv').removeClass('removeEvent');
	$('.nameDiv_New').addClass('removeEvent');
});


//텍스트 쓰면 활성화 nameDiv 활성화
$('.nameDiv_text').on('input', function(){
	if ($('.nameDiv_text').val().length < 2 || $('.nameDiv_text').val().length > 50) {
		$('.nameDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.nameDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});


//변경 누르면 모달창
$('.sizeDiv_alter').click(function(){
	$('.modalDiv').fadeIn();
});

//확인 누르면 모달창 x
$('.modalDiv_check').click(function(){
	$('.modalDiv').fadeOut();
});


//모달창 인덱스 받아서 인덱스 값 보내기
$('.modalDiv_content-button').on('click', function(){
	var index = $(this).index();
	
	if($(this).hasClass('clickEvent')){
		$('.modalDiv_content-button').removeClass('clickEvent');     
	} else {
		$('.modalDiv_content-button').removeClass('clickEvent');
        $(this).addClass('clickEvent');
    }
	
	console.log(index);
});
</script>
</body>
</html>