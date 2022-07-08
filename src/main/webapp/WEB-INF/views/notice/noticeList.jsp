<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="notice_outer m-0 m-auto max-w-[1280px] px-[40px]">
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
  </div>

<input type="text" id="pg" value="${requestScope.pg }">
<div class="content_area mt-10 m-auto grid">
  <div class="content_title pb-[16px] ">
    <div class="title text-2xl tracking-[-.36px] border-b-black border-solid border-b-[3px]">
      <h3 class="leading-7 font-bold mb-3">공지사항</h3>
    </div>
    <table id="noticeListTable">
	<!-- 동적처리 -->
    </table>
  </div>
</div>
<div id="noticePagingDiv"></div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'post',
			url: '../notice/getNoticeList',
			data: 'pg=' + $('#pg').val(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));

				$.each(data.list, function(index, items){
					console.log(index, items.title)

					$('<tr/>').append($('<td/>', {
						
					})).append($('<a/>', {
						href:'#',
						text: items.title,
						class: 'border-b-[#ebebeb] border-b-[1px] border-solid pb-3 cursor-pointer flex'
					})).appendTo($('#noticeListTable'));

				}); //each

				//페이징
				$('#noticePagingDiv').html(data.noticePaging.pagingHTML);
			}, //data

			error: function(e){
			console.log(e);
			}
		});
	});

</script>

	
