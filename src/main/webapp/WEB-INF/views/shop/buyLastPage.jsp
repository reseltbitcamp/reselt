<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.inicis.std.util.SignatureUtil"%>
<%@page import="java.util.*"%>
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
        <h3 class="mb- mt-3 font-extrabold">배송 방법</h3>
        <div class="rounded-lg border-gray-300 flex items-center mt-3">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-y w-full relative p-[9px] flex-1">
            <p class="font-semibold">
              <span>일반배송</span>
              <span class="text-sm font-medium">3000원</span>
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
    <dd class="mt float m inline pl-1 ml-auto text-xl font-semibold text-red-500">167,400원</dd>
  </div>
  <div class="p-3">
  	<button id="chargeBtn" value="결제 요청" onclick="INIStdPay.pay('SendPayForm_id')"  class="mt-4 w-full rounded-lg bg-black p-3 text-white disabled:cursor-not-allowed disabled:bg-gray-100" disabled>결제요청</button>
  </div>
</div>


<!------------------------------------  결제 api   -------------------------------------------->
<%
	String mid					= "INIpayTest";		// 가맹점 ID(가맹점 수정후 고정)					
	String signKey			    = "SU5JTElURV9UUklQTEVERVNfS0VZU1RS";	// 가맹점에 제공된 웹 표준 사인키(가맹점 수정후 고정)
	String timestamp			= SignatureUtil.getTimestamp();			// util에 의해서 자동생성
	String oid					= mid+"_"+SignatureUtil.getTimestamp();	// 가맹점 주문번호(가맹점에서 직접 설정)
	String price				= "100";													// 상품가격(특수기호 제외, 가맹점에서 직접 설정)
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
							<table>
								<tr>
									<td style="text-align:left;">
										<form id="SendPayForm_id" name="" method="POST" >
										
											<br/><b>***** 필 수 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">

												<br/><b>version</b> :
												<br/><input  style="width:100%;" name="version" value="1.0" >

												<br/><b>mid</b> :
												<br/><input  style="width:100%;" name="mid" value="<%=mid%>" >
													
												<br/><b>goodname</b> :
												<br/><input  style="width:100%;" name="goodname" value="테스트" >

												<br/><b>oid</b> :
												<br/><input  style="width:100%;" name="oid" value="<%=oid%>" >

												<br/><b>price</b> :
												<br/><input  style="width:100%;" name="price" value="<%=price%>" >

												<br/><b>currency</b> :
												<br/>[WON|USD]
												<br/><input  style="width:100%;" name="currency" value="WON" >

												<br/><b>buyername</b> :
												<br/><input  style="width:100%;" name="buyername" value="홍길동" >

												<br/><b>buyertel</b> :
												<br/><input  style="width:100%;" name="buyertel" value="010-1234-5678" >

												<br/><b>buyeremail</b> :
												<br/><input  style="width:100%;" name="buyeremail" value="test@inicis.com" >

											
												<input type="hidden" style="width:100%;" name="timestamp" value="<%=timestamp %>" >

												<input type="hidden" style="width:100%;" name="signature" value="<%=signature%>" >

												<br/><b>returnUrl</b> :
												<br/><input  style="width:100%;" name="returnUrl" value="<%=siteDomain%>/buySuccess" >
												<input type="hidden"  name="mKey" value="<%=mKey%>" >

											</div>

											<br/><br/>
											<b>***** 기본 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<b>gopaymethod</b> : 결제 수단 선택
												<br/>ex) Card (계약 결제 수단이 존재하지 않을 경우 에러로 리턴)
												<br/>사용 가능한 입력 값
												<br/>Card,DirectBank,HPP,Vbank,kpay,Swallet,Paypin,EasyPay,PhoneBill,GiftCard,EWallet
												<br/>onlypoint,onlyocb,onyocbplus,onlygspt,onlygsptplus,onlyupnt,onlyupntplus
												<br/><input  style="width:100%;" name="gopaymethod" value="" >
												<br/><br/>

												<br/>
												<b>offerPeriod</b> : 제공기간
												<br/>ex)20151001-20151231, [Y2:년단위결제, M2:월단위결제, yyyyMMdd-yyyyMMdd : 시작일-종료일]
												<br/><input  style="width:100%;" name="offerPeriod" value="20151001-20151231" >
												<br/><br/>
												
												<br/><b>acceptmethod</b> : acceptmethod
												<br/>acceptmethod  ex) CARDPOINT:SLIMQUOTA(코드-개월:개월):no_receipt:va_receipt:vbank(20150425):va_ckprice: 
												<br/>KWPY_TYPE(0):KWPY_VAT(10|0) 기타 옵션 정보 및 설명은 연동정의보 참조 구분자 ":"
												<br/><input style="width:100%;" name="acceptmethod" value="CARDPOINT:HPP(1):no_receipt:va_receipt:below1000" >
											</div>

											<br/><br/>
											<b>***** 표시 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<br/><b>languageView</b> : 초기 표시 언어
												<br/>[ko|en] (default:ko)
												<br/><input style="width:100%;" name="languageView" value="" >

												<br/><b>charset</b> : 리턴 인코딩
												<br/>[UTF-8|EUC-KR] (default:UTF-8)
												<br/><input style="width:100%;" name="charset" value="" >

												<br/><b>payViewType</b> : 결제창 표시방법
												<br/>[overlay] (default:overlay)
												<br/><input style="width:100%;" name="payViewType" value="" >

												<br/><b>closeUrl</b> : payViewType='overlay','popup'시 취소버튼 클릭시 창닥기 처리 URL(가맹점에 맞게 설정)
												<br/>close.jsp 샘플사용(생략가능, 미설정시 사용자에 의해 취소 버튼 클릭시 인증결과 페이지로 취소 결과를 보냅니다.)
												<br/><input style="width:100%;" name="closeUrl" value="<%=siteDomain%>/close" >

												<br/><b>popupUrl</b> : payViewType='popup'시 팝업을 띄울수 있도록 처리해주는 URL(가맹점에 맞게 설정)
												<br/>popup.jsp 샘플사용(생략가능,payViewType='popup'으로 사용시에는 반드시 설정)
												<br/><input style="width:100%;" name="popupUrl" value="<%=siteDomain%>/popup.jsp" >

											</div>
											
											<b>***** 결제 수단별 옵션 *****</b>
											<br/>
											<b>-- 카드(간편결제도 사용) --</b>
											<div style="border:2px #cccccc solid;padding:10px;background-color:#f3f3f3;">

												<br/><b>quotabase</b> : 할부 개월 설정
												<br/>ex) 2:3:4
												<br/><input  style="width:100%;" name="quotabase" value="<%=cardQuotaBase%>" >
												
												<br/><b>ini_onlycardcode</b> : 중복 카드 코드
												<br/>ex) 01:03:04:11
												<br/><input  style="width:100%;" name="ini_onlycardcode" value="" >
												
												<br/><b>ini_cardcode</b> : 카드 코드
												<br/>ex) 14
												<br/><input  style="width:100%;" name="ini_cardcode" value="" >
												
												<br/><b>ansim_quota</b> : 할부 선택
												<br/>ex) 3
												<br/><input  style="width:100%;" name="ansim_quota" value="" >	
											
											</div>
											
											<b>-- 가상계좌 --</b>
											<div style="border:2px #cccccc solid;padding:10px;background-color:#f3f3f3;">
												<br/><b>INIregno</b> : 주민번호 설정 기능
												<br/>13자리(주민번호),10자리(사업자번호),미입력시(화면에서입력가능)
												<br/><input  style="width:100%;" name="INIregno" value="" >
											</div>
											
											<br/><br/>
											<b>***** 추가 옵션 *****</b>
											<div style="border:2px #dddddd double;padding:10px;background-color:#f3f3f3;">
												<br/><b>merchantData</b> : 가맹점 관리데이터(2000byte)
												<br/>인증결과 리턴시 함께 전달됨(한글 지원 안됨, 개인정보 암호화(권장))
												<br/><input  style="width:100%;" name="merchantData" value="" >
											</div>
																						
										</form>
									</td>
								</tr>
							</table>
</div>

<jsp:include page="./shopModal/addressListModal.jsp"></jsp:include>
<jsp:include page="./shopModal/addAddressModal.jsp"></jsp:include>
<script language="javascript" type="text/javascript" src="https://stgstdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/buyPage.js"></script>