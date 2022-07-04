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

<div id="showcase" class="mx-[72px] my-[50px] px-[32px] grid grid-cols-5 gap-4">
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">남성 추천</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">남성 추천</p>
  </a><a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">남성 추천</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">남성 추천</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">뉴 트렌딩</p>
  </a>
  <a href="#">
    <div class="bg-orange-500 w-56 h-24 rounded-xl"></div>
    <p class="text-center">남성 추천</p>
  </a>
</div>
