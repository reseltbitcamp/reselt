<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="styleWriteContainer" class="p-6 w-full h-[800px] bg-gray-50">
  <div id="styleWriteForm" class="mx-auto my-0 w-[550px] h-[550px] drop-shadow-lg bg-white">
    <form name="boardWriteForm">
      <input type="text" class="w-[500px] h-[400px] placeholder:italic placeholder:text-slate-400 block bg-white w-full border border-slate-300 rounded-md py-2 pl-9 pr-3 shadow-sm focus:outline-none focus:border-gray-300 focus:ring-gray-200 focus:ring-1 sm:text-sm" name="productTagSearch" id="productTagSearch" placeholder="스타일 글 작성... ">
       
            
            	<div class="alertMsg" id="contentDiv"></div>
    
               	<input type="button" value="글쓰기" id="boardWriteBtn">
               	<input type="reset" value="다시작성">
				<input type="button" value="목록" onclick="location.href='boardList'">
</form>
  </div>
</div>