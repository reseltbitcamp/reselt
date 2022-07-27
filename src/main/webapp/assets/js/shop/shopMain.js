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

  const idProductList = document.getElementById('productList');
  idProductList.replaceChildren();
  for (product of array) {
    idProductList.append(product.div);
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