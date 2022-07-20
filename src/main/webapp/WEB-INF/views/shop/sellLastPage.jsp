<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="mx-auto max-h-[960px] max-w-[780px] px-8 pb-4 pt-2 shadow-md">
  <div class="mt-1 mb-5 flex items-center">
    <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
      <p class="font-bold">DD1391-100</p>
      <p>Nike Dunk Low Retro Black</p>
      <p class="text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
      <p class="text-sm font-bold">275</p>
    </div>
  </div>
</div>

<div class="mx-auto max-h-[960px] max-w-[780px] p-8 shadow-md">
  <div class="pb-3">
    <p class="font-extrabold text-base">판매 정산 계좌</p>
  </div>
  <div class="relative">

  <div>
    <p class="text-xs mt-3">등록된d!</p>
  </div>
  <button class="float-right -mt-5 bg-black align-middle text-white rounded-lg cursor-pointer h-8 text-center px-3 top-1/2 text-xs right-0">계좌 추가</button>
  </div>
</div>

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <h3 class="mb-2 inline-block font-extrabold">반송주소</h3>
  <button class="addAddressBtn float-right mt-2 text-xs text-gray-500">+ 새 주소 추가</button>
  <div class="border-b">
    <div class="float-right mr-9 mt-1 w-6">
      <a href="#" id="addressChangeBtn" class="absolute h-8 w-16 rounded-lg border border-gray-200 text-center">변경</a>
    </div>
    <div>
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">받는분</dt>
      <dd class="block text-sm">양웅비</dd>
    </div>
    <div>
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">연락처</dt>
      <dd class="block text-sm">010-2083-3955</dd>
    </div>
    <div class="mb-3">
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">배송 주소</dt>
      <dd class="block text-sm">서울 강남구 논현로 111길</dd>
    </div>
  </div>


  <div class="flex-initial">
        <h3 class="mb- mt-3 font-extrabold">발송 방법</h3>
        <div class="rounded-lg border-black border flex items-center mt-3">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-y w-full relative p-[9px] flex-1">
            <p class="font-semibold">
              <span>일반배송</span>
              <span class="text-sm font-medium">3000원</span>
            </p>
            <p class="text-sm text-gray-400">착불 발송시 정산금액에서 차감</p>
          </div>
        </div>
      </div>
</div>

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <div id="">
    <h3 class="font-bold">최종 주문 정보</h3>
    <div class="mt-5 h-14 border-b-2">
      <p class="align-top text-xs font-bold text-black">정산 금액</p>
      <p class="float-right text-xl font-semibold text-green-600">167,400 원</p>
    </div>

    <div class="w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-sm">판매가</dt>
        <dd class="float-right font-semibold">150,000원</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">검수비</dt>
        <dd class="float-right">무료</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">수수료</dt>
        <dd class="float-right text-sm">17,400 원</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">배송비</dt>
        <dd class="float-right inline-block text-sm">선불 · 판매자부담</dd>
      </dl>
    </div>
  </div>
</div>

<div id="sellAgree" class="mx-auto mt-4 mb-4 max-h-[960px] max-w-[780px] p-8 shadow-md">
        <ul>
          <label>
            <li class="flex cursor-pointer text-sm items-center border-b border-b-gray-100 py-4">
              <div class="flex-1">
                <p class="-mb-2 text-base">거래가 체결되면 일요일 · 공휴일을 제외하고 48시간 내에 KREAM으로 발송을 완료한 후, 발송정보를 정확히 입력해야 합니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">착불 배송 시 판매 금액에서 차감 정산하며, 미정산 시 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.</p>
              </div>
              <div>
              <input id="firstAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>
	
          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">송장 번호 미기재 · 오입력 시 입고가 진행되지 않으며, 발송 후 5일(일요일·공휴일 제외) 내 미도착은 허위 정보 입력으로 간주하여 미입고 페널티를 부과합니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">앱 알림 해제, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없으며 이로인한 거래 실패는 판매자의 책임입니다.</p>
              </div>
              <div>
              <input id="secondAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>

          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">검수 기준과 페널티 및 이용정책을 다시 한번 확인하였습니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">이용정책 위반 시, 판매 금액의 최대 15.0%의 페널티가 부과됩니다. 페널티 회피 시 이후 거래가 제한되며 별도 고지없이 해당 금액을 결제 시도할 수 있습니다.</p>
              </div>
              <div>
              <input id="thirdAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>

          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">'바로 판매하기'를 선택하시면 즉시 거래가 체결되며, 단순 변심이나 실수에 의한 취소가 불가능합니다.</p>
              </div>
              <div>
                <input id="fourthAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>

          <label>
            <li class="flex items-center py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">판매 조건을 모두 확인하였으며, 거래진행에 동의합니다.</p>
            </div>
            <div>
              <input id="fifthAgree" type="checkbox" class="ml-10 h-5 w-5" />
            </div>
          </li>
          </label>
        </ul>
</div>

<div class="mx-auto max-h-[960px] max-w-[780px] p-8 border-t-2 border-t-gray-200 shadow-md">
  <div class="flex">
    <dt class="float-left block min-w-[70px] font-semibold mb-1 truncate text-base">정산 금액</dt>
    <dd class="mt float m inline pl-1 ml-auto text-xl font-semibold text-green-500">167,400원</dd>
  </div>
  <input type="button" value="결제하기" id="chargeBtn" class="mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled></button>
</div>


<jsp:include page="./shopModal/addressListModal.jsp"></jsp:include>
<jsp:include page="./shopModal/addAddressModal.jsp"></jsp:include>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/sellPage.js"></script>