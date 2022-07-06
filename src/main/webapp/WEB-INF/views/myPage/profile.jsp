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
            <h2 class="snb_main_title pb-[30px] text-2xl font-bold leading-7 tracking-[-.15px]">���� ������</h2>
          </a>

          <nav class="snb">
            <div class="snb_list">
              <strong class="snb_title mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">���� ����</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/buying">���� ����</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/selling">�Ǹ� ����</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/wish">���� ��ǰ</a></li>
              </ul>
            </div>

            <div class="snb_list mt-10">
              <strong class="snb_title mb-3 inline-block align-top text-lg font-bold leading-[22px] tracking-[-.27px]">�� ����</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/profile">������ ����</a></li>
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[15px] leading-[18px] tracking-[-.15px] text-[#222]" href="/ReseltProject/myPage/payment">���� ����</a></li>
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
              <h3 class="font-bold leading-7">������ ����</h3>
            </div>
          </div>

          <!-- removement ��� �ֱ�-->
          <input type="file" class="imgFile hidden" />

          <!-- �̹��� ����/���� -->
          <div class="user_profile flex items-center border-b-[1px] border-[#ebebeb] pt-[50px] pb-[38px]">
            <div class="profile_thumb mr-[18px] h-[100px] w-[100px] flex-none overflow-hidden rounded-full">
              <img src="/MyPage/image/profile.png" class="showImg h-full w-full" />
            </div>

            <div class="profile_detail">
              <strong class="name text-2xl leading-8 tracking-[-.12px] text-[#000]">�̸�</strong>
              <div class="profile_btn_box mt-[8px]">
                <input type="button" value="�̹��� ����" class="imgBtn btn inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" />
                <input type="button" value="����" class="resetBtn btn ml-[8px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>
            </div>
          </div>
          <!--user_profile-->

          <div class="profile_info max-w-[480px] pt-[38px]">
            <div class="profile_group pt-0">
              <h4 class="group_title text-lg font-bold tracking-[-.27px]">�α��� ����</h4>

              <!-- �̸���  -->
              <!-- ���� �� -->
              <div class="emailDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">�̸��� �ּ�</h5>
                <p class="desc email pt-[6px] text-[16px] tracking-[-.16px] text-[#6b6a6a]">naver.com</p>
                <input type="button" value="����" class="emailDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- ��Ÿ�� �� -->
              <div class="emailDiv_New removeEvent modify name pt-[25px]">
                <form class="updateEmailForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">�̸���</h5>

                  <div class="input_box pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">���ο� �̸���</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill emailDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="������ �̸���" autocomplete="off" />
                    </div>
                    <!-- ���� �� ��ȿ�� �˻� -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">�ùٸ� �̸����� �Է����ּ���</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="���" class="btn medium emailDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="����" class="btn medium solid emailDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>

              <!-- ��й�ȣ  -->
              <!-- ���� �� -->
              <div class="pwdDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">��й�ȣ</h5>
                <p class="desc password pt-[6px] text-[11px] tracking-[-.16px] text-[#6b6a6a]">�ܡܡܡܡܡܡܡ�</p>
                <input type="button" value="����" class="pwdDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- ��Ÿ�� �� -->
              <div class="pwdDiv_New removeEvent modify name pt-[25px]">
                <form class="updatePwdForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">��й�ȣ</h5>

                  <div class="input_box pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">���ο� ��й�ȣ</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill pwdDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="������ �̸���" autocomplete="off" />
                    </div>
                    <!-- ���� �� ��ȿ�� �˻� -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">�ùٸ� ��й�ȣ�� �Է����ּ���</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="���" class="btn medium pwdDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="����" class="btn medium solid pwdDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>
            </div>

            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-[18px] font-bold tracking-[-.27px]">���� ����</h4>

              <!-- ���� �� -->
              <div class="nameDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">�̸�</h5>
                <p class="desc pt-[6px] text-[16px] tracking-[-.16px]">name</p>
                <input type="button" value="����" class="nameDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- ��Ÿ�� �� -->
              <div class="nameDiv_New removeEvent modify name pt-[25px]">
                <form class="updateNameForm">
                  <h5 class="title pb-[22px] text-sm tracking-[-.07px] text-[#222]">�̸�</h5>

                  <div class="input_box relative pt-[10px] pb-[14px]">
                    <h6 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">���ο� �̸�</h6>
                    <div class="input_item relative">
                      <input type="text" class="input_txt text_fill nameDiv_text pt-[7px] pb-[7px] text-[15px] tracking-[-.15px] text-[#6b6a6a]" placeholder="������ �̸�" autocomplete="off" />
                    </div>
                    <!-- ���� �� ��ȿ�� �˻� -->
                    <p class="input_error removeEvent text-[13px] text-[#ff3939]">�ùٸ� �̸��� �Է����ּ���</p>
                  </div>

                  <div class="modify_btn_box pt-[28px] text-center">
                    <input type="button" value="���" class="btn medium nameDiv_cancel h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" />
                    <input type="button" value="����" class="btn medium solid nameDiv_save ml-[8px] h-[42px] rounded-[12px] border-[1px] border-solid border-[#d3d3d3] pr-[38px] pl-[38px] text-[14px] tracking-[-.14px] text-[#222]" disabled="true" />
                  </div>
                </form>
              </div>

              <!-- �޴��� ��ȣ -->
              <div class="phoneDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">�޴��� ��ȣ</h5>
                <p class="desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]">010-0000-0000</p>
                <input type="button" value="����" class="emailDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>

              <!-- �Ź�  -->
              <div class="sizeDiv unit border-b-solid relative border-b-[1px] border-b-[#ebebeb] pt-[25px] pr-[60px] pb-[18px] pl-[0px]">
                <h5 class="title text-sm tracking-[-.07px] text-[#6b6a6a]">�Ź� ������</h5>
                <div class="desc pt-[6px] text-[16px] tracking-[-.16px] text-[#222]">235</div>
                <input type="button" value="����" class="sizeDiv_alter btn btn_modify absolute right-0 bottom-[15px] inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] px-[14px] pt-[1px] pl-[11px] pr-[12px] text-center align-middle text-xs leading-8 text-[#000]" />
              </div>
              <!--
              <!-- �Ź� ���â -->
              <div class="modalDiv removeEvent layer lg fixed z-[1000] bg-[#6b6a6a]">
              
                <div class="modalDiv_content layer_container top-0 left-0 right-0 bottom-0 absolute top-2/4 left-2/4 w-[448px] overflow-hidden rounded-[16px] bg-[#fff] shadow-[#6b6a6a]">
                  <div class="modalDiv_content-header layer_header">
                    <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-lg font-bold leading-[22px] tracking-[-.15px] text-[#000]">������ ����</h2>
                  </div>

                  <div class="modalDiv_content-main layer_content">
                    <div class="size_list_area h-[270px] overflow-y-auto overflow-x-hidden px-[28px] pt-[6px] pb-0">
                      <!-- ���� -->
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
                      <input type="button" value="Ȯ��" class="modalDiv_check btn solid medium inline-block h-[42px] w-[120px] cursor-pointer rounded-[12px] bg-[#222] py-0 px-[18px] text-center align-middle text-sm font-semibold leading-10 tracking-[-.14px] text-[#fff]" />
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="profile_group pt-[58px]">
              <h4 class="group_title text-lg font-bold tracking-[-.27px]">���� ���� ����</h4>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">���� �޽���</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="label_txt float-left mr-[4px]">���� ����</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="label_txt label_txt float-left mr-[4px]">���� �ź�</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                </div>
              </div>

              <div class="unit to_receive border-b-solid relative border-b-[1px] border-b-[#ebebeb] pr-[200px] pb-[20px] pt-[25px] pl-[0px]">
                <p class="desc text-[15px] tracking-[-.15px]">�̸���</p>
                <div class="radio_txt_box absolute bottom-[15px] right-0">
                  <div class="radio_item relative float-left mt-0 mr-[6px]">
                    <span class="label_txt float-left mr-[4px]">���� ����</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                  <div class="radio_item relative float-left mt-0">
                    <span class="label_txt label_txt float-left mr-[4px]">���� �ź�</span>
                    <input type="radio" name="messageBtn" />
                  </div>
                </div>
              </div>
            </div>
            <a class="btn_withdraxal py-5px mt-[55px] inline-block px-0 text-[13px] tracking-[-.07px] text-[#6b6a6a]">ȸ��Ż��</a>
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
//�̹��� ���ε�
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

//�̹��� ����
$('.resetBtn').click(function(){
	//$('.showImg').remove("");
	$('.showImg').attr('src', '/MyPage/image/profile.png');
	
});

//���� ������ emailDiv ����
$('.emailDiv_alter').click(function(){
	$('.emailDiv').addClass('removeEvent');
	$('.emailDiv_New').removeClass('removeEvent');
});

//��� ������ ���� emailDiv ���
$('.emailDiv_cancel').click(function(){
	$('.emailDiv').removeClass('removeEvent');
	$('.emailDiv_New').addClass('removeEvent');
});

//�ؽ�Ʈ ���� Ȱ��ȭ emailDiv Ȱ��ȭ
$('.emailDiv_text').on('input', function(){
	if ($('.emailDiv_text').val().length == '0') {
		$('.emailDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.emailDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});


//���� ������ PwdDiv ����
$('.pwdDiv_alter').click(function(){
	$('.pwdDiv').addClass('removeEvent');
	$('.pwdDiv_New').removeClass('removeEvent');
});

//��� ������ ���� PwdDiv ���
$('.pwdDiv_cancel').click(function(){
	$('.pwdDiv').removeClass('removeEvent');
	$('.pwdDiv_New').addClass('removeEvent');
});


//�ؽ�Ʈ ���� Ȱ��ȭ PwdDiv Ȱ��ȭ
$('.pwdDiv_text').on('input', function(){
	if($('.pwdDiv_text').val() == '') {
		$('.pwdDiv_save').attr('disabled', true);
	} else {
		$('.pwdDiv_save').attr('disabled', false);
	}
});


//���� ������ nameDiv ����
$('.nameDiv_alter').click(function(){
	$('.nameDiv').addClass('removeEvent');
	$('.nameDiv_New').removeClass('removeEvent');
});

//��� ������ ���� nameDiv ���
$('.nameDiv_cancel').click(function(){
	$('.nameDiv').removeClass('removeEvent');
	$('.nameDiv_New').addClass('removeEvent');
});


//�ؽ�Ʈ ���� Ȱ��ȭ nameDiv Ȱ��ȭ
$('.nameDiv_text').on('input', function(){
	if ($('.nameDiv_text').val().length < 2 || $('.nameDiv_text').val().length > 50) {
		$('.nameDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.nameDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});


//���� ������ ���â
$('.sizeDiv_alter').click(function(){
	$('.modalDiv').fadeIn();
});

//Ȯ�� ������ ���â x
$('.modalDiv_check').click(function(){
	$('.modalDiv').fadeOut();
});


//���â �ε��� �޾Ƽ� �ε��� �� ������
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