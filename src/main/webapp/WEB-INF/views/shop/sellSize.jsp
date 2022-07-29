<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
	<div class="m-auto max-w-[780px] max-h-[960px]">
	
		<div class="my-6 bg-white p-8 shadow-md">

		<!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
		<div class=" items-center mb-5 flex">
			<img id='product_img' src="" class="mr-4 block h-24 w-24 rounded-md" />
			<div class="flex-1">
				<p id='product_id' class="font-bold"></p>
				<p id='product_name_eng'></p>
				<p id='product_name_kor' class="text-sm text-gray-400"></p>
				<!-- <p class="text-sm font-bold">275</p> -->
			</div>
		</div>

		<!-- $.each 사용 DB에 size,price 받아와서 표시-->
		<input id='pid' type='hidden' value='${param.pid }' />
		<ul id='priceTable' class="border-2 border-l-0 border-r-0 border-gray-400 text-center">

		</ul>

		<div id="nextBtn" class="text-center">
			<button id="PriceBtn" class="border m-4 bg-green-400 rounded-xl text-white  w-3/4 h-14">
				<span id="price" class="text-lg ">price</span>
			</button>
		</div>
	</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/sellSize.js"></script>