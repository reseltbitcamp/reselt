//전체버튼
$('#check1').on('click', function(){
	if($(this).is(':checked')) {
		$('.chk').prop('checked', true);
	} else {
		$('.chk').prop('checked', false)
	}
});

//탈퇴하기
$('.withdrawal_ok').on('click', function(){
	
	if ( $('.chk').is(':checked') && $('#check1').is(':checked')) {
		
		var con = confirm('탈퇴하시겠습니까?');
		
		if (con == true) {
			
			$.ajax({
				type: 'post',
				url: '/ReseltProject/myPage/withdrawal_user', //탈퇴 ㄱ
				success: function(){
					alert('탈퇴되었습니다');
					location.href="/ReseltProject/";
				},
				error: function(e){
					console.log(e);
					console.log('왜... 않되?');
				}
			});
		// con == true
		
		} else {
			alert('취소되었습니다');
		}
	} else {
		alert('회원탈퇴 내용을 모두 동의해 주셔야 탈퇴가 가능합니다.');
	}
	
});
