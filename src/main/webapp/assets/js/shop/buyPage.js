//buySize
$(function(){

  $('#nextBtn').hide();
  $('.sizeBtn').each(function(index){
    $(this).attr('sizeBtn-index',index);
    
  }).click(function(){
    var index = $(this).attr('sizeBtn-index');
    
    $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black');
    $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
  })

  $('.sizeBtn').click(function(){
    $('#nextBtn').show();
  })
	$('#nextBtn').click(function(){
		location.href="./buyAgree"
	})
	
})
//buySize

//buyAgree
$('#firstAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true){
	$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled",true);
	}
})

$('#secondAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	
	if(check1 == true && check2 == true && check3 == true && check4 == true){
	$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	} else {
		$('#agreeBtn').attr("disabled",true);
	}
})

$('#thirdAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	
  if(check1 == true && check2 == true && check3 == true && check4 == true){
	$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
	  } else {
		  $('#agreeBtn').attr("disabled",true);
		}
})

$('#fourthAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	
  if(check1 == true && check2 == true && check3 == true && check4 == true){
	$('#agreeBtn').removeAttr("disabled");
    $('#agreeBtn').removeClass("disabled:cursor-not-allowed")
    $('#agreeBtn').addClass("cursor-pointer")
  	} else {
			$('#agreeBtn').attr("disabled",true);
		} 
})

$('#agreeBtn').click(function(){
	location.href="./buyLastPage"
});
//buyAgree



//buyLastPage
$(function(){
	$('#kgApi').hide();
	$('#addressDiv_modal').hide();
	$('.addAddressModal').hide();

	$('#exitBtn').click(function(){
		$('#addressDiv_modal').hide();
	})
	$('.addAddressBtn').click(function(){
		$('#addressDiv_modal').show();
	})
	$('.addressDiv_reset').click(function(){
		$('.addAddressModal').hide();
	})
	$('#addressChangeBtn').click(function(){
		$('.addressDiv_modal').show();
	})
})

$('#firstAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	if(check1 == true && check2 == true && check3 == true && check4 == true){
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
	if(check1 == true && check2 == true && check3 == true && check4 == true){
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
  if(check1 == true && check2 == true && check3 == true && check4 == true){
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
  if(check1 == true && check2 == true && check3 == true && check4 == true){
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
//buyLastPage

//buySuccess
$(function(){
	$('#INIpayReturn').hide();
})
$('#shopPageBtn').click(function(){
	location.href="../shop"
})
$('#buyListPageBtn').click(function(){
	location.href="../myPage/buying"
})  
//buySuccess
  




