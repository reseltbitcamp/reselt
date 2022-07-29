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
function shopSort(condition, order) {
  const products = document.getElementsByClassName('product');
  let array = []

  if (condition === 'price') {
    array = Array.from(products, function(div) {
      return { key: `${div.dataset.price}.${div.dataset.pid}`, div: div }
    });
  } else if (condition === 'release_date') {
    array = Array.from(products, function(div) {
      return { key: `${div.dataset.date}.${div.dataset.pid}`, div: div }
    });
  } else if (condition === 'product_likes') {
    array = Array.from(products, function(div) {
      return { key: `${div.dataset.likes}.${div.dataset.pid}`, div: div }
    }); 
  }  
    else if (condition === 'product_bookmark') {
    array = Array.from(products, function(div) {
      return { key: `${div.dataset.bookmark}.${div.dataset.pid}`, div: div }
    }); 
  }
  

  array.sort(function(a, b) {
    if (parseFloat(a.key) > parseFloat(b.key)) {
      return 1 * order; // 낮은 정렬
    }
    if (parseFloat(a.key) < parseFloat(b.key)) {
      return -1 * order; // 높은 정렬시
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
  const sortByNew = document.getElementById('dateSort');
  const sortByLikesBtn = document.getElementById('likeSort');
  const sortByBookmark = document.getElementById('bookmarkSort');
  
  sortByPriceLowBtn.addEventListener("click", () => {
    shopSort('price', 1);
    document.getElementById('dropdownInformationButton').innerText = '가격 낮은 순 ↓↑';
  });

  sortByPriceHighBtn.addEventListener("click", () => {
    shopSort('price', -1);
    document.getElementById('dropdownInformationButton').innerText = '가격 높은 순 ↓↑';
  });

  sortByNew.addEventListener("click", () => {
    shopSort('release_date', -1);
    document.getElementById('dropdownInformationButton').innerText = '발매가 순 ↓↑';
  });
  
  sortByLikesBtn.addEventListener("click", () => {
    shopSort('product_likes', -1);
    document.getElementById('dropdownInformationButton').innerText = '인기순 ↓↑';
  });
  
  sortByBookmark.addEventListener("click", () => {
    shopSort('product_bookmark', -1);
    document.getElementById('dropdownInformationButton').innerText = '북마크 순 ↓↑';
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

//keyword search
function sortByKeyword() {
  const products2 = document.getElementsByClassName('product');
  const keyword = $('#keyword').val().toLowerCase();
  
  let array2 = Array.from(products2, function(div2) {
    return { category: `${div2.dataset.category}.${div2.dataset.pid}`, div: div2 }
  });

  let sp = array2.filter(function(searchProduct){
    return searchProduct.category.toLowerCase().indexOf(keyword) !== -1;
  });
  
  orderCnt = 1;
  const idProductList2 = document.getElementById('productList');
  idProductList2.replaceChildren();
  for (let j = 0; j < sp.length; j++) {
    sp[j].div.dataset.order = j;
    sp[j].div.classList.add('hidden')
    if (j < 4) {
      sp[j].div.classList.remove('hidden');
    }
    idProductList2.append(sp[j].div);
  }
  
}; 
