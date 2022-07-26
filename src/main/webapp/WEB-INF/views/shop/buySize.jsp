<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<form id="buySizeForm">
	<div class="m-auto max-w-[780px] max-h-[960px] my-[50px]">
	<input type="hidden" id="pid" name="pid" value='${pid}'>
		<div class="my-6 bg-white p-8 shadow-md">

		<!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
		<div class=" items-center mb-5 flex">
			<img id="product_img" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" class="mr-4 block h-24 w-24 rounded-md" />
			<div class="flex-1">
				<p id="product_id" class="font-bold" ></p>
				<p id="product_name_eng"></p>
				<p id="product_name_kor"class="text-sm text-gray-400"></p>
			</div>
		</div>

		<!-- $.each 사용 DB에 size,price 받아와서 표시-->
		<ul id="priceTable" class="border-2 border-l-0 border-r-0 border-gray-400 items-center">
			<!-- <li class="inline-block my-2 mx-3">
				<button type="button" id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center ">
					<span id="size" class="mt-1">test</span><br> 
					<span id="price" class="align-top text-xs text-red-400">test</span>
				</button>
			</li> -->

		</ul>
</form>

		<div id="nextBtn" class="text-center">
			<button type="button"
				class="border m-4 bg-black rounded-xl text-white  w-3/4 h-14">
				<span id="price" class="text-lg ">price</span>
			</button>
		</div>
	</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/buySize.js"></script>
