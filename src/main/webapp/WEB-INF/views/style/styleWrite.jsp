<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/ReseltProject/css/style.css"> 
<div id="styleWriteContainer" class="p-6 w-full h-[800px] bg-gray-50">
  <!-- Style 작성창 -->
  <div class="mx-auto my-0 w-[550px] h-[550px] drop-shadow-lg bg-white px-8">
    <form id="styleWriteForm" enctype="multipart/form-data">
     <!-- 사진 등록 -->
<!--      <input type="file" name="style_image" id="style_image" class="invisible w-2 h-2" onchange="setThumbnail(event);"> -->
     <input type="file" name="img" id="img" class="invisible">
      <div id="cameraBox" class="cursor-pointer w-full h-[250px] border border-gray-200 rounded-md">
        <svg xmlns="http://www.w3.org/2000/svg" id="cameraIcon" width="16" height="16" fill="currentColor" class="mx-auto mt-[110px] bi bi-camera-fill" viewBox="0 0 16 16">
          <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>
        </svg>   
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
        <div id="productTitle" class="search absolute left-7 rounded-md z-0 bg-gray-200 w-[460px] h-[50px] pl-8 pt-3 font-semibold ">
          <input type="text" id="searchProduct" name="searchProduct" class="bg-gray-200 w-[300px] text-slate-600" placeholder="상품명을 작성해주세요" keyUp="getSearchList()">
		  <input type="hidden" id="product_id" name="product_id"/>
        </div>
        <!-- 검색 리스트 -->
        <div class="suggest_wrap absolute bg-[#fff] mt-[50px]">
          <div class="suggest_area w-[488px] pt-0 my-0 mx-auto overflow-hidden relative ">

            <!-- 상품검색 리스트 -->
            <div class="suggest_list max-h-[208px] overflow-y-auto">
              
            </div>
          </div>
        </div>
      </div>
      <!-- 글 작성 -->
      <textarea id="content" name="content" class="mt-10 pt-10 w-[487px] h-[150px] placeholder:italic placeholder:text-slate-400 block bg-white w-full border border-slate-300 rounded-md py-2 pl-9 pr-3 shadow-sm focus:outline-none focus:border-gray-300 focus:ring-gray-200 focus:ring-1 sm:text-sm" name="content" id="content" placeholder="스타일 글 작성... "></textarea>
    <input type="button" id="uploadBtn" name="uploadBtn" disabled class="mt-3 ml-48 w-28 h-11 text-base bg-zinc-100 text-gray-300 rounded-md font-medium cursor-pointer" value="작성 완료">
    </form>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/style.js"></script>
<script type="text/javascript">
$(function(){
	getSearchList();
	
	$('#img').on('change', function(){
		readURL(this);
	});
	 
	$('.suggest_wrap').hide();
		
	$('#searchProduct').click(function(){
	      $('.suggest_wrap').show();
	 });
	 
	function readURL(input){
		if(input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				var img = document.createElement("img");
				var div = document.querySelector("div#cameraBox");
				document.querySelector("svg#cameraIcon").remove();
				img.setAttribute("src", event.target.result);
				img.setAttribute("class", "w-auto h-full mx-auto my-0");
				div.setAttribute("class", "w-full h-[250px] border border-gray-200 rounded-md overflow-hidden");
				div.appendChild(img);
			}
			
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$('#uploadBtn').click(function(){
		var formData = new FormData($('#styleWriteForm')[0]);
		$.ajax({
			type: 'post',
			url: '/ReseltProject/style/styleWriteForm',
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,
			success: function(){
				alert('글이 등록되었습니다.');
				location.href='/ReseltProject/style/styleListNew';
			},
			error:function(request,status,error){    
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});

function getSearchList(){
	  $.ajax({
	    type: 'post',
	    url: '/ReseltProject/search/searchProductList',
	    dataType: 'json',
	    success: function(data){
	      $.each(data.list, function(index, items){
	        $('<div class="suggest_item w-full h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb] cursor-pointer" onClick="productSelect('+items.pid+',\''+items.product_name_kor+'\')"><div class="suggest_link align-center h-[100%] text-inherit flex"><div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block"><img class="thumb_img w-[100%] h-[100%]" src="http://3.39.241.175:6753/upload/resources/img/product/'
		            +items.pid+'/'
		            +items.img_file+'"></img></div><div class="suggest_info my-auto"><p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">&nbsp;'
		            +items.product_name_eng+'</p><p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]" id="product_name_kor">&nbsp;'
		            +items.product_name_kor+'</p></div></div><br>&nbsp;')
		            .appendTo($('.suggest_list'));
		            console.log(items.img_file);
	      }); //each
	      
	    },
	    error: function(err){
	      console.log(err);
	    }
	  });
	}
	
$(document).ready(function(){
	  $('#searchProduct').on("keyup", function(){
	    var value = $(this).val().toLowerCase();
	    $('.suggest_item').filter(function(){
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});

function productSelect(pid, name){
	$('.suggest_wrap').hide();
	$('#searchProduct').val(name);
	$('#product_id').val(pid);
}

</script>
<script type="text/javascript">
	const img = document.querySelector('#img');
	const product_id = document.querySelector('#product_id');
	const content = document.querySelector('#content');
	const uploadBtn = document.querySelector('#uploadBtn');
	
	img.addEventListener('input', listener);
	product_id.addEventListener('keyup', listener);
	content.addEventListener('keyup', listener);

	function listener() {
		switch (!(product_id.value && content.value && img.value)) {
	        case true: 
	        	uploadBtn.disabled = true;
	        	uploadBtn.setAttribute("class", "mt-3 ml-48 w-28 h-11 text-base bg-zinc-100 text-gray-300 rounded-md font-medium cursor-pointer"); 
	        	break;
	        case false: 
	        	uploadBtn.disabled = false; 
	        	uploadBtn.setAttribute("class", "mt-3 ml-48 w-28 h-11 text-base bg-zinc-700 text-white rounded-md font-medium cursor-pointer"); 
	        	break;
		}
	}
</script>