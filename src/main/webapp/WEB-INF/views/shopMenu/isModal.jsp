<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Modal -->
<div id="modalContainer">
  <div id="is"></div>
</div>

<div id="isModal" class="modal-overlay w-[100%] h-[880%] absolute left-0 flex flex-col items-center hidden">
  <div id="modal_window" class="bg-white w-[580px] h-[700px] relative rounded-[10px]">
    <div class="title m-0 p-0 box-border">
      <h2 class="leading-[22px] pt-[18px] px-[50px] pb-[20px] min-h-[60px] text-[18px] font-bold tracking-[-.15px] text-black text-center">검수기준</h2>
    </div>
    
    <div class="selectBox border-b-[1px] border-solid border-[#ebebeb] pb-[16px] px-[15px]">
      <label for="select" class="box-border"></label>
      <select id="select" class="text-left truncate border-[1px] border-solid border-[#d3d3d3] rounded-[6px] py-[14px] px-[16px] w-[100%] relative">
        <option selected>신발</option>
        <option>의류</option>
        <option>패션잡화</option>
        <option>테크</option>
        <option>라이프</option>
        <option>프리미엄 시계</option>
        <option>프리미엄 가방</option>
      </select>
    </div>
  
  <a class="close-area absolute top-[18px] right-[20px] cursor-pointer">X</a>
  <div class="modalContent py-0 px-[32px] max-h-[528px] bg-white overflow-y-auto mb-[32px] rounded-[10px] mt-[22px]">
    <jsp:include page="../notice/etc/inspectionStandard.jsp"></jsp:include>
  </div>
  </div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  const modal = document.getElementById("isModal")
  const headerTop = document.getElementById("headerTop")
  const headerBot = document.getElementById("headerBot")
  
  function modalOn(){
    modal.style.display = "flex"
    modal.style.backgroundColor = "rgba(34, 34, 34, .5)"
    
    headerTop.style.backgroundColor = "rgba(34, 34, 34, .5)"
    headerTop.style.borderColor = "transparent"
    
    headerBot.style.backgroundColor = "rgba(34, 34, 34, .5)"
    headerBot.style.borderColor = "transparent"
    
  }
  
  function isModalOn(){
	return modal.style.display === "flex"
  }

  function modalOff(){
    modal.style.display = "none"
    
    headerTop.style.backgroundColor = "white"
    headerTop.style.borderColor = "none"
    
    headerBot.style.backgroundColor = "white"
    headerBot.style.borderColor = "none"
  }

  const btnModal = document.getElementById("inspectionBtn")
  btnModal.addEventListener("click", e => {
    modalOn()
  })

  const closeBtn = modal.querySelector(".close-area")
  closeBtn.addEventListener("click", e => {
    modalOff()
  })

  modal.addEventListener("click", e => {
    const evTarget = e.target
    if(evTarget.classList.contains("modal-overlay")) 
      modalOff()
    
  })

  window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
      modalOff()
    }
  })

</script>