<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="shoplogo" height="116px" class="text-center">
	<br>
  <a href="#" id="shopBtn" class="px-50 text-[35px] font-bold">SHOP</a>
</div>


<div class="headerFilter mx-[72px] my-[50px] px-[32px] grid grid-cols-10 gap-4">
  <button data-filter="lego">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/lego.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">레고</p>
  </button>
  <button data-filter="newbalance">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/newbal.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">뉴발란스</p>
  </button>
  <button data-filter="Chanel">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/chanel.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">샤넬</p>
  </button>
  <button data-filter="Yashiro" >
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/yashiro.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">야스히로</p>
  </button>
  <button data-filter="Rolex">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/roli.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">롤렉스</p>
  </button>
  <button data-filter="Helinox">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/heli.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">헬리녹스</p>
  </button>
  <button data-filter="Wooyoungmi">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/wooyoung.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">우영미</p>
  </button>
  <button data-filter="NIKE">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/airforce.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">에어포스</p>
  </button>
  <button data-filter="Dyson">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/dyson.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">다이슨</p>
  </button>
  <button data-filter="IAB STUDIO">
    <div class="bg-white w-28 h-28 rounded-xl">
     <img class="w-full object-contain min-h-0 h-full" src="/ReseltProject/img/shopmenu/IAB.png"> 
    </div>  
    <p class="text-center text-[12px] font-bold">IAB STUDIO</p>
  </button>
</div>

<script type="text/javascript" src="/ReseltProject/js/shop/shopMenu.js"></script>
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.js"></script>
