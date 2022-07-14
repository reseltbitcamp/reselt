//버튼 누르면 모달 창 뜸
$('.addressDiv_btn').click(function(){
	$('.nameDiv_error').addClass('removeEvent');
	$('.phoneDiv_error').addClass('removeEvent');
	$('.addressDiv_modal').removeClass('removeEvent');
});

$('.addressDiv_reset').click(function(){
	$('.addressDiv_modal').addClass('removeEvent');
});

//이름 유효성 검사
$('.nameDiv_text').on('input', function(){
	if ($('.nameDiv_text').val().length < 2 || $('.nameDiv_text').val().length > 50) {
		$('.nameDiv_error').removeClass('removeEvent');
		$('.addressDiv_save').attr('disabled', true);
	} else {
		$('.nameDiv_error').addClass('removeEvent');
		$('.addressDiv_save').attr('disabled', false);
	}
});

//전화번호 유효성 검사
$('.phoneDiv_text').on('input', function(){
  	var patternPhone = /01[016789][^0][0-9]{2,3}[0-9]{3,4}/;
	
	if(!patternPhone.test($('.phoneDiv_text').val())) {
		$('.phoneDiv_error').removeClass('removeEvent');
	} else {
		$('.phoneDiv_error').addClass('removeEvent');
	}  
});


//DAUM 우편번호
function checkPost() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('zipcode').value = data.zonecode;
            document.getElementById("addr1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("addr2").focus();
        }
    }).open();
}

var address =  $('#addr1').val() + $('#addr2').val();
console.log(typeof(address));


//주소 저장
$('.addressDiv_save').click(function(){
	
	var address =  $('#addr1').val() + $('#addr2').val();
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/add_address',
		data: 'address=' + address,
		success: function(data) {
			alert('주소지가 등록되었습니다');
			$('.addressDiv_modal').addClass('removeEvent');
			
		},
		error: function(e) {
			console.log(e)
		}
	});
});


