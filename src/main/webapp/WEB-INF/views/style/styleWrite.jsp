<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="styleWriteContainer" class="p-6 w-full h-[800px] bg-gray-50">
  <!-- Style 작성창 -->
  <div class="mx-auto my-0 w-[550px] h-[550px] drop-shadow-lg bg-white px-8">
    <form name="styleWriteForm">
     <!-- 사진 등록 -->
<<<<<<< HEAD
     <input type="file" name="img[]" id="img" class="invisible w-2 h-2" multiple>
      <div id="cameraBox" class="cursor-pointer w-full h-[250px] border border-gray-200 rounded-md">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="mx-auto mt-[110px] bi bi-camera-fill" viewBox="0 0 16 16">
          <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>
        </svg>
            
=======
     <input type="file" name="img" id="img" class="invisible w-2 h-2" onchange="setThumbnail(event);">
      <div id="cameraBox" class="cursor-pointer w-full h-[250px] border border-gray-200 rounded-md">
        <svg xmlns="http://www.w3.org/2000/svg" id="cameraIcon" width="16" height="16" fill="currentColor" class="mx-auto mt-[110px] bi bi-camera-fill" viewBox="0 0 16 16">
          <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>
        </svg>   
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
      </div>
      <!-- 상품 태그 -->
      <div id="productBox" class="mt-3 relative">
        <div id="productTag" class="absolute z-10 bg-zinc-600 p-3 w-[50px] h-[50px] rounded-full">
          <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-tag" viewBox="0 0 16 16">
            <path d="M6 4.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm-1 0a.5.5 0 1 0-1 0 .5.5 0 0 0 1 0z"/>
            <path d="M2 1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 1 6.586V2a1 1 0 0 1 1-1zm0 5.586 7 7L13.586 9l-7-7H2v4.586z"/>
          </svg>
        </div>
        <!-- 상품명 작성 -->
        <div id="productTitle" class="absolute left-7 rounded-md z-0 bg-gray-200 w-[460px] h-[50px] pl-8 pt-3 font-semibold text-slate-600">
          <p class="text-base">상품 태그를 추가해보세요</p>
          <input type="text" id="productResult" name="productResult" class="invisible w-1 h-1">
        </div>
      </div>
      <!-- 글 작성 -->
      <textarea id="styleWriteText" name="styleWriteText" class="mt-10 pt-10 w-[487px] h-[150px] placeholder:italic placeholder:text-slate-400 block bg-white w-full border border-slate-300 rounded-md py-2 pl-9 pr-3 shadow-sm focus:outline-none focus:border-gray-300 focus:ring-gray-200 focus:ring-1 sm:text-sm" name="productTagSearch" id="productTagSearch" placeholder="스타일 글 작성... "></textarea>
      <div id="buttonBox" class="w-full">
<<<<<<< HEAD
        <button id="faqBtn" class="mt-3 ml-48 w-28 h-11 text-base bg-zinc-700 text-white rounded-md font-medium">작성 완료</button>
=======
        <div id="faqBtn" class="mx-auto my-3 w-28 h-11 bg-zinc-700 text-white rounded-md" onclick="location.href='/ReseltProject/style/styleList'">
          <p class="pt-3 px-6 text-base">작성 완료</p>
        </div>
        <!-- <button id="faqBtn" class="mt-3 ml-48 w-28 h-11 text-base bg-zinc-700 text-white rounded-md font-medium" onclick="location.href='/ReseltProject/style/styleList'">작성 완료</button> -->
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
      </div>
    </form>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<<<<<<< HEAD
<script type="text/javascript">
$(function(){
  $('#cameraBox').click(function(){
    $('#img').trigger('click');
  });
});
</script>
=======
<script type="text/javascript" src="/ReseltProject/js/style.js">

>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
