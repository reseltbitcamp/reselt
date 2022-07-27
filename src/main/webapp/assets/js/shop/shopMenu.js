// quick search regex
// quick search regex
var headerBtn;
var filterSelector = "*";

// init Isotope
var isoGrid = document.querySelector(".productList");
if (isoGrid) {
  var iso = new Isotope(isoGrid, {
    itemSelector: ".elementItem",
    filter: function(itemElem) {
      var search = headerBtn ? itemElem.textContent.match(headerBtn) : true;      
      var filterRes = filterSelector != '*' ? itemElem.dataset.cat.includes(filterSelector) : true;
      
      return search && filterRes;
 
    }
  });
}

// bind filter button click
var filtersElem = document.querySelector(".headerFilter");
if (filtersElem) {
  filtersElem.addEventListener("click", function(event) {
    
    if (!matchesSelector(event.target, "button")) {
      return;
    }
    var filterValue = event.target.getAttribute("data-filter");
    filterSelector = filterValue;
        
    iso.arrange();
 
    
  });
}





