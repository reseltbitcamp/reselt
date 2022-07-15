<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div id="tosModal" class="modal-overlay w-[100%] h-[1000%] pt-[70px] absolute left-0 flex flex-col items-center hidden">
  <div id="modal_window" class="bg-white w-[580px] h-[700px] relative rounded-[10px]">
    <div class="title m-0 p-0 box-border">
      <h2 class="leading-[22px] pt-[18px] px-[50px] pb-[20px] min-h-[60px] text-[18px] font-bold tracking-[-.15px] text-black text-center">이용정책</h2>
    </div>
    
<!--     <div class="selectBox border-b-[1px] border-solid border-[#ebebeb] pb-[16px] px-[15px]"> -->
<!--     </div> -->
      <div class="block px-[30px]">
      <ul class="block ">
      	<li>
      	  <div class="flex pt-[17px] pb-[19px] px-0 items-center border-b-[1px] border-solid border-[#ebebeb]">
      		<p class="text-[15px] tracking-[-.15px]">패널티 정책
      	  </div>
      	</li>
      </ul>
      </div>
  
  <a class="close-area absolute top-[18px] right-[20px] cursor-pointer">X</a>
  </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  const modal3 = document.getElementById("tosModal")
  const headerTop3 = document.getElementById("headerTop")
  
  function modalOn3(){
    $('#tosModal').fadeIn("fast");
    $('#headerTop').fadeIn("slow", function(){
    	$(this).css('backgroundColor', 'rgba(34, 34, 34, .5)'),
    	$(this).css('borderColor', 'transparent')
    });
    
    modal3.style.display = "flex"
    modal3.style.backgroundColor = "rgba(34, 34, 34, .5)"
    
    
  }
  
  function isModalOn3(){
	return modal3.style.display === "flex"
  }

  function modalOff3(){
    modal3.style.display = "none"
    
    headerTop3.style.backgroundColor = "white"
    headerTop3.style.borderColor = "none"
    
  }
  // Modal 실행 Btn
  const btnModal3 = document.getElementById("tosBtn")
  btnModal3.addEventListener("click", e => {
    modalOn3()
  })
  
  const closeBtn3 = modal3.querySelector(".close-area")
  closeBtn3.addEventListener("click", e => {
    modalOff3()
  })

  modal3.addEventListener("click", e => {
    const evTarget3 = e.target
    if(evTarget3.classList.contains("modal-overlay")) 
      modalOff3()
    
  })

  window.addEventListener("keyup", e => {
    if(isModalOn3() && e.key === "Escape") {
      modalOff3()
    }
  })
});
</script>