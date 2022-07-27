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
			  'size' : $('#size').val(),
			  'bidding_id': $('#bidding_id').val()},
		success:function(data){
			console.log(JSON.stringify(data))
			//제품 정보
			$('#product_id').html(data.productDTO.product_id);
			$('#product_name_kor').html(data.productDTO.product_name_kor);
			$('#product_name_eng').html(data.productDTO.product_name_eng);
			$('#bidding_size').html(data.size)
			const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
			const imgFiles = data.productDTO.img_file.split(",");
			$('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
			$('#price').val(data.biddingDTO.bidding_price);
			$('#price').html(data.biddingDTO.bidding_price.toLocaleString('ko-KR')+" 원");

			//수수료 부여
			$('#commission').val((data.biddingDTO.bidding_price * 0.1))
			$('#commission').html((data.biddingDTO.bidding_price * 0.1).toLocaleString('ko-KR')+" 원")
			
			//최종금액 표시
			console.log($('#commission').val())
			const bidding_price = Number(data.biddingDTO.bidding_price);
			
			const commission = Number($('#commission').val());
			
			$('.totalPrice').val(data.biddingDTO.bidding_price + $('#commission').val() + 3000);
			$('.totalPrice').html((bidding_price + commission + 3000).toLocaleString('ko-KR')+" 원");
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
