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

document.addEventListener('readystatechange', event => {
  if (event.target.readyState === "complete") {
    observer2.observe(document.getElementById("footerBot"));
  }
});

// 01. Right Top Filter
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

// 05. paging each itembox//
function paging(){
   const page = document.getElementById("pg");
   console.log("page value = "+page.value);
   page.value++;
}

