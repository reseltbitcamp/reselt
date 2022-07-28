<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="/ReseltProject/js/tailwind.config.js"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/ReseltProject/css/style.css">

<!-- style filter -->
<div id="styleTabMenu" class="sticky top-[93px] bg-white w-full h-[68px] p-4 bg-white">
  <div class="w-24 h-10 text-center mx-auto my-0">
    <div id="selectFilter1">
      <a href="/ReseltProject/style/styleList" id="selectFilterName1">인기</a>
    </div>
    <div id="selectFilter2">
      <a href="/ReseltProject/style/styleListNew" id="selectFilterName2">최신</a>
    </div>
  </div>
</div>
<c:if test="${email != null }">
<!-- style Write button -->
  <div id="writeBtn" class="fixed animate-bounce cursor-pointer right-16 bottom-11 inline drop-shadow-md md:drop-shadow-xl bg-zinc-900 rounded-full w-[75px] h-[75px] p-5" onclick="location.href='/ReseltProject/style/styleWrite'">
    <svg xmlns="http://www.w3.org/2000/svg"  class="inline flex-shrink-0 h-10 w-10 white" fill="white" class="bi bi-pen" viewBox="0 0 16 16">
    <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
    </svg>
  </div>
</c:if>
<input type="text" id="pg" value="${requestScope.pg }" class="invisible">
<input type="text" id="num" value="${requestScope.num }" class="invisible">
<!-- style content -->
<div id="styleContent" class="infinite flex flex-wrap gap-1 w-[1100px] mx-auto my-0">
  
</div>
  
<div class="pagination"></div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- <script type="text/javascript" src="/ReseltProject/js/style.js"></script> -->
<script type="text/javascript">
$(function(){
	MadeBox();
});

function YesScroll(){
	console.log("Yes scroll 실행");
	const pagination = document.querySelector('.paginaiton');
	const fullContent = document.querySelector('.infinite');
	const screenHeight = screen.height;
	let oneTime = false;
	document.addEventListener('scroll',OnScroll,{passive:true})
	 function OnScroll () {
	   const fullHeight = fullContent.clientHeight;   
	   const scrollPosition = pageYOffset;
	   if (fullHeight-screenHeight/2 <= scrollPosition && !oneTime) {
		 oneTime = true;
		 MadeBox();
	   }
	 }
}
function MadeBox(){
	console.log("Made Box 실행");
	$.ajax({
		type: 'post',
		url: '/ReseltProject/style/getStyleList',
        data: {'pg':$('#pg').val(),
        	'num':$('#num').val()},
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
	 		if(data.num==1){
				$('#selectFilter1').addClass("w-12 h-9 justify-center py-1 m-auto rounded-2xl bg-zinc-900 float-left");
				$('#selectFilterName1').addClass("text-white font-semibold");
				$('#selectFilter2').addClass("w-12 h-9 py-1 justify-center m-auto text-center float-left");
			} else if(data.num==2){
				$('#selectFilter2').addClass("w-12 h-9 justify-center py-1 m-auto rounded-2xl bg-zinc-900 float-left");
				$('#selectFilterName2').addClass("text-white font-semibold");
				$('#selectFilter1').addClass("w-12 h-9 py-1 justify-center m-auto text-center float-left");				
			}
			
			$.each(data.list, function(index, items){
				$('<div class="shrink-0 basic-1/8 w-[250px] mx-auto"><div id="styleImage" class="rounded-xl overflow-hidden cursor-pointer" onclick="getStyleDetails('+items.seq+')"><img src="/ReseltProject/styleImage/'
						+items.style_image+'" alt="'
						+items.memberDTO.nick+'님 게시글"></div><div id="cardDetail" class="h-[146px] px-1"><div id="userBox" class="h-[37px] py-2 cursor-pointer" onclick="getStyleDetails('+items.seq+')"><div id="userImage" class="bg-slate-200 rounded-full w-[20px] h-[20px] float-left overflow-hidden"><img src="/ReseltProject/img/style/'+items.memberDTO.profile_img+'" alt="프로필 사진"></div><div id="userName" class="inline float-left text-xs px-1">'
						+items.memberDTO.nick+'</div></div><p id="textBox" class="leading-normal text-xs cursor-pointer" onclick="getStyleDetails('+items.seq+')">'
						+items.content+'</p><div id="btnBox" class="w-full h-10 pt-2"><div id="uploadLikesBtn'+items.seq+'" class="inline" onclick="uploadLikes('+items.seq+',\''+data.email+'\')"><svg class="likesToggle'+items.seq+' inline flex-shrink-0 h-4 w-4 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/></svg></div><span id="likeCount'+items.seq+'" class="text-sm">'
						+items.like_code+'</span><svg class="inline ml-2 flex-shrink-0 h-4 w-4" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16"><path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/></svg><span id="commentCount" class="text-sm">'
						+items.countcmt+'</span></div><div id="productList" class="w-full h-[41px] pr-2 cursor-pointer" onclick="shopDetail()"><div id="productImage" class="bg-sky-100 rounded-md w-[40px] h-[40px] float-left mr-2"><img src="http://3.39.241.175:6753/upload/resources/img/product/'+items.product_id+'/'+items.img_file+'" alt="나이키 신발"></div><p id="productName" class="text-xs">'
						+items.product_name_kor+'</p><span id="amount" class="text-xs">'+items.released_price.toLocaleString('en-US')+'</span><span id="unit" class="text-xs">원</span></div></div></div>' )
				.appendTo($('#styleContent'));
			});//each
			
			$.each(data.like, function(index, items){
				$('.likesToggle'+items.seq).remove();
				$('<svg class="likesToggle'+items.seq+' inline flex-shrink-0 h-4 w-4 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="hotPink" class="bi bi-heart-fill" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/></svg>').appendTo($('#uploadLikesBtn'+items.seq));
			});//each
			
			paging();
			YesScroll();
		},
		error: function(err){
			console.log(err);
		}
	});

}

/* 공감 토글 버튼 */
function uploadLikes(seq, email){
	if(email!='null'){
		$.ajax({
			type: 'post',
			url: '/ReseltProject/style/plusLikes',
	        data: {'seq':seq,
				'email':email},
			success: function(data){
				if(data.num==0){
					$('.likesToggle'+seq).remove();
					$('<svg class="likesToggle'+seq+' inline flex-shrink-0 h-4 w-4 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/></svg>').appendTo($('#uploadLikesBtn'+seq));
					
				} else {
					$('.likesToggle'+seq).remove();
					$('<svg class="likesToggle'+seq+' inline flex-shrink-0 h-4 w-4 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="hotPink" class="bi bi-heart-fill" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/></svg>').appendTo($('#uploadLikesBtn'+seq));
				}
				
				$('#likeCount'+seq).text(data.count);
			},
			error:function(request,status,error){    
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}else{
		location.href="/ReseltProject/member/login";
	}
}

function paging(){
	const page = document.getElementById("pg");
	console.log("page value = "+page.value);
	page.value++;
}

function getStyleDetails(seq){
	location.href = '/ReseltProject/style/styleDetails?seq='+seq;	
}

function shopDetail(){
	location.href = '/ReseltProject/shop/shopDetail';	
}

</script>