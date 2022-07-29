<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.inicis.std.util.SignatureUtil"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<input type="hidden" id="pid" value='${pid}'/>
<input type="hidden" id="size" value='${size}' />
<input type="hidden" id="bidding_id" value='${id}'>
<div class="mx-auto max-h-[960px] max-w-[780px] px-8 pb-4 pt-2 shadow-md">
  <div class="mt-1 mb-5 flex items-center">
    <img id="product_img" src="" class="mr-4 block h-24 w-24 rounded-md" />
    <div class="flex-1">
      <p id="product_id"class="font-bold"></p>
      <p id="product_name_eng"></p>
      <p id="product_name_kor" class="text-sm text-gray-400"></p>
      <p id="bidding_size"class="text-sm font-bold"></p>
    </div>
  </div>
</div>

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <h3 class="mb-2 inline-block font-extrabold">배송주소</h3>
	  <div class="border-b">
	    <div class="float-right mr-9 mt-1 w-6">
	      <a href="#" id="addressChangeBtn" class="absolute h-8 w-16 rounded-lg border border-gray-200 text-center">변경</a>
    </div>
    
    <div>
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">받는분</dt>
      <dd id="addName" class="block text-sm"></dd>
    </div>
    <div>
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">연락처</dt>
      <dd id="addTel" class="add block text-sm"></dd>
    </div>
    <div class="mb-3">
      <dt class="float-left block min-w-[80px] truncate text-xs text-gray-500">배송 주소</dt>
      <dd id="add"class="adress_address block text-sm"></dd>
    </div>
  </div>

  <div class="flex-initial">
        <h3 class="mb- mt-3 font-extrabold">배송 방법</h3>
        <div class="rounded-lg border-gray-300 flex items-center mt-3">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-y w-full relative p-[9px] flex-1">
            <p class="font-semibold">
              <span>일반배송</span>
              <span class="text-sm font-medium">3,000원</span>
            </p>
            <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
          </div>
        </div>
      </div>
</div>

<div class="mx-auto mt-1 max-h-[960px] max-w-[780px] p-8 shadow-md">
  <div>
    <h3 class="font-bold">최종 주문 정보</h3>
    <div class="mt-5 h-14 border-b-2">
      <p class="align-top text-xs font-bold text-black">총 결제 금액</p>
      <p id="totalPrice" class="totalPrice float-right text-xl font-semibold text-red-600"></p>
    </div>

    <div class="w-auto">
      <dl class="flex justify-between">
        <dt class="mt-2 text-sm">즉시 구매가</dt>
        <dd id="price" class="float-right font-semibold"></dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">검수비</dt>
        <dd class="float-right">무료</dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">수수료</dt>
        <dd id="commission" class="float-right text-sm"></dd>
      </dl>

      <dl class="flex justify-between">
        <dt class="mt-2 text-xs text-gray-400">배송비</dt>
        <dd class="float-right inline-block text-sm">선불 · 판매자부담</dd>
      </dl>
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
              <div>
                <input id="firstAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>
	
          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">창고 보관을 선택한 경우 구매자에게 배송되지 않고 RESSLET 창고에 보관됩니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">검수 합격 후 보관이 완료되면 창고 이용료(현재 첫 30일 무료)가 결제됩니다.</p>
              </div>
              <div>
                <input id="secondAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>

          <label>
            <li class="flex items-center border-b border-b-gray-100 py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">'바로 결제하기'를 선택하시면 즉시 결제가 진행되며, 단순 변심이나 실수에 의한 취소가 불가능 합니다.</p>
                <p class="mt-2 mb-2 text-xs text-gray-400">본 거래는 개인간 거래로 전자상거래법(제17조)에 따른 청약철회(환불, 교환)규정이 적용되지 않습니다.</p>
              </div>
              <div>
                <input id="thirdAgree" type="checkbox" class="ml-10 h-5 w-5" />
              </div>
            </li>
          </label>

          <label>
            <li class="flex items-center py-4 cursor-pointer">
              <div class="flex-1">
                <p class="-mb-2 text-base">구매 조건을 모두 확인하였으며, 거래진행에 동의합니다.</p>
            </div>
            <div>
                <input id="fourthAgree" type="checkbox" class="ml-10 h-5 w-5" />
            </div>
          </li>
      	</label>
        </ul>
</div>

