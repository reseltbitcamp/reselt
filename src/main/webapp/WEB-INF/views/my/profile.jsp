<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="my md container">
  <div class="nav">
    <div class="snb_area">
      <a href="/MyPage/my" class="nuxt-link-active">
        <h2 class="snb_main_title">마이 페이지</h2>
      </a>

      <nav class="snb">
        <div class="snb_list">
          <strong class="snb_title">쇼핑 정보</strong>
          <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/buying">구매 내역</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/selling">판매 내역</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/wish">관심 상품</a></li>
          </ul>
        </div>

        <div class="snb_list">
          <strong class="snb_title">내 정보</strong>
          <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/profile">프로필 정보</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/payment">결제 정보</a></li>
          </ul>
        </div>
      </nav>
      <!--snb-->
    </div>
    <!--snb_area-->
  </div>
  <!--nav-->

  <div class="content content_area">
    <div class="my_profile">
      <div class="content_title border">
        <h3>프로필 정보</h3>
      </div>

      <input type="file" class="imgFile" />

      <!-- 이미지 변경/삭제 -->
      <div class="user_profile">
        <div class="profile_thumb">
          <img src="/MyPage/image/profile.png" class="showImg" />
        </div>

        <div class="profile_detail">
          <strong class="name">이름</strong>
          <div class="profile_btn_box">
            <input type="button" value="이미지 변경" class="imgBtn btn" />
            <input type="button" value="삭제" class="resetBtn btn" />
          </div>
        </div>
      </div>
      <!--user_profile-->

      <div class="profile_info">
        <div class="profile_group">
          <h4 class="group_title">로그인 정보</h4>

          <!-- 이메일  -->
          <!-- 원래 애 -->
          <div class="emailDiv unit">
            <h5 class="title">이메일 주소</h5>
            <p class="desc email">naver.com</p>
            <input type="button" value="변경" class="emailDiv_alter btn btn_modify" />
          </div>

          <!-- 나타난 애 -->
          <div class="emailDiv_New removeEvent modify name">
            <form class="updateEmailForm">
              <h5 class="title">이메일</h5>

              <div class="input_box">
                <h6 class="input_title">새로운 이메일</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill emailDiv_text" placeholder="고객님의 이메일" autocomplete="off" />
                </div>
                <!-- 글자 수 유효성 검사 -->
                <p class="input_error removeEvent">올바른 이메일을 입력해주세요</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="취소" class="btn medium emailDiv_cancel" />
                <input type="button" value="저장" class="btn medium solid emailDiv_save" disabled="true" />
              </div>
            </form>
          </div>

          <!-- 비밀번호  -->
          <!-- 원래 애 -->
          <div class="pwdDiv unit">
            <h5 class="title">비밀번호</h5>
            <p class="desc password">●●●●●●●●</p>
            <input type="button" value="변경" class="pwdDiv_alter btn btn_modify" />
          </div>

          <!-- 나타난 애 -->
          <div class="pwdDiv_New removeEvent modify name">
            <form class="updatePwdForm">
              <h5 class="title">비밀번호</h5>

              <div class="input_box">
                <h6 class="input_title">새로운 비밀번호</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill pwdDiv_text" placeholder="고객님의 이메일" autocomplete="off" />
                </div>
                <!-- 글자 수 유효성 검사 -->
                <p class="input_error removeEvent">올바른 비밀번호를 입력해주세요</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="취소" class="btn medium pwdDiv_cancel" />
                <input type="button" value="저장" class="btn medium solid pwdDiv_save" disabled="true" />
              </div>
            </form>
          </div>
        </div>

        <div class="profile_group">
          <h4 class="group_title">개인 정보</h4>

          <!-- 원래 애 -->
          <div class="nameDiv unit">
            <h5 class="title">이름</h5>
            <p class="desc">name</p>
            <input type="button" value="변경" class="nameDiv_alter btn btn_modify" />
          </div>

          <!-- 나타난 애 -->
          <div class="nameDiv_New removeEvent modify name">
            <form class="updateNameForm">
              <h5 class="title">이름</h5>

              <div class="input_box">
                <h6 class="input_title">새로운 이름</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill nameDiv_text" placeholder="고객님의 이메일" autocomplete="off" />
                </div>
                <!-- 글자 수 유효성 검사 -->
                <p class="input_error removeEvent">올바른 이름을 입력해주세요</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="취소" class="btn medium nameDiv_cancel" />
                <input type="button" value="저장" class="btn medium solid nameDiv_save" disabled="true" />
              </div>
            </form>
          </div>

          <!-- 휴대폰 번호 -->
          <div class="phoneDiv unit">
            <h5 class="title">휴대폰 번호</h5>
            <p class="desc">010-0000-0000</p>
            <input type="button" value="변경" class="emailDiv_alter btn btn_modify" />
          </div>

          <!-- 신발  -->
          <div class="sizeDiv unit">
            <h5 class="title">신발 사이즈</h5>
            <div class="desc">235</div>
            <input type="button" value="변경" class="sizeDiv_alter btn btn_modify" />
          </div>

          <!-- 신발 모달창 -->
          <div class="modalDiv removeEvent layer lg">
            <div class="modalDiv_content layer_container">
              <div class="modalDiv_content-header layer_header">
                <h2 class="title">사이즈 선택</h2>
              </div>

              <div class="modalDiv_content-main layer_content">
                <div class="size_list_area">
                  <!-- 수정 -->
                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>

                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>

                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>

                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>

                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>

                  <div class="size_item">
                    <a class="btn outlinegrey medium modalDiv_content-button" id="220">
                      <span class="info_txt">220</span>
                    </a>
                  </div>
                </div>

                <div class="modalDiv_content-footer layer_btn">
                  <input type="button" value="확인" class="modalDiv_check btn solid medium" />
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="profile_group">
          <h4 class="group_title">광고성 정보 수신</h4>

          <div class="unit to_receive">
            <p class="desc">문자 메시지</p>
            <div class="radio_txt_box">
              <div class="radio_item">
                <span class="label_txt">수신 동의</span>
                <input type="radio" name="messageBtn" />
              </div>
              <div class="radio_item">
                <span class="label_txt">수신 거부</span>
                <input type="radio" name="messageBtn" />
              </div>
            </div>
          </div>

          <div class="unit to_receive">
            <p class="desc">이메일</p>
            <div class="radio_txt_box">
              <div class="radio_item">
                <span class="label_txt">수신 동의</span>
                <input type="radio" name="messageBtn" />
              </div>
              <div class="radio_item">
                <span class="label_txt">수신 거부</span>
                <input type="radio" name="messageBtn" />
              </div>
            </div>
          </div>
        </div>
        <a class="btn_withdraxal">회원탈퇴</a>
      </div> <!--profile_info-->

      
    </div>
    <!--my profile-->
  </div>
  <!--content-area-->
</div>
<!--container-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/MyPage/js/profile.js"></script>
</body>
</html>