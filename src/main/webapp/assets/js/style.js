$(function(){
  $('#cameraBox').click(function(){
    $('#img').trigger('click');
  });
});

function setThumbnail(event){
  console.log("진행 중");
  var reader = new FileReader();
	
  reader.onload = function(event){
  var img = document.createElement("img");
  var div = document.querySelector("div#cameraBox");
  document.querySelector("svg#cameraIcon").remove();
  img.setAttribute("src", event.target.result);
  img.setAttribute("class", "w-auto h-full mx-auto my-0");
  div.setAttribute("class", "w-full h-[250px] border border-gray-200 rounded-md overflow-hidden");
  div.appendChild(img);
  };
	
  reader.readAsDataURL(event.target.files[0]);
}