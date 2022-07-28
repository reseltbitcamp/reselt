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
         let size
         
         if(data.category_id == 61){
        	 size = shose_size;
         } else if (data.category_id == 62){
        	 size = clothes_size;
         } else {
        	 size = other
         }
         	// 신발 사이즈 표시
            $.each(size, function(index, size){
            	$('<li/>', {
					class: "inline-block my-4 mx-3 itmes-center"
				}).append($('<button/>',{
					type: "button",
					class: "sizeBtn h-14 w-52 rounded-2xl cursor-pointer border border-gray-300 text-center font-semibold",
					value: size,
				}).append($('<span/>',{
					class: "mt-1 size",
					id: "size",
					text : size	
				})).append($('<br>')
					).append($('<span/>',{
					class : "align-top text-xs text-red-400 price",
					id : "price"+size,
					text : "입찰대기",
					value: "입찰대기"
				}))).appendTo($('#priceTable'));
            })

          // 가격 뿌리기
          $.ajax({
             type: "post",
             url: "/ReseltProject/shop/getProductPrice",
             data: 'pid='+$('#pid').val(),
             success:function(data){
               $.each(data.list, function(index, data){
                
                  $('#price' + data.product_size).html(data.bidding_price.toLocaleString('ko-KR'));
                  $('#price' + data.product_size).val(data.bidding_price.toLocaleString('ko-KR'));
                  $('#price' + data.product_size).attr('value', data.bidding_price.toLocaleString('ko-KR'))
                  $('#price' + data.product_size).attr('price-bidId', data.bidding_id);
      			
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
 
   //버튼숨기기
   $('#nextBtn').hide();
   //다음페이지
   $(document).on('click', '.selectSizeValue', function(){
	  const btnPrice = ($('#price'+$(this).val()).val());
	  console.log("btnPrice다 "+btnPrice)
	  
	  console.log($(this).val() === $('.selectSizeValue'))
	  if (btnPrice == '') {
		  console.log("btnPrice다 "+btnPrice)
		 $('.pageMoveBtn').attr('disabled', true)
		 $('.pageMoveBtn').addClass('disabled:cursor-not-allowed disabled:bg-gray-100 text-black');
		 $('.pageMoveBtn').removeClass('text-white')
		 $('.pageMoveBtn').text("가격 정보가 없습니다")
	  } else {
		 $('.pageMoveBtn').attr('disabled', false)
		 $('.pageMoveBtn').removeClass('disabled:cursor-not-allowed disabled:bg-gray-100 text-black');
		 $('.pageMoveBtn').addClass('text-white')
		 $('.pageMoveBtn').text(btnPrice); 
	  }
	  $('#nextBtn').show(); 
   })
   $('#nextBtn').click(function(){
		location.href="./buyAgree?pid="+$('#pid').val()+'&size='+$('.selectSizeValue').val()+'&id='+$('#price' +$('.selectSizeValue').val()).attr('price-bidId');
   })