<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="notice_outer m-auto max-w-[1280px] px-[40px]">
  <div class="wrap_inner float-left m-auto grid">
        <div class="container customer max-w-7xl m-auto pt-10 pr-10 pb-40">
            <div class="box-border">
                <div class="snb_area m-0 p-0 float-left w-[150px] mt-5">
                    <a href="#" onclick="location.reload()" aria-current="page" class="cursor-pointer">
                    <h2 class="snb_main_title pb-25 text-3xl tracking-tighter text-black uppercase block font-semibold">고객센터</h2></a>
                    <br>
                    <nav class="snb">
                        <div class="snb_list">
                            <ul class="snb_menu">
                                <li><a href="#" onclick="location.reload()" aria-current="page" class="menu_item menu_on mb-2 text-[#222] font-semibold tracking-[-.15px] leading-[18px]"> 공지사항 </a></li>
                                <li class="menu_item"><a href="#" class="menu_link text-[rgba(34,34,34,.5)] tracking-[-.15px] leading-[40px]"> 검수 기준 </a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
  
<input type="hidden" id="seq" value="${seq }">
<input type="hidden" id="pg" value="${requestScope.pg }">
<div class="content_area mt-10 m-auto grid">
  <div class="content_title pb-[16px] ">
    <div class="title text-2xl tracking-[-.36px] border-b-black border-solid border-b-[3px]">
      <h3 class="leading-7 font-bold mb-3">공지사항</h3>
    </div>
  </div>
  <div class="title_box">
    <span class="dateSpan mb-[1px] inline text-[12px] tracking-[-.06px]"></span>
    <div class="titleDiv border-b-[#ebebeb] border-b-[1px] border-solid pb-3 cursor-pointer flex"></div>
  </div>
  <div class="">
    <pre class="whitespace-pre-line break-all">
      <div class="contentDiv block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] border-b-[#ebebeb] border-solid border-b-[1px] text-[14px] tracking-[-.21px]"></div>
    </pre>
  </div>
<!--   <div class="btn_list mt-[30px] text-center"> -->
<!--     <input type = "reset" value = "목록보기" id="noticeBtn" class="border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] h-[42px] leading-10 rounded-[12px] text-sm tracking-[-.14px] cursor-pointer" onclick="location.reload()"> -->
<!--   </div> -->
  <div class="btn_list mt-[30px] text-center">
    <input type="button" value="목록보기" class="border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] h-[42px] leading-10 rounded-[12px] text-sm tracking-[-.14px] cursor-pointer" onclick="location.href='../notice/noticeList'">
    <input type="button" value="글수정" class="border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] h-[42px] leading-10 rounded-[12px] text-sm tracking-[-.14px] cursor-pointer">
    <input type="button" value="글삭제" class="border-[1px] border-solid border-[#d3d3d3] py-0 px-[18px] h-[42px] leading-10 rounded-[12px] text-sm tracking-[-.14px] cursor-pointer">
  </div>
</div>

<div class="mb-52"></div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
    $.ajax({
      type: 'post',
      url: '../notice/getNoticeView',
      data: 'seq='+$('#seq').val(),
      dataType: 'json',
      success: function(data){
        console.log(JSON.stringify(data));

        $('.dateSpan').text(data.noticeDTO.logtime);
        $('.titleDiv').text(data.noticeDTO.title);
        $('.contentDiv').text(data.noticeDTO.content);
      },
      error: function(e){
        console.log(e);
      }
    });
  });
</script>