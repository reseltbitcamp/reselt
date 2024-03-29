<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<input type="hidden" id="pid" value='${pid}'/>
<input type="hidden" id="size" value='${size}' />
<input type="hidden" id="bidding_id" value='${id}'>
<div class="mx-auto max-h-[960px] max-w-[780px] bg-white my-[50px] p-8 shadow-md">
      <!-- 제품 정보 화면 -->

  <p class="text-left text-3xl font-semibold text-red-500">구매<span class="text-black font-black">하시기 전에 꼭 확인하세요.</span></p>
  <div class="mt-10 flex items-center">
    <img id="product_img" src="" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
      <p id="product_id"class="font-bold"></p>
      <p id="product_name_eng"></p>
      <p id="product_name_kor" class="text-sm text-gray-400"></p>
      <p id="bidding_size"class="text-sm font-bold"></p>
    </div>
  </div>
    
	<!-- 동의 체크 -->
  <form id="sellAgree">
    <ul class="mt-4 border-t-2 border-t-black">
      <label>
        <li class="flex cursor-pointer items-center border-b border-b-gray-100 py-4">
          <div class="flex-1">
            <p class="-mb-2 text-base">구매하려는 상품이 맞습니다.</p>
            <p class="mt-2 mb-2 text-xs text-gray-400">상품 이미지, 모델번호, 출시일, 상품명, 사이즈를 한 번 더 확인했습니다.</p>
          </div>
          <input id="firstAgree" type="checkbox" class="h-5 w-5" />
        </li>
      </label>

      <label>
        <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
          <div class="flex-1">
            <p class="-mb-2 text-base">국내/해외에서 발매한 정품 · 새상품입니다.</p>
            <p class="mt-2 mb-2 text-xs text-gray-400">모든 구성품이 그대로이며, 한 번도 착용하지 않은 정품 · 새상품입니다. 중고품 판매는 불가능합니다.</p>
          </div>
          <input id="secondAgree" type="checkbox" class="h-5 w-5" />
        </li>
      </label>


      <label>
        <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
          <div class="flex-1">
            <p class="-mb-2 text-base">제조사에서 불량으로 인정하지 않는 기준은 하자로 판단하지 않습니다.</p>
            <p class="mt-2 mb-2 text-xs text-gray-400">박스/패키지와 상품 컨디션에 민감하시다면 검수 기준을 반드시 확인하시기 바랍니다.</p>
            <a class="inline-block text-sm text-blue-400 underline" id="inspectionBtn2">검수기준 보기</a>
          </div>
          <input id="thirdAgree" type="checkbox" class="h-5 w-5" />
        </li>
      </label>

      <label>
        <li class="flex items-center py-4 cursor-pointer">
          <div class="flex-1">
            <p class="-mb-2 text-base">KREAM의 최신 이용정책을 모두 확인하였으며, 판매를 계속합니다.</p>
            <p class="mt-2 mb-2 text-xs text-gray-400">
            건전하고 안전한 거래를 위해 반드시 숙지해야 할 미입고,패널티,부정거래 등의 이용정책을 확인했습니다.
            </p>
            <a class="inline-block text-sm text-blue-400 underline" id="tosBtn">이용정책 보기</a>
          </div>
          <input id="fourthAgree" type="checkbox" class="h-5 w-5" />
        </li>
      </label>
  </ul>

  <div id="buyStraightDiv">
    <div class="mt-5 h-14 border-b-2">
      <p class="align-top text-xs font-bold text-black">판매가</p>
      <p id="bidding_price"class="float-right text-xl font-semibold"></p>
    </div>        
    <div class="mb-9 w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-center itesm text-gray-400">총 결제금액은 다음 화면에서 계산 됩니다.</dt>
      </dl>
    </div>
      <input type="button" value="구매 계속" id="agreeBtn" class="mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled></button>
    </div>
  </form>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/buyAgree.js"></script>


