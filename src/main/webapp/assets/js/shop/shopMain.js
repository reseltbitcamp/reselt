/*let displayState = {none: "block", block: "none"}
let ids = ["category", "brand", "gender"]

function toggleDisplayState(id) {
  let ele = document.getElementById("hide" + id)
  ele.style.display = displayState[ele.style.display];
}

ids.forEach(id=>{
  document.getElementById(id).addEventListener("click", ()=>{
    toggleDisplayState(id);
  })
})*/

//안먹힘 shopmain.jsp 하단에 추가
const product_name_kor = document.getElementById('product_name_kor').innerText;
const product_name_eng = document.getElementById('product_name_eng').innerText;
const released_price = document.getElementById('released_price').innerText;
const brand_firstname = document.getElementById('brand_firstname').innerText;

$(document).ready(function(){
	$.ajax({
		type: "post",
		url: "/ReseltProject/shop/getProductInfo",
		data: {"product_name_kor":product_name_kor, 
			   "product_name_eng":product_name_eng, 
			   "released_price":released_price,
			   "brand_firstname":brand_firstname
				},
		success: function(data){
			alert(JSON.stringify(data));
			document.getElementById("product_name_kor").innerText = data.product_name_kor;
			document.getElementById("product_name_eng").innerText = data.product_name_eng;
			document.getElementById("released_price").innerText = data.released_price;
			document.getElementById("brand_firstname").innerText = data.brand_firstname;
		},
		error: function(e){
	      console.log(e);
	    }
	});
});