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
      <img src="/ReseltProject/img/shopad/shopad1.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>
    <!-- ad 2 -->
    <div class="hidden duration-1000 ease-in-out bg-[#fff5d2]" data-carousel-item>
      <img src="/ReseltProject/img/shopad/shopad2.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>
    <!-- ad 3 -->
    <div class="hidden duration-1000 ease-in-out bg-[#cbf3ff]" data-carousel-item>
      <img src="/ReseltProject/img/shopad/shopad3.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>
    <!-- ad 4 -->
    <div class="hidden duration-1000 ease-in-out bg-[#8891ae]" data-carousel-item>
      <img src="/ReseltProject/img/shopad/shopad4.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>
    <!-- ad 5 -->
    <div class="hidden duration-1000 ease-in-out bg-[#6d4afe]" data-carousel-item>
      <img src="/ReseltProject/img/shopad/shopad5.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>
    <!-- ad 6 -->
    <div class="hidden duration-1000 ease-in-out bg-[#f5f1c4]" data-carousel-item>
      <img src="/ReseltProject/img/shopad/shopad6.jpg"
        class="object-contain block absolute top-1/2 left-1/2 h-full -translate-x-1/2 -translate-y-1/2" alt="...">
    </div>

  </div>

  <!-- Slider controls -->
  <button type="button"
    class="flex absolute top-0 left-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none"
    data-carousel-prev>
    <span
      class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-[#ebf0f4]/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
      <svg class="w-5 h-5 text-black sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor"
        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path>
      </svg>
      <span class="hidden">Previous</span>
    </span>
  </button>
  <button type="button"
    class="flex absolute top-0 right-0 z-30 justify-center items-center px-4 h-full cursor-pointer group focus:outline-none"
    data-carousel-next>
    <span
      class="inline-flex justify-center items-center w-8 h-8 rounded-full sm:w-10 sm:h-10 bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
      <svg class="w-5 h-5 text-black sm:w-6 sm:h-6 dark:text-gray-800" fill="none" stroke="currentColor"
        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
      </svg>
      <span class="hidden">Next</span>
    </span>
  </button>
</div>

<!-- Dropdown Button -->
<div class="text-right pr-8 pt-5 pb-2">
  <button id="dropdownInformationButton" data-dropdown-toggle="dropdownInformation"
    class="text-black bg-white hover:bg-white font-medium rounded-lg text-sm px-4 py-2.5 inline-flex items-center dark:bg-white dark:hover:bg-white dark:focus:ring-white text-center"
    type="button">인기순↓↑ <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
    </button>
</div>
<!-- Dropdown menu -->
<div id="dropdownInformation" class="buttonContainer z-10 hidden bg-white divide-y divide-gray-100 rounded shadow w-40 dark:bg-white dark:divide-gray-600">
  <ul class="py-1 text-xs text-black dark:text-black" aria-labelledby="dropdownInformationButton">
    <li id="likeSort" value="likeSort" name="allSort">
      <button class="likeSort block w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">인기순</button>
    </li>
   	 <li id="premiumSort" value="premiumSort" name="allSort">
      <button class="premiumSort block w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">프리미엄순</button>
    </li>
    <li id="purchaseSort" value="purchaseSort" name="allSort">
      <button id="sortByPriceHigh" class="purchaseSort block w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">가격 높은 순</button>
    </li>
    <li id="priceSort" value="priceSort" name="allSort">
      <button id="sortByPriceLow" class="sellSort block w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">가격 낮은 순</button>
    </li>
    <li id="dateSort" value="dateSort" name="allSort">
      <button class="dateSort block w-full px-4 py-2 hover:bg-gray-100 dark:hover:bg-gray-200 dark:hover:text-black">발매일순</button>
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
            <a href="#"
              class="flex items-center p-2 text-base font-normal text-black rounded-lg dark:text-black hover:bg-white dark:hover:bg-white">
              <span class="ml-3 font-bold">필터</span>
            </a>
          </li>

          <!-- 카테고리 -->
          <li>
            <button id="category" type="button" data-toggle=""
              class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white"
              aria-controls="dropdown0" data-collapse-toggle="dropdown0">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>카테고리</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"></path>
              </svg>
            </button>
            <!-- click event : hide below div -->
            <div id="hidecategory" class="text-sm pl-5 font-sm text-left text-gray-400" style="display:block">모든 카테고리</div>
            <ul id="dropdown0" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
                <input id="shoesSelect" type="checkbox" value="shoesSelect" name="allCategory" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="shoesSelect"class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">신발</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="garmentSelect" type="checkbox" value="garmentSelect" name="allCategory" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="garmentSelect" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">의류</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="accSelect" type="checkbox" value="accSelect" name="allCategory" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="accSelect" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">패션잡화</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="lifeSelect" type="checkbox" value="lifeSelect" name="allCategory" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="lifeSelect" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">라이프</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="techSelect" type="checkbox" value="techSelect" name="allCategory" class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="techSelect" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">테크</label>
              </div>
            </ul>
          </li>

          <!-- 브랜드 -->
          <li>
            <button id="brand" type="button"
              class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white"
              aria-controls="dropdown0" data-collapse-toggle="dropdown1">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>브랜드</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"></path>
              </svg>
            </button>
            <!-- click event : hide below div -->
            <div id="hidebrand" class="text-sm pl-5 font-sm text-left text-gray-400" style="display:block">모든 브랜드</div>
            <ul id="dropdown1" class="hidden overflow-y-auto h-40 py-2 space-y-2">
              <div class="flex items-center pl-8">
                <input id="A.P.C" type="checkbox" value="A.P.C" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="A.P.C"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">A.P.C</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="A.P.C Golf" type="checkbox" value="A.P.C Golf" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="A.P.C Golf"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">A.P.C Golf</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="DIOR" type="checkbox" value="DIOR" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="DIOR"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Dior</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="NIKE" type="checkbox" value="NIKE" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="NIKE"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Nike</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Hermes" type="checkbox" value="Hermes" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Hermes"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Hermes</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Acne Studios" type="checkbox" value="Acne Studios" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Acne Studios"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Acne Studios</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="JORDAN" type="checkbox" value="JORDAN" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="JORDAN"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">JORDAN</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="CDG" type="checkbox" value="CDG" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="CDG"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">CDG</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Chanel" type="checkbox" value="Chanel" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Chanel"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Chanel</label>
              </div>
               <div class="flex items-center pl-8">
                <input id="Celine" type="checkbox" value="Celine" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Celine"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Celine</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Common Project" type="checkbox" value="Common Project" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Common Project"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Common Project</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Y3" type="checkbox" value="Y3" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Y3"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Y3</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Hunter" type="checkbox" value="Hunter" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Hunter"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Hunter</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Chloe" type="checkbox" value="Chloe" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Chloe"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Chloe</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Cos" type="checkbox" value="Cos" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Cos"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Cos</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Suicoke" type="checkbox" value="Cos" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Suicoke"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Suicoke</label>
              </div>
               <div class="flex items-center pl-8">
                <input id="Goyard" type="checkbox" value="Goyard" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Goyard"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Goyard</label>
              </div>
               <div class="flex items-center pl-8">
                <input id="KENZO" type="checkbox" value="KENZO" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="KENZO"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">KENZO</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Vivienne Westwood" type="checkbox" value="Vivienne Westwood" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Vivienne Westwood"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Vivienne Westwood</label>
              </div>
               <div class="flex items-center pl-8">
                <input id="Jil Sander" type="checkbox" value="Jil Sander" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Jil Sander"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Jil Sander</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Thome Browne" type="checkbox" value="Thome Browne" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Thome Browne"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Thome Browne</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Wooyoungmi" type="checkbox" value="Wooyoungmi" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Wooyoungmi"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">WooYoungmi</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Saint Laurent" type="checkbox" value="Saint Laurent" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Saint Laurent"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Saint Laurent</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Tiffany co" type="checkbox" value="Tiffany co" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Tiffany co"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Tiffany co</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Fendi" type="checkbox" value="Fendi" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Fendi"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Fendi</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="Tods" type="checkbox" value="Tods" name="allBrand"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="Tods"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">Tods</label>
              </div>
            </ul>
          </li>

          <!-- Gender -->
          <li>
            <button id="gender" type="button"
              class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white"
              aria-controls="dropdown0" data-collapse-toggle="dropdown2">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>성별</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"></path>
              </svg>
            </button>
            <!-- click event : hide below div -->
            <div id="hidegender" class="text-sm pl-5 font-sm text-left text-gray-400" style="display:block">모든 성별</div>
            <ul id="dropdown2" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
                <input id="male" type="checkbox" value="male"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">남성</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="female" type="checkbox" value="female"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">여자</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="kids" type="checkbox" value="kids"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">키즈</label>
              </div>
            </ul>
          </li>
          
            <!-- 가격 -->
            <button id="price" type="button"
              class="flex items-center p-1 w-full text-sm font-bold text-black rounded-lg transition duration-75 group hover:bg-white dark:text-black dark:hover:bg-white"
              aria-controls="dropdown6" data-collapse-toggle="dropdown6">
              <span class="flex-1 ml-3 text-left whitespace-nowrap" sidebar-toggle-item>가격</span>
              <svg sidebar-toggle-item class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd"></path>
              </svg>
            </button>
            <div id="hideprice" class="text-sm pl-5 font-sm text-left text-gray-400" style="display:block">모든 가격</div>
            <ul id="dropdown6" class="hidden py-2 space-y-2">
              <div class="flex items-center pl-8">
                <input id="lowprice" type="checkbox" value="lowprice"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">10만원 이하</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="lowmidprice" type="checkbox" value="lowmidprice"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">10만원 - 30만원 이하</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="midprice" type="checkbox" value="midprice"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">30만원 - 50만원 이하</label>
              </div>
              <div class="flex items-center pl-8">
                <input id="highprice" type="checkbox" value="highprice"
                  class="w-4 h-4 text-black bg-gray-100 rounded border-gray-300 focus:ring-gray-700 dark:focus:ring-gray-700 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-300 dark:border-gray-400">
                <label for="default-checkbox"
                  class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-800">50만원 이상</label>
              </div>
           </ul>
          </li>
      </div>
    </aside>
  </div>

  <!-- product img / details tagged you to product datail pg...-->
    <!-- product content -->

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script type="text/javascript" src="/ReseltProject/js/style.js"></script> -->
<script type="text/javascript">
$(function(){
  ProductList();
});
</script>
  
<div id="productList" class="infinite basis-4/5 mx-[20px] my-[15px] pl-[32px] grid grid-cols-4 auto-cols-auto gap-4">
  
   
</div>

  
</script>
 
</div>
<!-- pg -->
<input type="text" id="pg" value="${requestScope.pg }" class="invisible">

<!-- Main modal -->
<div id="popup-modal" tabindex="-1"
          class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 md:inset-0 h-modal md:h-auto">
          <div class="relative p-4 w-2/3 max-w-md h-full md:h-auto">
            <div class="relative bg-white rounded-lg shadow dark:bg-white">
              <button type="button"
                class="absolute top-3 right-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-800 dark:hover:text-white"
                data-modal-toggle="popup-modal">
                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                  <path fill-rule="evenodd"
                    d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                    clip-rule="evenodd"></path>
                </svg>
              </button>
              <div class="p-1 text-center">
                <h3 class="mb-5 font-bold text-sm text-gray-700 dark:text-gray-700">관심 상품 추가</h3>
              </div>
              <!-- modal detail -->
              <div id="elem1">
                <div class="productDetail text-center pb-3">
                  <img class="w-16 h-16" style="display: -webkit-inline-box"
                    src="http://3.39.241.175:6753/upload/resources/img/product/%7B25632%7D/%7Bimg_file%7D">
                  <p class="text-xs font-bold">Jordan 1 Retro High OG Black Mocha</p>
                  <p class="text-xs font-light">조던 1 레트로 하이 OG 블랙 모카</p>
                </div>
              </div>
              <div class="p-0.5 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  230
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  235
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
              <div class="p-0.5 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  240
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  245
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
              <div class="p-0.5 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  250
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  255
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
              <div class="p-0.5 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  260
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  265
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
              <div class="pb-0.5 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  270
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-400">
                  275
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
              <div class="pb-6 font-semibold text-center">
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-600">
                  280
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
                <button data-modal-toggle="popup-modal" type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-[5px] font-medium px-16 py-0.5 hover:text-gray-900 focus:z-10 dark:bg-white dark:text-gray-600 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600">
                  285
                  <p>
                    <svg id="bookmark" xmlns="http://www.w3.org/2000/svg" class="h-4 w-4" fill="none"
                      viewBox="0 0 24 24" stroke="currentColor" stroke-width="0.5">
                      <path stroke-linecap="round" stroke-linejoin="round"
                        d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" />
                    </svg>
                  </p>
                </button>
              </div>
            </div>
          </div>
        </div>
       
    

<!-- query -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/shopMain_jquery.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/shopMain.js"></script>

<!-- filter Script -->
<script type="text/javascript">
let displayState = {none: "block", block: "none"}
let ids = ["category", "brand", "gender", "price"]
function toggleDisplayState(id) {
  let ele = document.getElementById("hide" + id);
  ele.style.display = displayState[ele.style.display];
}
ids.forEach(id=>{
  document.getElementById(id).addEventListener("click", ()=>{
    toggleDisplayState(id);
  })
})
// <!-- svg script-->
const btn = document.getElementById('bookmark')
const bookmarkColor = document.getElementById('bookmarkColor')
btn.addEventListener('click', function(){
   if (bookmarkColor.style.fill === 'none'){
   bookmarkColor.style.fill = '#DFBD69'
   }
   else {
   bookmarkColor.style.fill = 'none';   
   }
})

// const btn1 = document.getElementById('smile')
// const smileColor = document.getElementById('smileColor')
// btn1.addEventListener('click', function(){
//    if (smileColor.style.fill === 'none'){
//    smileColor.style.fill = '#FFFF00'
//    }
//    else {
//    smileColor.style.fill = 'none';   
//    }
// })
</script>


