//tottle hide react 안먹힘 shopmain.jsp 하단에 추가
//
//let ids = ["category", "brand", "gender"]
//
//function toggleDisplayState(id) {
//  let ele = document.getElementById("hide" + id)
//  ele.style.display = displayState[ele.style.display];
//}
//
//ids.forEach(id=>{
//  document.getElementById(id).addEventListener("click", ()=>{
//    toggleDisplayState(id);
//  })
//})*/
//

//main product Details
const product_name_kor = document.getElementById('product_name_kor').innerText;
const product_name_eng = document.getElementById('product_name_eng').innerText;
const released_price = document.getElementById('released_price').innerText;
const brand_firstname = document.getElementById('brand_firstname').innerText;
const product_likes = document.getElementById('product_likes').innerText;
const product_bookmark = document.getElementById('product_bookmark').innerText;


$(document).ready(function(){
	$.ajax({
		type: "post",
		url: "/ReseltProject/shop/getProductDTO",
		data: {"product_name_kor":product_name_kor, 
			   "product_name_eng":product_name_eng, 
			   "released_price":released_price,
			   "brand_firstname":brand_firstname,
			   "product_likes":product_likes,
			   "product_bookmark":product_bookmark
				},
		success: function(data){
			alert(JSON.stringify(data));
			document.getElementById("product_name_kor").innerText = data.product_name_kor;
			document.getElementById("product_name_eng").innerText = data.product_name_eng;
			document.getElementById("released_price").innerText = data.released_price;
			document.getElementById("brand_firstname").innerText = data.brand_firstname;
			document.getElementById("product_likes").innerText = data.product_likes;
			document.getElementById("product_bookmark").innerText = data.product_bookmark;
		},
		error: function(e){
	      console.log(e);
	    }
	});
});

$('#secondAgree').click(function(){
	var check1 = $('#firstAgree').prop("checked");
	var check2 = $('#secondAgree').prop("checked");
	var check3 = $('#thirdAgree').prop("checked");
	var check4 = $('#fourthAgree').prop("checked");
	if(check1 == true && check2 == true && check3 == true && check4 == true){
	$('#chargeBtn').removeAttr("disabled");
    $('#chargeBtn').removeClass("disabled:cursor-not-allowed")
    $('#chargeBtn').addClass("cursor-pointer")
	} else {
		$('#chargeBtn').attr("disabled",true);
	}
})
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