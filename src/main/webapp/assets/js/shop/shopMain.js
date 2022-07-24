
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>1. infinite scroll
function Scroll(){
   console.log("scroll 실행");
   const pagination = document.querySelector('.paginaiton');
   const fullContent = document.querySelector('.infinite');
   const screenHeight = screen.height;
   let oneTime = false;
   document.addEventListener('scroll',OnScroll,{passive:true})
    function OnScroll () {
      const fullHeight = fullContent.clientHeight;   
      const scrollPosition = pageYOffset;
      if (fullHeight-screenHeight*2 <= scrollPosition && !oneTime) {
       oneTime = true;
       ProductList();
      }
    }
}

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> 2. product List
function ProductList(){
   console.log("productList callout");
   $.ajax({
      type: 'post',
      url: '/ReseltProject/shop/getProductList',
       data: 'pg=' + $('#pg').val(),
       dataType: 'json',
       success: function(data){ 
          
            $.each(data.list, function(index, items){
               
               $('<div class="product '
               +items.category_name_eng+'"><button type="button"><a href="/ReseltProject/shop/shopDetail?pid='
               +items.pid+'"><div class="bg-[#ebf0f4] w-60 h-60 rounded-xl"><img class="w-full object-contain min-h-0 h-full" src="http://3.39.241.175:6753/upload/resources/img/product/'
               +items.pid+'/'
               +items.img_file+'"></div><p class="text-left text-[16px] font-bold font-notoSans pl-1">'
               +items.brand_name+'</p><div class="h-20 w-60"><p class="text-left text-[14px] pl-1">'
               +items.product_name_eng+'</p><p class="text-left text-[13px] text-slate-400 pl-1" >'
               +items.product_name_kor+'</p></div><p class="text-left text-[16px] font-bold font-notoSans">&nbsp;'
               +items.released_price.toLocaleString('en-US')+'원'+'</p><p class="text-left text-[11px] text-slate-400">&nbsp;&nbsp;즉시 구매가</p></a></button><a href="#"><div class="h-6 w-24 grid grid-cols-4 content-start"><button id="bookmark" class="w-1 h-1 py-1"  data-modal-toggle="popup-modal"><svg id="bookmarkColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25"><path stroke-linecap="round" stroke-linejoin="round" d="M5 5a2 2 0 012-2h10a2 2 0 012 2v16l-7-3.5L5 21V5z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_bookmark">'
               +items.product_bookmark+'</p><a href="/ReseltProject/style/styleList"><button id="smile" class="w-1 h-1 py-1"><svg id="smileColor" xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" click:viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.25" href="ReseltProject/"><path stroke-linecap="round" stroke-linejoin="round" d="M14.828 14.828a4 4 0 01-5.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg></button></a><p class="text-[12px] px-0 py-2" id="product_likes">'
               +items.product_likes+'</p></div>')
               .appendTo($('#productList'));
               //http://3.39.241.175:6753/upload/resources/img/product/12831/12831-1.webp
        
               console.log(items.category_name_eng);
            });//each
        
         paging();   
         Scroll();
      },
      error: function(err){
         console.log(err);
      }
   });

}

//>>>>>>>>>>>>>>>>>>>>>>>>>>>> 3. Side Filter

var allCheckboxes = document.querySelectorAll('input[type=checkbox]');
var allProducts = Array.from(document.querySelectorAll('.product'));
var checked = {};

getChecked('allCategory');
getChecked('allBrand');
//getChecked('hidegender');
//getChecked('hidecollection');
//getChecked('hideshoesize');
//getChecked('hidegarmentsize');
//getChecked('hideprice');

Array.prototype.forEach.call(allCheckboxes, function (el) {
  el.addEventListener('change', toggleCheckbox);
});

function toggleCheckbox(e) {
  getChecked(e.target.name);
  setVisibility();
}

function getChecked(name) {
  checked[name] = Array.from(document.querySelectorAll('input[name=' + name + ']:checked')).map(function (el) {
    return el.value;
  });
}

function setVisibility() {
  allProducts.map(function (el) {
    var allCategory = checked.allCategory.length ? _.intersection(Array.from(el.classList), checked.category).length : true;
    var allBrand = checked.allBrand.length ? _.intersection(Array.from(el.classList), checked.brand).length : true;
//    var hidegender = checked.hidegender.length ? _.intersection(Array.from(el.classList), checked.hidegender).length : true;
//    var hidecollection = checked.hidecollection.length ? _.intersection(Array.from(el.classList), checked.hidecollection).length : true;
//    var hideshoesize = checked.hideshoesize.length ? _.intersection(Array.from(el.classList), checked.hideshoesize).length : true;
//    var hidegarmentsize = checked.hidegarmentsize.length ? _.intersection(Array.from(el.classList), checked.hidegarmentsize).length : true;
//    var hideprice = checked.hideprice.length ? _.intersection(Array.from(el.classList), checked.hideprice).length : true;
    
    if (allCategory && allBrand) {
      el.style.display = 'block';
    } else {
      el.style.display = 'none';
    }
  });
}




//>>>>>>>>>>>>>>>>>>>>>>>>>>>> 4. paging each itembox//
function paging(){
   const page = document.getElementById("pg");
   console.log("page value = "+page.value);
   page.value++;
}


//>>>>>>>>>>>>>>>>>>>>>>>>>>>> 5. bookmark login getSession//
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