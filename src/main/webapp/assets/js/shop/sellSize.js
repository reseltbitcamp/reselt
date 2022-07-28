$(function(){

$.ajax({
   type: "post",
    url: "/ReseltProject/shop/getProductDTO",
    data: 'pid='+$('#pid').val(),
    success: function (data) {
      // 데이터 뿌리기
      $('#product_id').html(data.product_id);
      $('#product_name_kor').html(data.product_name_kor);
      $('#product_name_eng').html(data.product_name_eng);
      const imgPath = "http://3.39.241.175:6753/upload/resources/img/product";
      const imgFiles = data.img_file.split(",");
      $('#product_img').attr("src", imgPath+"/"+data.pid+"/"+imgFiles[0]);
      
      // 사이즈표시
      let shose_size = [230, 235, 240, 245, 250, 255, 260, 265, 270, 275, 280, 285, 290, 295, 300];
      let clothes_size = ['XS' ,'S' ,'M', 'L', 'XL', 'XXL'];
      let other = ['ONE_SIZE'];
      let itemSize;
     
      // 신발 사이즈 표시
      if(data.category_id == 61){
      	itemSize = shose_size
      }else if(data.category_id == 62) {
      	itemSize = clothes_size
      }else {
      	itemSize = other
      }// 신발 사이즈 표시
         $.each(itemSize, function(index, size){
				($('<li />').addClass("inline-block my-4 mx-3"))
				.append($('<button />')
						.addClass("sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center inline-block ")
						.append($('<span />', {html : size}).addClass("mt-1 font-semibold"))
						.append($('<input />',{ value : size, type : 'hidden',id : 'sizeHidden'}))
						.append($('<br />'))
						.append($('<span />', {html : '-',id : "price"+size
							//(size == innerData.list[index].product_size && innerData.list[index].bidding_price.toLocaleString())
							}).addClass("align-top text-xs text-green-500 ")))
				.appendTo($('#priceTable'));
         })
         	 // 가격 뿌리기
		 $.ajax({
		    type: "post",
		    url: "/ReseltProject/shop/getProductPriceMax",
		    data: 'pid='+$('#pid').val(),
		    success:function(innerdata){
		      $.each(innerdata.list, function(index, innerdata){
      			console.log(innerdata);
		    	//console.log(data.product_size);
		    	//console.log(data);
		    	console.log('#priceS' + innerdata.product_size);
		    	console.log('#priceP' + innerdata.bidding_price);
		         $('#price' + innerdata.product_size).html((innerdata.bidding_price).toLocaleString('ko-KR'));
		         $('#price' + innerdata.product_size).val(innerdata.bidding_price.toLocaleString('ko-KR'));
		      })
		    }, error:function(err){
		       console.log(err)
		    }
		   });//ajax
         
         // 버튼 활성화
        $('.sizeBtn').each(function(index){
          $(this).attr('sizeBtn-index',index);
        }).on("click", function(){
          var index = $(this).attr('sizeBtn-index');
          $('.sizeBtn[sizeBtn-index='+ index + ']').addClass('border-2 border-black selectSizeValue');
          $('.sizeBtn[sizeBtn-index='+ index + ']').attr('id', 'selectSizeValue');          
          $('.sizeBtn[sizeBtn-index!='+ index + ']').removeClass('border-2 border-black');
          $('.sizeBtn[sizeBtn-index!='+ index + ']').removeAttr('id', 'selectSizeValue');          
        })
        $('.price').each(function(index){
           $(this).attr('price-index',index);
        })
   },
   error: function(err) {
      console.log(err)
    },
 });// 사이즈 표시 ajax
});
//버튼숨기기
$('#nextBtn').hide();
//다음페이지
$(document).on('click', '.sizeBtn', function(){
   $('#price').text('판매하기');
  // $('#price').text($('#price'+$('.selectSizeValue').val()).val());
   $('#nextBtn').show();
})
$('#nextBtn').click(function(){
   location.href="./sellAgree?pid="+$('#pid').val()+'&size='+$('#selectSizeValue').children('input').val();
})