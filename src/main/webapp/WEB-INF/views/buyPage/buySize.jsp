<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
	<div class="m-auto max-w-[780px] max-h-[960px]">
	
		<div class="my-6 bg-white p-8 shadow-md">

		<!-- 이전페이지에서 내가 선택한 제품의 사진, 제품특성들 받아와서 표시 -->
		<div class=" items-center mb-5 flex">
			<img src="https://search.pstatic.net/common/?src=https%3A%2F%2Fshopping-phinf.pstatic.net%2Fmain_3305047%2F33050474907.jpg&type=f372_372" class="mr-4 block h-24 w-24 rounded-md" />
			<div class="flex-1">
				<p class="font-bold">DD1391-100</p>
				<p>Nike Dunk Low Retro Black</p>
				<p class="text-sm text-gray-400">나이키 덩크 로우 레트로 블랙</p>
				<p class="text-sm font-bold">275</p>
			</div>
		</div>

		<!-- $.each 사용 DB에 size,price 받아와서 표시-->
		<ul class="border-2 border-l-0 border-r-0 border-gray-400 items-center">
			<li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center ">
					<span id="size" class="mt-1">220(size)</span><br> 
					<span id="price" class="align-top text-xs text-red-400">price</span>
				</button>
			</li>

			<li class="inline-block my-2 mx-3 ">
				<button id="sizeBtn"class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">225(size)</span><br> 
					<span	id="price" class="align-top text-xs text-red-400">price</span>
				</button>
			</li>

			<li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">230(size)</span><br> 
					<span id="price" class="align-top text-xs text-red-400">price</span>
				</button>
			</li>

      <li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">230(size)</span><br> 
					<span id="price" class="align-top text-xs text-red-400">price</span>
				</button>
			</li>
			<!-- check박스에서 받아온 값을 표시 -->
		</ul>

		<div id="nextBtn" class="text-center">
			<button
				class="border m-4 bg-black rounded-xl text-white  w-3/4 h-14">
				<span id="price" class="text-lg ">price</span>
			</button>
		</div>
	</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../js/sellSize.js"></script>
<script type="text/javascript">
//sellPage 스크립트
$(function(){
  $('#nextBtn').hide();
  $('.sizeBtn').each(function(index){
    $(this).attr('sizeBtn-index',index);
    
  }).click(function(){
    var index = $(this).attr('sizeBtn-index');
    
    $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black');
    $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
  })

  $('.sizeBtn').click(function(){
    $('#nextBtn').show();
  })
	$('#nextBtn').click(function(){
		location.href="ReseltProject/buyPage/buyAgree"
	})
	
})
</script>
