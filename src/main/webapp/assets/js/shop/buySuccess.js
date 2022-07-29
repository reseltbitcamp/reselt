// buySuccess
$(function(){
	$('#INIpayReturn').hide();
	$.ajax({
		type: 'post',
		url: "/ReseltProject/shop/insertBuyInfomation",
		data:{'pid': $('#pid').val(),
			  'size' : $('#size').val(),
			  'bidding_id': $('#bidding_id').val()},
		success:function(data){
			console.log(JSON.stringify(data.biddingDTO.bidding_price))
			const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
			const imgFiles = data.productDTO.img_file.split(",");
			$('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
			$('#price').html(data.biddingDTO.bidding_price.toLocaleString('ko-KR')+" 원");
			
			//수수료 부여
			$('#commission').val(data.biddingDTO.bidding_price)
			$('#commission').html((data.biddingDTO.bidding_price * 0.1).toLocaleString('ko-KR')+" 원")
			
			//최종금액 표시
			console.log($('#commission').val())
			const bidding_price = Number(data.biddingDTO.bidding_price);
			const commission = Number($('#commission').val());
			
			$('.totalPrice').val(data.biddingDTO.bidding_price + $('#commission').val() + 3000);
			$('.totalPrice').html((bidding_price + commission + 3000).toLocaleString('ko-KR')+" 원");
			console.log($('.totalPrice').val())
		}, error: function(e){
			console.log("에러")
		}
	});
	
	
})
$('#shopPageBtn').click(function(){
	location.href="../shop"
})
$('#buyListPageBtn').click(function(){
	location.href="../myPage/buying"
})  
// buySuccess