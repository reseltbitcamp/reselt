<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="layer_search fixed t-0 r-0 b-0 h-[100%] w-[100%] bg-[rgba(34,34,34,.5)] overflow-y-auto z-[900] flex">
  <div class="layer_container w-[100%] overflow-hidden">

<!--     <form class="search_top pt-[40px] px-[40px] pb-0 bg-[#fff] z-[100]"> -->
<!--       <div class="top_box my-0 mx-auto max-w-[1200px]"> -->
<!--         <div> -->
<!--           <div class="search_title_input pb-[36px] items-center justify-center pt-0 px-[10%] relative flex"> -->
<!--             <div class="search_area"> -->
<!--               <div class="search w-[500px] flex-none order-0 grow my-0 mx-[8px] pb-[16px] border-b-[3px] border-b-solid border-b-[#000]"> -->
<!--                 <input type="text" class="input_search_top overflow-hidden text-ellipsis whitespace-nowrap text-[24px] font-bold text-[#000] leading-[29px] py-0 pr-[13px] pl-[1px] w-[468px] tracking-[-.015em]"> -->
<!--                 <button class="btn float-right w-[20px] h-[20px] mt-[5.5px] mr-[3px]">검색</button> -->
<!--                 <button class="btn_search_delete float-right w-[20px] h-[20px] mt-[5.5 ] mr-[3px]">x</button> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->
<!--         </div> -->
<!--         <div class="quick_filter">럭셔리 신발 어쩌구</div> -->
<!--       </div> -->
<!--     </form> -->

    <div class="layer_content p-0 m-auto">
      
      <form class="search_container bg-[#fff] box-border">
        <input type="text" id="pg" value="${requestScope.pg }" class="invisible">
        <div class="search_wrap pt-[25px] px-[40px] pb-[19px] m-auto w-[704px] flex">
              
          <div class="search_area flex-1 mr-[20px] block">
            
            <div class="search relative py-0 pr-[40px] pl-[44px] bg-[#f4f4f4] rounded-[8px] h-[40px]">
			  <input type="search" name="keyword" value="${keyword }" placeholder="브랜드명, 모델명, 모델번호 등" title="검색창" id="keyword" class="input_search w-[100%] h-[100%] transition-all text-[14px] tracking-[-.21px] border-none bg-[#f4f4f4]">
<!-- 			  <input type="search" placeholder="브랜드명, 모델명, 모델번호 등" title="검색창" id="keyword" class="input_search w-[100%] h-[100%] transition-all text-[14px] tracking-[-.21px] border-none bg-[#f4f4f4]"> -->
            </div>
            
          </div>
          
          <button class="searchBtn ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" >검색</button>&nbsp;&nbsp;
