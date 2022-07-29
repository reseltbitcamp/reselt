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

</script>