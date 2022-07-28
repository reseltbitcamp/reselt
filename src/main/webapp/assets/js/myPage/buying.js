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



/*페이지 조회 (정렬, 기간, 상태)*/
//footsize, product_name_eng, img_file, created_at, status, 전체 수, 진행중 수, 종료 수
//buying_btn id값이 전체면, 진행중이면, 종료면, 즉 null이 아니면 where status 
//position_item id값이 구매면, 판매면, 즉 null이 아니면 where position 
//created_at value값이 있으면, 즉 null이 아니면 between 
function buying_list_btn() {
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/buyingList',
		data: {
			"status": $('.tab_on').attr('id'),
			"position": $('.position_a').text(),
			"created_at_start": $('.created_at_start').val(),
			"created_at_end": $('.created_at_end').val()
			}, 
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
					
				});
				
			
				
			}
			
			
			
		},
		error: function(error) {
			console.log(error)
		}

	});

};	


/*로딩*/
$(document).ready(function(){
	buying_list_btn();
});


/*구간 누를 때 요소 바뀜*/
$('.buying_btn_1').on('click', function(){
	$('.buying_btn_2').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_3').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
});

$('.buying_btn_2').on('click', function(){
	$('.buying_btn_1').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_3').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
});

$('.buying_btn_3').on('click', function(){
	$('.buying_btn_1').children('.tab_link').removeClass('tab_on');
	$('.buying_btn_2').children('.tab_link').removeClass('tab_on');
	$(this).children('.tab_link').addClass('tab_on');
	
});













