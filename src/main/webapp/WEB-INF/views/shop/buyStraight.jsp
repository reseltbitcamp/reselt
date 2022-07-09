<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="mt-5 mb-24">
    <div class="main-content mx-auto bg-white pb-8 px-8 pt-2 shadow-md max-w-[780px] max-h-[960px]">
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

      <div class="w-auto">
        <ul class="flex h-20 w-full border-t">
          <li class="mx-4 mb-4 mt-5 h-10 w-80 border-r border-r-gray-400 text-center align-top">
            <p class="text-xs text-gray-400">즉시 구매가</p>
            <span class="font-semibold">150,000원</span>
          </li>

          <li class="mx-4 mb-4 mt-5 h-10 w-80 text-center">
            <p class="text-xs text-gray-400">즉시 판매가</p>
            <span class="font-semibold">150,000원</span>
          </li>
        </ul>

        <div>
          <ul class="flex h-12 rounded-3xl border bg-gray-100 p-1 text-center">
            <li id="buyBid_bg" class="w-1/2 rounded-3xl p-2 text-center align-middle text-sm">
              <a id="buyBid" href="#" class="">판매 입찰</a>
            </li>
            <li id="buyStraight_bg" class="w-1/2 rounded-3xl bg-red-500 p-2 text-center align-middle text-sm font-medium text-white">
              <a id="buyStraight" href="#" class="">즉시 구매</a>
            </li>
          </ul>
        </div>
        
			<div id="buyStraightDiv">
        <div class="mt-5 h-14 border-b-2">
          <p class="align-top text-xs font-bold text-black">즉시 판매가</p>
          <p class="float-right text-xl font-semibold">150,000 원</p>
        </div>
   			
   			<div class="mb-9 w-auto">
          <dl class="flex justify-between">
            <dt class="mt-2 text-center itesm text-gray-400">총 결제금액은 다음 화면에서 계산 됩니다.</dt>
          </dl>
        </div>

	      <div id="buyStraightBuy" class="border-t">
	        <p class="mt-3 text-sm font-semibold inline-block">총 결제 금액</p>
	        <p class="text-gray-400 inline-block float-right">다음 화면에서 확인 </p>
	        <button id="straightBuyBtn" class="bg-black w-full  text-white font-semibold h-14 mt-3 rounded-2xl">즉시 구매 계속</button>
	      </div>
      </div>
			

        <div id="buyBidDiv" class="border-t">
	        <div class="mt-5 h-14 border-b-2">
	          <p class="align-top text-xs font-bold text-black">판매 희망가</p>
	          <p class="float-right text-xl font-semibold">원</p>
	          <input id="buyBidPrice" type="text" class="text-right float-right text-xl font-semibold" placeholder="희망가 입력" />
	        </div>
        
          <p class="mt-3 mb-5 text-sm font-semibold">입찰 마감기한</p>
          <p id="bidDate" class="text-xs">3일(2022/07/07)</p>
          <div class="text-center">
            <button id="dateBtn1" class="dateBtn h-10 mb-5 w-[138px] rounded-2xl border border-gray-400">1일</button>
            <button id="dateBtn3" class="dateBtn h-10 mb-5 w-[138px] rounded-2xl border border-gray-400">3일</button>
            <button id="dateBtn7" class="dateBtn h-10 mb-5 w-[138px] rounded-2xl border border-gray-400">7일</button>
            <button id="dateBtn30" class="dateBtn h-10 mb-5 w-[138px] rounded-2xl border border-gray-400">30일</button>
            <button id="dateBtn60" class="dateBtn h-10 mb-5 w-[138px] rounded-2xl border border-gray-400">60일</button>
          </div>
          
          <div id="bidBuy" class="border-t">
            <p class="mt-3 text-sm font-semibold inline-block">총 결제 금액</p>
            <p class="text-gray-400 inline-block float-right">다음 화면에서 확인 </p>
            <input id="buyBidBtn" type="button" class="w-full text-white font-semibold cursor-pointer disabled:cursor-not-allowed h-14 mt-3 rounded-2xl bg-black disabled:bg-gray-100" value="구매 입찰 계속" disabled>
          </div>
        </div>
			</div>
    </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
  $('#buyBidDiv').hide();
  $('.dateBtn').each(function(index){
	    $(this).attr('dateBtn-index',index);
	    
	  }).click(function(){
	    var index = $(this).attr('dateBtn-index');
	    $('.dateBtn[dateBtn-index='+ index + ']').addClass('border-3 border-black font-semibold');
	    $('.dateBtn[dateBtn-index!='+ index + ']').removeClass('border-3 border-black font-semibold');
	    console.log($('#buyBidPrice').val())
	    
	    if($('#buyBidPrice').val() != "") {
	    	$('#buyBidBtn').removeAttr("disabled");   	
	    } else {
	    	$('#buyBidBtn').attr("disabled", true);
	    };
	    
	})
	$('.dateBtn[dateBtn-index=3]').addClass('border-3 border-black font-semibold');
})

$('#buyBidPrice').keyup(function(){
	if($('#buyBidPrice').val() != "") {
    	$('#buyBidBtn').removeAttr("disabled");   	
    } else {
    	$('#buyBidBtn').attr("disabled", true);
    };
	
})


$('#buyBid_bg').click(function(){
  $('#buyStraightDiv').hide()
  $('#buyStraight_bg').removeClass('bg-red-500 text-white')
  $('#buyBidPrice').val("");
  
  $('#buyBid_bg').addClass("bg-red-500 text-white")
  $('#buyBidDiv').show();
  $('#bidDiv').show();
	$('#centerText').text("구매 입찰하기")
});

$('#buyStraight_bg').click(function(){
  $('#buyStraightDiv').show()
  $('#buyStraight_bg').addClass('bg-red-500 text-white')
  $('#buyBid_bg').removeClass("bg-red-500 text-white")
  $('#buyBidDiv').hide();
  $('#centerText').text("즉시 구매하기")
})

 
$('#straightBuyBtn').click(function(){
	location.href="./buyLastPage"	  
})
$('#bidBuyBtn').click(function(){
	location.href="./buyLastPage"
})

</script>
</html>
