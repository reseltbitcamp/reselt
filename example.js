const product_id = document.getElementById("product_id").innerText;

$.ajax({
  type: "post",
  url: "/ReseltProject/shop/getProductData",
  data: {"product_id": product_id},
  success: function (data) {
    
  }
});

//데이터 형식
{"product_name_kor": "나이키 덩크 로우 레트로 블랙", }