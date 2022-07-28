$(function(){
	$.ajax({
		type: 'post',
		url: '/ReseltProject/shop/getProductDTO',
		data: {'pid' : $('#pidInput').val() },
		success : function(data){
			//alert(JSON.stringify(data))
			console.log(JSON.stringify(data))
			const imgFiles = data.img_file.split(",");
			$('#product_id').html(data.product_id);
			$('#product_name_eng').html(data.product_name_eng);
			$('#product_name_kor').html(data.product_name_kor);
			$('#img_file').attr('src', 'http://3.39.241.175:6753/upload/resources/img/product/'  + $('#pidInput').val() + '/' + imgFiles[0]);;
		},
		error : function(e){
			console.log(e)
		}
	});
});
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