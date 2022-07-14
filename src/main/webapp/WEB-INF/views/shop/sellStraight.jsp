<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
</style>

    <div class="main-content mx-auto bg-white pb-8 px-8 pt-2 shadow-md max-w-[780px] max-h-[960px] my-5">
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

        <ul class="flex h-20 w-full border-t">
          <li class="mx-4 mb-4 mt-5 h-10 w-80 border-r border-r-gray-400 text-center align-top">
            <p class="text-xs text-gray-400">즉시 구매가</p>
            <span class="font-medium">150,000원</span>
          </li>

          <li class="mx-4 mb-4 mt-5 h-10 w-80 text-center">
            <p class="sellStraight text-xs text-gray-400">즉시 판매가</p>
            <span class="inline-block font-medium">150,000원</span>
          </li>
        </ul>

        <div>
          <ul class="flex h-12 rounded-3xl border bg-gray-100 p-1 text-center">
            <li id="sellBid_bg" class="w-1/2 rounded-3xl p-2 text-center align-middle text-sm">
              <a href="#" class="">판매 입찰</a>
            </li>
            <li id="sellStraight_bg" class="w-1/2 rounded-3xl bg-green-300 p-2 text-center align-middle text-sm font-medium text-white">
              <a href="#" class="">즉시 판매</a>
            </li>
          </ul>
        </div>
			<div id="sellStraightDiv">
        <div class="mt-5 h-14 border-b-2">
          <p class="align-top text-xs font-bold text-black">즉시 판매가</p>
          <p class="float-right text-xl font-semibold">150,000 원</p>
        </div>

        <div class="mb-9 w-auto">
          <dl class="flex justify-between">
            <dt class="mt-2 text-xs text-gray-400">검수비</dt>
            <dd class="float-right">무료</dd>
          </dl>

          <dl class="flex justify-between">
            <dt class="mt-2 text-xs text-gray-400">수수료</dt>
            <dd class="float-right text-sm">무료</dd>
          </dl>

          <dl class="flex justify-between">
            <dt class="mt-2 text-xs text-gray-400">배송비</dt>
            <dd class="float-right inline-block text-sm">선불 · 판매자부담</dd>
          </dl>
        </div>
      <div class="border-t">
        <p class="mt-3 text-sm font-semibold">정산금액</p>
        <button id="sellStraightBtn" class="bg-black w-full  text-white font-semibold h-14 mt-3 rounded-2xl">즉시 판매 계속</button>
      </div>
    </div>
    
    <div id="sellBidDiv">
        <div class="sellBidPriceText mt-5 h-14 border-b-2">
          <p class="sellBidPriceText align-top text-xs font-bold text-black">판매 희망가</p>
          <p class="float-right text-xl font-semibold">원</p>
          <input id="sellBidPrice" type="number" class="sellBidPriceText text-right float-right text-xl font-semibold mr-1" placeholder="희망가 입력" />
          <div id="sellBidPriceDiv" class="sellBidPriceText text-red-600 text-xs"></div>
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
        <p class="my-5 text-sm font-semibold">입찰 마감기한</p>
        <p id="bidTime" class="text-xs">시간</p>
        <div class="text-center">
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400" value="1일">1일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400" value="3일">3일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400" value="7일">7일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400" value="30일">30일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400" value="60일">60일</button>
        </div>

        <div class="border-t">
          <p class="mt-3 text-sm font-semibold">정산금액</p>
          <button id="sellBidBtn" class="mt-3 h-14 w-full rounded-2xl bg-black font-semibold disabled:cursor-not-allowed text-white disabled:bg-gray-100" disabled>판매 입찰 계속</button>
        </div>
      </div>
		</div>
    
   </div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#sellBidDiv').hide();
})

$('#sellBid_bg').click(function(){
	
	
	$('#sellStraightDiv').hide();
	$('#sellBidDiv').show();
	$('#sellBid_bg').removeClass("bg-gray-100 text-black");
	$('#sellBid_bg').addClass("bg-green-300 text-white font-semibold");
	$('#centerText').text("판매 입찰하기")
	$('#sellBidBtn').attr("disabled", true)
	$('#sellStraight_bg').removeClass("bg-green-300 text-white")
	$('#sellStraight_bg').addClass("bg-gray-100 text-black");
	 
	$('#sellBidPrice').keyup(function(){
		var check = $('#sellBidPrice').val()%1000;
		if((check == 0) && ($('#sellBidPrice').val() > 30000)){
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
	
	$('.dateBtn').each(function(index){
		    $(this).attr('dateBtn-index',index);
		    
		  }).click(function(){
		    var index = $(this).attr('dateBtn-index');
		    $('.dateBtn[dateBtn-index='+ index + ']').addClass('border-3 border-black font-semibold');
		    $('#bidTime').html($('.dateBtn[dateBtn-index='+ index + ']').val());
		    $('.dateBtn[dateBtn-index!='+ index + ']').removeClass('border-3 border-black font-semibold');  
		})
		$('.dateBtn[dateBtn-index=3]').addClass('border-3 border-black font-semibold');
	
});

$('#sellStraight_bg').click(function(){
	$('#sellBidDiv').hide();
	$('#sellStraightDiv').show();
	$('#sellStraight_bg').removeClass("bg-gray-100 text-black");
	$('#sellStraight_bg').addClass("bg-green-300 text-white font-semibold");
	$('#centerText').text("즉시 판매하기")
	$('#sellBid_bg').removeClass("bg-green-300 text-white font-semibold")
	$('#sellBid_bg').addClass("bg-gray-100 text-black");
	$('#sellBidPrice').val("");
})
 
$('#sellStraightBtn').click(function(){
	location.href="./sellLastPage"	  
})
$('#sellBidBtn').click(function(){
	location.href="./sellLastPage"
})

</script>

