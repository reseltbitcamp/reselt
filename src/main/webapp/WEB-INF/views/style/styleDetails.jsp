<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>RESELT | 한정판 거래의 RESELT</title>
    <!-- TailwindCSS configuration -->
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="/ReseltProject/js/tailwind.config.js"></script>
	
    <!-- External Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=notoSans:wght@300;400&display=swap" rel="stylesheet">
  </head>
  <body>
    <!-- Header-->
      <div id="headerTop" class="border-b-[1px]">
        <div id="header" class="px-10 py-1 text-right text-[13px] font-notoSans font-extralight">
          <a href="/ReseltProject/notice/noticeList" class="m-2">고객센터</a>
          <a href="#" class="m-2">관심상품</a>
          <a href="/ReseltProject/myPage/myMain" class="m-2">마이페이지</a>
          <c:if test="${not empty email}">
            <a href="/ReseltProject/member/logout" class="m-2">로그아웃</a>
          </c:if>
          <c:if test="${empty email}">
            <a href="/ReseltProject/member/login" class="m-2">로그인</a>
          </c:if>
        </div>
      </div>

<!-- menu -->
<div id="headerBot" class="py-2 px-11 border-b-[1px] flex flex-row font-notoSans">
  <div id="menuLogo" class="basis-1/2">
    <a href="/ReseltProject/" class="font-extrabold text-[32px] italic">RESELT</a>
  </div>
  <div id="menuBtn" class="basis-1/2 text-right self-center font-light">
    <a href="/ReseltProject/style/styleList" id="styleBtn" class="px-5 text-[15px]">STYLE</a>
    <a href="/ReseltProject/shop" id="shopBtn" class="px-5 text-[15px]">SHOP</a>
    <a href="#" id="aboutBtn" class="px-5 text-[15px]">ABOUT</a>
    <a id="searchBtn" href="/ReseltProject/search/searchMain" class="pl-5">
      <img src="/ReseltProject/img/index/search-icon.png" class="w-6 h-6 inline align-middle">
    </a>
  </div>
</div>

<!-- style filter -->
<div id="styleTabMenu" class="bg-white w-full h-[68px] p-4 bg-white">
  <div class="w-24 h-10 text-center mx-auto my-0">
    <div class="w-12 h-9 justify-center py-1 m-auto rounded-2xl bg-zinc-900 float-left">
      <a href="#" class="text-white font-semibold">인기</a>
    </div>
    <div class="w-12 h-9 py-1 justify-center m-auto text-center float-left">
      <a href="#">최신</a>
    </div>
  </div>
</div>

<!-- style 상세페이지 -->
<form name="styleDetailsForm">
  <input type="hidden" name="seq" value="${seq }">
