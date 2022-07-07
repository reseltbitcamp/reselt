<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<input type="hidden" id="pg" value="${requestScope.pg }">
<div class="content_area mt-10 m-auto grid">
  <div class="content_title pb-[16px] ">
    <div class="title text-2xl tracking-[-.36px] border-b-black border-solid border-b-[3px]">
      <h3 class="leading-7 font-bold mb-3">공지사항</h3>
    </div>
  </div>
	<!-- 동적처리 -->
</div>
<div id="noticePagingDiv"></div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: 'post',
			url: 'ReseltProject/notice/getNoticeList',
			data: 'pg=' + $('#pg').val(),
			dataType: 'json',
			success: function(data){
				alert(JSON.stringify(data));

				$.each(data.list, function(index, items){
					console.log(index, items.title)

					$('<tr/>').append($('<td/>', {
						
					})).append($('<a/>', {
						href:'#',
						text: items.title
					})).appendTo($('#content_area'));

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

	
