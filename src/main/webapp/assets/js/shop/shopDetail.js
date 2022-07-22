//Product details pre-requisites
const pid = document.getElementById("pid").value;
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
		data: {"pid": pid},
		success: function(data){
      function docInjection(key, value) {
        return document.getElementById(key).innerText = value;
      }

      // 이미지 인젝션
      function carouselImgHTML(img, cnt) {
        const imgPath = 'http://3.39.241.175:6753/upload/resources/img/product'
        let tagImg = document.createElement('img');
        let tagDiv = document.createElement('div');
        tagImg.setAttribute('src', `${imgPath}/${data.pid}/${img}`);
        tagImg.setAttribute('class', 'block absolute top-1/2 left-1/2 w-full object-contain object-center object-cover -translate-x-1/2 -translate-y-1/2');
        tagDiv.setAttribute('id', `carousel-item-${cnt}`);
        if (img.split('-')[1].includes('1')) {
          tagDiv.setAttribute('class', 'duration-700 ease-in-out');
        } else {
          tagDiv.setAttribute('class', 'hidden duration-700 ease-in-out');
        }
        tagDiv.append(tagImg);
        const finalHTML = tagDiv;
        return finalHTML;
      }

      const imgFiles = data.img_file.split(',');
      const imageGallery = document.getElementById('imageGallery');
      let cnt = 0;
      for (const insertImg of imgFiles) {
        console.log(carouselImgHTML(insertImg));
        imageGallery.append(carouselImgHTML(insertImg, cnt));
        cnt += 1;
      }
      
      // DB테이터 인젝션
      const injectionTarget = [
        {'product_name_kor':data.product_name_kor}, {'product_name_eng':data.product_name_eng},
        {'product_id':data.product_id}, {'brand_name':data.brand_name},
        {'released_price':data.released_price}, {'created_at':data.created_at}
      ]

      for (const target of injectionTarget) {
        for (const key in target) {
          target[key] = target[key] === 0 ? '-' : target[key];
          docInjection(key, target[key]);
        }
      }

      // 카테고리별 사이즈 표시
      const sizeIndicator = data.category_id <= 62 ? '모든 사이즈' : 'ONE SIZE';
      docInjection('sizeIndicator', sizeIndicator);
      
      
		},
		error: function(e){
	      console.log(e);
	    }
	});

  // Chart.js
  $.ajax({
    type: "post",
    url: "/ReseltProject/shop/getPriceIndex",
    data: {"pid": pid, "today": todaySQL, "condition": "weekly"},
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