<div class="mx-auto max-h-[960px] max-w-[780px] p-8 border-t-2 border-t-gray-200 shadow-md">
  <div class="flex">
    <dt class="float-left block min-w-[70px] font-semibold mb-1 truncate text-base">총 결제금액</dt>
    <dd class="totalPrice mt float m inline pl-1 ml-auto text-xl font-semibold text-red-500"></dd>
  </div>
  <div class="p-3">
  	<button id="chargeBtn" value="결제 요청" onclick="INIStdPay.pay('SendPayForm_id')" class="chargeBtn mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled>결제요청</button>
  	<button id="nextBtn"value="성공 페이지로 이동" class="mt-4 w-full rounded-lg bg-black p-3 text-white" >성공페이지로 이동</button>
  </div> 
</div>


<!------------------------------------  결제 api   -------------------------------------------->
<%

	int getPrice = Integer.parseInt(request.getParameter("price"));
	double commission = (getPrice*0.1) + getPrice;
	int sibar = (int)commission+3000;
	String totalPrice = ""+sibar;
	
	
	String mid					= "INIpayTest";		// 가맹점 ID(가맹점 수정후 고정)					
	String signKey			    = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS";	// 가맹점에 제공된 웹 표준 사인키(가맹점 수정후 고정)
	String timestamp			= SignatureUtil.getTimestamp();			// util에 의해서 자동생성
	String oid					= mid+"_"+SignatureUtil.getTimestamp();	// 가맹점 주문번호(가맹점에서 직접 설정)
	String price				= totalPrice;				// 상품가격(특수기호 제외, 가맹점에서 직접 설정)
	String cardNoInterestQuota	= "11-2:3:,34-5:12,14-6:12:24,12-12:36,06-9:12,01-3:4";		// 카드 무이자 여부 설정(가맹점에서 직접 설정)
	String cardQuotaBase		= "2:3:4:5:6:11:12:24:36";		// 가맹점에서 사용할 할부 개월수 설정

	String mKey = SignatureUtil.hash(signKey, "SHA-256");
	Map<String, String> signParam = new HashMap<String, String>();

	signParam.put("oid", oid); 					// 필수
	signParam.put("price", price);				// 필수
	signParam.put("timestamp", timestamp);		// 필수

	String signature = SignatureUtil.makeSignature(signParam);
	
	
	String siteDomain = "http://localhost:8080/ReseltProject/shop"; //가맹점 도메인 입력
	
%>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <!-- 테스트 JS(샘플에 제공된 테스트 MID 전용) -->
	<div id="kgApi">
		<form id="SendPayForm_id" name="" method="POST" >
				<br/><input  style="width:100%;" name="version" value="1.0" >
				<br/><input  style="width:100%;" name="mid" value="<%=mid%>" >
				<br/><input  style="width:100%;" name="goodname" value="테스트" >
				<br/><input  style="width:100%;" name="oid" value="<%=oid%>" >
				<br/><input  style="width:100%;" name="price" value="<%=price%>" >
				<br/><input  style="width:100%;" name="currency" value="WON" >
				<br/><input  style="width:100%;" name="buyername" value="홍길동" >
				<br/><input  style="width:100%;" name="buyertel" value="010-1234-5678" >
				<br/><input  style="width:100%;" name="buyeremail" value="test@inicis.com" >
				<input type="hidden" style="width:100%;" name="timestamp" value="<%=timestamp %>" >
				<input type="hidden" style="width:100%;" name="signature" value="<%=signature%>" >
				<br/><input  style="width:100%;" name="returnUrl" value="<%=siteDomain%>/buySuccess" >
				<input type="hidden"  name="mKey" value="<%=mKey%>" >
				<br/><input  style="width:100%;" name="gopaymethod" value="" >
				<br/><input  style="width:100%;" name="offerPeriod" value="20151001-20151231" >
				<br/><input style="width:100%;" name="acceptmethod" value="CARDPOINT:HPP(1):no_receipt:va_receipt:below1000" >
				<br/><input style="width:100%;" name="languageView" value="" >
				<br/><input style="width:100%;" name="charset" value="" >
				<br/><input style="width:100%;" name="payViewType" value="" >
				<br/><input style="width:100%;" name="closeUrl" value="<%=siteDomain%>/close" >
				<br/><input style="width:100%;" name="popupUrl" value="<%=siteDomain%>/popup.jsp" >
				<br/><input  style="width:100%;" name="quotabase" value="<%=cardQuotaBase%>" >
				<br/><input  style="width:100%;" name="ini_onlycardcode" value="" >
				<br/><input  style="width:100%;" name="ini_cardcode" value="" >
				<br/><input  style="width:100%;" name="ansim_quota" value="" >	
				<br/><input  style="width:100%;" name="INIregno" value="" >
				<br/><input  style="width:100%;" name="merchantData" value="" >
														
		</form>
</div>

<jsp:include page="./shopModal/addAddressModal.jsp"></jsp:include>
<script type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/buyLastPage.js"></script>