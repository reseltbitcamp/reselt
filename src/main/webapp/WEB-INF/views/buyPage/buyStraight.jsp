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

      <div class="w-auto">
        <ul class="flex h-20 w-full border-t">
          <li class="mx-4 mb-4 mt-5 h-10 w-80 border-r border-r-gray-400 text-center align-top">
            <p class="text-xs text-gray-400">즉시 구매가</p>
            <span class="font-medium">150,000원</span>
          </li>

          <li class="mx-4 mb-4 mt-5 h-10 w-80 text-center">
            <p class="buyStraight text-xs text-gray-400">즉시 판매가</p>
            <span class="inline-block font-medium">150,000원</span>
          </li>
        </ul>

        <div>
          <ul class="flex h-12 rounded-3xl border bg-gray-100 p-1 text-center">
            <li class="w-1/2 rounded-3xl p-2 text-center align-middle text-sm">
              <a id="buyBid" href="#" class="">판매 입찰</a>
            </li>
            <li class="w-1/2 rounded-3xl bg-red-500 p-2 text-center align-middle text-sm font-medium text-white">
              <a id="buyStraight" href="#" class="">즉시 구매</a>
            </li>
          </ul>
        </div>

        <div class="mt-5 h-14 border-b-2">
          <p class="align-top text-xs font-bold text-black">즉시 구매가</p>
          <p class="float-right text-xl font-semibold">150,000 원</p>
        </div>
      </div>

        <div class="mb-9 w-auto">
          <dl class="flex justify-between">
            <dt class="mt-2 text-center itesm text-gray-400">총 결제금액은 다음 화면에서 계산 됩니다.</dt>
          </dl>
        </div>

      <div class="border-t">
        <p class="mt-3 text-sm font-semibold inline-block">총 결제 금액</p>
        <p class="text-gray-400 inline-block float-right">다음 화면에서 확인 </p>
        <button href="#" class="bg-black w-full  text-white font-semibold h-14 mt-3 rounded-2xl">즉시 구매 계속</button>
      </div>
    </div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#buyBid').click(function(){

});


</script>
</html>
