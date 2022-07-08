<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
			<div id="sellStraight">
        <div class="mt-5 h-14 border-b-2">
          <p class="align-top text-xs font-bold text-black">즉시 판매가</p>
          <p class="float-right text-xl font-semibold">150,000 원</p>
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
            <dd class="float-right inline-block text-sm">선불 · 판매자부담</dd>
          </dl>
        </div>
      <div class="border-t">
        <p class="mt-3 text-sm font-semibold">정산금액</p>
        <button id="sellStraightBtn" class="bg-black w-full  text-white font-semibold h-14 mt-3 rounded-2xl">즉시 판매 계속</button>
      </div>
    </div>
    
    <div id="sellBid">
        <div class="mt-5 h-14 border-b-2">
          <p class="align-top text-xs font-bold text-black">판매 희망가</p>
          <p class="float-right text-xl font-semibold">원</p>
          <input type="text" class="text-right float-right text-xl font-semibold" placeholder="희망가 입력" />
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
        <p class="text-xs">시간</p>
        <div class="text-center">
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400">1일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400">3일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400">7일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400">30일</button>
          <button id="dateBtn" class="dateBtn h-10 w-[138px] mb-5 rounded-2xl border border-gray-400">60일</button>
        </div>

        <div class="border-t">
          <p class="mt-3 text-sm font-semibold">정산금액</p>
          <button id="sellBidBtn" class="mt-3 h-14 w-full rounded-2xl bg-black font-semibold cursor-not-allowed text-white" disabled>즉시 판매 계속</button>
        </div>
      </div>
			</div>
    
   </div>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#sellBid').hide();
})
$('#sellBid_bg').click(function(){
	$('#sellStraight').hide();
	$('#sellBid').show();
	$('#sellBid_bg').removeClass("bg-gray-100 text-black");
	$('#sellBid_bg').addClass("bg-green-300 text-white");
	$('#centerText').text("판매 입찰하기")
	
	$('#sellStraight_bg').removeClass("bg-green-300 text-white")
	$('#sellStraight_bg').addClass("bg-gray-100 text-black");
});

$('#sellStraight_bg').click(function(){
	$('#sellBid').hide();
	$('#sellStraight').show();
	$('#sellStraight_bg').removeClass("bg-gray-100 text-black");
	$('#sellStraight_bg').addClass("bg-green-300 text-white");
	$('#centerText').text("즉시 판매하기")
	$('#sellBid_bg').removeClass("bg-green-300 text-white")
	$('#sellBid_bg').addClass("bg-gray-100 text-black");
})

$('.dateBtn').each(function(index){
    $(this).attr('dateBtn-index',index);
    
  }).click(function(){
    var index = $(this).attr('dateBtn-index');
    
    $('.dateBtn[dateBtn-index='+ index + ']').addClass('border-3 border-black font-semibold');
    $('.dateBtn[dateBtn-index!='+ index + ']').removeClass('border-3 border-black font-semibold');
    $('#sellBidBtn').removeAttr("disabled");
})
 
$('#sellStraightBtn').click(function(){
	location.href="./sellLastPage"	  
})
$('#sellBidBtn').click(function(){
	location.href="./sellLastPage"
})

</script>