</form>
<div id="styleContent" class="w-[620px] mx-auto my-0">
  <div id="cardDetail" class="w-full h-[60px]">
    <div id="userBox" class="w-[400px] h-[56px] py-2 float-left">
      <div id="userImage" class="rounded-full w-[44px] h-[44px] float-left overflow-hidden">
        <img id="styleProfileImg" alt="프로필 사진">
      </div>
    <div id="userName" class="inline w-[350px] font-medium float-left text-xs px-1 pt-2"><p id="userNameText" class="text-xs"></p></div>
      <div id="date" class="inline float-left text-xs px-1"></div>
    </div>
    <div id="menu" class="relative w-[20px] h-[60px] float-left pt-5 ml-[190px] cursor-pointer" onclick="dropmenuView()"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16">
      <path d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/></svg>
      <div id="dropMenu" class="hidden absolute w-[100px] h-[70px] bg-white rounded-md border-2 border-slate-200 text-center right-0 pt-2">
      <input type="button" value="수정" class="w-[97px] hover:bg-gray-200 cursor-pointer" onclick="mode(1)">
      <input type="button" value="삭제" class="w-[97px] hover:bg-gray-200 cursor-pointer" onclick="mode(2)">
   </div>
  </div>
  </div>
  <div id="styleImage" class="w-full">
    <img id="styleImageMain" class="w-full h-auto styleImageMain">
  </div>
  <div id="productBox" class="w-[120px] cursor-pointer">
    <div id="tagName" class="w-full font-medium text-xs pt-6">상품태그</div>
    <div id="productImage" class="bg-sky-100 rounded-md w-[120px] h-[120px] mt-3 mb-2">
      <img id="productImageSrc" alt="나이키 신발">
    </div>
    <p id="productName" class="text-xs"></p>
    <span id="amount" class="text-xs">159,000</span>
    <span id="unit" class="text-xs">원</span>
  </div>
   <!-- 좋아요, 댓글 버튼 -->
  <div id="btnBox" class="w-full mt-3">
    <svg class="inline ml-2 flex-shrink-0 h-6 w-6 cursor-pointer" id="replyViewIcon" onclick="modalView()"xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16"><path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/></svg>
    <p id="textBox" class="leading-normal text-xs">공감 86개</p>
  </div>
  <div id="styleContent" class="w-full pt-3">
    <p id="textContentBox" class="leading-normal text-xs"></p>
  </div>
  <div id="replyName" class="w-full font-medium text-xs pt-6 pb-2">댓글 <span id="replyCount"></span>개</div>
  <div id="replyBox" class="w-full">
    
  </div>
</div>


<!-- footer -->
<div id="footerTop" class="px-10 py-[50px] border-t-[1px] grid grid-cols-2 font-notoSans">
  <div id="csAreaLeft" class="flex flex-row">
    <div id="userguide" class="pr-32">
      <h2 class="font-bold">이용안내</h2>
      <ul class="pt-4 list-none">
        <li class="text-sm text-slate-500">
          <a href="#">검수기준</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">이용정책</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">패널티 정책</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">커뮤니티 가이드라인</a>
        </li>
      </ul>
    </div>
    <div id="csInfo">
      <h2 class="font-bold">고객지원</h2>
      <ul class="pt-4 list-none">
        <li class="text-sm text-slate-500">
          <a href="#">공지사항</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">서비스 소개</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">쇼룸 안내</a>
        </li>
        <li class="mt-3 text-sm text-slate-500">
          <a href="#">판매자 방문접수</a>
        </li>
      </ul>
    </div>
  </div>
  <div id="csAreaRight" class="flex flex-row justify-self-end">
    <div id="csCenterInfo" class="pl-5">
      <h2 class="font-bold">고객센터 1588-7813</h2>
      <p class="text-[13px] text-slate-500">운영시간 평일 11:00 - 18:00 (토 ∙ 일, 공휴일 휴무)</p>
      <p class="text-[13px] text-slate-500">점심시간 평일 13:00 - 14:00</p>
      <p class="py-2 text-[13px] font-medium">1:1 문의하기는 앱에서만 가능합니다.</p>
      <button id="faqBtn" class="w-28 h-11 bg-zinc-900 text-white text-xs font-semibold">자주 묻는 질문</button>
    </div>
  </div>
</div>

