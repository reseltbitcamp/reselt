function getSearchList(){
  //console.log("제발 와주세요 ㅠ");
  //$('.brand_list').hide();
	
  $.ajax({
    type: 'post',
    url: '../search/searchProductList',
    dataType: 'json',
    success: function(data){

      $.each(data.list, function(index, items){

        $('<div class="suggest_item h-[84px] border-b-[1px] border-b-solid border-b-[#ebebeb]"><a class="suggest_link align-center h-[100%] text-inherit flex" href="/ReseltProject/shop/shopDetail?pid='
	            +items.pid+'"><div class="suggest_thumb overflow-hidden mr-[7px] w-[70px] h-[70px] shrink-0 rounded-[8px] block"><img class="thumb_img w-[100%] h-[100%]" src="http://3.39.241.175:6753/upload/resources/img/product/'
	            +items.pid+'/'
	            +items.img_file+'"></img></div><div class="suggest_info my-auto"><p class="model_title overflow-hidden text-ellipsis text-[14px] tracking-[-.21px]">&nbsp;'
	            +items.product_name_eng+'</p><p class="model_sub_info mt-[2px] text-[12px] tracking-[-.06px] text-[rgba(34,34,34,.5)]" id="product_name_kor">&nbsp;'
	            +items.product_name_kor+'</p></div><br>&nbsp;')
	            .appendTo($('.suggest_list'));
	            console.log(items.img_file);
      }); //each
      
    },
    error: function(err){
      console.log(err);
    }
  });
}