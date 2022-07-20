/*
이름, 아이디, 구매내역, 판매내역, 관심상품 수
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/show_myMain',
		dataType: 'json',
		success: function(){
		
		},
		error: function(){
		
		},
	});
});
	*/	

$(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/getSession',
		success: function(data){
			
			//alert(data);
			if(data == ""){
				alert('로그인 후 이용해주세요.')
				location.href='/ReseltProject/member/login'
			}
			
		},
		error: function(e){
			console.log(e);
		}
	});
	
	
});