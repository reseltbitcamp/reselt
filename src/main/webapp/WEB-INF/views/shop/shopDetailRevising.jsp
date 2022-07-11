<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<style>
.carousel-open:checked + .carousel-item {
  position: static;
  opacity: 100;
}
.carousel-item {
  -webkit-transition: opacity 0.6s ease-out;
  transition: opacity 0.6s ease-out;
}
#carousel-1:checked ~ .control-1,
#carousel-2:checked ~ .control-2,
#carousel-3:checked ~ .control-3 {
  display: block;
}
.carousel-indicators {
  list-style: none;
  margin: 0;
  padding: 0;
  position: absolute;
  bottom: 2%;
  left: 0;
  right: 0;
  text-align: center;
  z-index: 10;
}
#carousel-1:checked
  ~ .control-1
  ~ .carousel-indicators
  li:nth-child(1)
  .carousel-bullet,
#carousel-2:checked
  ~ .control-2
  ~ .carousel-indicators
  li:nth-child(2)
  .carousel-bullet,
#carousel-3:checked
  ~ .control-3
  ~ .carousel-indicators
  li:nth-child(3)
  .carousel-bullet {
  color: #d3d3d3; /*Set to match the Tailwind colour you want the active one to be */
}
</style>

<!-- left page -->
  		
  <div class="relative">
    <div class="relative md:fixed w-full md:w-6/12 min-h-screen content-center">
    <!-- <!DOCTYPE html> -->
      <html>

      <head>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">
      </head>
        <div class="carousel relative bg-yellow-200 w-2/3">
          <div class="carousel-inner relative overflow-hidden">
            <!--Slide 1-->
            <input class="carousel-open" type="radio" id="carousel-1" name="carousel" aria-hidden="true" hidden="" checked="checked">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-fill h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-3" class="prev control-1 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-yellow-500 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-2" class="next control-1 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-blue-700 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!--Slide 2-->
            <input class="carousel-open" type="radio" id="carousel-2" name="carousel" aria-hidden="true" hidden="">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-fill h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-1" class="prev control-2 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-blue-700 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-3" class="next control-2 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-blue-700 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!--Slide 3-->
            <input class="carousel-open" type="radio" id="carousel-3" name="carousel" aria-hidden="true" hidden="">
            <div class="carousel-item absolute opacity-0" style="height:75vh;">
              <div class="object-fill h-full w-full bg-center" style="background-image: url(https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp);"></div>
            </div>
            <label for="carousel-2" class="prev control-3 w-10 h-10 ml-2 md:ml-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-blue-700 leading-tight text-center z-10 inset-y-0 left-0 my-auto">‹</label>
            <label for="carousel-1" class="next control-3 w-10 h-10 mr-2 md:mr-10 absolute cursor-pointer hidden text-3xl font-bold text-black hover:text-white rounded-full bg-white hover:bg-blue-700 leading-tight text-center z-10 inset-y-0 right-0 my-auto">›</label>
      
            <!-- Add additional indicators for each slide-->
            <ol class="carousel-indicators">
              <li class="inline-block mr-3">
                <label for="carousel-1" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
              <li class="inline-block mr-3">
                <label for="carousel-2" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
              <li class="inline-block mr-3">
                <label for="carousel-3" class="carousel-bullet cursor-pointer block text-4xl text-white hover:text-blue-700">•</label>
              </li>
            </ol>
      
          </div>
        </div>
      
      </html>
    </div>
  
  <!-- right page -->
  <div class="md:w-6/12 ml-auto pl-10 border-l-2 border-gray-200 content-center">
      <div class="basis-1/2 max-w-[600px] flex-initial mb-3">
        <div class="max-w-md">
          <p class="text-lg font-black underline">Nike</p>
          <p>Nike Dunk Low Retro Black</p>
          <p class="mb-2 text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
        </div>

        <div class="border-b border-gray-300 flex-initial">
          <p class="mb-3 inline-block text-xs">사이즈</p>
          <a class="float-right cursor-pointer font-semibold">모든사이즈</a>
          <button></button>
        </div>

        <div class="mt-3 flex-initial">
          <p class="mb-3 text-xs">최근거래가
          <span class="float-right text-xl font-semibold">150,000원</p>
          <p class="float-right text-xs text-green-500">▼ 27,000원(-13.2%)</p>
        </div>
        
        <div class="flex flex-row gap-3 rounded-3xl p-1 text-center mt-9 flex-initial">
          <a id="buyBtn" href="#" class="w-80 rounded-xl p-2 bg-[#ef6153]  align-middle text-sm">
            <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">구매</strong>
              <div class="float-left ml-2">
                <p class="text-base font-semibold text-white">150,000원</p>
                <span class="float-left text-xs text-white ">즉시구매가</span>
              </div>
          </a>
      
          <a id="sellBtn" href="#" class="w-80 rounded-xl p-2 bg-[#41b979]  align-middle text-sm">
            <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">판매</strong>
              <div class="float-left ml-2">
                <p class="text-base font-semibold text-white">150,000원</p>
                <span class="float-left text-xs text-white ">즉시 판매가</span>
              </div>
          </a>
        </div>
        
          <button id="bookmarkModal" type="button" class="h-[60px] w-full border-[1px] border-gray-300 flex items-center justify-center rounded-[10px] flex-initial mt-5">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1">
              <path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
            </svg>
            <span class="mx-1.5">관심상품</span>
            <span class="font-semibold">10.2만</span>
          </button>  
          
          <div class="mt-7 flex-initial">
            <p class="text-lg font-bold pb-1">상품 정보</p>
            <div class="border-y border-gray-300">
              <dl class="flex py-5 min-h-[20px]">
                <div class="flex-1 border-r pr-3">
                  <dt class="text-xs  border-gray-300">모델번호</dt>
                  <dd class="text-sm font-semibold">DD1391-100</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">출시일</dt>
                  <dd class="text-sm">21/01/14</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">컬러</dt>
                  <dd class="text-sm ">WHITE/BLCK</dd>
                </div>
                <div class="border-r flex-1 px-3 border-gray-300">
                  <dt class="text-xs ">발매가</dt>
                  <dd class="text-sm">129,000원</dd>
                </div>
              </dl>
            </div>
          </div>
      
        <div class="flex-initial">
        <h3 class="mt-3 font-extrabold">배송 정보</h3>
        <div class="rounded-lg border-gray-300 flex items-center">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjFfMjU5/MDAxNjM3NDczNzU0MjA1.ON3pvFYAq_xSSaNWDgUWe1YfIx-C0fm91PDtcsUn3AEg.Q4EbbNWl_ua916jg0NQ0dWOS3h7W9eiiI2kK9YPWlgwg.PNG/a_120a84f036724d0d97a2343aafff4ecf.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-b w-full relative p-[18px] flex-1">
            <p class="font-semibold">
              <span>빠른배송</span>
              <span class="text-sm font-medium">3000원</span>
            </p>
            <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
          </div>
         </div>
      </div>
      <div class="rounded-lg border-gray-300 flex items-center">
        <div class="flex-none">
          <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
        </div>
        <div class="text-sm items-center border-b w-full relative p-[18px] flex-1">
          <p class="font-semibold">
            <span>일반배송</span>
            <span class="text-sm font-medium">3000원</span>
          </p>
          <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
        </div>
       </div>

       <!-- 광고 박스 -->
       <div class="overflow-hidden border-b w-full relative p-[18px] ">
       <div id="showcase" class="mx-[10px] my-[10px] px-[10px] grid grid-cols-1 gap-3">
        <a href="#">
            <img class="w-full object-contain h-full" src="/ReseltProject/img/shopad/detailad1.jpg"> 
        </a>
       </div>
      </div>

       <!-- 상단 전체 div 끝 -->
    
    <hr>

    <!-- middle of right pg -->
    <div class="mt-6 grid grid-cols-2 gap-10">
      <div class="text-xl font-semibold w-40">지역 별 시세</div>
      <!-- Dropdown Button -->
      <div class="text-right pb-2">
        <button id="dropdownInformationButton" data-dropdown-toggle="dropdownInformation" class="text-black bg-white hover:bg-white font-medium rounded-lg text-sm px-4 py-2.5 inline-flex items-center dark:bg-white dark:hover:bg-white dark:focus:ring-white text-center" type="button" >인기순↓↑ <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></button>
      
        <!-- Dropdown menu -->
        <div id="dropdownInformation" class="z-10 hidden bg-white divide-y divide-gray-100 rounded shadow w-44 dark:bg-white dark:divide-gray-600">
          <ul class="py-1 text-sm text-black dark:text-black" aria-labelledby="dropdownInformationButton">
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">인기순</a>
           </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">프리미엄순</a>
            </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">즉시 구매가순</a>
            </li>
              <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">즉시 판매가순</a>
            </li>
            <li>
              <a href="#" class="block px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">발매일순</a>
            </li>	
          </ul>
        </div>
      </div>
    </div>

    <!-- chart / canvas -->
    <div class="shadow-lg rounded-lg overflow-hidden ">
      <div class="py-1 px-2 bg-gray-50">
        <ul class="flex">
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white" href="#">korea</a>
          </li>
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white " href="#">us</a>
          </li>
          <li class="flex-1 mr-2">
            <a class="text-center block border border-gray-400 rounded py-2 px-4 bg-gray-400 hover:bg-gray-500 text-white" href="#">eu</a>
          </li>
        </ul>
      </div>

      <canvas class="p-10" id="chartLine"></canvas>
    </div>
    <div class="pt-7">
     <div class="py-3 mt-6 grid grid-cols-2 gap-10 border-b border-gray-200 flex-initial">
      <div class="text-xl font-semibold w-100">구매전 꼭 확인해주세요</div>
     </div>
    </div>
    <div class="py-3">
    <div class="py-1 grid grid-cols-1 border-b border-gray-200 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown0">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>배송 기간 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 배송 기간 안내 -->
        <div id="hidecategory" class="text-sm pb-2	 pl-5 font-sm text-left text-gray-400"></div>
          <ul id="dropdown0" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
            
				KREAM은 최대한 빠르게 모든 상품을 배송하기 위해 노력하고 있습니다. 배송 시간은 판매자가 검수를 위하여 상품을 검수센터로 보내는 속도에 따라 차이가 있습니다.
				[빠른배송 구매]
				
				- 판매자가 보관 신청한 상품 중 검수에 합격한 상품을 KREAM의 전용 창고에 보관합니다. 보관 상품에 한하여 바로 구매와 95점 구매가 가능합니다.
				- 오늘(오후 11:59까지) 결제하면 내일 바로 출고되어 빠른 배송이 가능합니다. (연휴 및 공휴일, 천재지변, 택배사 사유 등 예외적으로 출고일이 변경될 수 있습니다. 빠른배송 안내
				
				[일반 구매]
				
				- 거래가 체결된 시점부터 48시간(일요일•공휴일 제외) 내에 판매자가 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 KREAM 검수센터에 도착합니다.
				- 검수센터에 도착한 상품은 입고 완료 후 3영업일 이내에 검수를 진행합니다. 검수 합격시 배송을 준비합니다.
				* 상품 종류 및 상태에 따라 검수 소요 시간은 상이할 수 있으며, 구매의사 확인에 해당할 경우 구매자와 상담 진행으로 인해 지연이 발생할 수 있습니다.
				
				- 검수센터 출고는 매 영업일에 진행하고 있으며, 출고 마감시간은 오후 5시입니다. 출고 마감시간 이후 검수 완료건은 운송장번호는 입력되지만 다음 영업일에 출고됩니다.
            
            </div>
          </ul>
        </div>
      </div>
    <div class="py-3">
    <div class="grid grid-cols-1 border-b border-gray-200 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown1">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>검수 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 검수 안내 -->
        <div id="hidecategory" class="text-sm pb-2 pl-5 font-sm text-left text-gray-400"></div>
          <ul id="dropdown1" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
		               판매자의 상품이 검수센터에 도착하면 전담 검수팀이 철저한 분석과 검사로 정가품 확인을 진행합니다.
				- 검수센터에서는 정가품 여부를 확인하기 위하여, 지속적으로 데이터를 쌓고 분석하여 기록하고 있습니다.
				- 업계 전문가로 구성된 검수팀은 박스와 상품의 라벨에서 바느질, 접착, 소재 등 모든 것을 검수합니다.
				검수 결과는 불합격•검수 보류•합격의 세가지 상태로 결과가 변경됩니다. 검수기준 보기
				* 검수 합격: KREAM 검수택(Tag)이 부착되어 배송을 준비함
				
				* 검수 보류: 앱에서 사진으로 상품의 상태 확인 및 구매 여부를 선택. (24시간 이후 자동 검수 합격)
				
				* 검수 불합격: 즉시 거래가 취소되고 구매하신 금액을 환불 처리함.(환불 수단은 결제 수단과 동일)
            </div>
          </ul>
        </div>
      </div>
      <div class="py-3">
      <div class="grid grid-cols-1 border-b border-gray-200 flex-initial">
        
        <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown2">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>구매 환불/취소/교환 안내</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button>
          <!-- 구매 환불 취소 교환 -->
          <div id="hidecategory" class="text-sm pb-2 pl-5 font-sm text-left text-gray-400"></div>
            <ul id="dropdown2" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
		           KREAM은 익명 거래를 기반으로 판매자가 판매하는 상품을 구매자가 실시간으로 구매하여 거래를 체결합니다.
					- 단순 변심이나 실수에 의한 취소/교환/반품이 불가능합니다. 상품을 원하지 않으시는 경우 언제든지 KREAM에서 재판매를 하실 수 있습니다.
					- 상품 수령 후, 이상이 있는 경우 KREAM 고객센터로 문의해주시기 바랍니다.

              </div>
            </ul>
          </div>
        </div>
    </div>
</div>

<hr class="border-y-gray-200">
<!-- style 페이지 -->

<div id="lower" class="h-56">
밑에... 
스타일 칸 구현...
</div>




<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$('#sellBtn').click(function(){
	location.href="./sellSize"
});

$('#buyBtn').click(function(){
	location.href="./buySize"
});
</script>

<!-- Flowbite Script-->
<script src="https://unpkg.com/flowbite@1.4.7/dist/flowbite.js"></script>
<script src="app.js"></script>

<!-- TailwindCSS configuration -->
<script src="https://cdn.tailwindcss.com"></script>
<script src="/ReseltProject/js/tailwind.config.js"></script>

<!-- Chart.js CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"> </script>

<!-- Chart line -->
<script>
  const labels = ["January", "February", "March", "April", "May", "June"];
  const data = {
    labels: labels,
    datasets: [
      {
        label: "Korea",
        borderColor: "hsl(26, 73%, 57%)",
        data: [0, 10, 5, 90, 20, 30, 45],
      },
      {
        label: "US",
        borderColor: "hsl(189, 50%, 78%)",
        data: [0, 20, 55, 60, 20, 11, 90],
       },
       {
        label: "EU",
        // backgroundColor: "hsl(0,0%,100%)",
        borderColor: "hsl(33, 73%, 69%)",
        data: [0, 30, 70, 50, 10, 20, 30],
       }, 
    ],
  };

  const configLineChart = {
    type: "line",
    data,
    options: {},
  };

  var chartLine = new Chart(
    document.getElementById("chartLine"),
    configLineChart
  );
</script>
