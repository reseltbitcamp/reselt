<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!-- left page -->
  		
 <div class="relative">
  <div class="relative md:fixed w-full md:w-6/12 min-h-screen inset-0">
    <h1 class="absolute bottom-0 left-0 p-20 text-white text-8xl">Product IMG<br />yes</h1>
    <img src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjQx/MDAxNjI3NDQxMDEyMjA2.DcysBFreA7tuLaKgU7UyPWct_NH87Ad9ktvGmEmaXjUg.VFp5d9BX5YPB-h6fGruYOUDXGrz_UPXrJWnPANfhhJAg.PNG/p_8d86fe659c3542b2aaafa40a7a0048c1.png?type=l_webp" class="object-cover w-full h-full" />
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
     <div class="py-3 mt-6 grid grid-cols-2 gap-10 border-b border-gray-300 flex-initial">
      <div class="text-xl font-semibold w-100">구매전 꼭 확인해주세요</div>
     </div>
    </div>
    <div class="py-3">
    <div class="py-2 grid grid-cols-1 border-b border-gray-300 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown0">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>배송 기간 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 배송 기간 안내 -->
        <div id="hidecategory" class="text-sm pl-5 font-sm text-left text-gray-400">모든 배송은 ~</div>
          <ul id="dropdown0" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br> 
            </div>
          </ul>
        </div>
      </div>
    <div class="py-3">
    <div class="py-2 grid grid-cols-1 border-b border-gray-300 flex-initial">
      
      <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown1">
            <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>검수 안내</span>
            <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
      </button>
        <!-- click event : 검수 안내 -->
        <div id="hidecategory" class="text-sm pl-5 font-sm text-left text-gray-400">검수</div>
          <ul id="dropdown1" class="hidden py-2 space-y-2">
            <div class="flex items-center pl-8">
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br>
              ㅁㄴㅇㄻㄴㅇㄹ<br> 
            </div>
          </ul>
        </div>
      </div>
      <div class="py-3">
      <div class="py-2 grid grid-cols-1 border-b border-gray-300 flex-initial">
        
        <button id="category" type="button" class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown2">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>구매 환불/취소/교환 안내</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button>
          <!-- 구매 환불 취소 교환 -->
          <div id="hidecategory" class="text-sm pl-5 font-sm text-left text-gray-400">취소 안된다</div>
            <ul id="dropdown2" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
                ㅁㄴㅇㄻㄴㅇㄹ<br>
                ㅁㄴㅇㄻㄴㅇㄹ<br>
                ㅁㄴㅇㄻㄴㅇㄹ<br>
                ㅁㄴㅇㄻㄴㅇㄹ<br>
                ㅁㄴㅇㄻㄴㅇㄹ<br>
                ㅁㄴㅇㄻㄴㅇㄹ<br>

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
