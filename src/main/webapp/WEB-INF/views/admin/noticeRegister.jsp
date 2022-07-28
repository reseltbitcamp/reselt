<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://kit.fontawesome.com/d84eab0825.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../css/admin.css"/>
<style>
textarea:focus,
input:focus {
	outline: none;
}
.adminDiv_content {
	margin-left: 41%;
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
              </ul>
            </div>

            <div class="snb_list mt-10">
              <strong class="snb_title inline-block align-top text-[16px] leading-[22px] tracking-[-.27px] text-[#738F66]">쇼핑몰</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="/ReseltProject/admin/productList">상품 관리</a></li>
              </ul>
            </div>

            <div class="snb_list mt-10">
              <strong class="snb_title inline-block align-top text-[16px] leading-[22px] tracking-[-.27px] text-[#738F66]">컨텐츠 관리</strong>
              <ul class="snb_menu list-none">
                <li class="menu_item mt-3 list-none"><a class="menu_link text-[14px] leading-[18px] tracking-[-.15px] text-[#DFD9D7]" href="/ReseltProject/admin/notice">공지사항 관리</a></li>
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
           <a href="/ReseltProject" class="ml-auto">
           		<div class="btn2 m-[5px] h-[35px] rounded-[2px] bg-[#EC5939] py-[5px] px-[40px] pt-[7px] text-[13px] text-[#DFD9D7] ml-[4px]">나가기</div>
           </a>
        </div>

        <div class="bg-[#FBFBFB] px-[40px]">
          <div class="my_admin_main pt-[20px]">
            <div class="my_admin_main-header border-b-solid border-b-[3px] border-b-[#171414] pb-[12px]">
              <div class="text-[16px] font-semibold text-[#171414]">공지 사항</div>
            </div>
            <!--header-->

            <div class="my_admin_main-content">
              <div class="my_admin_main-content-title border-b-[2px] border-b-[#C8C8C8] px-[80px] py-[7px] pr-[100px]">
                <div class="my_admin_main-content-title-detail flex justify-between">
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">IDX</span>
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">제목</span>
                  <span class="text-[13px] font-semibold text-[#6A6A6A]">작성일</span>
                </div>
              </div>
              <!--title-->
              
			<form id="noticeWriteForm">
			  <table border="1" cellspacing="0" cellpadding="5" class="w-[100%] rounded-md border-[1px] border-[#d3d3d3] py-0 px-[18px] text-sm leading-10 tracking-[-.14px]">
			    <tr class="rounded-[12px] border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] text-sm leading-10 tracking-[-.14px]">
			      <td width="70" align="center" class="border-r border-[#d3d3d3] text-[#5c5c5c]">제목</td>
			      <td>
			        <input type="text" name="title" id="title" class="w-[100%] bg-[#FBFBFB]" placeholder="제목을 입력하세요" />
			        <div id="titleDiv"></div>
			      </td>
			    </tr>
			
			    <tr>
			      <td align="center" class="border-r border-[#d3d3d3] text-[#5c5c5c]">내용</td>
			      <td>
			        <textarea name="content" id="content" rows="15" cols="50" class="w-[100%] bg-[#FBFBFB]" placeholder="내용을 입력하세요"></textarea>
			        <div id="contentDiv"></div>
			      </td>
			    </tr>
			
			    <tr>
			      <td colspan="2" align="center" class="border-t border-[#d3d3d3]">
			        <input type="button" value="글쓰기" id="noticeWriteBtn" class="h-[42px] cursor-pointer rounded-[12px] border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] text-sm leading-10 tracking-[-.14px] text-[#5c5c5c]" />
			        <input type="reset" value="다시작성" class="h-[42px] cursor-pointer rounded-[12px] border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] text-sm leading-10 tracking-[-.14px] text-[#5c5c5c]" />
			        <input type="button" value="목록" class="h-[42px] cursor-pointer rounded-[12px] border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] text-sm leading-10 tracking-[-.14px] text-[#5c5c5c]" onclick="location.href='/ReseltProject/notice/noticeList'" />
			      </td>
			    </tr>
			  </table>
			</form>

 
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
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#noticeWriteBtn').click(function(){
		$('#titleDiv').empty();
		$('#contentDiv').empty();
		
		if($('#title').val() == ''){
			$('#titleDiv').html('제목을 입력하세요');
			$('#titleDiv').css('color', 'red');
			$('#titleDiv').css('font-size', '8pt');
			$('#titleDiv').css('font-weight', 'bold');
		}else if($('#content').val() == ''){
			$('#contentDiv').html('내용을 입력하세요');
			$('#contentDiv').css('color', 'red');
			$('#contentDiv').css('font-size', '8pt');
			$('#contentDiv').css('font-weight', 'bold');
		}else{
			
			$.ajax({
				type: 'post',
				url: '/ReseltProject/notice/noticeWrite',
				data: 
						{'title': $('#title').val(),
					   	 'content': $('#content').val()},
				success: function(){
					alert('작성하신 글을 저장하였습니다.');
					location.href = '/ReseltProject/admin/notice';
				},
				error: function(e){
					console.log(e);
				}
			});
		}
	});
});
</script>
</body>
</html>