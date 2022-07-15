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
        <div id="productTitle" class="absolute left-7 rounded-md z-0 bg-gray-200 w-[460px] h-[50px] pl-8 pt-3 font-semibold text-slate-600">
          <p class="text-base">상품 태그를 추가해보세요</p>
          <input type="text" id="product_id" name="product_id" class="w-[200px] h-[30px]">
        </div>
      </div>
      <!-- 글 작성 -->
      <textarea id="content" name="content" class="mt-10 pt-10 w-[487px] h-[150px] placeholder:italic placeholder:text-slate-400 block bg-white w-full border border-slate-300 rounded-md py-2 pl-9 pr-3 shadow-sm focus:outline-none focus:border-gray-300 focus:ring-gray-200 focus:ring-1 sm:text-sm" name="content" id="content" placeholder="스타일 글 작성... "></textarea>
    <input type="button" id="uploadBtn" name="uploadBtn" class="mt-3 ml-48 w-28 h-11 text-base bg-zinc-700 text-white rounded-md font-medium cursor-pointer" value="작성 완료">
    </form>
  </div>
</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/style.js"></script>
<script type="text/javascript">
$(function(){
	$('#img').on('change', function(){
		readURL(this);
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
				location.href='/ReseltProject/style/styleList';
			},
			error:function(request,status,error){    
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});

</script>
