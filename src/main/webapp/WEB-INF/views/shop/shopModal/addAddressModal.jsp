<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
.removeEvent {
   display: none;
}
</style>

<!-- 모달창 -->
<div class="addAddressModal removeEvent addressDiv_modal layer fixed top-0 left-0 right-0 bottom-0 z-[1000] bg-[#22222280]">
  <div class="layer_container absolute top-[20%] left-[40%] w-[500px] overflow-hidden rounded-[16px] bg-[#fff] drop-shadow-sm">
    <div class="layer_header">
      <h2 class="title min-h-[60px] bg-[#fff] px-[50px] pt-[18px] pb-[20px] text-center text-[18px] font-bold leading-[22px] tracking-[-.15px] text-[#000]">새 주소 추가</h2>
    </div>
    <div class="layer_content">
      <div class="delivery_bind py-[0px] px-[32px]">
        <div class="delivety_input">
           <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">이름</h4>
            <div class="input_item relative"><input type="text" placeholder="-없이 입력" autocomplete="off" class="nameDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
            <p class="nameDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 이름을 입력해주세요.</p>
          </div>
        
          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">휴대폰 번호</h4>
            <div class="input_item relative"><input type="text" placeholder="-없이 입력" autocomplete="off" class="phoneDiv_text py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
            <p class="phoneDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 휴대폰 번호를 입력해주세요.</p>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">우편번호</h4>
            <div class="input_item relative flex flex-nowrap">
               <input type="text" placeholder="우편 번호를 검색하세요" name="zipcode" id="zipcode" readonly autocomplete="off" class="zipcodeDiv_text input_txt py-[8px] w-[340px] text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]">
               <input type="button" value="우편번호" onclick="checkPost()" class="inline-block h-[34px] cursor-pointer rounded-[10px] border-[1px] border-solid border-[#d3d3d3] bg-[#fff] py-[0px] px-[14px] text-center align-middle text-[12px] leading-[32px] tracking-[-.16px] text-[#222222cc]"/>
            </div>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">주소</h4>
            <div class="input_item relative"><input type="text" name="addr1" id="addr1" placeholder="우편 번호 검색 후, 자동입력 됩니다" autocomplete="off" class="input_txt py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
             <p class="zipcodeDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 우편번호를 입력해주세요</p>
          </div>

          <div class="input_box relative pt-[16px] pb-[14px]">
            <h4 class="input_title text-[13px] leading-[18px] tracking-[-.07px]">상세 주소</h4>
            <div class="input_item relative"><input type="text" name="addr2" id="addr2" placeholder="건물, 아파드, 등/호수 입력" autocomplete="off" class="addressDiv_text input_txt py-[8px] w-full text-[15px] tracking-[-.15px] leading-[22px] border-b-[1px] border-b-solid border-b-[#ebebeb]"></div>
             <p class="addressDiv_error removeEvent block absolute leading-[16px] text-[11px] text-[#f15746]">정확한 상세주소를 입력해주세요</p>
          </div>
        </div> <!--input-->

      </div>
      <!--delivery bind-->

      <div class="flex justify-center p-[32px] pt-[24px]">
        <a class="addressDiv_reset inline-block cursor-pointer ml-[5px] align-middle text-center bg-[#fff] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid border-[#d3d3d3] text-[#222222cc]">취소</a>
        <a class="addressDiv_save inline-block cursor-pointer align-middle text-center bg-[#222222cc] py-[0px] px-[18px] h-[42px] leading-[40px] rounded-[12px] text-[14px] tracking-[-.14px] w-[120px] border-[1px] border-solid text-[#d3d3d3] border-[#d3d3d3]">저장하기</a>
      </div>

    </div> <!--content-->
  </div> <!--container-->
</div> <!--addressDiv_modal-->

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>  
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
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
	} else {
		$('.nameDiv_error').addClass('removeEvent');
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



//주소 저장 insert만
$('.addressDiv_save').click(function(){	
	$('.nameDiv_error').addClass('removeEvent');
	$('.phoneDiv_error').addClass('removeEvent');
	$('.zipcodeDiv_error').addClass('removeEvent');
	$('.addressDiv_error').addClass('removeEvent');
	
	//유효성 검사
	if ($('.nameDiv_text').val() == '') {
		$('.nameDiv_error').removeClass('removeEvent');
	} else if ($('.phoneDiv_text').val() == '') {
		$('.phoneDiv_error').removeClass('removeEvent');
	} else if ($('.zipcodeDiv_text').val() == '') {
		$('.zipcodeDiv_error').removeClass('removeEvent');
	} else if ($('.addressDiv_text').val() == '') {
		$('.addressDiv_error').removeClass('removeEvent');
	} else {
	
	var address =  '(' + $('#zipcode').val() + ')' + $('#addr1').val() + $('#addr2').val();
	console.log(typeof(address));
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/add_address',
		data: {
			"address_info": address,
			"address_name": $('.nameDiv_text').val(),
			"address_num": $('.phoneDiv_text').val()
			},
		
		success: function(data) {
			console.log(data);
			$('.addressDiv_modal').addClass('removeEvent');
			alert('주소지가 등록되었습니다');
			location.reload();
			$('.not_empty_area_2').removeClass('removeEvent');
			$('.empty_area_2').addClass('removeEvent');
		},
		error: function(e) {
			console.log(e);
		}
		
		});
	}
});

//페이지 새로고침할 시 데이터 select
$(document).ready(function(){
	
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/show_address',
		dataType: 'json',
		success: function(data) {
			//sellLastPage Ajax 입력
			$('#addName').html(data.address_name);
			$('#addTel').html('0'+data.address_num);
			$('#add').html(data.address_info);
			},
		error: function(e){
			console.log(e);
		}
	});

});	
</script>