<!-- footer -->
<div id="footerBot" class="px-10 mb-10 font-notoSans">
  <div id="footerBotWrap" class="grid grid-cols-3 border-t-[1px]">
    <div id="corpArea" class="pb-8 col-span-2">
      <div id="corpLink" class="pt-7">
        <a href="#" id="" class="text-sm">회사소개</a>
        <a href="#" id="" class="pl-4 text-sm">인재채용</a>
        <a href="#" id="" class="pl-4 text-sm">제휴제안</a>
        <a href="#" id="" class="pl-4 text-sm">이용약관</a>
        <a href="#" id="" class="pl-4 text-sm font-semibold">개인정보처리방침</a>
      </div>
      <div id="corpInfo" class="pt-2">
        <p class="text-xs text-slate-500">
          <span>리셀트 주식회사 · 대표 댕댕이</span>
          <span class="pl-3">사업자등록번호: 123-45-78901</span>
          <span class="pl-3 underline">사업자정보확인</span>
          <span class="pl-3">통신판매업: 제 2022-서울강남C-0602호</span>
        </p>
        <p class="pt-1 text-xs text-slate-500">
          <span>사업장소재지: 서울시 강남구 강남대로94길 20 삼오빌딩 6층</span>
          <span class="pl-3">개인정보관리책임자: 고먐미</span>
          <span class="pl-3">호스팅 서비스: Amazon Web Services</span>
        </p>
      </div>
    </div>
    <div id="sns" class="col-span-1 justify-self-end">
      <div id="snsBtn" class="pt-7 flex flex-row">
        <a href="#" id="igBtn">
          <img src="/ReseltProject/img/index/ig-icon.png" alt="Instagram" class="w-5 h-5">
        </a>
        <a href="#" id="igBtn" class="pl-6">
          <img src="/ReseltProject/img/index/fb-icon.png" alt="Facebook" class="w-5 h-5">
        </a>
        <a href="#" id="igBtn" class="pl-6">
          <img src="/ReseltProject/img/index/kakao-icon.png" alt="KakaoTalk" class="w-5 h-5">
        </a>
      </div>
    </div>
    <div id="tns" class="col-span-2 text-xs text-slate-500">
      <p>리셀트(주)는 통신판매 중개자로서 통신판매의 당사자가 아니므로 개별 판매자가 등록한 상품정보에 대해서 책임을 지지 않습니다.</p>
      <p>단, 거래과정에서 검수하고 보증하는 내용에 대한 책임은 당사에 있습니다.</p>
    </div>
    <div id="copyright" class="col-span-1 text-xs text-slate-500 justify-self-end center self-center">
      <p>© RESELT Corp.</p>
    </div>
  </div>
</div> 

<div id="modal" class="hidden fixed w-full h-full top-0 left-0 bg-gray-900/30">
  <div id="replyModal" class="absolute top-0 right-0 bg-white w-[315px] h-full">
    <!-- 모달 상단 (close, title) -->
    <div id="modalTop" class="w-full h-[30px] mt-7 pl-4">
      <div id="closeIcon" class="inline w-[20px] float-left mt-1 mr-1 cursor-pointer">
      <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
      <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
      </svg>
      </div>
      <div id="modalTitle" class="inline float-left">댓글</div>
    </div>
    
    <!-- 모달 content -->
    <div id="modalContent" class="w-full h-[92px] pt-3">
      
     </div>
     
     <!-- 모달 구분선 -->
     <div id="modalMd" class="w-full h-1 bg-gray-100 mt-2 mb-2"></div>
     
     <!-- 댓글 작성 -->
     <div id="replyWriteBox" class="w-full h-[60px] pt-3 mb-[10px]">
     <form id="replyWriteBox">
      <input type="hidden" id="pseq" name="pseq" value="${seq }">
      <div id="modalUserBox" class="w-[40px] h-[40px] ml-4 float-left mt-1">
        <div id="replyUserImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden">
          <img id="replyLoginImage" alt="프로필 사진">
        </div>
      </div>
        <input type="text" placeholder="댓글을 작성하세요..." id="comment_reply" name="comment_reply" class="float-left w-[210px] h-[40px] placeholder:italic placeholder:text-xs block bg-white w-full border border-slate-300 rounded-md shadow-sm focus:outline-none focus:border-gray-300 focus:ring-gray-200 focus:ring-1 sm:text-sm" name="content" id="content" placeholder="스타일 글 작성... ">
        <input type="button" id="replyUploadBtn" name="replyUploadBtn" class="w-[40px] h-[40px] bg-zinc-700 text-white rounded-md text-xs float-left cursor-pointer" value="게시">
     </form>
     </div>
     
 	 <hr>
 	 
 	 <!-- 댓글 보기 -->
 	 <div id="replyViewBox" class="w-full pl-4">    

  	</div>
  	</div>
