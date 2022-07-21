//Product details pre-requisites
const product_name_kor = document.getElementById('product_name_kor').innerText;
const product_name_eng = document.getElementById('product_name_eng').innerText;
const created_at = document.getElementById('created_at').innerText;
const released_price = document.getElementById('released_price').innerText;
const brand_firstname = document.getElementById('brand_firstname').innerText;

const create_atStr = function(timestamp) {   //Created_at 날짜 변환
  const date = new Date(timestamp);
  return `${date.getFullYear()}/${date.getMonth() + 1}/${date.getDate()}`
}

// Chart.js DB Connection
const product_id = document.getElementById("product_id").innerText;
const todaySQL = function() {
  const today = new Date();
  const tYear = today.getFullYear();
  let tMonth = (today.getMonth() + 1);
  let tDay = today.getDate();
  if (tMonth < 10) {
    tMonth = String(tMonth).padStart(2, '0');
  } else if (tDay < 10) {
    tDay = String(tDay).padStart(2, '0');
  }
  
  return `${tYear}-${tMonth}-${tDay}`
}

$(document).ready(function(){
  //product details
  $.ajax({
		type: "post",
		url: "/ReseltProject/shop/getProductDTO",
		data: {"product_name_kor":product_name_kor, 
			   "product_name_eng":product_name_eng, 
			   "created_at":created_at, 
			   "product_id":product_id, 
			   "released_price":released_price,
			   "brand_firstname":brand_firstname
				},
				
		success: function(data){
			alert(JSON.stringify(data));
			document.getElementById("product_name_kor").innerText = data.product_name_kor;
			document.getElementById("product_name_eng").innerText = data.product_name_eng;
      document.getElementById("created_at").innerText = create_atStr(data.created_at);
			document.getElementById("released_price").innerText = data.released_price.toLocaleString('ko-KR');
			document.getElementById("product_id").innerText = data.product_id;
			document.getElementById("brand_firstname").innerText = data.brand_firstname;
		},
		error: function(e){
	      console.log(e);
	    }
	});

  // Chart.js
  $.ajax({
    type: "post",
    url: "/ReseltProject/shop/getPriceIndex",
    data: {"product_id": product_id, "today": todaySQL, "condition": "weekly"},
    success: function (response) {
      let labelsArray = [];
      let dataArray = [];
      for (i of response) {
        let labels = i.logtime.split('-');
        labels = `${labels[1]}-${labels[2]}`;
        labelsArray.push(labels);
        dataArray.push(i.price);
      }
      const ctx = document.getElementById('priceIndex').getContext('2d');
      const priceIndex = new Chart(ctx, {
        type: 'line',
        data: {
          labels: labelsArray,
          datasets: [{
            label: '주간 시세',
            data: dataArray,
            borderColor: 'rgba(54, 162, 235, 1)'
          }]
        },
        options: {
          responsive: true,
          scales: {
            y: {
              min: 215000,
              max: 240000
            }
          }
        }
      });
    },
    error: function(e){
      console.log(e);
    }
  });
});

// Button actions
$('#sellBtn').click(function(){
  location.href="./sellSize"
});

$('#buyBtn').click(function(){
  location.href="./buySize"
});