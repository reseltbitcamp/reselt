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
  