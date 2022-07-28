$(function(){
$('#addressDiv_modal').hide();
$('.addAddressModal').hide();
	$.ajax({
		type: 'post',
		url: '/ReseltProject/myPage/show_account',
		dataType: 'json',
		success: function(data) {
			consol.log(JSON.stringify(data))
			//데이터 보여주기
			$('#account').text( "<" + data.account_name + ">  계좌번호 : " + data.account_num + " / 예금주 :  " + data.account_holder);
		}
	});
});

$('#exitBtn').click(function(){
	$('#addressDiv_modal').hide();
})
$('.addAddressBtn').click(function(){;
	$('.addAddressModal').show();
})
$('.addressDiv_reset').click(function(){
	$('.addAddressModal').hide();
})

$('#firstAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	} else {
		$('#chargeBtn').attr("disabled",true);
	}
})

$('#secondAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true) {
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	} else {
		$('#chargeBtn').attr("disabled",true);
	}
})

$('#thirdAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
  if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	  } else {
		  $('#chargeBtn').attr("disabled",true);
		}
})

$('#fourthAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
  if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	  } else {
		  $('#chargeBtn').attr("disabled",true);
		}
})

$('#fifthAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
  if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	  } else {
		  $('#chargeBtn').attr("disabled",true);
		}
})
 
$('.paymentOption').each(function(index){
    $(this).attr('paymentOption-index',index);
    
  }).click(function(){
    var index = $(this).attr('paymentOption-index');
    
    $('.paymentOption[paymentOption-index='+ index + ']').addClass('border-2 border-black');
    $('.paymentOption[paymentOption-index!='+ index + ']').removeClass('border-2 border-black');
  })
$('#chargeBtn').click(function(){
	$('#sellLastPageForm').submit();
})