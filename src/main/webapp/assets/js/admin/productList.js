//리스트 출력
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/admin/product_list',
		dataType: 'json',
		success: function(data) {
			
			
			$.each(data.list, function(index, items){	
				
				if (items.product_name_eng == null) {
					
				} else {
			
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
			
				}//else
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
			error: function(e){
				console.log(e);
			}
		});
	}
});



//삭제 버튼 누르면 체크된 항목 삭제
$('.delete_admin').on('click', function(){
	
	var checkBoxArr = [];
	$('input:checkbox:checked').each(function(){
		checkBoxArr.push($(this).val());
		console.log(checkBoxArr);
	});
	
	var con = confirm('삭제하시겠습니까?');
	
	if (con == true) {
	
	$.ajax({
		type: 'POST',
		url: '/ReseltProject/admin/delete_product',
		traditional: true, //배열 넘기기
		data: {"checkBoxArr": checkBoxArr},
		success: function() {
			alert('삭제되었습니다');
			location.reload();
		},
		error: function(e){
			console.log(e);
		}
	});
	
	} else {
		alert('취소되었습니다');
	}
	
});

