<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
    <div class="main-content mx-auto my-5 bg-white p-8 shadow-md max-w-[780px] max-h-[960px]">
      <!-- 제품 정보 화면 -->

      <p class="text-left text-3xl font-semibold text-lime-400">판매<span class="text-black font-black">하시기 전에 꼭 확인하세요.</span></p>

      <div class="mt-10 flex items-center">
        <img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" class="mr-4 block h-24 w-24 rounded-md" />
        <div class="flex-1">
          <p class="font-bold">DD1391-100</p>
          <p>Nike Dunk Low Retro Black</p>
          <p class="text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
          <p class="text-sm font-bold">275</p>
        </div>
      </div>
	
	<!-- 동의 체크 -->
      <form id="sellAgree">
        <ul class="mt-4 border-t-2 border-t-black">
          <label>
            <li class="flex cursor-pointer items-center border-b border-b-gray-100 py-4">
              <div class="flex-1">
                <p class="-mb-2 text-base">판매하려는 상품이 맞습니다.</p>
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

              	<p class="-mb-2 text-base">박스/패키지의 상태를 확인합니다.</p>
              	<p class="mt-2 mb-2 text-xs text-gray-400">박스/패키지 상태에 따른 검수 기준을 확인했습니다.</p>
     	        	<a class="text-sm text-blue-400 underline" id="inspectionBtn2">검수 기준 보기</a>
                
              </div>
              <input id="thirdAgree" type="checkbox" class="h-5 w-5" />
            </li>
          </label>
          
          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">이중 포장하여 선불 발송합니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">반드시 이중 포장하여 택배 상자에 담아 선불 발송합니다. 합배송은 권장하지 않으며 이로 인한 박스 패키지 훼손은 판매자의 책임입니다.</p>
              </div>
              <input id="fourthAgree" type="checkbox" class="h-5 w-5" />
            </li>
          </label>

          <label>
            <li class="flex items-center py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">KREAM의 최신 이용정책을 모두 확인하였으며, 판매를 계속합니다.</p>

                <p class="mt-2 mb-2 text-xs text-gray-400"> 건전하고 안전한 거래를 위해 반드시 숙지해야 할 미입고,패널티,부정거래 등의 이용정책을 확인했습니다.</p>
              	<a class="inline-block text-sm text-blue-400 underline" href="#">이용정책 보기</a>
            	</div>
            		<input id="fifthAgree" type="checkbox" class="h-5 w-5" />
          	</li>
	      	</label>
        </ul>
        <input type="button" value="판매 계속" id="agreeBtn" class="mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled></button>
      </form>
    </div>
  
  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/sellPage.js"></script>
