<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="main-content mx-auto my-5 bg-white p-8 shadow-md max-w-[600px] max-h-[900px]">
  <div>
  <img class="w-[400px] h-[300px] block mx-auto rounded-md" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372"/>
  </div>
  <div class="mt-4">
    <p id="status" class="text-center text-3xl font-semibold">즉시 구매가 완료되었습니다.</p>
    <p class="text-center text-gray-400">구매한 상품은 전문가의 검수 완료 후, 안전하게 배송될 예정입니다.</p>
  </div>

  <div class="text-center my-2">
    <div class="inline-block mx-2">
      <button class="border w-[225px] h-12 rounded-xl text-gray-400">내역 상세보기</button>
    </div>

    <div class="inline-block mx-2">
      <button class="border w-[225px] h-12 rounded-xl text-gray-400">SHOP 바로가기</button>
    </div>
    <a class="block text-sm my-2 text-gray-400">즉시 구매는 취소가 불가능합니다.</a>
  </div>

  <div>
    <h3 class="font-bold">최종 주문 정보</h3>
    <div class="mt-5 h-14">
      <p class="align-top text-xs font-bold text-black">총 결제 금액</p>
      <p class="float-right text-xl font-semibold text-red-600">167,400 원</p>
    </div>

    <div class="w-auto mt-3">
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
        <dd class="float-right inline-block text-sm">3000원</dd>
      </dl>
    </div>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

</script>
