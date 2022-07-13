//myPage-buying 전체 모달창 
$('.head_product').on('click', function(){
	$('.layer').fadeIn();
});


//모달창 인덱스 받아서 인덱스 값 보내기
$('.status_link').on('click', function(){
	var index = $(this).index();
	var index_value = $(this).attr('id');
	
	if($(this).hasClass('clickEvent')){
		$('.status_link').removeClass('clickEvent');     
	} else {
		$('.status_link').removeClass('clickEvent');
      $(this).addClass('clickEvent');
  }
	$('.layer').fadeOut();
	$('.btn_filter').text(index_value);
	
});


//x 버튼 누르면 사라짐
$('.btn_layer_close').on('click', function(){
	$('.layer').fadeOut();
});


//페이지 새로고침할 시 데이터 뿌리기
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/getBuying',
		dataType: 'json',
		success: function(list) {
			
			
			if (list == null) {
				$('.not_empty_area_1').addClass('removeEvent');
				$('.empty_area_1').removeClass('removeEvent');
			} else {
				$('.not_empty_area_1').removeClass('removeEvent');
				$('.empty_area_1').addClass('removeEvent');
				

				$.each(list, function(index, items){
					$('.wish_list_1').append($('<li/>', {
						class: 'wish_list_inner'
					}).append($('<div/>', {
						class: 'wish_block'
					}).append($('<div/>', {
						class: 'wish_product'
					}).append($('<div/>', {
						class: 'product_box'
					}).append($('<img/>', {
						class: 'product_img',
						text: items.image_url
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
						text: items.brand_name
					})).append($('<span/>', {
						class: 'brand_size',
						text: items.product_size_id
						
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
						text: items.name
					})))
					
					)
					
					)
					
					)
					)
				
					
				});
			}
			
			
			
		},
		error: function(error) {
			console.log(error)
		}

	});

});	



/*구간 누를 때 요소 바뀜*/
$('.buying_btn_1').on('click', function(){
	$('.buying_btn_2').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_3').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
	/*ajax 넘어오는 데이터 있으면 empty_area가 remove, 없으면 not_empty_area가 remove*/
	$('.empty_area_1').removeClass('.removeEvent');
	$('.not_empty_area_1').removeClass('removeEvent');
	$('.empty_area_2').addClass('.removeEvent');
	$('.not_empty_area_2').addClass('removeEvent');
	$('.empty_area_3').addClass('.removeEvent');
	$('.not_empty_area_3').addClass('removeEvent');
	
});

$('.buying_btn_2').on('click', function(){
	$('.buying_btn_1').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_3').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
	$('.empty_area_1').addClass('.removeEvent');
	$('.not_empty_area_1').addClass('removeEvent');
	/*ajax 넘어오는 데이터 있으면 empty_area가 remove, 없으면 not_empty_area가 remove*/
	$('.empty_area_2').removeClass('.removeEvent');
	$('.not_empty_area_2').removeClass('removeEvent');
	$('.empty_area_3').addClass('.removeEvent');
	$('.not_empty_area_3').addClass('removeEvent');
});

$('.buying_btn_3').on('click', function(){
	$('.buying_btn_1').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_2').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
	$('.empty_area_1').addClass('.removeEvent');
	$('.not_empty_area_1').addClass('removeEvent');
	$('.empty_area_2').addClass('.removeEvent');
	$('.not_empty_area_2').addClass('removeEvent');
	/*ajax 넘어오는 데이터 있으면 empty_area가 remove, 없으면 not_empty_area가 remove*/
	$('.empty_area_3').removeClass('.removeEvent');
	$('.not_empty_area_3').removeClass('removeEvent');
});