</div>
</body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

var loginEmail = null;
 $(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/style/getStyleDetails',
		data: 'seq='+$('input[name="seq"]').val(),
		dataType: 'json',
		success: function(data){
			console.log(JSON.stringify(data));
			$('.styleImageMain').prop('src', "http://3.39.241.175:6753/upload/resources/img/style/"+data.styleDTO.style_image);
			$('.styleImageMain').prop('alt', data.styleDTO.memberDTO.nick+"님 게시글");
			$('#productName').text(data.styleDTO.product_name_kor);
			$('#textContentBox').text(data.styleDTO.content);
			$('#userNameText').text(data.styleDTO.memberDTO.nick);
			$('#styleProfileImg').prop('src', "http://3.39.241.175:6753/upload/resources/img/myPage/"+data.styleDTO.memberDTO.profile_img);
			$('#amount').text(data.styleDTO.released_price.toLocaleString('en-US'));
			$('#date').text(data.dateWrite);
			$('#productImageSrc').prop('src', "http://3.39.241.175:6753/upload/resources/img/product/"+data.styleDTO.product_id+"/"+data.styleDTO.img_file);
			$('#productImageSrc').prop('alt', data.styleDTO.product_id+"이미지 사진");
			$('#productBox').attr("onclick","shopDetail("+data.styleDTO.pid+")");
			if(data.email!=null){
				$('#replyLoginImage').prop('src', "http://3.39.241.175:6753/upload/resources/img/myPage/"+data.memberDTO.profile_img);
			}
			/* 댓글 개수  */
			$('#replyCount').text(data.count);
			
			/* 모달 댓글창  */
			$('<div id="modalUserBox" class="w-[40px] h-[80px] py-2 ml-4 float-left"><div id="replyUserImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden"><img src="http://3.39.241.175:6753/upload/resources/img/myPage/'+data.styleDTO.memberDTO.profile_img+'" alt="프로필 사진"></div></div><div id="modalReplyBox" class="w-[245px] h-[80px]  float-left"><div id="replyUserName" class="inline w-[50px] font-medium text-xs pt-1">'+data.styleDTO.memberDTO.nick+'</div><div id="replyBoxContent" class="inline ml-3 w-full text-xs pt-1">'
					+data.styleDTO.content+'</div><div id="replydate" class="text-xs px-1">'+data.dateWrite+'</div></div>').appendTo($('#modalContent'));
			
			/* 공감 버튼 */
			if(data.num==1){
				$('<div id="uploadLikesBtn'+data.styleDTO.seq+'" class="inline" onclick="uploadLikes('+data.styleDTO.seq+',\''+data.email+'\')"><svg class="likesToggle'+data.styleDTO.seq+' inline flex-shrink-0 h-6 w-6 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="hotPink" class="bi bi-heart-fill" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/></svg>').prependTo('#btnBox');
			}else{
				$('<div id="uploadLikesBtn'+data.styleDTO.seq+'" class="inline" onclick="uploadLikes('+data.styleDTO.seq+',\''+data.email+'\')"><svg class="likesToggle'+data.styleDTO.seq+' inline flex-shrink-0 h-6 w-6 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/></svg></div>').prependTo('#btnBox');
			}
			
			loginEmail = data.email;
			
			if(data.count > 0){
				/* 댓글 데이터 가져오기 */
				$.each(data.list, function(index, items){
					
					//alert(" 3 data.email="+data.email+", items.memberDTO.email = "+items.memberDTO.email);
					$('<div id="replyUserBox" class="'+items.style_seq+' w-[115px] h-[56px] py-2 float-left"><div id="replyUserImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden"><img src="http://3.39.241.175:6753/upload/resources/img/myPage/'+items.memberDTO.profile_img+'" alt="프로필 사진"></div><div id="replyUserName" class="inline w-[50px] font-medium float-left text-xs px-1 pt-1">'+items.memberDTO.nick+'</div><div id="replydate" class="inline float-left text-xs px-1">'+items.created_at+'</div></div><div id="replyContent" class="'+items.style_seq+' w-full h-[56px] text-xs pt-3"><div id="replyContentText">'+items.comment_reply+'</div><div class="replyDelete'+items.style_seq+'"></div></div>').appendTo($('#replyBox'));
					$('<div id="replyUserViewBox" class="'+items.style_seq+' w-[110px] h-[56px] py-2 float-left"><div id="replyUserViewImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden"><img src="http://3.39.241.175:6753/upload/resources/img/myPage/'+items.memberDTO.profile_img+'" alt="프로필 사진"></div><div id="replyUserViewName" class="inline w-[50px] font-medium float-left text-xs px-1 pt-1">'+items.memberDTO.nick+'</div><div id="replyViewdate" class="inline float-left text-xs px-1">'+items.created_at+'</div></div><div id="replyViewContent" class="'+items.style_seq+' w-full h-[56px] text-xs pt-3"><div id="replyContentText">'+items.comment_reply+'</div><div class="replyModalDelete'+items.style_seq+'"></div></div>').appendTo($('#replyViewBox'));
					if(data.email == items.memberDTO.email){
			        	$('<input type="button" name="replyDeleteBtn" onClick="replyDeleteSeq('+items.style_seq+","+items.pseq+')" class="replyDeleteBtn w-[28px] text-xs font-medium bg-zinc-900 text-white rounded cursor-pointer" value="삭제" />').appendTo($('.replyDelete'+items.style_seq));
			        	$('<input type="button" name="replyDeleteBtn" onClick="replyDeleteSeq('+items.style_seq+","+items.pseq+')" class="replyDeleteBtn w-[28px] text-xs font-medium bg-zinc-900 text-white rounded cursor-pointer" value="삭제" />').appendTo($('.replyModalDelete'+items.style_seq));
					}
				});
			}
			
			/* email이 같으면 수정, 삭제 메뉴 보이기 */
			if(data.email == data.styleDTO.memberDTO.email){
	        	$('#menu').show();
			}
	        else if(data.email != data.styleDTO.memberDTO.email){
	        	$('#menu').hide();
	        }
	     $('#textBox').text("공감 "+data.likecount+"개");
			
		},
		error:function(request,status,error){    
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});
 
