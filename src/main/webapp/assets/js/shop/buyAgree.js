// buyAgree
$(function(){
	$.ajax({
		type:'post',
		url: '/ReseltProject/shop/getProductInfomation',
		data:{'pid': $('#pid').val(),
			  'size' : $('#size').val()},
		success:function(data){
			console.log(data)
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
	location.href="./buyLastPage"
});
// buyAgree
