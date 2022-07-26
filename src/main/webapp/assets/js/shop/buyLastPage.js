// buyLastPage
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
	
	$.ajax({
		type: 'post',
		url: "/ReseltProject/shop/insertBuyInfomation",
		data:{'pid': $('#pid').val(),
			  'size' : $('#size').val()},
		success:function(data){
			console.log(JSON.stringify(data))
		}, error:function(err) {
			console.log(err)
		}
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
  
$('#chargeBtn').click(function(){
//	location.href='./buySuccess'
});
// buyLastPage