function modalView(){
	console.log(loginEmail);
	if(loginEmail==null){
		location.href="/ReseltProject/member/login";
	}
	else{
	    $('#modal').fadeIn();
	}
}

function dropmenuView(){
	 let click = document.getElementById("dropMenu");
     if(click.style.display === "none"){
         click.style.display = "block";

     }else{
         click.style.display = "none";
     }
}

$("#closeIcon").click(function(){
 	$("#modal").fadeOut();
});


function replyDeleteSeq(style_seq, pseq){
	if(confirm("정말로 삭제하시겠습니까?")){
		$.ajax({
			type: 'post',
			url: '/ReseltProject/style/styleReplyDelete',
			data: {'style_seq':style_seq,
					'pseq':pseq},
			datatype: 'json',
		   	success:function(data){
		   		alert("삭제가 완료되었습니다 ");
		   		$( '#replyContent.'+style_seq ).remove();
		   		$( '#replyUserBox.'+style_seq ).remove();
		   		$( '#replyViewContent.'+style_seq ).remove();
		   		$( '#replyUserViewBox.'+style_seq ).remove();
		   		/* 댓글 개수  */
				$('#replyCount').text(data);
			},
			error:function(e){
				console.log(e);
			}
		});
	}
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
					$('<svg class="likesToggle'+seq+' inline flex-shrink-0 h-6 w-6 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 16"><path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/><path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/></svg>').appendTo($('#uploadLikesBtn'+seq));
					
				} else {
					$('.likesToggle'+seq).remove();
					$('<svg class="likesToggle'+seq+' inline flex-shrink-0 h-6 w-6 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="hotPink" class="bi bi-heart-fill" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"/></svg>').appendTo($('#uploadLikesBtn'+seq));
				}
				
				$('#textBox').text("공감 "+data.count+"개");
			},
			error:function(request,status,error){    
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}else{
		location.href="/ReseltProject/member/login";
	}
}