<!--           <button class="searchBtn ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick='recentSearch()'>검색</button>&nbsp;&nbsp; -->
<!--           <button class="searchBtn ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick='itemSearch()'>임시</button>&nbsp;&nbsp; -->
          <button class="btn_close ml-auto p-0 border-0 bg-[rgba(0,0,0,0)] appearance-none" onclick="location.href='/ReseltProject/'">취소</button>
        </div>
        
      </form>
      
      <div class="search_content_wrap block bg-[#fff]">
        
        <div class="recent_area relative pb-[20px] w-[704px] m-auto">
          
          <div class="recent_box pt-0 px-[40px] pb-[21px] block">
            <strong class="recent_title inline-block leading-[20px] text-[12px] text-black align-middle font-bold">최근 검색어</strong>
            <button class="btn_delete inline-block align-middle pt-[8px] pr-[5px] pb-[3px] pl-[1px] ml-[5px]" onclick='recentSearchReset()'>x
            </button>
            <ul id="search_list" class="search_list mt-[4px] list-none m-0 p-0">
              <li class="list_item">
                <a class="search_item block max-w-[650px] overflow-hidden text-ellipsis whitespace-nowrap text-[14px] tracking-[-.21px] leading-[32px] text-[rgba(34,34,34,.8)]"></a>
              </li>
            </ul> <!-- append로 li 추가 -->
          </div>
          
          <ul class="brand_list py-0 px-[40px] whitespace-nowrap">
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MTVfNDkg/MDAxNjU3ODg0MjUyMTcz.IgPRfZsdskrKB1b8lI5PrWJPTaSRJqYIeNdAddKWZccg.a80U4BtQwsXym1oWeof-jJX3Mzbcnailh92NweFlyiQg.PNG/a_8d702a57d5b942058313a2cd84502a24.png" alt="포켓몬"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">포켓몬</p>
              </a>
            </li>
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA1MjdfMjQ1/MDAxNjUzNjIzMjU1MDA1.Eh9mGoIJqASznAFYwmvYroLQZc52KUv4eZ_tVESPV9Qg.aiEX0TgPe1RSc_1n4we7ZrZyYymKK-DisLp37rtjXD8g.PNG/a_6f243e29ed9b49f8a4f8aef956bbdcbd.png" alt="루이비통"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">루이비통</p>
              </a>
            </li>
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MjBfMTYw/MDAxNjU4MjkxOTMwNzI3.EVUaJleG1Dj8Sf6_6YmZqz5FVKHIWmi1plGejMQhGZgg.XxNoSYMFPZnZQ1YU9SL1iw5paX9p_DiSwwIDiQEoWycg.PNG/a_3aa0bfc5aab34b6689fa584e0e9a9164.png" alt="스캇"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">스캇</p>
              </a>
            </li>
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MTVfMTIg/MDAxNjU3ODg0MDgxNDM5.G_Z8oSUH-reOKget9mw_f6Hjv-1dRL6iacn5kfzEEiQg.9jirVBSg1klDxHziG2qnWoLQskQbRqzn4_couB4qwT0g.PNG/a_142adb8bc8cf49989c579c801fd79516.png" alt="샤넬"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">샤넬</p>
              </a>
            </li>
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MTVfMTUy/MDAxNjU3ODg0MDk5MDc3.L_k52MEN3jG8Q1UZBG0N2rrC2sfHBNkVY4JgCp4b_1Ug.8nHeotJjCgSD4ppX25I77FQwk0bBcViqDEf1lYqDNI0g.PNG/a_f8a97905d4e7461286297a3810ca80f8.png" alt="롤렉스"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">롤렉스</p>
              </a>
            </li>
            <li class="brand_item inline-block align-top rounded-[8px]">
              <a class="brand_box block w-[100px] h-[100px] text-center cursor-pointer text-inherit">
              <img src="https://kream-phinf.pstatic.net/MjAyMjA3MTVfMzkg/MDAxNjU3ODg0MTI3ODUy._9LanCf1pMhoypQ4Fe-Xer4oLDetUDmL47tJZnviWHQg.CwWpEsjtrBIutNThK8lg2Ks_eXHmpu2Y0wSk_IfdRLUg.PNG/a_7a8ba94f6ad945cfa96b9364aa1a1c49.png" alt="우영미"
                    class="w-[80px] h-[80px] m-auto">
                <p class="brand_name max-w-[80px] mt-[-8px] mx-auto mb-0 text-[12px] block">우영미</p>
              </a>
            </li>
          </ul>
        
        </div>
        
        <div class="suggest_wrap bg-[#fff]">
          <div class="suggest_area w-[704px] pt-0 pr-[44px] pb-[23px] pl-[40px] my-0 mx-auto overflow-hidden relative ">
            <div class="suggest_title_area mr-[43px]"><p></p></div>
            <!-- 상품검색 리스트 -->
            <div class="suggest_list pr-[43px] max-h-[420px] overflow-y-auto">
              
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </div>
</div>

<jsp:include page="../main/main.jsp"></jsp:include>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/ReseltProject/js/search/searchList.js"></script>
<script type="text/javascript">

$(function(){
  getSearchList();
  //$('.brand_list').hide();
});

//검색List 활성화
$(function(){
  $('.suggest_wrap').hide();
	
  $('.input_search').click(function(){
    if($('.input_search').val() != '')
      $('.suggest_wrap').show();
  });
  
});

//최근 검색어
// $('.recent_box').hide()

// function recentSearch(){
//   if($('.input_search').val() != ''){
//   $('.recent_box').show()
  
//   }
	
//   var recent_search = document.getElementById('search_list')
  
//   recent_search.innerHTML += '<li>'+ $('.input_search').val() +'</li>'
//   $('.input_search').val('')
// }

function recentSearchReset(){
  $('.recent_box').hide()
  $('#search_list').empty()
}

// function itemSearch(){
//   $('.suggest_wrap').toggle()
//   $('.brand_list').toggle()
// }
 

</script>
