//00. Infinite Scroll
let orderCnt = 1;
const observer2 = new IntersectionObserver(function(entries) {
  if (entries[0].isIntersecting === true) {
    const classProduct = document.getElementsByClassName('product');
    for (product of classProduct) {
      if (product.dataset.order > orderCnt * 8 && product.dataset.order <= orderCnt * 2 * 8) {
        document.getElementById(product.id).classList.remove('hidden');
      }
    }
    orderCnt += 1;
  }}, { threshold: [0.2] });

// Trigger fires when DOM is fully loaded
document.addEventListener('readystatechange', event => {
  if (event.target.readyState === "complete") {
    observer2.observe(document.getElementById("footerBot"));
  }
});

// 03. Right Top Filter
function sortByPrice(condition) {
  const products = document.getElementsByClassName('product');
  let array = Array.from(products, function(div) {
    return { price: `${div.dataset.price}.${div.dataset.pid}`, div: div }
  });

  array.sort(function(a, b) {
    if (parseFloat(a.price) > parseFloat(b.price)) {
      return 1 * condition; // 낮은 가격 정렬시 condition = 1
    }
    if (parseFloat(a.price) < parseFloat(b.price)) {
      return -1 * condition; // 높은 가격 정렬시 condition = -1
    }

    return 0;
  });
  orderCnt = 1;
  const idProductList = document.getElementById('productList');
  idProductList.replaceChildren();
  for (let i = 0; i < array.length; i++) {
    array[i].div.dataset.order = i;
    array[i].div.classList.add('hidden')
    if (i < 8) {
      array[i].div.classList.remove('hidden');
    }
    idProductList.append(array[i].div);
  }
}

//Sort 버튼에 대한 addEventListener 선언은 DOMContentLoaded 이후로...
document.addEventListener("DOMContentLoaded", function(){
  const sortByPriceLowBtn = document.getElementById('sortByPriceLow');
  const sortByPriceHighBtn = document.getElementById('sortByPriceHigh');
  
  sortByPriceLowBtn.addEventListener("click", () => {
    sortByPrice(1);
    document.getElementById('dropdownInformationButton').innerText = '가격 낮은 순 ↓↑';
  });
  sortByPriceHighBtn.addEventListener("click", () => {
    sortByPrice(-1);
    document.getElementById('dropdownInformationButton').innerText = '가격 높은 순 ↓↑';
  });

});


// 04. Header Filter
const items = document.getElementsByClassName("item"); 
//window.location.href.includes('design') 

showTag = (event, tag) => {
// console.log(window.location.hash)
	console.log('showing... ', tag)
	for(let i = 0; i< items.length; i++){
	  if(items[i].dataset.tags.includes(tag)){
	    items[i].style.display = "block";
	  }else{
	    items[i].style.display = "none";
	  	}
    }
}

// product List
function ProductList(){
   console.log("productList callout");
   $.ajax({
	   type: 'post',
	   url: '/ReseltProject/shop/getProductList',
	    data: 'pg=' + $('#pg').val(),
	    dataType: 'json',
	    success: function(data){
	    	
	         $.each(data.list, function(index, items){
	        	 
	            $('<div><button type="button"><a href="/ReseltProject/shop/shopDetail?pid='
	            +items.pid+'"><div class="bg-[#ebf0f4] w-60 h-60 rounded-xl"><img class="w-full object-contain min-h-0 h-full" src="http://3.39.241.175:6753/upload/resources/img/product/'
	            +items.pid+'/'
	            +items.img_file+'"></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
	            +items.brand_name+'</p><div class="h-20 w-60"><p class="text-left text-[14px]">&nbsp;'
	            +items.product_name_eng+'</p><p class="text-left text-[13px] text-slate-400" >&nbsp;'
	            +items.product_name_kor+'</p></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
	            +items.released_price.toLocaleString('en-US')+'원'+'</p><p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p></a></button><a href="#"><div class="h-6 w-24 grid grid-cols-4 content-start"><button id="bookmark" class="w-1 h-1 py-1"  data-modal-toggle="popup-modal"><svg id="bookmarkColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25"><path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_bookmark">'
	            +items.product_bookmark+'</p><a href="/ReseltProject/style/styleList"><button id="smile" class="w-1 h-1 py-1"><svg id="smileColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" click:viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25" href="ReseltProject/"><path stroke-linecap="round" stroke-linejoin="round" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_likes">'
	            +items.product_likes+'</p></div>')
	            .appendTo($('#productList'));
	            //http://3.39.241.175:6753/upload/resources/img/product/12831/12831-1.webp
	            console.log(items.img_file);
	         });//each
        
         paging();   
         Scroll();
         
         
      },
      error: function(err){
         console.log(err);
      }
   });
document.getElementById("legoBtn").addEventListener("click", (event) => showTag(event, 'Lego'));
document.getElementById("newbalBtn").addEventListener("click", (event) => showTag(event, 'New Balance'));
document.getElementById("chanelBtn").addEventListener("click", (event) => showTag(event, 'Chanel'));
document.getElementById("yashiroBtn").addEventListener("click", (event) => showTag(event, 'Yashiro'));
document.getElementById("rolexBtn").addEventListener("click", (event) => showTag(event, 'Rolex'));
document.getElementById("helinoxBtn").addEventListener("click", (event) => showTag(event, 'Helinox'));
document.getElementById("wooyoungmiBtn").addEventListener("click", (event) => showTag(event, 'Wooyoungmi'));
document.getElementById("nikeBtn").addEventListener("click", (event) => showTag(event, 'NIKE'));
document.getElementById("dysonBtn").addEventListener("click", (event) => showTag(event, 'Dyson'));
document.getElementById("iabstudioBtn").addEventListener("click", (event) => showTag(event, 'IAB STUDIO'));

// 05. paging each itembox//
function paging(){
	const page = document.getElementById("pg");
	console.log("page value = "+page.value);
	page.value++;
}

//bookmark login getSession
$('#popup-modal').click(function(){
   $.ajax({
      type: 'post',
      url: '/ReseltProject/shop/getSession',
      success: function(data){
         
         //alert(data);
         if(data == ""){
            location.href='/ReseltProject/member/login'
         }
         
      },
      error: function(e){
         console.log(e);
      }
   });
});


   const page = document.getElementById("pg");
   console.log("page value = "+page.value);
   page.value++;
