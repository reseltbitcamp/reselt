$(function(){
	//alert('hi');	
	//sellSize
	$.ajax({
		type: 'post',
		url: '/ReseltProject/shop/getProductDTO',
		data: {'pid' : $('#pid').val() },
		success : function(data){
			//alert(JSON.stringify(data))
			console.log(JSON.stringify(data))
			const imgFiles = data.img_file.split(",");
			$('#product_id').html(data.product_id);
			$('#product_name_eng').html(data.product_name_eng);
			$('#product_name_kor').html(data.product_name_kor);
			$('#product_img').attr('src', 'http://3.39.241.175:6753/upload/resources/img/product/'  + $('#pid').val() + '/' + imgFiles[0]);;
			$('#released_price').html(data.released_price.toLocaleString() + ' 원');
			$.ajax({
			    type: "post",
			    url: "/ReseltProject/shop/getProductPriceMax",
			    data: 'pid='+$('#pid').val(),
			    success:function(data){
			      	console.log(data.list);
			    	$.each(data.list, function(index, data){
					if($('#size').val() == data.product_size) {
						$('#bidding_price').html(data.bidding_price.toLocaleString() + ' 원');
					}
			      })
			    }, error:function(err){
			       console.log(err)
			    }
			});//ajax
		},
		error : function(e){
			console.log(e)
		}
	});
});

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