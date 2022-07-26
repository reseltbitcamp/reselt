// buyAgree
$(function(){
	$.ajax({
		type:'post',
		url: '/ReseltProject/shop/getProductInfomation',
		data:{'pid': $('#pid').val(),
			  'size' : $('#size').val()},
		success:function(data){
			console.log(JSON.stringify(data))
			$('#product_id').html(data.productDTO.product_id);
			$('#product_name_kor').html(data.productDTO.product_name_kor);
			$('#product_name_eng').html(data.productDTO.product_name_eng);
			$('#bidding_size').html(data.size)
			$('#bidding_price').html(data.biddingDTO.bidding_price.toLocaleString('ko-KR')+" 원");
			const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
			const imgFiles = data.productDTO.img_file.split(",");
			$('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
		}, error:function(e){
			console.log("에러")
		}
	})
})
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
	location.href="./buyLastPage?pid="+$('#pid').val()+"&size="+$('#size').val();
});
// buyAgree
