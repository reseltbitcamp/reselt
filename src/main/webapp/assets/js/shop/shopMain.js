//00. Infinite Scroll
const observer = new IntersectionObserver(function(entries) {
  if (entries[0].isIntersecting === true) {
    // alert("Infinite scroll event will be triggered.");
    ProductList();
  }}, { threshold: [0.5] });

// Trigger fires when DOM is fully loaded
document.addEventListener('readystatechange', event => {
  if (event.target.readyState === "complete") {
    observer.observe(document.getElementById("footerBot"));
  }
});

// 01. product List
function ProductList(){
   console.log("productList callout");
   $.ajax({
      type: 'post',
      url: '/ReseltProject/shop/getProductList',
       data: 'pg=' + $('#pg').val(),
       dataType: 'json',
       success: function(data){ 
          
            $.each(data.list, function(index, items){
	        	let priceRange = items.released_price;
	        	
	        	if (priceRange <= 100000){priceRange = 'lowprice'}
	        	else if (priceRange >100000 && priceRange <= 300000){priceRange = 'lowmidprice'}
	        	else if (priceRange >300000 && priceRange <= 500000){priceRange = 'midprice'}
	        	else if (priceRange >500000){priceRange = 'highprice'};

               //data-category="green small medium africa"
               $('<div id=product-'+items.pid+' '+'class="product" data-price='+items.released_price+' '+'data-pid='+items.pid+' '+'data-category="'
               +items.category_name_eng+' '
               +items.brand_name+' '
               +priceRange+' '
               +items.gender_name+'"><button type="button"><a href="/ReseltProject/shop/shopDetail?pid='
               +items.pid+'"><div class="bg-[#ebf0f4] w-60 h-60 rounded-xl"><img class="w-full object-contain min-h-0 h-full" src="http://3.39.241.175:6753/upload/resources/img/product/'
               +items.pid+'/'
               +items.img_file+'"></div><p class="text-left text-[16px] font-bold font-notoSans pl-1">'
               +items.brand_name+'</p><div class="h-20 w-60"><p class="text-left text-[14px] pl-1">'
               +items.product_name_eng+'</p><p class="text-left text-[13px] text-slate-400 pl-1" >'
               +items.product_name_kor+'</p></div><p class="item-price text-left text-[16px] font-bold font-notoSans">&nbsp;'
               +items.released_price.toLocaleString('en-US')+'원'+'</p><p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p></a></button><a href="#"><div class="h-6 w-24 grid grid-cols-4 content-start"><button id="bookmark" class="w-1 h-1 py-1"  data-modal-toggle="popup-modal"><svg id="bookmarkColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25"><path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_bookmark">'
               +items.product_bookmark+'</p><a href="/ReseltProject/style/styleList"><button id="smile" class="w-1 h-1 py-1"><svg id="smileColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" click:viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25" href="ReseltProject/"><path stroke-linecap="round" stroke-linejoin="round" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_likes">'
               +items.product_likes+'</p></div>')
               .appendTo($('#productList'));
               //brand_name ~ product_likes까지 div 처리 => right top filter ==> 삭제함
         
               console.log(items.category_name_eng);
            });//each

         paging();   
      },
      error: function(err){
         console.log(err);
      }
   });

}

// 02. Side Filter
var filterCheckboxes = $('input[type="checkbox"]');
var filterFunc = function() {
  
var selectedFilters = {};
filterCheckboxes.filter(':checked').each(function() {
  if(!selectedFilters.hasOwnProperty(this.name)) {
	  selectedFilters[this.name] = [];
  }
  selectedFilters[this.name].push(this.value);
});

var filteredResults = $('.product');
  $.each(selectedFilters, function(name, filterValues) {
    filteredResults = filteredResults.filter(function() {

      var matched = false,
        currentFilterValues = $(this).data('category').split(' ');

      $.each(currentFilterValues, function(_, currentFilterValue) {
        if ($.inArray(currentFilterValue, filterValues) != -1) {
          matched = true;
          return false;
        }
      });
       return matched;
    });
  });
  
  $('.product').hide().filter(filteredResults).show();
}

filterCheckboxes.on('change', filterFunc);  

// 03. Right Top Filter
function sortByPrice(condition) {
  const products = document.getElementsByClassName('product');
  let array = Array.from(products, function(div) {
    return { price: `${div.dataset.price}.${div.dataset.pid}`, div: div }
  });

  array.sort(function(a, b) {
    if (parseFloat(a.price) > parseFloat(b.price)) {
      return 1 * condition; // 낮은 가격 정렬시 condition = 1, 높은 가격 정렬시 condition = -1
    }
    if (parseFloat(a.price) < parseFloat(b.price)) {
      return -1 * condition;
    }

    return 0;
  });

  const productList = document.getElementById('productList');
  productList.replaceChildren();
  for (product of array) {
    productList.append(product.div);
  }
}

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


// 06. bookmark login getSession//
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