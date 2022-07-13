// Chart.js DB Connection
const product_id = document.getElementById("product_id").innerText;
const today = new Date();
const tYear = today.getFullYear();
let tMonth = (today.getMonth() + 1);
let tDay = today.getDate();
if (tMonth < 10) {
  tMonth = String(tMonth).padStart(2, '0');
} else if (tDay < 10) {
  tDay = String(tDay).padStart(2, '0');
}

const todaySQL = tYear + "-" + tMonth + "-" + tDay;

$(document).ready(function(){
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