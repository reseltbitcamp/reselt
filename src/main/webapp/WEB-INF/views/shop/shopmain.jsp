<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

  <div id="indicators-carousel" class="relative" data-carousel="slide">
    <!-- Carousel wrapper -->
    <div class="overflow-hidden relative h-[100px]">
         <!-- ad 1 -->
        <div class="hidden duration-1000 ease-in-out bg-[#ffd952]" data-carousel-item="active">
            <img src="/ReseltProject/img/shopad/shopad1.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- ad 2 -->
        <div class="hidden duration-1000 ease-in-out bg-[#fff5d2]" data-carousel-item>
            <img src="/ReseltProject/img/shopad/shopad2.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- ad 3 -->
        <div class="hidden duration-1000 ease-in-out bg-[#cbf3ff]" data-carousel-item>
            <img src="/ReseltProject/img/shopad/shopad3.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- ad 4 -->
        <div class="hidden duration-1000 ease-in-out bg-[#8891ae]" data-carousel-item>
            <img src="/ReseltProject/img/shopad/shopad4.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- ad 5 -->
        <div class="hidden duration-1000 ease-in-out bg-[#6d4afe]" data-carousel-item>
          <img src="/ReseltProject/img/shopad/shopad5.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
        </div>
        <!-- ad 6 -->
        <div class="hidden duration-1000 ease-in-out bg-[#f5f1c4]" data-carousel-item>
          <img src="/ReseltProject/img/shopad/shopad6.jpg" class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>

    </div>
    
    <!-- Slider controls -->
    <button type="button" class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-prev>
        <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-[#ebf0f4]/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-5 h-5 text-black sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
            <span class="hidden">Previous</span>
        </span>
    </button>
    <button type="button" class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none" data-carousel-next>
        <span class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
            <svg class="w-5 h-5 text-black sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
            <span class="hidden">Next</span>
        </span>
    </button>
</div>

<!-- Dropdown Button -->
 <div class="text-right pr-8 pt-5 pb-2">
 	<button id="dropdownInformationButton" data-dropdown-toggle="dropdownInformation" class="text-black bg-white hover:bg-white font-medium rounded-lg text-sm px-4 py-2.5 inline-flex items-center dark:bg-white dark:hover:bg-white dark:focus:ring-white text-center" type="button" >인기순↓↑ <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></button>
 </div>
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
  <!-- Sidebar -->
<div id="container" class="flex flex-row">
  <div id="filter" class="basis-1/5 mx-[20px] my-[20px] pl-[32px]">
    <aside class="w-64" aria-label="Sidebar">
      <div class="overflow-y-auto py-4 px-3 bg-gray-50 rounded dark:bg-white">
         <ul class="space-y-2">
            <li>
               <a href="#" class="flex items-center p-2 text-base font-normal text-black rounded-lg dark:text-black hover:bg-white dark:hover:bg-white">
                  <span class="ml-3 font-bold">필터</span>
               </a>
            </li>

            <!-- 카테고리 --> 
            <li>
               <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown0" data-collapse-toggle="dropdown0">
                     <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>카테고리</span>
                     <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
               </button>
               <ul id="dropdown0" class="hidden py-2 space-y-2">
                <div class="flex items-center mb-4">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>
                <div class="flex items-center">
                  <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                  <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
                </div>                    
               </ul>
            </li>

            <!-- 브랜드 -->
            <li>
              <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown1" data-collapse-toggle="dropdown1">
                    <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>브랜드</span>
                    <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
              </button>
              <ul id="dropdown1" class="hidden py-2 space-y-2">
               <div class="flex items-center mb-4">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>
               <div class="flex items-center">
                 <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                 <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
               </div>                    
              </ul>
           </li>

           <!-- Gender -->
           <li>
            <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown2" data-collapse-toggle="dropdown2">
                  <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>성별</span>
                  <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </button>
            <ul id="dropdown2" class="hidden py-2 space-y-2">
             <div class="flex items-center mb-4">
               <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
               <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">MALE</label>
             </div>
             <div class="flex items-center">
               <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
               <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">FEMALE</label>
             </div>
             <div class="flex items-center">
               <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
               <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">KIDS</label>
             </div>
            </ul>
           </li>

          <!-- Collection -->
            <li>
              <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown3" data-collapse-toggle="dropdown3">
                    <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>컬렉션</span>
                    <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
              </button>
              <ul id="dropdown3" class="hidden py-2 space-y-2">
              <div class="flex items-center mb-4">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>
              <div class="flex items-center">
                <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
                <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
              </div>                    
              </ul>
            </li>

         <!-- Shoe Size -->
          <li>
            <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown4" data-collapse-toggle="dropdown4">
                  <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>신발 사이즈</span>
                  <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
            </button>
            <ul id="dropdown4" class="hidden py-2 space-y-2">
            <div class="flex items-center mb-4">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>
            <div class="flex items-center">
              <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
              <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
            </div>                    
            </ul>
          </li>

       <!-- garment Size -->
        <li>
          <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown5" data-collapse-toggle="dropdown5">
                <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>의류 사이즈</span>
                <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
          </button>
          <ul id="dropdown5" class="hidden py-2 space-y-2">
          <div class="flex items-center mb-4">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>
          <div class="flex items-center">
            <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
            <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
          </div>                    
          </ul>
         </li>
         <li>
          <button type="button" class="flex items-center p-2 w-full text-base font-normal text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white" aria-controls="dropdown6" data-collapse-toggle="dropdown6">
                <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>의류 사이즈</span>
                <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns=""><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
          </button>
          <ul id="dropdown6" class="hidden py-2 space-y-2">
           <div class="flex items-center mb-4">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-black dark:focus:ring-black dark:ring-offset-gray-800 focus:ring-2 dark:bg-white dark:border-gray-500">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>
           <div class="flex items-center">
             <input id="default-checkbox" type="checkbox" value="" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600">
             <label for="default-checkbox" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Default checkbox</label>
           </div>                    
          </ul>
        </li>
       </div>
   </aside>
  </div> 
 
<!-- product img / details -->
  <div id="productlist" class="basis-4/5 mx-[20px] my-[50px] pl-[32px] grid grid-cols-4 gap-4" >
  
 <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/1.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
    
    <!-- 빠른배송 logo -->
    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/2.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>
  <a href="#">
    <div class="bg-[#edf0f1] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/3.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>
  </a>
  <a href="#">
    <div class="bg-[#f6eeec] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/4.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>

    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>
  </a>
  <a href="#">
    <div class="bg-[#edf0f1] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/5.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>
  </a>
  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/6.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>

    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>

  </a>
  <a href="#">
    <div class="bg-[#edf0f1] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/7.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/8.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#f6eeec] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/9.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#f5e9f1] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/10.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/11.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/12.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#f5e9f1] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/13.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/14.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/15.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>

    <div class="bg-white w-20 h-8">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/quickdelivery.jpg">
    </div>

  </a>

  <a href="#">
    <div class="bg-[#ebf0f4] w-60 h-60 rounded-xl">
      <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopproduct/16.jpg">
    </div>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;Nike</p>
    <p class="text-left text-[14px]">&nbsp;Nike Dunk Low Retro Black</p>
    <p class="text-left text-[13px] text-slate-400">&nbsp;나이키 에어포스 1 '07 로우 화이트</p>
    <br>
    <p class="text-left text-[16px] font-bold font-notoSans">&nbsp;129,000원</p>
    <p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p>
  </a>

  </div>
</div>