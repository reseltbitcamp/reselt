<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content mx-auto my-5 max-h-[960px] max-w-[780px] bg-white px-8 pb-8 pt-2 shadow-md">
  <!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
  <div class="mt-1 mb-5 flex items-center">
    <img id="product_img" name="product_img" src="" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
  	<form action="./sellLastPage" method="post" id="sellStraightForm">
          <input type="hidden" id="pid" name="pid" value="${param.pid }">
          <input type="hidden" id="size" name="size" value="${param.size }">
          <input type="hidden" id="sellBidPriceHidden" name="sellBidPrice" >
    </form>      
          <p id="product_id" class="font-bold"></p>
          <p id="product_name_eng"></p>
          <p id="product_name_kor" class="text-sm text-gray-400"></p>
          <p class="text-sm font-bold">${param.size }</p>
    </div>
  </div>

  <div>
    <ul class="flex h-20 w-full border-y">
      <li class="mx-4 mb-4 mt-5 h-10 w-80 border-r border-r-gray-400 text-center align-top">
        <p class="text-xs text-gray-400">발매가</p>
        <span id="released_price" class="font-semibold"></span>
      </li>

      <li class="mx-4 mb-4 mt-5 h-10 w-80 text-center">
        <p class="text-xs text-gray-400">최대 판매가</p>
        <span id="bidding_price"  class="font-semibold">-원</span>
      </li>
    </ul>
  </div>

  <div id="sellBidDiv">
    <div class="sellBidPriceText mt-5 h-14 border-b-2">
      <p class="sellBidPriceText align-top text-xs font-bold text-black">판매 희망가</p>
      <p class="float-right text-xl font-semibold">원</p>
      <input id="sellBidPrice" type="number" step="1000" class="sellBidPriceText float-right mr-1 text-right text-xl font-semibold" placeholder="희망가 입력" />
      <div id="sellBidPriceDiv" class="sellBidPriceText text-xs text-red-600"></div>
    </div>

    <div class="mb-9 w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">검수비</dt>
        <dd class="float-right">무료</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">수수료</dt>
        <dd id="tax" class="float-right text-sm">-</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">배송비</dt>
        <dd class="inline-block text-right text-sm">선불 · 판매자부담</dd>
      </dl>
    </div>

    <div class="border-t">
      <button id="sellBidBtn" class="mt-3 h-14 w-full rounded-2xl bg-black font-semibold text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled>판매 입찰 계속</button>
    </div>
  </div>
 
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/sellPage.js"></script>
<script>
$(function(){
	//alert('hi');	
	//sellSize
	$.ajax({
		type: 'post',
		url: '/ReseltProject/shop/getProductDTO',
		data: {'pid' : $('#pid').val() },
		success : function(data){
			//alert(JSON.stringify(data))
			console.log(JSON.stringify(data))
			const imgFiles = data.img_file.split(",");
			$('#product_id').html(data.product_id);
			$('#product_name_eng').html(data.product_name_eng);
			$('#product_name_kor').html(data.product_name_kor);
			$('#product_img').attr('src', 'http://3.39.241.175:6753/upload/resources/img/product/'  + $('#pid').val() + '/' + imgFiles[0]);;
			$('#released_price').html(data.released_price.toLocaleString() + ' 원');
			$.ajax({
			    type: "post",
			    url: "/ReseltProject/shop/getProductPriceMax",
			    data: 'pid='+$('#pid').val(),
			    success:function(data){
			      	console.log(data.list);
			    	$.each(data.list, function(index, data){
					if($('#size').val() == data.product_size) {
						$('#bidding_price').html(data.bidding_price.toLocaleString() + ' 원');
					}
			      })
			    }, error:function(err){
			       console.log(err)
			    }
			   });//ajax
			
		},
		error : function(e){
			console.log(e)
		}
		
	});

	});
	
</script>
