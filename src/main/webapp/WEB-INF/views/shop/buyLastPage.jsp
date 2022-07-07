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

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <h3 class="mb-2 inline-block font-extrabold">배송주소</h3>
  <button class="float-right mt-2 text-xs text-gray-500">+ 새 주소 추가</button>

  <div class="border-b">
    <div class="float-right mr-9 mt-1 w-6">
      <a href="#" class="absolute h-8 w-16 rounded-lg border border-gray-200 text-center">변경</a>
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

  <div>
    <h3 class="mb-2 mt-3 inline-block font-extrabold">배송 방법</h3>
    <div class="rounded-lg border border-gray-300">
      <div class="inline-block"><img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-12 inline-block"></div>
      <div class="inline-block">
        <p class="text-sm font-semibold">일반배송</p>
        <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
      </div>
    </div>
  </div>
</div>

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <div id="">
    <h3 class="font-bold">최종 주문 정보</h3>
    <div class="mt-5 h-14 border-b-2">
      <p class="align-top text-xs font-bold text-black">총 결제 금액</p>
      <p class="float-right text-xl font-semibold text-red-600">167,400 원</p>
    </div>

    <div class="w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-sm">즉시 구매가</dt>
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

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <div class="mb-3">
    <h3 class="font-bold">결제 방법</h3>
  </div>

  <div class="flex">
    <dt class="float-left block min-w-[70px] mb-1 truncate text-sm text-gray-500">간편 결제</dt>
    <dd class="mt text-xs inline ">일시불</dd>
    <dd class="mt float m inline pl-1 ml-auto text-xs text-gray-400">+ 새 카드 추가</dd>
  </div>

  <div class="relative mb-4 cursor-pointer">
    <a class="flex h-14 w-full items-center rounded-lg border border-gray-200 text-gray-400">카드를 등록해주세요 <span class="text-sm text-gray-400 font-bold"> ></span>
    </a>
  </div>

  <div class="block cursor-pointer">
    <dt class="float-left block min-w-[70px] truncate text-sm text-gray-500">일반 결제</dt>
    <dd class="mt block text-xs text-gray-400">일시불 · 할부</dd>
  </div>

  <div class="flex flex-wrap justify-between float-left">
    <div class="flex h-full text-sm items-center cursor-pointer mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <div class="pr-2">
      <p class="ml-2">신용/체크카드</p>
      </div>
    </div>
    
    <div class="flex h-full text-sm items-center cursor-pointer mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <div>
      <p class="ml-2 block">계좌이체</p>
      <p class="ml-2 text-xs text-red-500 block">최대 5만포인트 적립</p>
      </div>
    </div>

    <div class="flex h-full text-sm cursor-pointer items-center mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <p class="ml-2">네이버페이</p>
      <img src="https://kream.co.kr/_nuxt/img/buy_pay_npay.425fb05.png" class="w-12 ml-auto mr-2"></img>
    </div>

    <div class="flex h-full cursor-pointer text-sm items-center mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <p class="ml-2">카카오페이</p>
      <img src="https://kream.co.kr/_nuxt/img/buy_pay_kakaopay.b4ed775.png"class="w-12 ml-auto mr-2"></img>
    </div>

    <div class="flex h-full cursor-pointer text-sm items-center mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <p class="ml-2">토스</p>
      <img src="https://kream.co.kr/_nuxt/img/buy_pay_tosspay.0dabd99.png"class="w-12 ml-auto mr-2"></img>
    </div>

    <div class="flex cursor-pointer h-full text-sm items-center mb-2 basis-[49%] rounded-xl border min-h-[60px] border-gray-200">
      <p class="ml-2">페이코</p>
      <img src="https://kream.co.kr/_nuxt/img/buy_pay_payco.af9c8b7.png"class="w-12 ml-auto mr-2"></img>
    </div>
  </div>

  <div class="inline-block w-full">
    <div class="border-b-[1px] border-gray-200 mt-2">
      <p class="text-xs">결제 혜택</p>
    </div>
    <div>
      <ul>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMjA2MTZfMTE5/MDAxNjU1MzkxNTE5Mjg2.QP9CB9xrNaPm4gSffUbHuPZXgC9Cu5sOic5zsDucNSwg.sgZqI0kBmJo7WdILHaEdmER13nI-ZsHdEj2EcF6gd8Yg.PNG/d_823b047c489341cfb30142125aa812b9.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">계좌 이체로 결제 시 0.5% 무한적립</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMTExMjZfMjI5/MDAxNjM3OTMyNDIxNDQ5.kO29DWw5j5r_vqt4cP2uCcI8si5vwnr1m2OSrzqdqUAg.agxcIJth1kHMYuz26KFjf2VHvCRM1-fv_ra2BPqzFAYg.PNG/d_6cd3cdc3d7b045c29794d0c5dfea97a9.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">10만원 이상 결제시 즉시 할인 5%</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMTA3MjNfMjE2/MDAxNjI3MDQ0NjUxNTc5.NRYELauTh0NQalDifk1g8-txKLJVL0KO_wiheYsEPwkg.38cKqkZvp2V0zXr2WJfXgCdZTpvWl55pbhxfI5uCzigg.PNG/d_b3ac7ff93d8f46c38b1e14c3f7908685.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">20만원 이상 결제시 즉시 할인 6%</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMTA3MDlfNDgg/MDAxNjI1NzU3MTQzNzM0.p8zHdL65rwPY6QDndISSntdesa9onmDokshSgtr0brkg.A5Vayjl-8XaTtJtcJKVdZbwwAvrYQHS7PqeqIZQA6Akg.PNG/p_8f5e108b4c74409ba3a04d9273827180.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">신한카드로 결제시 2% 캐시백</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMTA4MjRfMjM0/MDAxNjI5ODE2MTgxODA2.zqDQvoDLZpQLvuJTrBWlJHlcPSaAH0jX9tsLBAco5lkg.IdyhXkbEvUkJsM6yD7aPxOA-M4mOewO3KUxLZ0Ka47sg.PNG/d_c810b2e128ac40869e5055f891919512.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">토스로 첫 결제 시 3천원 캐시백</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
        <li class="flex mt-1">
          <img src="https://kream-phinf.pstatic.net/MjAyMjA1MzFfNzkg/MDAxNjUzOTY3NTI1MDMz.9K10E5A_3PnRkhUnTXSTlSAx2j9vb6TJNJPB6Wp0prwg.yYQwdt6D4SZhgOEToJ8FWw7nV6mJ97rhiZDlxW8ntkkg.PNG/d_dd5312bd03744c03a282bebd96e9535d.png" class="w-[72px] h-[16px] m-[1px]" />
          <p class="text-gray-400 text-sm">페이코 포인트로 결제 시 3% 적립</p>
          <a href="#" class="text-xs ml-auto underline text-gray-400">더보기</a>
        </li>
    </div>
  </div>
