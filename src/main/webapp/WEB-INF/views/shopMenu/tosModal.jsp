<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div id="tosModal" class="modal-overlay w-[100%] h-[1000%] pt-[70px] absolute left-0 flex flex-col items-center hidden">
  <div id="modal_window" class="bg-white w-[580px] h-[700px] relative rounded-[10px]">
    <div class="title m-0 p-0 box-border">
      <h2 class="leading-[22px] pt-[18px] px-[50px] pb-[20px] min-h-[60px] text-[18px] font-bold tracking-[-.15px] text-black text-center">이용정책</h2>
    </div>
    
<!--     <div class="selectBox border-b-[1px] border-solid border-[#ebebeb] pb-[16px] px-[15px]"> -->
<!--     </div> -->
    <div class="block px-[30px] overflow-y-auto max-h-[600px] mb-[32px]">
      <ul class="block" class="overflow-y-auto">
      	<li id="titleBox1">

      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		  <p class="text-[15px] tracking-[-.15px]">페널티 정책
      	  </div>

      	  <div id="content1" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
            <p>최종 수정일 &nbsp;2022년 1월 28일</p>
            <p>&nbsp;</p>
            <p>판매자와 구매자의 건전한 거래를 위하여 아래 사유에 따라 페널티가 부과됩니다.&nbsp;</p>
            <p>결제정보 오류로 페널티 결제 실패 시, <a href="https://kream.co.kr/agreement">이용약관</a> 제24조("서비스수수료")에 따라 별도의 고지없이 재결제를 시도합니다.</p>
            <p>
            <br />
            &nbsp;
            </p>
            <h2><strong>판매거부</strong></h2>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>판매 거래 체결 후, 1시간 이내 판매 거부</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>판매 거래 체결 후, 1시간 이후 판매 거부</td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2><strong>발송지연</strong></h2>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>
                      <p>판매 거래 체결 후,&nbsp;</p>
                      <p>48시간(일요일・공휴일 제외) 이내&nbsp;</p>
                      <p>발송 정보 미입력</p>
                    </td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2><strong>미입고</strong></h2>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>
                      <p>발송 정보 입력 후,&nbsp;</p>
                      <p>5일(일요일・공휴일 제외) 이내</p>
                      <p>검수센터에 미도착</p>
                    </td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                  <tr>
                    <td>가송장 등 허위 정보 입력</td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                  <tr>
                    <td>거래 체결 전 상품 발송</td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>* 발송 정보 입력 시 지원하지 않는 배송 수단의 경우, 운송장 추적 불가, 도착 상품의 식별 곤란 등의 사유로 인해 입고가 불가하며 이에 해당하는 상품은 반송 처리됩니다.</p>
            <p>* 반송 처리 등 정상적이지 않은 배송 방법을 통해 상품을 검수센터로 전달할 경우 상품 입고가 불가능합니다.</p>
            <p>* 단, 부득이한 경우 발송 정보 입력 기한 이내에 고객센터를 통한 협의 및 KREAM의 사전 승인 하에 상품 동일성 식별이 가능하도록 조치한 경우에 한하여 상품 입고가 가능한 점 참고 부탁드립니다.&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2>검수기준 악용</h2>
            <p>아래 검수기준 위반시에는 페널티를 부과합니다. (패키지와 상품 공통 적용)</p>
            <p>&nbsp;</p>
            <h3>신발</h3>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>상품 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>사이즈 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>기본 구성품 누락</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <h3>의류</h3>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>상품 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>사이즈 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>기본 구성품 누락</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <h3>패션잡화</h3>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>상품 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                  <tr>
                    <td>사이즈 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <h3>테크/라이프</h3>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>정보 불일치</td>
                    <td><h4>10.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2>중고품/가품</h2>
            <p>일반 거래는 판매가 기준이며, 보관 판매는 판매 상품 모든 사이즈의 전월 평균 거래가 기준입니다.&nbsp;</p>
            <figure class="table">
              <table>
                <tbody>
                  <tr>
                    <td>중고품</td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                  <tr>
                    <td>가품</td>
                    <td><h4>15.0%</h4></td>
                  </tr>
                </tbody>
              </table>
            </figure>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <h2>페널티 감면 기준</h2>
            <p>&nbsp;</p>
            <p>KREAM은 이용약관 제 24조 ("서비스 수수료") 다. 항에 따라 회원이 아래와 같은 특별한 사유에 해당하는 것으로 객관적으로 소명할 경우 기 부과된 페널티를 감경 또는 면제할 수 있습니다.</p>
            <p>&nbsp;</p>
            <p>KREAM은 해당 사안의 사실관계, 이전 사용이력, 거래행태 등을 종합적으로 분석하여 아래 사유에 해당하는지 여부를 최종 판단합니다.</p>
            <p>&nbsp;</p>
            <p>페널티 감경 또는 면제는 해당 회원의 부주의에도 불구하고 KREAM이 회원의 특별한 사정을 고려하여 예외적으로 실시하는 조치이므로 하기 특별 사유의 존재 여부는 해당 "회원"이 객관적으로 증명해야 할 책임이 있습니다.</p>
            <p>&nbsp;</p>
            <ul>
              <li>서비스 사용 미숙에 따른 조작실수임이 명백한 경우</li>
              <li>명백히 택배사의 책임 있는 사유로 인하여 페널티 발생한 경우</li>
              <li>고의성이 없이 가품 및 중고품을 판매한 것이 명백한 경우 (단, 페널티 감경이 이루어지더라도 가품 및 중고품 판매로 인한 이용정지 등의 절차는 진행될 수 있음)</li>
            </ul>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox2">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">가품 * 중고품 판매에 대한 제재
      	  </div>
      	  <div id="content2" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 1월 29일</p>
              <p>&nbsp;</p>
              <p>
                가품 ・ 중고품 판매를 시도하여 적발된 경우 판매금액의 15.0% 페널티가 부과되며 판매자는 적발 즉시 이용정지 처리됩니다.<br />
                가품 판매의 경우 상표법 108조에 의거 민사상 손해배상 책임 및 형사상 7년 이하의 징역 또는 1억원 이하의 벌금 처벌을 받을 수 있습니다. 또한 <a href="https://kream.co.kr/agreement">이용약관</a> 제 27조(검수 등) 6항에 따라 가품 판매자는
                상표법 등 관계 법령 위반 혐의로 수사기관에 신고될 수 있으며, 가품 판정 상품은 수사기관 제출, 압수 등으로 인하여 판매자에게 반환되지 않을 수 있습니다.
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>소명자료 접수</h2>
              <p>KREAM에서는 가품/중고품으로 부터 구매자를 안전하게 보호하고자 해당 제재를 실행하며, 이에 따라 선의의 피해자가 발생하지 않도록 소명서 및 관련 자료를 고객센터로 전달해주시면 내부 검토를 진행하고 있습니다.</p>
              <p>&nbsp;</p>
              <h3><strong>해외 온라인결제 구매</strong></h3>
              <p>① 구매한 상품의 상세 캡쳐 이미지</p>
              <p>② 상세 주문 내역</p>
              <p>• &nbsp;상품명, 구매가, 결제일, 배송처 등 포함</p>
              <p>③ 신용카드 명세서 또는 계좌이체 확인서</p>
              <p>• &nbsp;신용카드 명세서: 결제일시, 가맹점 포함</p>
              <p>• &nbsp;계좌이체 확인서: 이체일시, 수신 계좌번호, 수신 계좌주명 포함</p>
              <p>④ 국내 반입 경로 증빙자료</p>
              <p>• &nbsp;관세청 통관 조회 또는 배송대행지 이용내역 등</p>
              <p>&nbsp;</p>
              <h3><strong>국내 온라인결제 구매</strong></h3>
              <p>① 구매한 상품의 상세 캡쳐 이미지</p>
              <p>② 상세 주문 내역</p>
              <p>• &nbsp;상품명, 구매가, 결제일, 배송처 등 포함</p>
              <p>③ 신용카드 명세서 또는 계좌이체 확인서</p>
              <p>
                • &nbsp;신용카드 명세서: 결제일시, 가맹점 포함<br />
                • &nbsp;계좌이체 확인서: 이체일시, 수신 계좌번호, 수신 계좌주명 포함
              </p>
              <p>&nbsp;</p>
              <h3><strong>직거래/지인거래</strong></h3>
              <p>① 판매글 전문</p>
              <p>
                • &nbsp;작성일시, 작성자 포함<br />
                • &nbsp;판매글이 삭제된 경우, 이에 상응하는 자료&nbsp;<br />
                • &nbsp;삭제 전 캡쳐한 이미지, 운영자에게 게시글 복구 요청 등
              </p>
              <p>② 판매자와의 대화 내용 전문</p>
              <p>• &nbsp;일시, 계좌번호, 발송한 운송장번호 등 포함</p>
              <p>③ 계좌이체내역서(이체확인증) 또는 송금확인서</p>
              <p>
                • &nbsp;송금확인서: 이체일,수신계좌번호,계좌주 포함<br />
                • &nbsp;은행 사이트에서의 내역 캡쳐는 인정 되지 않음
              </p>
              <p>&nbsp;</p>
              <h3>오프라인 구매</h3>
              <p>① 구매영수증</p>
              <p>• &nbsp;구매처, 구매일시, 금액 포함</p>
              <p>② 카드결제전표, 또는 계좌이체확인서</p>
              <p>• &nbsp;가맹점명, 계좌번호, 결제/이체 일시, 금액 포함</p>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox3">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">검수 기준 악용에 대한 제재
      	  </div>
      	  
      	  <div id="content3" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 12월 10일</p>
              <p>&nbsp;</p>
              <p>아래 기준에 해당하는 경우 미입고 처리되며 판매금액의 10% &nbsp;페널티가 부과됩니다.</p>
              <ul>
                <li>상품/패키지 공통 적용됩니다.</li>
              </ul>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h3>신발</h3>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>상품 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                    <tr>
                      <td>사이즈 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                    <tr>
                      <td>기본 구성품 누락</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>&nbsp;</p>
              <h3>의류</h3>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>상품 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                    <tr>
                      <td>사이즈 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                    <tr>
                      <td>기본 구성품 누락</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>&nbsp;</p>
              <h3>패션잡화</h3>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>상품 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                    <tr>
                      <td>사이즈 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>&nbsp;</p>
              <h3>테크/라이프</h3>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>정보 불일치</td>
                      <td><h4>10.0%</h4></td>
                    </tr>
                  </tbody>
                </table>
              </figure>
            </div>
      	  </div>
      	</li>
      	
      	<li id="titleBox4">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">거래 실패 시 반송 운임 기준
      	  </div>
      	  
      	  <div id="content4" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 10월 8일</p>
              <p>&nbsp;</p>
              <p>거래 실패로 인한 상품 반송 시, 택배 운임의 선불/착불 기준은 아래와 같습니다.&nbsp;</p>
              <h2>&nbsp;</h2>
              <p>&nbsp;</p>
              <h2>검수 불합격</h2>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>착불</td>
                      <td>검수 기준상 '불합격' 에 해당하는 반송건</td>
                    </tr>
                    <tr>
                      <td>선불</td>
                      <td>'구매의사 확인' 이후 발생하는 반송건</td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>발송지연 ・ 미입고</h2>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td rowspan="3">착불</td>
                      <td>발송정보 입력없이 검수센터 도착</td>
                    </tr>
                    <tr>
                      <td>입고 마감 기한 이후 검수센터 도착</td>
                    </tr>
                    <tr>
                      <td>거래 체결 전 상품 발송</td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>&nbsp;</p>
            </div>
      	  </div>
      	</li>
      	
      	<li id="titleBox5">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">부적절행위 금지
      	  </div>
      	  
      	  <div id="content5" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 1월 29일</p>
              <p>&nbsp;</p>
              <p>아래에 해당하는 경우, <a href="https://kream.co.kr/agreement">이용약관</a> 제 7조(이용제한 등)에 따라 일시 정지나 영구이용정지 조치됩니다. 허위사실 유포 관련 고의성이 확인될 시, 유관부서로 이관되어 처리될 수 있습니다.</p>
              <p>&nbsp;</p>
              <ul>
                <li>가품 거래 시도</li>
                <li>중고품 거래 시도</li>
                <li>여러 개의 계정을 생성하여 자전거래</li>
                <li>포인트 획득, 시세 조작 등의 목적으로 지인과 공모한 허위 거래</li>
                <li>신용카드 불법 현금 유통 (소위 카드깡)</li>
                <li>커뮤니티 내 허위사실 유포 등 서비스 운영을 방해하는 각종 부정행위</li>
              </ul>
              <p>&nbsp;</p>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox6">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">이상시세 입찰/거래 취소 정책
      	  </div>
      	  
      	  <div id="content6" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 2022년 3월 21일</p>
              <p>&nbsp;</p>
              <p>
                KREAM은 <a href="https://kream.co.kr/agreement">이용약관</a>&nbsp;제21조 제3항부터 제6항까지의 규정에 따라 회원의 조작 실수, 착오로 인한 사고 발생을 예방하고, 회원의 조작 실수를 유도하거나 상품 시세를 조작하여 건전한 거래 질서를
                어지럽히려는 시도 등 각종 거래 사고와 부정거래 등을 방지하기 위하여 다음과 같이 이상시세 입찰 또는 거래 취소 정책을 실시하고 있습니다.
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2><strong>입찰 또는 체결 시도의 삭제・취소</strong></h2>
              <p>&nbsp;</p>
              <p>
                KREAM은 보관판매 서비스 등 거래 형태를 불문하고 하기 “이상 고가 거래” 또는 “이상 저가 거래”와 같은 거래 시도 또는 거래 체결에 대하여 회원에 대한 사전 통보없이 거래 체결 이전인 경우 해당 회원이 등록한 내용, 입찰 또는 체결 시도를
                삭제・취소 또는 거래 제한 조치하고, 거래 체결 이후인 경우 거래 상대방인 회원(“이상 고가 거래” 시 구매자, “이상 저가 거래” 시 판매자를 의미함)의 의사를 확인한 후 기 체결된 거래를 취소할 수 있습니다.
              </p>
              <p>&nbsp;</p>
              <ul>
                <li>KREAM은 해당 입찰/거래에서의 상품 입찰/체결 가격, 해당 상품의 과거 거래 체결가, 제조사 또는 주요 대형 유통사에서 책정한 해당 상품의 판매가 등을 기준으로 “이상 고가 거래” 또는 “이상 저가 거래” 해당 여부를 판단합니다.</li>
                <li>본 정책에 따른 입찰/거래 체결 삭제∙취소, 거래 제한 등의 조치는 회원에게 거래 오류, 입찰 만료 등으로 표시될 수 있습니다.</li>
                <li>
                  KREAM 및 거래 상대방인 회원(“이상 고가 거래” 시 구매자, “이상 저가 거래” 시 판매자를 의미함)은 본 정책에 따라 이루어진 회원의 등록 내용, 입찰 또는 체결 시도에 대한 삭제∙취소∙거래 제한 조치 또는 거래 체결 건 취소 조치 등과 관련하여
                  거래 재체결, 재진행, 재입찰, 상품 매입/판매 또는 손해배상(시세 등락에 관한 사항 포함) 등 어떠한 의무나 책임도 부담하지 아니합니다.
                </li>
              </ul>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox7">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">커뮤니티 가이드라인
      	  </div>
      	  
      	  <div id="content7" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 12월 3일</p>
              <p>
                <br />
                <br />
                KREAM 내 STYLE 서비스는 회원들의 일상 속 스니커즈, 의류 등의 패션 스타일을 공유하여 서로 영감을 얻을 수 있는 공간입니다. 모두가 건강하고 즐겁게 사용할 수 있는 공간을 만들기 위해 함께 노력해주세요.
              </p>
              <p>&nbsp;</p>
              <p>
                커뮤니티 가이드라인은 서비스를 안전하게 유지하고 보호하기 위해 만들어진 정책입니다. KREAM을 사용하면 이 가이드라인과 이용약관에 동의하게 됩니다. 이 가이드라인을 위반하는 경우 콘텐츠가 삭제되거나, 계정이 비활성화되는 등의 제재를 받을 수
                있습니다.
              </p>
              <p>
                <br />
                &nbsp;
              </p>
              <h2><strong>커뮤니티 활동</strong></h2>
              <p>&nbsp;</p>
              <ul>
                <li>커뮤니티 활동이란 회원이 KREAM의 STYLE 서비스에 사진 및 의견을 포함한 콘텐츠를 게시하는 활동입니다.</li>
                <li>회원의 커뮤니티 활동은 다른 서비스 이용자가 콘텐츠를 다운로드하여 열람하거나 개인의 가정에서 비영리적인 목적으로 사적 이용하는 것을 허락한 것으로 간주합니다.</li>
                <li>회원은 KREAM의 이용약관에 어긋나지 않는 콘텐츠만을 게시할 수 있습니다.</li>
                <li>회원이 서비스 내에 게시하는 게시물은 서비스 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정 또는 편집되어 게시될 수 있습니다.</li>
              </ul>
              <p>
                <br />
                &nbsp;
              </p>
              <h2><strong>콘텐츠의 내용과 형식</strong></h2>
              <p>&nbsp;</p>
              <p><strong>직접 촬영했거나 공유할 권한이 있는 콘텐츠만 공유하세요. &nbsp;</strong></p>
              <p>STYLE에 올리는 콘텐츠의 소유권은 항상 회원님에게 있습니다. 원본 콘텐츠를 게시해야 하며 복사하거나 인터넷에서 수집하여 게시할 권한이 없는 콘텐츠는 올릴 수 없습니다.</p>
              <p>&nbsp;</p>
              <p><strong>모두가 즐길 수 있는 콘텐츠를 게시하세요. &nbsp;</strong></p>
              <p>STYLE에서 권장하는 내용과 형식에 잘 맞는 콘텐츠는 KREAM 운영팀에 의해 수시로 선별되며, 홈의 컬렉션을 통해 노출하게 됩니다. 콘텐츠의 내용은 패션 코디 등 일상 속에 바로 적용할 수 있거나 영감을 줄 수 있는 내용을 권장합니다.</p>
              <p>&nbsp;</p>
              <p><strong>부적절한 콘텐츠는 조치 대상이 될 수 있어요. &nbsp;</strong></p>
              <p>본 커뮤니티 가이드라인에 어긋나는 콘텐츠는 다른 회원들에 의해 신고될 수 있으며 별도의 경고 조치 없이 수시로 콘텐츠 운영팀에 의해 임시조치될 수 있습니다.</p>
              <p>&nbsp;</p>
              <figure class="table">
                <table>
                  <tbody>
                    <tr>
                      <td>• 판매 또는 직거래를 유도함</td>
                      <td>• 저작권 위반, 개인정보 노출 등 권리 침해가 우려됨</td>
                    </tr>
                    <tr>
                      <td>• 비방, 명예 훼손 또는 수치심을 유발함</td>
                      <td>• 정치적, 종교적 분쟁을 야기함</td>
                    </tr>
                    <tr>
                      <td>• 혐오적, 외설적, 범죄적 행위 등 공공질서 및 미풍양속에 위반됨</td>
                      <td>• 스팸 또는 지나치게 상업적인 내용</td>
                    </tr>
                    <tr>
                      <td>• 서비스에 대한 허위 및 오해의 소지가 있는 내용</td>
                      <td>• 개인정보 도용, 사칭 또는 타인의 정보를 무단 위변조한 경우</td>
                    </tr>
                    <tr>
                      <td colspan="2">• 기타 관계 법령 및 회사의 지침 등에 위반된다고 판단되는 경우</td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>
                <br />
                &nbsp;
              </p>
              <h2><strong>콘텐츠의 저작권</strong></h2>
              <p>&nbsp;</p>
              <ul>
                <li>회원이 서비스 내에 게시한 콘텐츠의 저작권은 해당 게시물의 저작자에게 귀속됩니다.</li>
                <li>회원이 게시한 콘텐츠는 저작권법에 의하여 보호를 받으며, KREAM이 작성한 저작물에 대한 저작권 및 기타 지적재산권은 KREAM에 귀속합니다.</li>
                <li>
                  회원은 게시한 콘텐츠의 저작권 및 기타 산업재산권을 갖고 있음을 명확히 합니다. 다만 회원은 본 서비스에 콘텐츠를 게시함으로써 KREAM이 서비스 및 사업과 관련하여 해당 콘텐츠(및 그 2차적 저작물)의 일부 또는 전부를 전 세계적으로
                  비독점적으로 무상으로 사용할 권리(이용, 공개, 반포, 광고, 출판, 복제, 공연, 공중송신, 전시, 배포, 대여, 2차 저작물작성)를 허락하며 이를 양도할 수 있음에 동의한 것으로 간주합니다. 또한 KREAM에 대해 저작인격권을 행사하지 않을 것에
                  동의한 것으로 간주합니다.
                </li>
              </ul>
              <p>
                <br />
                &nbsp;
              </p>
              <h2><strong>콘텐츠의 관리 및 임시조치</strong></h2>
              <p>&nbsp;</p>
              <ul>
                <li>
                  회원의 게시물이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는 경우, 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등의 임시조치를 요청할 수 있으며 KREAM은 관련법에 따라 조치를 하여야 합니다. 고객센터로
                  문의하시기 바랍니다.
                </li>
                <li>부적절한 콘텐츠에 대한 판단은 (사)한국인터넷자율정책기구(KISO)의 정책규정과 정보통신망법 제 44조의 7 및 그 상세 기준이 되는 정보통신에 관한 심의규정을 참고합니다.</li>
                <li>KREAM은 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 서비스 운영방침 및 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다</li>
                <li>KREAM은 콘텐츠와 관련한 문제에 대응하고 게시자와 신고자에게 안내를 진행합니다. 단, 불법, 음란, 성인 관련 콘텐츠의 경우 안내 없이 조치합니다.</li>
                <li>그 외에 서비스의 신뢰도를 떨어뜨리는 콘텐츠 활용 및 부적절한 활동이 확인되는 경우, 해당 계정의 활동 전체가 제한할 수 있습니다.</li>
                <li>본인의 게시물이 노출 중단된 경우, 권리침해 사실을 반박할 수 있는 소명자료를 통해 재게시 요청이 가능합니다.</li>
              </ul>
              <p>
                <br />
                &nbsp;
              </p>
              <p>본 커뮤니티 가이드라인과 <a href="https://kream.co.kr/agreement">이용약관</a>을 참고하시어 건강한 커뮤니티를 만들어주세요. KREAM의 STYLE이 최고의 패션 커뮤니티로 성장할 수 있도록 도와주셔서 감사합니다.</p>
              <p>
                <br />
                &nbsp;
              </p>
              <p>문의 사항이 있으신 경우 고객센터 또는 1:1문의하기로 문의하시기 바랍니다.</p>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox8">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">검수 및 품질 보증 관련 주의사항
      	  </div>
      	  
      	  <div id="content8" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 &nbsp;2021년 9월 10일</p>
              <p>&nbsp;</p>
              <p>KREAM의 검수기준은 거래 당사자간 원활한 거래와 보다 균형있는 검수기준 확립을 위해 지속적으로 업데이트 되고 있습니다. 거래에 앞서 최신 검수기준을 참고하시기 바랍니다.</p>
              <p>&nbsp;</p>
              <p>회원님께서 판매 또는 구매하신 모든 상품은 KREAM의 전문 검수팀이 제품의 컨디션을 꼼꼼하게 확인한 후, 검수 합격 시에만 출고하고 있습니다.</p>
              <p>&nbsp;</p>
              <p>
                KREAM의 검수기준으로 고지된 사항 이외 제조사에서 불량으로 인정하지 않는 기준, 또는 제조사의 공정상 발생하는 상품상태 중 당사 검수기준에 따라 그 여부를 명확히 분별할 수 없는 상품의 경우 하자로 판단하지 않으며, 이로 인한 구매취소는
                불가하므로 신중한 거래 부탁 드립니다.
              </p>
              <p>&nbsp;</p>
              <p>KREAM의 검수기준에 동의하지 않으실 경우 거래가 불가하오니 거래 당사자는 거래에 앞서 KREAM의 검수기준을 반드시 검토하시기 바랍니다.</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>예외사항에 대한 판단</h2>
              <p>&nbsp;</p>
              <p>고지드린 검수 기준으로 판정하기 모호한 상품 상태, 비특정적 상품 상태, 특정 모델의 제조공정에 따른 개체차이와 관련하여서는 <strong>검수센터 책임자의 최종 판단 하에 결정하게 됩니다.</strong></p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>제조업체 불량에 대한 면책</h2>
              <p>&nbsp;</p>
              <p>KREAM은 정가품 판정 및 검수기준에 의한 기본 품질 확인을 수행하고 있으나, 통신판매 중개자로서 제조업체의 제품별 보증에 대해서는 책임을 지지 않습니다.</p>
              <p>
                <br />
                제품 기능에 관한 사항이나 사용 후 불량 발생 등 기타 제품 관련 질문은 제조업체에 문의하시기 바랍니다.<br />
                단, 제조업체의 A/S 여부는 보장하지 않습니다. (<a href="https://kream.co.kr/agreement">이용약관</a> 제22조 3항 참고)
              </p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>품질 보증 예외사항 및 면책</h2>
              <p>&nbsp;</p>
              <p>KREAM은 다음과 같은 사항에 대해서 품질 보증에 대한 책임을 지지 않으며 이로 인한 환불, 구매 취소가 불가합니다.</p>
              <p>&nbsp;</p>
              <ul>
                <li>KREAM의 검수 통과 후 부착된 검수택 또는 검수 실링(VOID 스티커) 등이 훼손되거나 제거된 경우</li>
                <li>(제조업체의 자체 실링이 있는 상품) 자체 실링이 개봉되었거나 훼손 또는 제거된 경우</li>
              </ul>
              <p>&nbsp;</p>
              <p>또한, 아래의 사항에 해당하는 상품은 KREAM의 품질 보증 대상이 될 수 없으며 거래가 불가합니다.</p>
              <p>&nbsp;</p>
              <ul>
                <li>KREAM 검수 완료 증표(검수택, 실링 등), 제조업체의 자체 실링이 위변조된 경우</li>
                <li>KREAM의 검수기준에 의해 가품/중고품 판정을 받은 이후, 재판매하는 경우</li>
              </ul>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox9">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">검수센터 입고 지원 정책
      	  </div>
      	  
      	  <div id="content9" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 2022년 4월 1일</p>
              <p>&nbsp;</p>
              <p>KREAM에서는 판매자 귀책의 거래 실패로 인한 구매자 피해를 예방하고 미입고 반송으로 인한 판매자의 불편을 최소화하기 위하여, 입고 처리 가능한 케이스를 발굴하여 지원하고 있습니다.</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2><strong>입고 지원</strong></h2>
              <figure class="table">
                <table>
                  <thead>
                    <tr>
                      <th>구분</th>
                      <th>비용</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>카테고리 교차, 혼합 오배송</td>
                      <td>1,000원/건</td>
                    </tr>
                  </tbody>
                </table>
              </figure>
              <p>* 기타 검수센터 입고 담당자 및 책임자의 최종 판단에 따라 상품 식별이 가능한 경우에도 입고 지원될 수 있습니다.&nbsp;</p>
              <p>* 입고 지원 비용은 해당 판매 건 정산 시 차감됩니다.</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2><strong>유의 사항</strong></h2>
              <p>• 미체결 상품 도착, 이미 사용되었거나 허위가 명백한 송장번호 등 판매자 귀책이 분명한 경우는 미입고 착불 반송처리됩니다.</p>
              <p>• 검수 불합격 등의 사유로 정산 차감이 불가할 경우, 해당 판매자의 다른 판매건에서 차감될 수 있습니다.</p>
              <h4>• 판매자 귀책의 기존 미입고 사유에 해당하므로 누적 횟수에 따라 서비스 이용이 제한될 수 있습니다.</h4>
            </div>
      	  </div>
      	</li>
      	<li id="titleBox10">
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">배송 사고 보상 프로세스
      	  </div>
      	  
      	  <div id="content10" class="overflow-y-auto block pt-[30px] px-[30px] pb-[28px] bg-[#fafafa] text-[14px] tracking-[-.21px]">
            <div class="overflow-y-auto break-words max-w-[640px] box-border">
              <p>최종 수정일 2021년 5월 17일</p>
              <p>&nbsp;</p>
              <p>배송 과정 중 분실/도난/파손 등 사고 발생 시, 아래 프로세스에 따라 보상이 진행될 수 있습니다.</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>1. 분실/도난</h2>
              <p>&nbsp;</p>
              <p><strong>① 유형 예시</strong></p>
              <p>• &nbsp;집화일 이후 배송 과정 중 최대 7일 이상 흐름이 멈춰 있음</p>
              <p>• &nbsp;상품이 도착한 것으로 조회되나 실물 상품을 수령한 바 없음</p>
              <p>• &nbsp;상품 수령 시 택배 박스를 개봉한 흔적이 확인되고 주문 상품이 포함되어 있지 않음</p>
              <p>&nbsp;</p>
              <p><strong>② 사고 접수 필요 사항</strong></p>
              <p>• &nbsp;주문서</p>
              <p>• &nbsp;운송장</p>
              <p>* 분실 유형에 따라 사고 접수 시, 도착지 CCTV 영상 등이 요구될 수 있음</p>
              <p>&nbsp;</p>
              <p><strong>③ 접수 기한</strong></p>
              <p>집화일로부터 10일 이내</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h2>2. 파손/손상</h2>
              <p>&nbsp;</p>
              <p><strong>① 유형 예시</strong></p>
              <p>• &nbsp;택배 박스가 외력에 의해 파손된 것이 육안으로 확인되며, 본품 박스/내용물 또한 파손이 확인됨</p>
              <p>• &nbsp;택배 박스가 젖어 있으며, 본품 박스/내용물 또한 젖어있음</p>
              <p>&nbsp;</p>
              <p><strong>② 사고 접수 필요 사항</strong></p>
              <p>• &nbsp;주문서</p>
              <p>• &nbsp;운송장</p>
              <p>• &nbsp;운송장 확인이 가능한 택배 박스 사진 1장 및 파손/손상 부위 디테일 사진 3장 (다각도 촬영)</p>
              <p>• &nbsp;상품 식별이 가능한 박스 라벨 포함 사진 1장</p>
              <p>* 사고 접수 후 파손/손상에 해당하는 실물 상품을 회수하여 파손/손상 정도를 확인함</p>
              <p>&nbsp;</p>
              <p><strong>③ 접수 기한</strong></p>
              <p>배송 완료일로부터 7일 이내</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <h3>주의사항</h3>
              <p>• &nbsp;접수 기한이 경과하였거나 구비 사항이 미비할 경우 사고 접수가 불가합니다.</p>
              <p>• &nbsp;사고 확인, 보상금 확정 및 지급까지는 사고 배송 업체 사정에 따라 약 30일 가량 소요될 수 있습니다.</p>
              <p>• &nbsp;구체적인 보상의 범위는 사고 배송 업체의 보상 정책을 따르며, 거래 체결 금액을 초과하지 않습니다.</p>
            </div>
      	  </div>
      	</li>
      </ul>
    </div>
  
  <a class="close-area absolute top-[18px] right-[20px] cursor-pointer">X</a>
  </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  const modal3 = document.getElementById("tosModal")
  const headerTop3 = document.getElementById("headerTop")
  
  function modalOn3(){
    $('#tosModal').fadeIn("fast");
    $('#headerTop').fadeIn("slow", function(){
    	$(this).css('backgroundColor', 'rgba(34, 34, 34, .5)'),
    	$(this).css('borderColor', 'transparent')
    });
    
    modal3.style.display = "flex"
    modal3.style.backgroundColor = "rgba(34, 34, 34, .5)"
    
    
  }
  
  function isModalOn3(){
	return modal3.style.display === "flex"
  }

  function modalOff3(){
    modal3.style.display = "none"
    
    headerTop3.style.backgroundColor = "white"
    headerTop3.style.borderColor = "none"
    
  }
  // Modal 실행 Btn
  const btnModal3 = document.getElementById("tosBtn")
  btnModal3.addEventListener("click", e => {
    modalOn3()
  })
  
  const closeBtn3 = modal3.querySelector(".close-area")
  closeBtn3.addEventListener("click", e => {
    modalOff3()
  })

  modal3.addEventListener("click", e => {
    const evTarget3 = e.target
    if(evTarget3.classList.contains("modal-overlay")) 
      modalOff3()
    
  })

  window.addEventListener("keyup", e => {
    if(isModalOn3() && e.key === "Escape") {
      modalOff3()
    }
  })
  
  //tos

  $("div[id^='content']").each(function(){
    $(this).hide();
  });
  
  
  $('#titleBox1').click(function(){
	  $('#content1').toggle();
  });
  
  $('#titleBox2').click(function(){
	  $('#content2').toggle();
  });
  
  $('#titleBox3').click(function(){
	  $('#content3').toggle();
  });
  
  $('#titleBox4').click(function(){
	  $('#content4').toggle();
  });
  
  $('#titleBox5').click(function(){
	  $('#content5').toggle();
  });
  
  $('#titleBox6').click(function(){
	  $('#content6').toggle();
  });
  
  $('#titleBox7').click(function(){
	  $('#content7').toggle();
  });
  
  $('#titleBox8').click(function(){
	  $('#content8').toggle();
  });
  
  $('#titleBox9').click(function(){
	  $('#content9').toggle();
  });
  
  $('#titleBox10').click(function(){
	  $('#content10').toggle();
  });
  
});

</script>