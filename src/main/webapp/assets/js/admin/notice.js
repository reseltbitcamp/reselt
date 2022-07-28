//리스트 출력 , 페이징
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/notice/getNoticeList',
		data: 'pg=' + $('#pg').val(),
		dataType: 'json',
		success: function(data) {
			
			
			$.each(data.list, function(index, items){	
				$('.my_admin_main-content-list').append($('<div/>', {
					class: 'my_list'
				}).append($('<div/>', {
					class: 'my_list_basic'
				}).append($('<div/>', {
					class: 'my_list_item'
				}).append($('<div/>', {
					
				}).append($('<div/>', {
					class: 'admin_all'
				}).append($('<div/>', {
					class: 'adminDiv_content_all'
				}).append($('<div/>', {
					class: 'adminDiv_num'
				}).append($('<span/>', {
					class: 'adminDiv_num_chk'
				}) //체크박스 삭제
				
				
				).append($('<span/>', {
					class: 'adminDiv_num_item',
					text: items.seq
				})) 
				
				).append($('<div/>', {  //adminDiv_content_all
					class: 'adminDiv_content'
				}).append($('<span/>', {
					class: 'adminDiv_content_item title',
					text: items.title
				})).append($('<span/>', {
					class: 'adminDiv_content_item',
					text: items.logtime
				}))
				
				
				) //adminDiv_content
				
				
				
				)
				
				
				)
				
				)
				
				
				)
				
				)
				
				)
		
			}); //each

			//페이징
			$('#noticePagingDiv').html(data.noticePaging.pagingHTML);
			
		},
		error: function(error) {
			console.log(error)
		}

	});

});	

function noticePaging(pg){
	location.href = "notice?pg=" + pg;
	
	
	
	
	
	
}



