/*
//변경 누르면 emailDiv 수정
$('.emailDiv_alter').click(function(){
	$('.emailDiv').addClass('removeEvent');
	$('.emailDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 emailDiv 취소
$('.emailDiv_cancel').click(function(){
	$('.emailDiv').removeClass('removeEvent');
	$('.emailDiv_New').addClass('removeEvent');
});

//텍스트 쓰면 활성화 emailDiv 활성화
$('.emailDiv_text').on('input', function(){
	if ($('.emailDiv_text').val().length == '0') {
		$('.emailDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.emailDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});
*/

//변경 누르면 PwdDiv 수정
$('.pwdDiv_alter').click(function(){
	$('.pwdDiv').addClass('removeEvent');
	$('.pwdDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 PwdDiv 취소
$('.pwdDiv_cancel').click(function(){
	$('.pwdDiv').removeClass('removeEvent');
	$('.pwdDiv_New').addClass('removeEvent');
});


//텍스트 쓰면 활성화 PwdDiv 활성화
$('.pwdDiv_text').on('input', function(){
	if($('.pwdDiv_text').val() == '') {
		$('.pwdDiv_save').attr('disabled', true);
	} else {
		$('.pwdDiv_save').attr('disabled', false);
	}
});


//변경 누르면 nickDiv 수정
$('.nickDiv_alter').click(function(){
	$('.nickDiv').addClass('removeEvent');
	$('.nickDiv_New').removeClass('removeEvent');
});

//취소 누르면 원래 nickDiv 취소
$('.nickDiv_cancel').click(function(){
	$('.nickDiv').removeClass('removeEvent');
	$('.nickDiv_New').addClass('removeEvent');
});


//텍스트 쓰면 활성화 nickDiv 활성화
$('.nickDiv_text').on('input', function(){
	if ($('.nickDiv_text').val().length < 2 || $('.nickDiv_text').val().length > 50) {
		$('.nickDiv_save').attr('disabled', true);
		$('.input_error').removeClass('removeEvent');
	} else {
		$('.nickDiv_save').attr('disabled', false);
		$('.input_error').addClass('removeEvent');
	}
});


//변경 누르면 모달창
$('.sizeDiv_alter').click(function(){
	$('.modalDiv').fadeIn();
});

//확인 누르면 모달창 x
//$('.modalDiv_check').click(function(){
//	$('.modalDiv').fadeOut();
//});


/*
//email 변경 시 데이터 변경, 페이지에 뿌리기
$('.emailDiv_save').click(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/emailUpdate',
		data: 'email=' + $('.emailDiv_text').val(),
		success: function(){
			$('.emailDiv').removeClass('removeEvent');
			$('.emailDiv_New').addClass('removeEvent');
			$('.emailDiv_p').text($('.emailDiv_text').val());
			alert('이메일이 변경되었습니다');
		},
		error: function(err){
			console.log(err);
		}
	});
	
});
*/

//비밀번호 변경 시 데이터 변경
$('.pwdDiv_save').click(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/pwdUpdate',
		data: 'pwd=' + $('.pwdDiv_text').val(),
		success: function(){
			$('.pwdDiv').removeClass('removeEvent');
			$('.pwdDiv_New').addClass('removeEvent');
			alert('비밀번호가 변경되었습니다');
		},
		error: function(err){
			console.log(err);
		}
	});
	
});


//이름 변경 시 데이터 변경, 페이지 뿌리기
$('.nickDiv_save').click(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/nickUpdate',
		data: 'nick=' + $('.nickDiv_text').val(),
		success: function(){
			$('.nickDiv').removeClass('removeEvent');
			$('.nickDiv_New').addClass('removeEvent');
			$('.nickDiv_p').text($('.nickDiv_text').val());
			alert('이름이 변경되었습니다');
		},
		error: function(err){
			console.log(err);
		}
	});
	
});


//신발 변경 시 데이터 변경, 페이지 뿌리기
$('.modalDiv_content-button').on('click', function(){
	
	var index = $(this).index();
	var index_value = $(this).attr('id');
	
	//버튼 클릭 시 스타일
	if($(this).hasClass('clickEvent')){
		$('.modalDiv_content-button').removeClass('clickEvent');     
	} else {
		$('.modalDiv_content-button').removeClass('clickEvent');
      $(this).addClass('clickEvent');
	}
	
	//확인 버튼 누르면  데이터 처리, 화면 뿌리기
	if($('.modalDiv_check').click(function(){
		
		$.ajax({
			type: 'post',
			url: '/ReseltProject/myPage/sizeUpdate',
			data: 'footsize=' + index_value,
			success: function(){
				alert('사이즈가 변경되었습니다');
				$('.modalDiv').fadeOut();
				$('.sizeDiv_text').text(index_value);
			},
			error: function(error){
				console.log(error);
			}
		});
		
	}));
	
	console.log(index);
});


