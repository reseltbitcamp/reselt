//00. Infinite Scroll - Trigger fires when DOM is fully loaded
const observer = new IntersectionObserver(function(entries) {
  if (entries[0].isIntersecting === true) {
    // alert("Infinite scroll event will be triggered.");
    ProductList();
  }}, { threshold: [0.5] });

document.addEventListener('readystatechange', event => {
  if (event.target.readyState === "complete") {
    observer.observe(document.getElementById("footerBot"));
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



// 05. paging each itembox//
function paging(){
   const page = document.getElementById("pg");
   console.log("page value = "+page.value);
   page.value++;
}

