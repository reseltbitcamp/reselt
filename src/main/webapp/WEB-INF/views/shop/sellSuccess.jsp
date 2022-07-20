<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.inicis.std.util.ParseUtil"%>
<%@ page import="com.inicis.std.util.SignatureUtil"%>
<%@ page import="com.inicis.std.util.HttpUtil"%>
<%@ page import="java.util.*"%>


<div class="main-content mx-auto my-5 h-auto max-w-[600px] bg-white p-8 shadow-md">
  <div>
    <img class="mx-auto block h-[300px] w-[400px] rounded-md" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" />
  </div>
  <div class="mt-4">
    <p id="status" class="text-center text-3xl font-semibold">즉시 판매가 완료되었습니다.</p>
    <p class="mx-auto w-[480px] text-center text-gray-400">일요일, 공휴일 제외 48시간 이내에 아래 주소로 상품을 발송한 후, 'My > 판매 내역 > 진행 중' 에서 발송 정보를 입력하세요</p>
  </div>

  <div class="my-2 text-center">
    <button id="sellListPageBtn" class="h-12 w-[350px] rounded-xl border text-gray-400">내역 상세보기</button>
  </div>

  <div class="my-6">
    <h3 class="font-bold">최종 주문 정보</h3>
    <div class="mt-5 h-14 border-b">
      <p class="align-top text-xs font-bold text-black">총 정산 금액</p>
      <p class="float-right text-xl font-semibold text-green-600">167,400 원</p>
    </div>

    <div class="my-3 w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-sm">즉시 판매가</dt>
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
        <dd class="float-right inline-block text-sm">선불 · 판매자 부담</dd>
      </dl>
    </div>

    <div class="my-5 border-t">
      <p class="mt-5 font-semibold">보내실 곳</p>
      <p class="font-extrabold">KREAM(크림) 앞</p>
      <p>(04798) 서울 성동구 성수이로 22길 57, 7층 KREAM</p>
      <p>1588-7813</p>
    </div>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/sellPage.js"></script>