//이미지 변경 시 데이터 변경, .meta 저장, 페이지 뿌리기

$('.imgBtn').click(function(){
	
	$('.imgFile').click();

	$('.imgFile').on('change', function(){
		readURL(this);
	});
	
	function readURL(input){
		
		if(input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$('.showImg').attr('src', e.target.result); 
			}
			reader.readAsDataURL(input.files[0]);
		}
		
		//2. AJax 통신
		var formData = new FormData($('#updateImgForm')[0]);

		$.ajax({
			type: 'post',
			url: '/ReseltProject/myPage/updateImg',
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			data: formData,
			success: function(){
			},
			error: function(err){
				console.log(err);
			}
		});	
		
	}
	
});



//이미지 제거
$('.resetBtn').click(function(){
	
	var formData = new FormData($('#updateImgForm')[0]);
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/deleteImg',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: formData, //data: {fileName:$('.showImg').attr('src')}, //json
		success: function(){
			$('.showImg').attr('src', '../img/myPage/profile.png');
		},
		error: function(err){
			console.log(err);
		}
	});	
	
});


//문자 이메일 alert, 페이지 버튼 뿌리기
$('.radio_check_1').on('click', function(){

	//check_email에 1값 넣기
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/check_message',
		data: 'check_message=' + $('.radio_check_1').val(),
		success: function() {
			alert('광고성 정보 수신을 설정하였습니다. (문자 메시지 동의)');
			$('.radio_check_2').attr('checked', false);
			$(this).attr('checked', true);
		},
		error: function(err) {
			console.log(err);
		}
	});
});

$('.radio_check_2').on('click', function(){
	
	//check_email에 2값 넣기
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/check_message',
		data: 'check_message=' + $('.radio_check_2').val(),
		success: function() {
			alert('광고성 정보 수신을 설정하였습니다. (문자 메시지 동의)');
			$('.radio_check_1').attr('checked', false);
			$(this).attr('checked', true);
		},
		error: function(err) {
			console.log(err);
		}
	});
});

$('.radio_check_3').on('click', function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/check_email',
		data: 'check_email=' + $('.radio_check_3').val(),
		success: function() {
			alert('광고성 정보 수신을 설정하였습니다. (문자 메시지 동의)');
			$('.radio_check_4').attr('checked', false);
			$(this).attr('checked', true);
		},
		error: function(err) {
			console.log(err);
		}
	});
	
});

$('.radio_check_4').on('click', function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/check_email',
		data: 'check_email=' + $('.radio_check_4').val(),
		success: function() {
			alert('광고성 정보 수신을 설정하였습니다. (문자 메시지 동의)');
			$('.radio_check_3').attr('checked', false);
			$(this).attr('checked', true);
		},
		error: function(err) {
			console.log(err);
		}
	});
	
});




//페이지 데이터 뿌리기
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/getProfile',
		dataType: 'json',
		success: function(data) {
			console.log(data.profile_img);
			$('.emailDiv_p').append($('<span/>', {text: data.email}));
			$('.nameDiv_p').append($('<span/>', {text: data.name}));
			$('.nickDiv_p').append($('<span/>', {text: data.nick}));
			$('.phoneDiv_p').append($('<span/>', {text: data.tel}));
			$('.sizeDiv_text').append($('<span/>', {text: data.footsize}));
			
			if(data.profile_img == null) {
				$('.showImg').attr('src', '/assets/img/myPage/profile.png');
			} else {
				$('.showImg').attr('src', data.profile_img);
			}
			
			if(data.snsLogin == 0) {
				// 버튼 보여줌
				$('.pwdDiv_alter').removeClass('removeEvent');
			} else {
				//버튼 안보여줌
				$('.pwdDiv_alter').addClass('removeEvent');
			}
			
			if(data.check_email == 1) {
				$('.radio_check_3').attr('checked', true);
			} else {
				$('.radio_check_4').attr('checked', true);
			}
			
			if(data.check_message == 1) {
				$('.radio_check_1').attr('checked', true);
			} else {
				$('.radio_check_2').attr('checked', true);
			}
			
			
		},
		error: function(error) {
			console.log(error)
		}

	});

});	


/*CREATE TABLE members(
	     id int not null,
	     email varchar(20) null,
	     pwd varchar(20) null,
	     name varchar(20) null,
	     tel varchar(20) null,
	     address varchar(20) null,
	     created_at date null, --not null
	     update_at date null, --not null
	     footsize varchar(20) null,
	     profile_img varchar(20) null,
	     login_type int null, --not null
	     "level" int null --not null
	     );
	     
	     commit;
	     
	     insert into members (id) values ('1');*/
