const observer = new IntersectionObserver(function(entries) {
  if (entries[0].isIntersecting === true) {
    //alert("Infinite scroll event will be triggered.");
  }}, { threshold: [0.2] });

// Trigger fires when DOM is fully loaded
document.addEventListener('readystatechange', event => {
  if (event.target.readyState === "complete") {
    observer.observe(document.getElementById("footerTop"));
  }
});
