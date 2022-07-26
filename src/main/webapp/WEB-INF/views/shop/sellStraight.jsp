<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content mx-auto my-5 max-h-[960px] max-w-[780px] bg-white px-8 pb-8 pt-2 shadow-md">
  <!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
  <div class="mt-1 mb-5 flex items-center">
    <img id="img_file" src="" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
          <input type="hidden" id="pidInput" value="${param.pid }">
          <input type="hidden" id="sizeInput" value="${param.size }">
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
        <p class="text-xs text-gray-400">최소 판매가</p>
        <span class="font-semibold">30,000원</span>
      </li>
    </ul>
  </div>

  <div id="sellBidDiv">
    <div class="sellBidPriceText mt-5 h-14 border-b-2">
      <p class="sellBidPriceText align-top text-xs font-bold text-black">판매 희망가</p>
      <p class="float-right text-xl font-semibold">원</p>
      <input id="sellBidPrice" type="number" class="sellBidPriceText float-right mr-1 text-right text-xl font-semibold" placeholder="희망가 입력" />
      <div id="sellBidPriceDiv" class="sellBidPriceText text-xs text-red-600"></div>
    </div>

    <div class="mb-9 w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">검수비</dt>
        <dd class="float-right">-</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">수수료</dt>
        <dd class="float-right text-sm">-</dd>
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
		data: {'pid' : $('#pidInput').val() },
		success : function(data){
			//alert(JSON.stringify(data))
			console.log(JSON.stringify(data))
			const imgFiles = data.img_file.split(",");
			$('#product_id').html(data.product_id);
			$('#product_name_eng').html(data.product_name_eng);
			$('#product_name_kor').html(data.product_name_kor);
			$('#img_file').attr('src', 'http://3.39.241.175:6753/upload/resources/img/product/'  + $('#pidInput').val() + '/' + imgFiles[0]);;
			$('#released_price').html(data.released_price.toLocaleString());

			
		},
		error : function(e){
			console.log(e)
		}
		
	});

	});
</script>
