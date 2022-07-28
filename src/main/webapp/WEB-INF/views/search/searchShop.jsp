<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<input type="text" id="pg" value="${requestScope.pg }" class="invisible">
<form class="search_top pt-[40px] px-[40px] pb-0 bg-[#fff] z-[100]">
<!-- pg -->
<input type="text" id="pg" value="${requestScope.pg }" class="invisible">
  <div class="top_box my-0 mx-auto max-w-[1200px]">
    <div>
      <div class="search_title_input pb-[36px] items-center justify-center pt-0 px-[10%] relative flex">
        <div class="search_area">
          <div class="search w-[500px] flex-none order-0 grow my-0 mx-[8px] pb-[16px] border-b-[3px] border-b-solid border-b-[#000]">
            <input type="text" value="${keyword }" name="keyword" id="keyword" class="input_search_top overflow-hidden text-ellipsis whitespace-nowrap text-[24px] font-bold text-[#000] leading-[29px] py-0 pr-[13px] pl-[1px] w-[468px] tracking-[-.015em]">
            <button class="btn float-right w-[20px] h-[20px] mt-[5.5px] mr-[3px]">검색</button>
            <button class="btn_search_delete float-right w-[20px] h-[20px] mt-[5.5 ] mr-[3px]">x</button>
          </div>
        </div>
      </div>
    </div>
    <div class="quick_filter">럭셔리 신발 어쩌구</div>
  </div>
</form>

<jsp:include page="../shop/main/shopmain.jsp"></jsp:include>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/search/searchList.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/shopMain.js"></script>
<script type="text/javascript">
window.onload = function(){
	$('#productList').children().eq(0).prop('href' , '/ReseltProject/shop/search?keyword='+$('#keyword').val())
}
// $(function(){
//   keywordSearch();
// });

// window.onload=function(){
// 	//alert($('#keyword').val())
// 	$.ajax({
// 		type: 'post',
// 		url: '../search/keywordSearch',
// 		data: $('#keyword').val(), //keyword
// 		dataType: 'json',
// 		success: function(data){
// 			//alert(JSON.stringify(data));
// 			alert($('#keyword').val())
// 			alert($('#productList').val())
			
// 			//테이블에서 기존 목록 제거
// // 			$('#productList:gt(0)').remove();
//  			$('#productList').empty();
			
// 			$.each(data.list, function(index, items){
       	 
// 			alert('오는지?')
// 	          $('<div><button type="button"><a href="/ReseltProject/shop/shopDetail?pid='
// 	          +items.pid+'"><div class="bg-[#ebf0f4] w-60 h-60 rounded-xl"><img class="w-full object-contain min-h-0 h-full" src="http://3.39.241.175:6753/upload/resources/img/product/'
// 	          +items.pid+'/'
// 	          +items.img_file+'"></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
// 	          +items.brand_name+'</p><div class="h-20 w-60"><p class="text-left text-[14px]">&nbsp;' //여기 div에 name?
// 	          +items.product_name_eng+'</p><p class="text-left text-[13px] text-slate-400" >&nbsp;'
// 	          +items.product_name_kor+'</p></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
// 	          +items.released_price.toLocaleString('en-US')+'원'+'</p><p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p></a></button><a href="#"><div class="h-6 w-24 grid grid-cols-4 content-start"><button id="bookmark" class="w-1 h-1 py-1"  data-modal-toggle="popup-modal"><svg id="bookmarkColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25"><path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_bookmark">'
// 	          +items.product_bookmark+'</p><a href="/ReseltProject/style/styleList"><button id="smile" class="w-1 h-1 py-1"><svg id="smileColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" click:viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25" href="ReseltProject/"><path stroke-linecap="round" stroke-linejoin="round" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_likes">'
// 	          +items.product_likes+'</p></div>')
// 	          .appendTo($('#productList'));
	          
// 	          //console.log(items.img_file);
// 	       });//each
		
// //       paging();   
// //       Scroll();
// 		},
// 		error: function(e){
// 		console.log(e);
// 		} 
// 	});
// }


</script>