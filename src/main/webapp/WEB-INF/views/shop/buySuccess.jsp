<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.inicis.std.util.ParseUtil"%>
<%@ page import="com.inicis.std.util.SignatureUtil"%>
<%@ page import="com.inicis.std.util.HttpUtil"%>
<%@ page import="java.util.*"%>

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

<!------------- success  ------------->
<div id="INIpayReturn">
<% 
	
	try{

		request.setCharacterEncoding("UTF-8");

		Map<String,String> paramMap = new Hashtable<String,String>();

		Enumeration elems = request.getParameterNames();

		String temp = "";

		while(elems.hasMoreElements())
		{
			temp = (String) elems.nextElement();
			paramMap.put(temp, request.getParameter(temp));
		}
		
		System.out.println("paramMap : "+ paramMap.toString());
		
		if("0000".equals(paramMap.get("resultCode"))){

			out.println("####인증성공/승인요청####");
			out.println("<br/>");
			System.out.println("####인증성공/승인요청####");
			
			String mid 		= paramMap.get("mid");						// 가맹점 ID 수신 받은 데이터로 설정
			String signKey	= "SU5JTElURV9UUklQTEVERVNfS0VZU1RS";		// 가맹점에 제공된 키(이니라이트키) (가맹점 수정후 고정) !!!절대!! 전문 데이터로 설정금지
			String timestamp= SignatureUtil.getTimestamp();				// util에 의해서 자동생성
			String charset 	= "UTF-8";								    // 리턴형식[UTF-8,EUC-KR](가맹점 수정후 고정)
			String format 	= "JSON";								    // 리턴형식[XML,JSON,NVP](가맹점 수정후 고정)
			String authToken= paramMap.get("authToken");			    // 취소 요청 tid에 따라서 유동적(가맹점 수정후 고정)
			String authUrl	= paramMap.get("authUrl");				    // 승인요청 API url(수신 받은 값으로 설정, 임의 세팅 금지)
			String netCancel= paramMap.get("netCancelUrl");			 	// 망취소 API url(수신 받은 값으로 설정, 임의 세팅 금지)
			String ackUrl 	= paramMap.get("checkAckUrl");			    // 가맹점 내부 로직 처리후 최종 확인 API URL(수신 받은 값으로 설정, 임의 세팅 금지)		
			String merchantData = paramMap.get("merchantData");			// 가맹점 관리데이터 수신
			
			Map<String, String> signParam = new HashMap<String, String>();

			signParam.put("authToken",	authToken);		// 필수
			signParam.put("timestamp",	timestamp);		// 필수

			String signature = SignatureUtil.makeSignature(signParam);

      		String price = "";  // 가맹점에서 최종 결제 가격 표기 (필수입력아님)
      		
      
			Map<String, String> authMap = new Hashtable<String, String>();

			authMap.put("mid"			    ,mid);			  // 필수
			authMap.put("authToken"		,authToken);	// 필수
			authMap.put("signature"		,signature);	// 필수
			authMap.put("timestamp"		,timestamp);	// 필수
			authMap.put("charset"		  ,charset);		// default=UTF-8
			authMap.put("format"		  ,format);		  // default=XML
      		//authMap.put("price" 		,price);		    // 가격위변조체크기능 (선택사용)
      
			System.out.println("##승인요청 API 요청##");

			HttpUtil httpUtil = new HttpUtil();

			try{

				String authResultString = "";

				authResultString = httpUtil.processHTTP(authMap, authUrl);
				
				out.println("## 승인 API 결과 ##");
				
				String test = authResultString.replace(",", "&").replace(":", "=").replace("\"", "").replace(" ","").replace("\n", "").replace("}", "").replace("{", "");
				
				
				Map<String, String> resultMap = new HashMap<String, String>();
				
				resultMap = ParseUtil.parseStringToMap(test); //문자열을 MAP형식으로 파싱
								
				System.out.println("resultMap == " + resultMap);
				out.println("<pre>");
				out.println("<table width='565' border='0' cellspacing='0' cellpadding='0'>");
				
				Map<String , String> secureMap = new HashMap<String, String>();
				secureMap.put("mid"			, mid);								//mid
				secureMap.put("tstamp"		, timestamp);						//timestemp
				secureMap.put("MOID"		, resultMap.get("MOID"));			//MOID
				secureMap.put("TotPrice"	, resultMap.get("TotPrice"));		//TotPrice
				
				String secureSignature = SignatureUtil.makeSignatureAuth(secureMap);

				if("0000".equals(resultMap.get("resultCode")) && secureSignature.equals(resultMap.get("authSignature")) ){	//결제보안 강화 2016-05-18
					
					out.println("<tr><th class='td01'><p>거래 성공 여부</p></th>");
					out.println("<td class='td02'><p>성공</p></td></tr>");
					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>결과 코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultCode")+"</p></td></tr>");
					out.println("<tr><th class='td01'><p>결과 내용</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultMsg")+"</p></td></tr>");
						  
				} else {
					out.println("<tr><th class='td01'><p>거래 성공 여부</p></th>");
					out.println("<td class='td02'><p>실패</p></td></tr>");
					out.println("<tr><th class='td01'><p>결과 코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultCode")+"</p></td></tr>");
					out.println("<tr><th class='td01'><p>결과 내용</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultMsg")+"</p></td></tr>");
					
					if (!secureSignature.equals(resultMap.get("authSignature")) && "0000".equals(resultMap.get("resultCode"))) {
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>결과 내용</p></th>");
						out.println("<td class='td02'><p>* 데이터 위변조 체크 실패</p></td></tr>");	
						
						if ("0000".equals(resultMap.get("resultCode"))) {
							throw new Exception("데이터 위변조 체크 실패");
						}
					}
				}
					
				//공통 부분만
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>거래 번호</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("tid")+"</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>결제방법(지불수단)</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("payMethod")+"</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>결제완료금액</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("TotPrice")+"원</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>주문 번호</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("MOID")+"</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>승인날짜</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("applDate")+"</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				out.println("<tr><th class='td01'><p>승인시간</p></th>");
				out.println("<td class='td02'><p>" +resultMap.get("applTime")+"</p></td></tr>");
				out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
				
				if("VBank".equals(resultMap.get("payMethod"))){ //가상계좌
					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>입금 계좌번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>입금 은행코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_BankCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>입금 은행명</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("vactBankName")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>예금주 명</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_Name")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>송금자 명</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_InputName")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>송금 일자</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_Date")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>송금 시간</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("VACT_Time")+"</p></td></tr>");
					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");	
					
				}else if("DirectBank".equals(resultMap.get("payMethod"))){ //실시간계좌이체
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>은행코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("ACCT_BankCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>현금영수증 발급결과코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CSHR_ResultCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>현금영수증 발급구분코드</p> <font color=red><b>(0 - 소득공제용, 1 - 지출증빙용)</b></font></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CSHR_Type")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					 
				}else if("iDirectBank".equals(resultMap.get("payMethod"))){ //실시간계좌이체
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>은행코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("ACCT_BankCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>현금영수증 발급결과코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CSHRResultCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>현금영수증 발급구분코드</p> <font color=red><b>(0 - 소득공제용, 1 - 지출증빙용)</b></font></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CSHR_Type")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					 
				}else if("HPP".equals(resultMap.get("payMethod"))){ //휴대폰
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>통신사</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("HPP_Corp")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>결제장치</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("payDevice")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>휴대폰번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("HPP_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("DGCL".equals(resultMap.get("payMethod"))){//게임문화상품권
					String sum="0",sum2="0",sum3="0",sum4="0",sum5="0",sum6="0";
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>게임문화상품권승인금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GAMG_ApplPrice")+"원</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>사용한 카드수</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GAMG_Cnt")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num1")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>카드잔액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price1")+"원</p></td></tr>");
					
					if(!"".equals(resultMap.get("GAMG_Num2"))){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num2")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>카드잔액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price2")+"원</p></td></tr>");
					}
					if(!"".equals(resultMap.get("GAMG_Num3"))){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num3")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>카드잔액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price3")+"원</p></td></tr>");
					}
					if(!"".equals(resultMap.get("GAMG_Num4"))){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num4")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>카드잔액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price4")+"원</p></td></tr>");
					}
					if(!"".equals(resultMap.get("GAMG_Num5"))){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num5")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>카드잔액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price5")+"원</p></td></tr>");
					}
					if(!"".equals(resultMap.get("GAMG_Num6"))){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>사용한 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Num6")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>카드잔액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GAMG_Price6")+"원</p></td></tr>");
					}
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("OCBPoint".equals(resultMap.get("payMethod"))){ //오케이 캐쉬백
				
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>지불구분</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("PayOption")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>OCB 카드번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("OCB_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>적립 승인번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("OCB_SaveApplNum")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>사용 승인번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("OCB_PayApplNum")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");					
					out.println("<tr><th class='td01'><p>OCB 지불 금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("OCB_PayPrice")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("GSPT".equals(resultMap.get("payMethod"))){ //GSPoint
				
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>지불구분</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("PayOption")+"</p></td></tr>");					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>GS 포인트 승인금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GSPT_ApplPrice")+"원</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>GS 포인트 적립금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GSPT_SavePrice")+"원</p></td></tr>");					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>GS 포인트 지불금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("GSPT_PayPrice")+"원</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("UPNT".equals(resultMap.get("payMethod"))){ //U-포인트
					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>U포인트 카드번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("UPoint_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>가용포인트</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("UPoint_usablePoint")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");			
					out.println("<tr><th class='td01'><p>포인트지불금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("UPoint_ApplPrice")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}
				else if("KWPY".equals(resultMap.get("payMethod"))){ //뱅크월렛 카카오
					out.println("<tr><th class='td01'><p>결제방법</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("payMethod")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>결과 코드</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultCode")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>결과 내용</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("resultMsg")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>거래 번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("tid")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>주문 번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("MOID")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>결제완료금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("price")+"원</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>사용일자</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("applDate")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>사용시간</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("applTime")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("Culture".equals(resultMap.get("payMethod"))){//문화 상품권
				  out.println("<tr><th class='td01'><p>컬처랜드 아이디</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CULT_UserID")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					
				}else if("TEEN".equals(resultMap.get("payMethod"))){//틴캐시
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>틴캐시 승인번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("TEEN_ApplNum")+"</p></td></tr>");									
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>틴캐시아이디</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("TEEN_UserID")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>틴캐시승인금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("TEEN_ApplPrice")+"원</p></td></tr>");	
										
				}else if("Bookcash".equals(resultMap.get("payMethod"))){//도서문화상품권
					
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>도서상품권 승인번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("BCSH_ApplNum")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>도서상품권 사용자ID</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("BCSH_UserID")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>도서상품권 승인금액</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("BCSH_ApplPrice")+"원</p></td></tr>");
					
				}else if("PhoneBill".equals(resultMap.get("payMethod"))){//폰빌전화결제
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>승인전화번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("PHNB_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					

				}else if("Bill".equals(resultMap.get("payMethod"))){//빌링결제
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>빌링키</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CARD_BillKey")+"</p></td></tr>");
				}else if("Auth".equals(resultMap.get("payMethod"))){//빌링결제
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>빌링키</p></th>");
					if ("BILL_CARD".equalsIgnoreCase(resultMap.get("payMethodDetail"))) {
						out.println("<td class='td02'><p>" +resultMap.get("CARD_BillKey")+"</p></td></tr>");
					} else  if ("BILL_HPP".equalsIgnoreCase(resultMap.get("payMethodDetail"))) {
						out.println("<td class='td02'><p>" +resultMap.get("HPP_BillKey")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>통신사</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("HPP_Corp")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>결제장치</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("payDevice")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>휴대폰번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("HPP_Num")+"</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>상품명</p></th>");			//상품명
						out.println("<td class='td02'><p>" +resultMap.get("goodName")+"</p></td></tr>");

					} else {
					}		
				}else if("HPMN".equals(resultMap.get("payMethod"))){//해피머니
					
				}else{//카드
					int  quota=Integer.parseInt(resultMap.get("CARD_Quota"));
					if(resultMap.get("EventCode")!=null){				
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>이벤트 코드</p></th>");					
						out.println("<td class='td02'><p>" +resultMap.get("EventCode")+"</p></td></tr>");
					}
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>카드번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CARD_Num")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>승인번호</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("applNum")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>할부기간</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CARD_Quota")+"</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					if("1".equals(resultMap.get("CARD_Interest")) || "1".equals(resultMap.get("EventCode"))){					
						out.println("<tr><th class='td01'><p>할부 유형</p></th>");
						out.println("<td class='td02'><p>무이자</p></td></tr>");	
					}else if(quota > 0 && !"1".equals(resultMap.get("CARD_Interest"))){
						out.println("<tr><th class='td01'><p>할부 유형</p></th>");
						out.println("<td class='td02'><p>유이자 <font color='red'> *유이자로 표시되더라도 EventCode 및 EDI에 따라 무이자 처리가 될 수 있습니다.</font></p></td></tr>");
					}
						
					if("1".equals(resultMap.get("point"))){
						out.println("<td class='td02'><p></p></td></tr>");
						out.println("<tr><th class='td01'><p>포인트 사용 여부</p></th>");
						out.println("<td class='td02'><p>사용</p></td></tr>");
					}else{
						out.println("<td class='td02'><p></p></td></tr>");
						out.println("<tr><th class='td01'><p>포인트 사용 여부</p></th>");
						out.println("<td class='td02'><p>미사용</p></td></tr>");
					}
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>카드 종류</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CARD_Code")+ "</p></td></tr>");
					out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
					out.println("<tr><th class='td01'><p>카드 발급사</p></th>");
					out.println("<td class='td02'><p>" +resultMap.get("CARD_BankCode")+ "</p></td></tr>");
					
					if(resultMap.get("OCB_Num")!=null && resultMap.get("OCB_Num") != ""){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>OK CASHBAG 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("OCB_Num")+ "</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>OK CASHBAG 적립 승인번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("OCB_SaveApplNum")+ "</p></td></tr>");
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>OK CASHBAG 포인트지불금액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("OCB_PayPrice")+ "</p></td></tr>");
					}
					if(resultMap.get("GSPT_Num")!=null && resultMap.get("GSPT_Num") != ""){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>GS&Point 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GSPT_Num")+ "</p></td></tr>");
						
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>GS&Point 잔여한도</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GSPT_Remains")+ "</p></td></tr>");
						
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>GS&Point 승인금액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("GSPT_ApplPrice")+ "</p></td></tr>");
					}
					
					if(resultMap.get("UNPT_CardNum")!=null && resultMap.get("UNPT_CardNum") != ""){
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>U-Point 카드번호</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("UNPT_CardNum")+ "</p></td></tr>");
						
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>U-Point 가용포인트</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("UPNT_UsablePoint")+ "</p></td></tr>");
						
						out.println("<tr><th class='line' colspan='2'><p></p></th></tr>");
						out.println("<tr><th class='td01'><p>U-Point 포인트지불금액</p></th>");
						out.println("<td class='td02'><p>" +resultMap.get("UPNT_PayPrice")+ "</p></td></tr>");
					}
			    }
				out.println("</table>");
				out.println("<span style='padding-left : 100px;'>");
				out.println("</span>");
				out.println("<form name='frm' method='post'>"); 
				out.println("<input type='hidden' name='tid' value='"+resultMap.get("tid")+"'/>");
				out.println("</form>");
				
				out.println("</pre>");
			} catch (Exception ex) {

				System.out.println(ex);

				String netcancelResultString = httpUtil.processHTTP(authMap, netCancel);	// 망취소 요청 API url(고정, 임의 세팅 금지)

				out.println("## 망취소 API 결과 ##");

				out.println("<p>"+netcancelResultString.replaceAll("<", "&lt;").replaceAll(">", "&gt;")+"</p>");
			}

		}else{
			out.println("<br/>");
			out.println("####인증실패####");

			out.println("<p>"+paramMap.toString()+"</p>");

		}

	}catch(Exception e){

		System.out.println(e);
	}
%>
</div>




<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#INIpayReturn').hide();
})
</script>
