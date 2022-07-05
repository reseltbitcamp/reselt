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
        <h2 class="snb_main_title">���� ������</h2>
      </a>

      <nav class="snb">
        <div class="snb_list">
          <strong class="snb_title">���� ����</strong>
          <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/buying">���� ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/selling">�Ǹ� ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/wish">���� ��ǰ</a></li>
          </ul>
        </div>

        <div class="snb_list">
          <strong class="snb_title">�� ����</strong>
          <ul class="snb_menu">
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/profile">������ ����</a></li>
            <li class="menu_item"><a class="menu_link" href="/MyPage/my/payment">���� ����</a></li>
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
        <h3>������ ����</h3>
      </div>

      <input type="file" class="imgFile" />

      <!-- �̹��� ����/���� -->
      <div class="user_profile">
        <div class="profile_thumb">
          <img src="/MyPage/image/profile.png" class="showImg" />
        </div>

        <div class="profile_detail">
          <strong class="name">�̸�</strong>
          <div class="profile_btn_box">
            <input type="button" value="�̹��� ����" class="imgBtn btn" />
            <input type="button" value="����" class="resetBtn btn" />
          </div>
        </div>
      </div>
      <!--user_profile-->

      <div class="profile_info">
        <div class="profile_group">
          <h4 class="group_title">�α��� ����</h4>

          <!-- �̸���  -->
          <!-- ���� �� -->
          <div class="emailDiv unit">
            <h5 class="title">�̸��� �ּ�</h5>
            <p class="desc email">naver.com</p>
            <input type="button" value="����" class="emailDiv_alter btn btn_modify" />
          </div>

          <!-- ��Ÿ�� �� -->
          <div class="emailDiv_New removeEvent modify name">
            <form class="updateEmailForm">
              <h5 class="title">�̸���</h5>

              <div class="input_box">
                <h6 class="input_title">���ο� �̸���</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill emailDiv_text" placeholder="������ �̸���" autocomplete="off" />
                </div>
                <!-- ���� �� ��ȿ�� �˻� -->
                <p class="input_error removeEvent">�ùٸ� �̸����� �Է����ּ���</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="���" class="btn medium emailDiv_cancel" />
                <input type="button" value="����" class="btn medium solid emailDiv_save" disabled="true" />
              </div>
            </form>
          </div>

          <!-- ��й�ȣ  -->
          <!-- ���� �� -->
          <div class="pwdDiv unit">
            <h5 class="title">��й�ȣ</h5>
            <p class="desc password">�ܡܡܡܡܡܡܡ�</p>
            <input type="button" value="����" class="pwdDiv_alter btn btn_modify" />
          </div>

          <!-- ��Ÿ�� �� -->
          <div class="pwdDiv_New removeEvent modify name">
            <form class="updatePwdForm">
              <h5 class="title">��й�ȣ</h5>

              <div class="input_box">
                <h6 class="input_title">���ο� ��й�ȣ</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill pwdDiv_text" placeholder="������ �̸���" autocomplete="off" />
                </div>
                <!-- ���� �� ��ȿ�� �˻� -->
                <p class="input_error removeEvent">�ùٸ� ��й�ȣ�� �Է����ּ���</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="���" class="btn medium pwdDiv_cancel" />
                <input type="button" value="����" class="btn medium solid pwdDiv_save" disabled="true" />
              </div>
            </form>
          </div>
        </div>

        <div class="profile_group">
          <h4 class="group_title">���� ����</h4>

          <!-- ���� �� -->
          <div class="nameDiv unit">
            <h5 class="title">�̸�</h5>
            <p class="desc">name</p>
            <input type="button" value="����" class="nameDiv_alter btn btn_modify" />
          </div>

          <!-- ��Ÿ�� �� -->
          <div class="nameDiv_New removeEvent modify name">
            <form class="updateNameForm">
              <h5 class="title">�̸�</h5>

              <div class="input_box">
                <h6 class="input_title">���ο� �̸�</h6>
                <div class="input_item">
                  <input type="text" class="input_txt text_fill nameDiv_text" placeholder="������ �̸���" autocomplete="off" />
                </div>
                <!-- ���� �� ��ȿ�� �˻� -->
                <p class="input_error removeEvent">�ùٸ� �̸��� �Է����ּ���</p>
              </div>

              <div class="modify_btn_box">
                <input type="button" value="���" class="btn medium nameDiv_cancel" />
                <input type="button" value="����" class="btn medium solid nameDiv_save" disabled="true" />
              </div>
            </form>
          </div>

          <!-- �޴��� ��ȣ -->
          <div class="phoneDiv unit">
            <h5 class="title">�޴��� ��ȣ</h5>
            <p class="desc">010-0000-0000</p>
            <input type="button" value="����" class="emailDiv_alter btn btn_modify" />
          </div>

          <!-- �Ź�  -->
          <div class="sizeDiv unit">
            <h5 class="title">�Ź� ������</h5>
            <div class="desc">235</div>
            <input type="button" value="����" class="sizeDiv_alter btn btn_modify" />
          </div>

          <!-- �Ź� ���â -->
          <div class="modalDiv removeEvent layer lg">
            <div class="modalDiv_content layer_container">
              <div class="modalDiv_content-header layer_header">
                <h2 class="title">������ ����</h2>
              </div>

              <div class="modalDiv_content-main layer_content">
                <div class="size_list_area">
                  <!-- ���� -->
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
                  <input type="button" value="Ȯ��" class="modalDiv_check btn solid medium" />
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="profile_group">
          <h4 class="group_title">���� ���� ����</h4>

          <div class="unit to_receive">
            <p class="desc">���� �޽���</p>
            <div class="radio_txt_box">
              <div class="radio_item">
                <span class="label_txt">���� ����</span>
                <input type="radio" name="messageBtn" />
              </div>
              <div class="radio_item">
                <span class="label_txt">���� �ź�</span>
                <input type="radio" name="messageBtn" />
              </div>
            </div>
          </div>

          <div class="unit to_receive">
            <p class="desc">�̸���</p>
            <div class="radio_txt_box">
              <div class="radio_item">
                <span class="label_txt">���� ����</span>
                <input type="radio" name="messageBtn" />
              </div>
              <div class="radio_item">
                <span class="label_txt">���� �ź�</span>
                <input type="radio" name="messageBtn" />
              </div>
            </div>
          </div>
        </div>
        <a class="btn_withdraxal">ȸ��Ż��</a>
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