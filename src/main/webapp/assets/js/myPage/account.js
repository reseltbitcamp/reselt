//은행명 - 선택하세요 누르면 선택지 뜸
$('.accountnameDiv_text').on('click', function(){
	$('.account_list').removeClass('removeEvent');
});

//선택지 누르면 사라지고 text 올라감
$('.drop_link').on('click', function(){
	var account_value = $(this).attr('id');
	$('.account_list').addClass('removeEvent');
	$('.accountnameDiv_text').removeAttr('placeholder');
	$('.accountnameDiv_text').val(account_value);
});

//은행명 유효성 검사
$('.accountnameDiv_text').on('input', function(){
	if($(this).val() == '') {
		$('.accountnameDiv_error').removeClass('removeEvent');
	} else {
		$('.accountnameDiv_error').addClass('removeEvent');
	}
});

//계좌정보 유효성 검사
$('.accountDiv_text').on('input', function(){
	var regExp = /^[0-9]*$/;
	if(!regExp.test($('.accountDiv_text').val())){
		$('.accountDiv_error').removeClass('removeEvent');
	 } else {
		$('.accountDiv_error').addClass('removeEvent');
	 }
});

//예금주명 유효성 검사
$('.nameDiv_text').on('input', function(){
	if ($('.nameDiv_text').val().length < 2 || $('.nameDiv_text').val().length > 50) {
		$('.nameDiv_error').removeClass('removeEvent');
	} else {
		$('.nameDiv_error').addClass('removeEvent');
	}
});

//버튼 누르면 유효성 확인 및 데이터 저장, 리로드

$('.accountDiv_save').click(function(){
	
	$('.nameDiv_error').addClass('removeEvent');
	$('.accountDiv_error').addClass('removeEvent');
	$('.accountnameDiv_error').addClass('removeEvent');
	
	//유효성 검사
	if ($('.accountnameDiv_text').val() == '') {
		$('.accountnameDiv_text_error').removeClass('removeEvent');
	} else if ($('.accountDiv_text').val() == '') {
		$('.accountDiv_error').removeClass('removeEvent');
	} else if ($('.nameDiv_text').val() == '') {
		$('.nameDiv_error').removeClass('removeEvent');
	} else {
	
	
		
		//데이터 저장만
		$.ajax({
			type: 'post',
			url: '/ReseltProject/myPage/add_account',
			data: $('#account_form').serialize(),
			success: function() {
				alert('계좌정보가 등록되었습니다');
				location.reload();
			},
			error: function(e) {
				console.log(e);
			}
			
			});
		
	}
	
});
/*

//데이터 보이기
$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/show_account',
		dataType: 'json',
		success: function(data) {
			console.log(data);
			
			if (data.address == null) {
				$('.not_empty_area_2').addClass('removeEvent');
				$('.empty_area_2').removeClass('removeEvent');
			} else {
				$('.not_empty_area_2').removeClass('removeEvent');
				$('.empty_area_2').addClass('removeEvent');
			}
			
			//데이터 보여주기
			$('.account').text();
			$('account_name').text();
		}
});
});

*/