function shopDetail(pid){
	location.href = '/ReseltProject/shop/shopDetail?pid='+pid;	
}

$(document).ready(function(){
	$('#replyUploadBtn').click(function(){
		$.ajax({
			type: 'post',
			url: '/ReseltProject/style/styleReplyWrite',
			data: {'comment_reply': $('#comment_reply').val(),
				'pseq': $('#pseq').val()},
			dataType: 'json',
	       	success:function(data){
	       		//alert("#"+JSON.stringify(data));
				$('#comment_reply').val("");
				
				/* 댓글 개수  */
				$('#replyCount').text(data.count);
				
				$('#replyBox').prepend('<div id="replyUserBox" class="'
					+data.replyDTO.style_seq+' w-[115px] h-[56px] py-2 float-left"><div id="replyUserImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden"><img src="http://3.39.241.175:6753/upload/resources/img/myPage/'+data.replyDTO.memberDTO.profile_img+'" alt="프로필 사진"></div><div id="replyUserName" class="inline w-[50px] font-medium float-left text-xs px-1 pt-1">'+data.replyDTO.memberDTO.nick+'</div><div id="replydate" class="inline float-left text-xs px-1">'+data.replyDTO.created_at+'</div></div><div id="replyContent" class="'
					+data.replyDTO.style_seq+' w-full h-[56px] text-xs pt-3"><div id="replyContentText">'
					+data.replyDTO.comment_reply+'</div><div id="replyDelete"><input type="button" name="replyDeleteBtn" onClick="replyDeleteSeq('
					+data.replyDTO.style_seq+')" class="replyDeleteBtn w-[28px] text-xs font-medium bg-zinc-900 text-white rounded cursor-pointer" value="삭제" /></div></div>');
				$('<div id="replyUserViewBox" class="'+data.replyDTO.style_seq+' w-[115px] h-[56px] py-2 float-left"><div id="replyUserViewImage" class="bg-slate-200 rounded-full w-[34px] h-[34px] float-left overflow-hidden"><img src="/ReseltProject/img/style/'+data.replyDTO.memberDTO.profile_img+'" alt="프로필 사진"></div><div id="replyUserViewName" class="inline w-[50px] font-medium float-left text-xs px-1 pt-1">'+data.replyDTO.memberDTO.nick+'</div><div id="replyViewdate" class="inline float-left text-xs px-1">'+data.replyDTO.created_at+'</div></div><div id="replyViewContent" class="'+data.replyDTO.style_seq+' w-full h-[56px] text-xs pt-3"><div id="replyContentText">'
					+data.replyDTO.comment_reply+'</div><div id="replyDelete"><input type="button" name="replyDeleteBtn" onClick="replyDeleteSeq('+data.replyDTO.style_seq+","+data.replyDTO.pseq+')" class="replyDeleteBtn w-[28px] text-xs font-medium bg-zinc-900 text-white rounded" value="삭제" /></div></div>').prependTo($('#replyViewBox'));
			},
			error:function(e){
				console.log(e);
			}
		});
	});
	
});



</script>
<script type="text/javascript">
function mode(num){
	if(num==1){ //글수정, seq
		document.styleDetailsForm.method = "get";
		document.styleDetailsForm.action = "/ReseltProject/style/styleUpdateForm";
		document.styleDetailsForm.submit();
		
	}else if(num==2){ //글삭제, seq
		if(confirm("정말로 삭제하시겠습니까?")){
			document.styleDetailsForm.method = "post";
			document.styleDetailsForm.action = "/ReseltProject/style/styleDelete";
			document.styleDetailsForm.submit();
		}
	}
}
</script>
