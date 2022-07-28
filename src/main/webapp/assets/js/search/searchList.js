function getSearchList(){
  //console.log("제발 와주세요 ㅠ");
  //$('.brand_list').hide()
	
  $.ajax({
    type: 'post',
    url: '../search/searchProductList',
    dataType: 'json',
    success: function(data){

      $.each(data.list, function(index, items){

        $('<div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]"><a class="suggest_link align-center h-[100%] text-inherit flex" href="/ReseltProject/shop/shopDetail?pid='
	            +items.pid+'"><div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block"><img class="thumb_img w-[100%] h-[100%]" src="http://3.39.241.175:6753/upload/resources/img/product/'
	            +items.pid+'/'
	            +items.img_file+'"></img></div><div class="suggest_info my-auto"><p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">&nbsp;'
	            +items.product_name_eng+'</p><p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]" id="product_name_kor">&nbsp;'
	            +items.product_name_kor+'</p></div><br>&nbsp;')
	            .appendTo($('.suggest_list'));
	            //console.log(items.img_file);
      }); //each
      
    },
    error: function(err){
      console.log(err);
    }
  });
}

//Auto Complete
$(document).ready(function(){
  $('.input_search').on("keyup", function(){
    var value = $(this).val().toLowerCase();
    $('.suggest_item').filter(function(){
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});


//검색

$('.searchBtn').click(function(){
	if($('#keyword').val() == '') {
		alert('검색어를 입력하세요.');
	}
	else{
		//location.href='/ReseltProject/shop/keyword='+ $('#keyword').val();
		location.href='/ReseltProject/shop/search?keyword='+ $('#keyword').val();
		alert($('#keyword').val());
	}
});

////search
//function keywordSearch(){
//	//alert($('#keyword').val())
//	
//	var params = {};
//	params.keyword = $('#keyword').val();
//	params.pg = $('#pg').val();
//	
//	$.ajax({
//		type: 'post',
//		url: '../shop/keywordSearch',
//		data: params, //keyword, pg
//		dataType: 'json',
//		success: function(data){
//			alert(JSON.stringify(data));
//			
//			alert($('#keyword').val())
//			alert($('#pg').val())
//			
//			//테이블에서 기존 목록 제거
//// 			$('#productList:gt(0)').remove();
// 			$('#productList').children().remove();
//			
//			$.each(data.list, function(index, items){
//       	 
//			alert('오는지?')
//	          $('<div><button type="button"><a href="/ReseltProject/shop/shopDetail?pid='
//	          +items.pid+'"><div class="bg-[#ebf0f4] w-60 h-60 rounded-xl"><img class="w-full object-contain min-h-0 h-full" src="http://3.39.241.175:6753/upload/resources/img/product/'
//	          +items.pid+'/'
//	          +items.img_file+'"></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
//	          +items.brand_name+'</p><div class="h-20 w-60"><p class="text-left text-[14px]">&nbsp;' //여기 div에 name?
//	          +items.product_name_eng+'</p><p class="text-left text-[13px] text-slate-400" >&nbsp;'
//	          +items.product_name_kor+'</p></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
//	          +items.released_price.toLocaleString('en-US')+'원'+'</p><p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p></a></button><a href="#"><div class="h-6 w-24 grid grid-cols-4 content-start"><button id="bookmark" class="w-1 h-1 py-1"  data-modal-toggle="popup-modal"><svg id="bookmarkColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25"><path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_bookmark">'
//	          +items.product_bookmark+'</p><a href="/ReseltProject/style/styleList"><button id="smile" class="w-1 h-1 py-1"><svg id="smileColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" click:viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25" href="ReseltProject/"><path stroke-linecap="round" stroke-linejoin="round" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_likes">'
//	          +items.product_likes+'</p></div>')
//	          .appendTo($('#productList'));
//	          
//	          //console.log(items.img_file);
//	       });//each
//		
//	       paging();   
//	       Scroll();
//		},
//		error: function(e){
//		console.log(e);
//		} 
//	});
//}



