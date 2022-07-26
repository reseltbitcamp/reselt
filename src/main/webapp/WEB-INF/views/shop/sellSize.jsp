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
		<ul id='priceTable' class="border-2 border-l-0 border-r-0 border-gray-400 items-center">
<!-- 			<li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center ">
					<span id="size" class="mt-1">220(size)</span><br> 
					<span id="price" class="align-top text-xs text-green-500">price</span>
				</button>
			</li>

			<li class="inline-block my-2 mx-3 ">
				<button id="sizeBtn"class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">225(size)</span><br> 
					<span	id="price" class="align-top text-xs text-green-500">price</span>
				</button>
			</li>

			<li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">230(size)</span><br> 
					<span id="price" class="align-top text-xs text-green-500">price</span>
				</button>
			</li>

      <li class="inline-block my-2 mx-3">
				<button id="sizeBtn" class="sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ">
					<span id="size" class="mt-1">230(size)</span><br> 
					<span id="price" class="align-top text-xs text-green-500">price</span>
				</button>
			</li> -->
			<!-- check박스에서 받아온 값을 표시 -->
		</ul>

		<div id="nextBtn" class="text-center">
			<button id="PriceBtn" class="border m-4 bg-green-400 rounded-xl text-white  w-3/4 h-14">
				<span id="price" class="text-lg ">price</span>
			</button>
		</div>
	</div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script type="text/javascript" src="/ReseltProject/js/shop/sellPage.js"></script> -->
<script>
 $(function(){

/* 
//alert('hi');	
//sellSize
 $.ajax({
	type: 'post',
	url: '/ReseltProject/shop/getProductDTO',
	data: {'pid' : $('#pid').val() },
	success : function(data){
		//alert(JSON.stringify(data))
		console.log(JSON.stringify(data))
		const imgFiles = data.img_file.split(",");
		$('#product_id').html(data.product_id);
		$('#product_name_eng').html(data.product_name_eng);
		$('#product_name_kor').html(data.product_name_kor);
		$('#img_file').attr('src', 'http://3.39.241.175:6753/upload/resources/img/product/' + $('#pidInput').val() + '/' + imgFiles[0]);
		
		$.ajax({
			type: 'post',
			url: '/ReseltProject/shop/getProductPrice',
			data: {'pid' : $('#pid').val()},
			success : function(innerData){
				//console.log(JSON.stringify(data))

				for (var i = 230; i <=300; i+=5){
					//console.log(i);
					($('<li />').addClass("inline-block my-2 mx-3"))
					.append($('<button />')
							.addClass("sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ")
							.append($('<span />', {html : i + '(size)'}).addClass("mt-1"))
							.append($('<input />',{ value : i, type : 'hidden'}))
							.append($('<br />'))
							.append($('<span />', {html : 
								(size == innerData.list[index].product_size && innerData.list[index].bidding_price.toLocaleString())
								}).addClass("align-top text-xs text-green-500")))
					
							
							
					.appendTo($('#priceTable'));
				}
	$('#nextBtn').hide();
	$('.sizeBtn').each(function(index){
	  $(this).attr('sizeBtn-index',index);
	  
	}).click(function(){
	  var index = $(this).attr('sizeBtn-index');
	  
	  $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black');
	  $('.sizeBtn[sizeBtn-index='+ index + ']').attr('check', 1);
	  $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
	  $('.sizeBtn[sizeBtn-index!='+ index + ']').attr('check', 0);

	})
	
	$('.sizeBtn').click(function(){
	  $('#nextBtn').show();
	  
	})
	
	$('#PriceBtn').click(function(){
		var size = $('.sizeBtn[check=1]').children('input').val();
		var pid = $('#pid').val();
		//alert(size);
		location.href="./sellAgree?size="+ size + "&pid=" + pid
	})
			},
			error : function(e){
				console.log(e)
			}
		});
	

		

		
	},
	error : function(e){
		console.log(e)
	}
	
});



*/

$.ajax({
	   type: "post",
	    url: "/ReseltProject/shop/getProductDTO",
	    data: 'pid='+$('#pid').val(),
	    success: function (data) {
	      // 데이터 뿌리기
	      $('#product_id').html(data.product_id);
	      $('#product_name_kor').html(data.product_name_kor);
	      $('#product_name_eng').html(data.product_name_eng);
	      const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
	      const imgFiles = data.img_file.split(",");
	      $('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
	      
	      // 사이즈표시
	      let shose_size = [230, 235, 240, 245, 250, 255, 260, 265, 270, 275, 280, 285, 290, 295, 300];
	      const clothes_size = ['XS' ,'S' ,'M', 'L', 'XL'];
	      const other = "OneSize";
	      
	      // 신발 사이즈 표시
	      if(data.category_id == 61){
	         $.each(shose_size, function(index, size){
					($('<li />').addClass("inline-block my-2 mx-3"))
					.append($('<button />')
							.addClass("sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ")
							.append($('<span />', {html : size + '(size)'}).addClass("mt-1"))
							.append($('<input />',{ value : size, type : 'hidden'}))
							.append($('<br />'))
							.append($('<span />', {html : '-',id : "price"+size
								//(size == innerData.list[index].product_size && innerData.list[index].bidding_price.toLocaleString())
								}).addClass("align-top text-xs text-green-500")))
					
							
							
					.appendTo($('#priceTable'));
	         })
	         	 // 가격 뿌리기
			 $.ajax({
			    type: "post",
			    url: "/ReseltProject/shop/getProductPriceMax",
			    data: 'pid='+$('#pid').val(),
			    success:function(data){
			      $.each(data.list, function(index, data){
			    	//console.log(data.product_size);
			    	//console.log(data);
			    	//console.log('#price' + data.product_size);
			         $('#price' + data.product_size).html(data.bidding_price.toLocaleString('ko-KR'));
			         $('#price' + data.product_size).val(data.bidding_price.toLocaleString('ko-KR'));
			      })
			    }, error:function(err){
			       console.log(err)
			    }
			   });//ajax
	         
	         // 버튼 활성화
	        $('.sizeBtn').each(function(index){
	          $(this).attr('sizeBtn-index',index);
	        }).on("click", function(){
	          var index = $(this).attr('sizeBtn-index');
	          $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black selectSizeValue');
	          $('.sizeBtn[sizeBtn-index='+ index + ']').attr('id', 'selectSizeValue');          
	          $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
	          $('.sizeBtn[sizeBtn-index!='+ index + ']').removeAttr('id', 'selectSizeValue');          
	        })
	        $('.price').each(function(index){
	           $(this).attr('price-index',index);
	        })
	      }// 신발 사이즈 표시
	   },
	   error: function(err) {
	      console.log(err)
	    },
	 });// 사이즈 표시 ajax
	  

	});
	//버튼숨기기
	$('#nextBtn').hide();
	//다음페이지
	$(document).on('click', '.sizeBtn', function(){
	   $('#price').text('판매하기');
	  // $('#price').text($('#price'+$('.selectSizeValue').val()).val());
	   $('#nextBtn').show();
	})
	$('#nextBtn').click(function(){
	   location.href="./sellAgree?pid="+$('#pid').val()+'&size='+$('#selectSizeValue').children('input').val();
	})
</script>