</div>

<div id="sellAgree" class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
        <ul>
          <label>
            <li class="flex cursor-pointer items-center border-b border-b-gray-100 py-4">
              <div class="flex-1">
                <p class="-mb-2 text-base">판매자의 판매거부, 배송지연, 미입고 등의 사유가 발생할 경우, 거래가 취소될 수 있습니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">앱 알림 해체, 알림톡 차단, 전화번호 변경 후 미등록 시에는 거래 진행 상태 알림을 받을 수 없습니다.</p>
              </div>
              <input id="firstAgree" type="checkbox" class="h-5 w-5" />
            </li>
          </label>

          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">창고 보관을 선택한 경우 구매자에게 배송되지 않고 RESSLET 창고에 보관됩니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">검수 합격 후 보관이 완료되면 창고 이용료(현재 첫 30일 무료)가 결제됩니다.</p>
              </div>
              <input id="secondAgree" type="checkbox" class="h-5 w-5" />
            </li>
          </label>

          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">'바로 결제하기'를 선택하시면 즉시 결제가 진행되며, 단순 변심이나 실수에 의한 취소가 불가능 합니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환)규정이 적용되지 않습니다.</p>
              </div>
              <input id="thirdAgree" type="checkbox" class="h-5 w-5" />
            </li>
          </label>

          <label>
            <li class="flex items-center py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">구매 조건을 모두 확인하였으며, 거래진행에 동의합니다.</p>
            </div>
            <div class="">
            <input id="fourthAgree" type="checkbox" class="h-5 w-5" />
            </div>
          </li>
        </ul>
      </label>
</div>

<div class="mx-auto max-h-[960px] max-w-[780px] p-8 border-t-2 border-t-gray-200 shadow-md">
  <div class="flex">
    <dt class="float-left block min-w-[70px] font-semibold mb-1 truncate text-base">총 결제금액</dt>
    <dd class="mt float m inline pl-1 ml-auto text-xl font-semibold text-red-500">167,400원</dd>
  </div>
  <input type="button" value="결제하기" id="agreeBtn" class="mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled></button>
</div>
