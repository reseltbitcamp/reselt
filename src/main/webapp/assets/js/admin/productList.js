//리스트 출력
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/admin/product_list',
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
				}).append($(document.createElement('input')).prop({
		            type: 'checkbox',
		            value: items.pid
		        }))
				
				
				).append($('<span/>', {
					class: 'adminDiv_num_item',
					text: items.pid
				})) 
				
				).append($('<div/>', {  //adminDiv_content_all
					class: 'adminDiv_content'
				}).append($('<span/>', {
					class: 'adminDiv_content_item',
					text: items.product_name_kor + " " + items.product_name_eng
				})).append($('<span/>', {
					class: 'adminDiv_content_item',
					text: items.created_at
				}))
				
				
				) //adminDiv_content
				
				
				
				)
				
				
				)
				
				)
				
				
				)
				
				)
				
				)
			
			}); //each

			
		},
		error: function(error) {
			console.log(error)
		}

	});

});	



//검색
$('.adminDiv_search_button').on('click', function(){
	if($('.adminDiv_search').val() == '') 
		alert('검색어를 입력하세요');
	else{
		$.ajax({
			type: 'post',
			url: '/ReseltProject/admin/adminProductSearch',
			data: 'search=' + $('.adminDiv_search').val(),
			dataType: 'json',
			success: function(data){
				
				//테이블에서 기존 목록 제거
				$('.my_admin_main-content-list').empty();
				
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
					}).append($(document.createElement('input')).prop({
			            type: 'checkbox',
			            value: items.pid
			        }))
					
					).append($('<span/>', {
						class: 'adminDiv_num_item',
						text: items.id
					})) 
					
					).append($('<div/>', {  //adminDiv_content_all
						class: 'adminDiv_content'
					}).append($('<span/>', {
						class: 'adminDiv_content_item',
						text: items.product_name_kor + " " + items.product_name_eng
					})).append($('<span/>', {
						class: 'adminDiv_content_item',
						text: items.created_at
					}))
					
					
					) //adminDiv_content
					
					
					
					)
					
					
					)
					
					)
					
					
					)
					
					)
					
					)
				
				}); //each
			
			},
			error: function(e){
				console.log(e);
			}
		});
	}
});





