<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="carousel">
  <div id="indicators-carousel" class="relative" data-carousel="slide">
    <!-- Carousel wrapper -->
    <div class="overflow-hidden relative h-[480px]">
         <!-- Item 1 -->
        <div class="hidden duration-700 ease-in-out bg-[#0232a2]" data-carousel-item="active">
            <img src="/ReseltProject/img/index/carousel_1.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- Item 2 -->
        <div class="hidden duration-700 ease-in-out bg-[#ffa826]" data-carousel-item>
            <img src="/ReseltProject/img/index/carousel_2.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- Item 3 -->
        <div class="hidden duration-700 ease-in-out bg-[#8891ae]" data-carousel-item>
            <img src="/ReseltProject/img/index/carousel_3.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- Item 4 -->
        <div class="hidden duration-700 ease-in-out bg-[#0088eb]" data-carousel-item>
            <img src="/ReseltProject/img/index/carousel_4.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
    </div>
    <!-- Slider indicators -->
    <div class="flex absolute bottom-5 left-1/2 z-30 space-x-3 -translate-x-1/2">
        <button type="button" class="w-3 h-3 rounded-full" aria-current="true" aria-label="Slide 1" data-carousel-slide-to="0"></button>
        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 2" data-carousel-slide-to="1"></button>
        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 3" data-carousel-slide-to="2"></button>
        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 4" data-carousel-slide-to="3"></button>
        <button type="button" class="w-3 h-3 rounded-full" aria-current="false" aria-label="Slide 5" data-carousel-slide-to="4"></button>
    </div>
    <!-- Slider controls -->
    <button type="button" class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-prev>
        <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
            <span class="hidden">Previous</span>
        </span>
    </button>
    <button type="button" class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-next>
        <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-5 h-5 text-white sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <span class="hidden">Next</span>
        </span>
    </button>
  </div>
</div>
<div id="showcase" class="mx-80 my-[50px] px-[32px] grid grid-cols-5 gap-3 text-center justify-items-center">
  <a href="#">
    <div class="w-56 h-24">
      <img src="/ReseltProject/img/index/showcase_01.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_02.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">남성 추천</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_03.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">여성 추천</p>
  </a>
  <a href="#">
    <div class=" w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_04.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">골프</p>
  </a><a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_05.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">Luxury Bag</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_06.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">오늘의 코디</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_07.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">여행 컬렉션</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_08.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">7월 럭키드로우</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_09.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">빠른배송</p>
  </a>
  <a href="#">
    <div class="w-56 h-24 rounded-xl">
      <img src="/ReseltProject/img/index/showcase_10.jpg" class="object-contain object-center rounded-xl">
    </div>
    <p class="text-center text-sm pt-2">누구나 창고보관</p>
  </a>
</div>
<div id="justdropped" class="mx-80 my-[50px] px-[32px]">
  <div id="justdroppedTitle">
    <p class="text-xl font-bold">Just Dropped</p>
    <p class="text-sm text-slate-500">발매 상품</p>
  </div>
  <div id="justdroppedItems" class="my-5 grid grid-cols-4 gap-5">
    <a href="#" id="productBox">
      <div id="productImg">
        <div class="bg-[#ebf0f5] rounded-xl">
          <img src="/ReseltProject/img/index/shoe_01.png" class="w-[282px] h-[282px] object-contain object-center scale-90">
        </div>
      </div>
      <div id="productInfo">
        <p class="my-1 text-sm font-bold underline text-[#333]">Nike</p>
        <p class="mb-1 text-sm text-[#222]">(W) Nike Dunk Low Ocean</p>
        <p class="text-base font-bold">144,000원</p>
        <p class="-mt-1 text-xs text-[#222222]">즉시 구매가</p>
      </div>
    </a>
    <a href="#" id="productBox">
      <div id="productImg">
        <div class="bg-[#f6eeed] rounded-xl">
          <img src="/ReseltProject/img/index/shoe_02.png" class="w-[282px] h-[282px] object-contain object-center scale-90">
        </div>
      </div>
      <div id="productInfo">
        <p class="my-1 text-sm font-bold underline text-[#333]">Jordan</p>
        <p class="mb-1 text-sm text-[#222]">(W) Jordan 1 Mid Black and Gym Red</p>
        <p class="text-base font-bold">149,000원</p>
        <p class="-mt-1 text-xs text-[#222222]">즉시 구매가</p>
      </div>
    </a>
    <a href="#" id="productBox">
      <div id="productImg">
        <div class="bg-[#ebf0f5] rounded-xl">
          <img src="/ReseltProject/img/index/shoe_03.png" class="w-[282px] h-[282px] object-contain object-center scale-90">
        </div>
      </div>
      <div id="productInfo">
        <p class="my-1 text-sm font-bold underline text-[#333]">Nike</p>
        <p class="mb-1 text-sm text-[#222]">(W) Nike SB Dunk Low Pro Be True</p>
        <p class="text-base font-bold">145,000원</p>
        <p class="-mt-1 text-xs text-[#222222]">즉시 구매가</p>
      </div>
    </a>
    <a href="#" id="productBox">
      <div id="productImg">
        <div class="bg-[#f6eeed] rounded-xl">
          <img src="/ReseltProject/img/index/shoe_04.png" class="w-[282px] h-[282px] object-contain object-center scale-90">
        </div>
      </div>
      <div id="productInfo">
        <p class="my-1 text-sm font-bold underline text-[#333]">Jordan</p>
        <p class="mb-1 text-sm text-[#222]">(W) Jordan 1 Low Taxi</p>
        <p class="text-base font-bold">250,000원</p>
        <p class="-mt-1 text-xs text-[#222222]">즉시 구매가</p>
      </div>
    </a>
  </div>
  <div class="text-center">
    <button id="showMore" class="my-5 px-8 h-10 border-[1px] border-[#222222] rounded-xl bg-white text-[#222222] text-sm">더보기</button>
  </div>
</div>
