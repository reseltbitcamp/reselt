//버튼 누르면 모달 창 뜸
$('.paymentDiv_btn').click(function(){
	$('.nameDiv_error').addClass('removeEvent');
	$('.phoneDiv_error').addClass('removeEvent');
	$('.paymentDiv_modal').removeClass('removeEvent');
});

$('.paymentDiv_reset').click(function(){
	$('.paymentDiv_modal').addClass('removeEvent');
});
