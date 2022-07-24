//buySize
$(function(){
  $('#nextBtn').hide();
  
  
  $.ajax({
	type: "post",
    url: "/ReseltProject/shop/getProductDTO",
    data: 'pid='+$('#pid').val(),
    success: function (data) {
		console.log(JSON.stringify(data))
		// 데이터 뿌리기
		$('#product_id').html(data.product_id);
		$('#product_name_kor').html(data.product_name_kor);
		$('#product_name_eng').html(data.product_name_eng);
		const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
		const imgFiles = data.img_file.split(",");
		console.log(imgFiles)
		$('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
		
		//사이즈표시
		let shose_size = [230, 235, 240, 245, 255, 260, 265, 270, 275, 280, 285, 290];
		const int_size = shose_size.map((i) => Number(i));
		
		console.log(typeof shose_size);
		console.log(typeof int_size);
		const clothes_size = ['XS' ,'S' ,'M', 'L', 'XL'];
		const other = "OneSize";
		
		//신발 사이즈 표시
		if(data.category_id == 61){
			$.each(shose_size, function(index, size){
				console.log(size,index)
				$('<li/>', {
					class: "inline-block my-2 mx-3"
				}).append($('<button/>',{
					class: "sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center"
				}).append($('<span/>',{
					class: "mt-1",
					id: "size",
					name: "size",
					value: size,
					text : size	
				}))).appendTo($('#priceTable'));
				console.log($('sizeBtn').val())
				//사이즈 버튼 활성화
			  $('.sizeBtn').each(function(index){
			    $(this).attr('sizeBtn-index',index);
			  }).click(function(){
			    var index = $(this).attr('sizeBtn-index');			    
			    $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black selectSizeValue');
			    $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
			  })

			  $('.sizeBtn').click(function(){
			    $('#nextBtn').show();
			  }) //사이즈 버튼 활성화
			})		
		}// 신발 사이즈 표시
		
		$('#nextBtn').click(function(){
			location.href="./buyAgree?pid="+data.pid+'&size='+$('.selectSizeValue').val();
		})
	},
	error: function(e) {
      console.log("병신")
    },
  });//사이즈 표시
  
  //가격 뿌리기
  $.ajax({
		type: "post",
		url: "/ReseltProject/shop/getProductPrice",
		data: $('#buySizeForm').serialize(),
		success:function(data){
			console.log(JSON.stringify(data))
			$.each(data.product_size, function(index, size){
				if(size == $('.sizeBtn').val()){
						
				}
			})
			
		}, error:function(err){
			console.log('뭐가 문제야')
		}
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
  




