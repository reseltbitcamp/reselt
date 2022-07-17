<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
  input::-webkit-outer-spin-button,
  input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
  }
</style>

<div class="main-content mx-auto my-5 max-h-[960px] max-w-[780px] bg-white px-8 pb-8 pt-2 shadow-md">
  <!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
  <div class="mt-1 mb-5 flex items-center">
    <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
      <p class="font-bold">DD1391-100</p>
      <p>Nike Dunk Low Retro Black</p>
      <p class="text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
      <p class="text-sm font-bold">275</p>
    </div>
  </div>

  <div>
    <ul class="flex h-20 w-full border-y">
      <li class="mx-4 mb-4 mt-5 h-10 w-80 border-r border-r-gray-400 text-center align-top">
        <p class="text-xs text-gray-400">발매가</p>
        <span class="font-semibold">150,000원</span>
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
<script type="text/javascript">
$('#sellBidPrice').keyup(function(){
	var check = $('#sellBidPrice').val()%1000;
	if((check == 0) && ($('#sellBidPrice').val() >= 30000)){
		console.log(check)
		$('#sellBidPriceDiv').html("");
		console.log(check)
    $('.sellBidPriceText').removeClass("text-red-600 border-red-600");
		$('#sellBidBtn').removeAttr("disabled");
	} else {
		$('#sellBidPriceDiv').html("30000원 이상 부터 천원단위로 입력하세요");
		 $('.sellBidPriceText').addClass("text-red-600 border-red-600");
 	   $('#sellBidBtn').attr("disabled", true);
	}
})    
	
$('#sellBidBtn').click(function(){
	location.href="./sellLastPage"
})

</script>

