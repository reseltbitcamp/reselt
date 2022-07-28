//로그인 유무
$(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/getSession',
		success: function(data){
			
			//alert(data);
			if(data == ""){
				alert('로그인 후 이용해주세요.')
				location.href='/ReseltProject/member/login'
			}
			
		},
		error: function(e){
			console.log(e);
		}
	});
});


//데이터
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/myMainList',
		dataType: 'json',
		success: function(list) {
			
			
			if (list == null) {
				$('.not_empty_area_1').addClass('removeEvent');
				$('.empty_area_1').removeClass('removeEvent');
			} else {
				$('.not_empty_area_1').removeClass('removeEvent');
				$('.empty_area_1').addClass('removeEvent');
		
				$(".wish_list").empty();
				
				$.each(list, function(index, items){
					$('.wish_list').append($('<li/>', {
						class: 'wish_list_inner'
					}).append($('<div/>', {
						class: 'wish_block'
					}).append($('<div/>', {
						class: 'wish_product'
					}).append($('<div/>', {
						class: 'product_box'
					}).append($('<img/>', {
						class: 'product_img',
						text: items.img_file
					}))
					
					
					).append($('<div/>', {
						class: 'product_detail'
					}).append($('<div/>', {
						class: 'brand'
					}).append($('<a/>', {
						class: 'brand_text'
					}))
					
					).append($('<p/>', {
						class: 'brand_name',
						text: items.product_name_eng
					})).append($('<span/>', {
						class: 'brand_size',
						text: items.footsize
						
					}))
					
					
					)
					
					
					
					).append($('<div/>', {
						class: 'wish_coin'
					}).append($('<div/>', {
						class: 'wish_div'
					}).append($('<div/>', {
						class: 'wish_coin_inner'
					}).append($('<div/>', {
						class: 'wish_coin_content',
						text: items.created_at
					})))
					
				
					
					)
					
					
					
					).append($('<div/>', {
						class: 'wish_buy'
					}).append($('<div/>', {
						class: 'wish_div'
					}).append($('<div/>', {
						class: 'wish_buy_inner'
					}).append($('<span/>', {
						class: 'wish_buy_content',
						text: items.status
					})))
					
					)
					
					)
					
					)
					)
				
					$('.count_all').text(items.count_all);
					$('.count_ing').text(items.count_ing);
					$('.count_end').text(items.count_end);
					
					$('.myMainDiv_name').text(items.name);
					$('.myMainDiv_email').text(items.email);
					
				});
				
			
				
			}
		
		}		
	});
});