<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<form class="search_top pt-[40px] px-[40px] pb-0 bg-[#fff] z-[100]">
<!-- pg -->
<input type="text" id="pg" value="${requestScope.pg }" class="invisible">
  <div class="top_box my-0 mx-auto max-w-[1200px]">
    <div>
      <div class="search_title_input pb-[36px] items-center justify-center pt-0 px-[10%] relative flex">
        <div class="search_area">
          <div class="search w-[550px] flex-none order-0 grow my-0 mx-[8px] pb-[16px] border-b-[3px] border-b-solid border-b-[#000]">
            <input type="text" value="${keyword }" name="keyword" id="keyword" class="input_search_top overflow-hidden text-ellipsis whitespace-nowrap text-[24px] font-bold text-[#000] leading-[29px] py-0 pr-[13px] pl-[5px] w-[468px] tracking-[-.015em] border-white">
<!--             <button class="btn w-[30px] h-[20px] mt-[5.5px] mr-[3px] text-sm">검색</button>&nbsp;&nbsp; -->
            <button class="btn_search_delete float-right w-[20px] h-[20px] mt-[5.5 ] mr-[3px]" onclick='btn_search_delete()'>x</button>
          </div>
        </div>
      </div>
    </div>
    <div class="quick_filter"></div>
  </div>
</form>

<%-- <jsp:include page="../shop/main/shopmain.jsp"></jsp:include> --%>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/search/searchList.js"></script>
<script type="text/javascript" src="/ReseltProject/js/shop/shopMain.js"></script>
<script type="text/javascript">

//키워드 검색 - shopMain.js
$(function(){
	sortByKeyword()
});

// $(document).ready(function sortByKeyword() {
//   const products2 = document.getElementsByClassName('product');
//   const keyword = $('#keyword').val().toLowerCase();
  
//   let array2 = Array.from(products2, function(div2) {
//     return { category: `${div2.dataset.category}.${div2.dataset.pid}`, div: div2 }
//   });

//   let sp = array2.filter(function(searchProduct){
//     return searchProduct.category.toLowerCase().indexOf(keyword) !== -1;
//   });
  
//   //alert(keyword);
  
//   orderCnt = 1;
//   const idProductList2 = document.getElementById('productList');
//   idProductList2.replaceChildren();
//   for (let j = 0; j < sp.length; j++) {
//     sp[j].div.dataset.order = j;
//     sp[j].div.classList.add('hidden')
//     if (j < 4) {
//       sp[j].div.classList.remove('hidden');
//     }
//     idProductList2.append(sp[j].div);
//   }
  
// });

</script>