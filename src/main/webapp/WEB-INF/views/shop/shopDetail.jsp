<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="mx-auto max-w-[1280px] px-7 pt-8 pb-[120px]">
  <div class="flex flex-row p-10">
    <div class="basis-1/2 pr-[3%]">
      <img class="mx-auto w-full" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" />
    </div>

    <div class="basis-1/2 border-l-2 pl-10 max-w-[600px]">
      <div class="max-w-md">
        <p class="text-lg font-black underline">Nike</p>
        <p>Nike Dunk Low Retro Black</p>
        <p class="mb-2 text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
      </div>

      <div class="border-b border-gray-300">
        <p class="mb-3 inline-block text-xs">사이즈</p>
        <a class="float-right cursor-pointer font-semibold">모든사이즈</a>
        <button></button>
      </div>

      <div class="mt-3">
        <p class="mb-3 text-xs">최근거래가
        <span class="float-right text-xl font-semibold">150,000원</p>
        <p class="float-right text-xs text-green-500">▼ 27,000원(-13.2%)</p>
      </div>
      
      <div class="flex flex-row gap-3 rounded-3xl p-1 text-center mt-9">
        <a id="buyPage" class="w-80 rounded-xl p-2 bg-red-500  align-middle text-sm">
          <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">구매</strong>
            <div class="float-left ml-1">
              <p class="text-base font-semibold text-white">150,000원</p>
              <span class="float-left text-xs text-white ">즉시구매가</span>
            </div>
        </a>
    
        <a id="buyPage" class="w-80 rounded-xl p-2 bg-green-500  align-middle text-sm">
          <strong class=" ml-2 h-full w-14 float-left flex items-center border-r-[1px] text-white border-gray-400">구매</strong>
            <div class="float-left ml-1">
              <p class="text-base font-semibold text-white">150,000원</p>
              <span class="float-left text-xs text-white ">즉시 판매가</span>
            </div>
        </a>
       </div>

          <a class="h-[60px] border-[1px] border-gray-300 flex items-center justify-center rounded-[10px] ">
            <svg class="w-5 h-5"></svg>
            <span>관심상품</span>
            <span class="font-semibold">10.2만</span>
          </a>  

        <div class="mt-7">
          <p class="text-lg font-bold">상품 정보</p>
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
      
        <div>
        <h3 class="mb- mt-3 font-extrabold">배송 정보</h3>
        <div class="rounded-lg border-gray-300 flex items-center">
          <div class="flex-none">
            <img src=https://kream-phinf.pstatic.net/MjAyMTExMjlfMTQ4/MDAxNjM4MTc4MjI5NTk3.2phJLPtRvFqViNfhZu06HzNRiUBlT4cmZR4_Ukqsyesg.ikrfWOrL7WXCVO0Rqy5kMvOn3B2YpjLUj6RuJqosPX0g.PNG/a_8b54cbca40e945f4abf1ee24bdd031f7.png class="w-10 h-10">
          </div>
          <div class="text-sm items-center border-y w-full relative p-[18px] flex-1">
            <p class="font-semibold">
              <span>일반배송</span>
              <span class="text-sm font-medium">3000원</span>
            </p>
            <p class="text-sm text-gray-400">검수 후 배송 · 5-7일 내 도착 예정</p>
          </div>
        </div>
      </div>
      <div class="flex">
        <a href="#" class="w-full">
          <img class="h-[80px] w-full"src="https://kream-phinf.pstatic.net/MjAyMjA2MjlfMTIw/MDAxNjU2NDkzNDY2NDM1.VWp3oO6-D0c3CkRqXXlQF2q2uj51z6Ww-_cM5dwzLUsg.FMawZ4eiJYo6DEEa9cSogFlKmUB_Nlnd3BCIcY9IipEg.JPEG/a_0d8cb287f49d44429760a25cd8653a2e.jpg">
        </a>
      </div>
    </div>
  </div>
</div>
