// onclick event for hiding subcategory...
const targetDiv = document.getElementById("hidecategory");
const btn = document.getElementById("category");

btn.onclick = function () {
  if (targetDiv.style.display !== "none") {
    targetDiv.style.display = "none";
  } else {
    targetDiv.style.display = "block";
  }
};

// document.addEventListener("scroll", function (event) {
//       checkForNewDiv();
//  });

//  var checkForNewDiv = function () {
//       var lastDiv = document.querySelector("#scroll-content > div:last-child");
//       var lastDivOffset = lastDiv.offsetTop + lastDiv.clientHeight;
//       var pageOffset = window.pageYOffset + window.innerHeight;

//       if (pageOffset > lastDivOffset - 10) {
//           var newDiv = document.createElement("div");
//           newDiv.innerHTML = "my awesome new div";
//           document.getElementById("scroll-content").appendChild(newDiv);
//           checkForNewDiv();
//       }
//  }; 
//  checkForNewDiv();
  