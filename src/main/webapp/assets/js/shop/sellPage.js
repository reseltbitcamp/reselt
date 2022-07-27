//sellSize

	
  

	  
  


//sellAgree
$('#firstAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
		$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else{
		$('#agreeBtn').attr("disabled", true);
	}
})

$('#secondAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
		$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled", true);
	}
})

$('#thirdAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
		$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled", true);
	}
})

$('#fourthAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
		$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled", true);
	}
})

$('#fifthAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	var check5 = $('#fifthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true && check5 == true){
		$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled", true);
	}
	$('#agreeBtn').click(function(){
		var size = $('#sizeInput').val();
		var pid = $('#pidInput').val();
		location.href="./sellStraight?size="+ size + "&pid=" + pid
	})
})
//sellAgree

//sellStraight
$('#sellBidPrice').keyup(function(){
	var check = $('#sellBidPrice').val()%1000;
	if((check == 0) && ($('#sellBidPrice').val() >= 30000)){
		console.log(check)
		$('#sellBidPriceDiv').html("");
		$('#tax').html(($('#sellBidPrice').val() * 0.1).toLocaleString() + ' 원');
		$('#sellBidPriceHidden').val($('#sellBidPrice').val());
		console.log(check)
    $('.sellBidPriceText').removeClass("text-red-600 border-red-600");
		$('#sellBidBtn').removeAttr("disabled");
	} else {
		$('#sellBidPriceDiv').html("30000원 이상 부터 천원단위로 입력하세요");
		 $('.sellBidPriceText').addClass("text-red-600 border-red-600");
 	   $('#sellBidBtn').attr("disabled", true);
	}
})    
	
$('#sellBidBtn').click(function(){
	$('#sellStraightForm').submit();
})

//sellStraight

//sellLastPage
$(function(){
  $('#addressDiv_modal').hide();
	$('.addAddressModal').hide();

	$('#exitBtn').click(function(){
		$('#addressDiv_modal').hide();
	})
	$('.addAddressBtn').click(function(){;
		$('.addAddressModal').show();
	})
	$('.addressDiv_reset').click(function(){
		$('.addAddressModal').hide();
	})
})
$('#addressChangeBtn').click(function(){
  $('#addressDiv_modal').show();
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
	location.href='./sellSuccess'
})
//sellLastPage

//sellSuccessPage
$('#sellListPageBtn').click(function(){
	location.href="../myPage/selling"
})
//sellSuccessPage

